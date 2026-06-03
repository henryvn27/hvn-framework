#!/opt/homebrew/opt/ruby/bin/ruby
# frozen_string_literal: true

require "json"
require "optparse"
require "rubygems"

fastlane_libexec = Dir["/opt/homebrew/Cellar/fastlane/*/libexec"].sort.last
if fastlane_libexec
  gem_home = ENV["FASTLANE_GEM_HOME"] || File.expand_path("~/.local/share/fastlane/4.0.0")
  gem_paths = [gem_home, fastlane_libexec, ENV["GEM_PATH"]].compact
  Gem.use_paths(gem_home, gem_paths)
end

require "spaceship"

def load_fastlane_env!
  env_files = [
    File.join(Dir.pwd, ".env.fastlane.local"),
    File.expand_path("~/.control-studios/secrets/brockington-trace-fastlane.env")
  ]

  env_files.each do |path|
    next unless File.exist?(path)

    File.readlines(path, chomp: true).each do |line|
      stripped = line.strip
      next if stripped.empty? || stripped.start_with?("#") || !stripped.include?("=")

      key, value = stripped.split("=", 2)
      key = key.strip
      value = value.strip
      value = value[1..-2] if value.length >= 2 && ((value.start_with?("\"") && value.end_with?("\"")) || (value.start_with?("'") && value.end_with?("'")))
      ENV[key] = value if ENV[key].to_s.empty?
    end

    warn "Loaded Fastlane env from #{path}"
  end
end

def connect_api_login!(user)
  load_fastlane_env!

  has_key_file = ENV["ASC_KEY_FILEPATH"].to_s.length.positive?
  has_key_content = ENV["ASC_KEY_CONTENT"].to_s.length.positive?
  required_api_fields = ENV["ASC_KEY_ID"].to_s.length.positive? && ENV["ASC_ISSUER_ID"].to_s.length.positive?

  if required_api_fields && (has_key_file || has_key_content)
    token_options = {
      key_id: ENV.fetch("ASC_KEY_ID"),
      issuer_id: ENV.fetch("ASC_ISSUER_ID"),
      duration: (ENV["ASC_TOKEN_DURATION"] || "1200").to_i,
      in_house: false
    }
    if has_key_file
      token_options[:filepath] = ENV.fetch("ASC_KEY_FILEPATH")
    else
      token_options[:key] = ENV.fetch("ASC_KEY_CONTENT")
      token_options[:is_key_content_base64] = ENV["ASC_KEY_CONTENT_BASE64"] == "1"
    end

    Spaceship::ConnectAPI.token = Spaceship::ConnectAPI::Token.create(**token_options)
    return
  end

  abort "FASTLANE_PASSWORD or App Store Connect API key env must be set" unless ENV["FASTLANE_PASSWORD"]

  Spaceship::ConnectAPI.login(user, ENV.fetch("FASTLANE_PASSWORD"))
end

options = {
  team_id: "T5XL63445V",
  user: ENV["FASTLANE_USER"] || "henry@controlstudios.net"
}

OptionParser.new do |parser|
  parser.on("--bundle-id VALUE") { |v| options[:bundle_id] = v }
  parser.on("--json VALUE") { |v| options[:json] = v }
  parser.on("--user VALUE") { |v| options[:user] = v }
end.parse!

abort "Missing --bundle-id" unless options[:bundle_id]
abort "Missing --json" unless options[:json]

data = JSON.parse(File.read(options[:json]))

connect_api_login!(options[:user])
app = Spaceship::ConnectAPI::App.find(options[:bundle_id])
abort "App not found for #{options[:bundle_id]}" unless app

if data["beta_app_review_info"]
  review = data["beta_app_review_info"]
  mapping = {
    "contact_email" => :contactEmail,
    "contact_first_name" => :contactFirstName,
    "contact_last_name" => :contactLastName,
    "contact_phone" => :contactPhone,
    "demo_account_name" => :demoAccountName,
    "demo_account_password" => :demoAccountPassword,
    "demo_account_required" => :demoAccountRequired,
    "notes" => :notes
  }
  attrs = mapping.each_with_object({}) { |(from, to), h| h[to] = review[from] if review.key?(from) }
  Spaceship::ConnectAPI.patch_beta_app_review_detail(app_id: app.id, attributes: attrs)
  puts "updated beta app review detail"
end

if data["localized_app_info"]
  existing = app.get_beta_app_localizations.each_with_object({}) { |loc, h| h[loc.locale] = loc }
  data["localized_app_info"].each do |locale, values|
    attrs = {}
    attrs[:feedbackEmail] = values["feedback_email"] if values["feedback_email"]
    attrs[:marketingUrl] = values["marketing_url"] if values["marketing_url"]
    attrs[:privacyPolicyUrl] = values["privacy_policy_url"] if values["privacy_policy_url"]
    attrs[:description] = values["description"] if values["description"]
    if existing[locale]
      Spaceship::ConnectAPI.patch_beta_app_localizations(localization_id: existing[locale].id, attributes: attrs)
      puts "updated beta app localization #{locale}"
    else
      attrs[:locale] = locale
      Spaceship::ConnectAPI.post_beta_app_localizations(app_id: app.id, attributes: attrs)
      puts "created beta app localization #{locale}"
    end
  end
end

if data["localized_build_info"]
  build_number = data["build_number"] || "2"
  builds = Spaceship::ConnectAPI.get_builds(
    filter: { app: app.id, version: build_number },
    includes: "app,buildBetaDetail,preReleaseVersion",
    limit: 10,
    sort: "-uploadedDate"
  ).to_models
  build = builds.find { |candidate| candidate.version == build_number } || builds.first
  abort "No build found for build number #{build_number}" unless build

  existing = build.get_beta_build_localizations.each_with_object({}) { |loc, h| h[loc.locale] = loc }
  data["localized_build_info"].each do |locale, values|
    attrs = { whatsNew: values.fetch("whats_new") }
    if existing[locale]
      Spaceship::ConnectAPI.patch_beta_build_localizations(localization_id: existing[locale].id, attributes: attrs)
      puts "updated beta build localization #{locale} for build #{build.version}"
    else
      attrs[:locale] = locale
      Spaceship::ConnectAPI.post_beta_build_localizations(build_id: build.id, attributes: attrs)
      puts "created beta build localization #{locale} for build #{build.version}"
    end
  end
end
