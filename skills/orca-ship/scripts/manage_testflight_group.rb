#!/opt/homebrew/opt/ruby/bin/ruby
# frozen_string_literal: true

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
  user: ENV["FASTLANE_USER"] || "henry@controlstudios.net",
  group: nil,
  public_limit: 10_000
}

OptionParser.new do |parser|
  parser.on("--bundle-id VALUE") { |v| options[:bundle_id] = v }
  parser.on("--group VALUE") { |v| options[:group] = v }
  parser.on("--tester-email VALUE") { |v| options[:tester_email] = v }
  parser.on("--tester-first VALUE") { |v| options[:tester_first] = v }
  parser.on("--tester-last VALUE") { |v| options[:tester_last] = v }
  parser.on("--build-number VALUE") { |v| options[:build_number] = v }
  parser.on("--enable-public-link") { options[:enable_public_link] = true }
  parser.on("--public-limit VALUE") { |v| options[:public_limit] = Integer(v) }
  parser.on("--user VALUE") { |v| options[:user] = v }
end.parse!

abort "Missing --bundle-id" unless options[:bundle_id]
abort "Missing --group" unless options[:group]

connect_api_login!(options[:user])
app = Spaceship::ConnectAPI::App.find(options[:bundle_id])
abort "App not found for #{options[:bundle_id]}" unless app

groups = Spaceship::ConnectAPI.get_beta_groups(filter: { app: app.id }, includes: "betaTesters", limit: 200).all_pages.flat_map(&:to_models)
group = groups.find { |candidate| candidate.name == options[:group] }

unless group
  group = Spaceship::ConnectAPI.create_beta_group(
    app_id: app.id,
    group_name: options[:group],
    is_internal_group: false,
    public_link_enabled: false
  ).to_models.first
  puts "created group #{group.name} id=#{group.id}"
else
  puts "group exists #{group.name} id=#{group.id}"
end

if options[:tester_email]
  tester = Spaceship::ConnectAPI::BetaTester.find(email: options[:tester_email], includes: "betaGroups")
  if tester
    puts "tester exists #{options[:tester_email]} id=#{tester.id}"
    begin
      group.add_beta_testers(beta_tester_ids: [tester.id])
      puts "associated tester with #{group.name}"
    rescue => e
      raise unless e.message =~ /already|relationship|409/i
      puts "tester already associated with #{group.name}"
    end
  else
    tester = Spaceship::ConnectAPI.post_beta_tester_assignment(
      beta_group_ids: [group.id],
      attributes: {
        email: options[:tester_email],
        firstName: options[:tester_first] || "",
        lastName: options[:tester_last] || ""
      }
    ).to_models.first
    puts "created tester #{options[:tester_email]} id=#{tester.id} and associated with #{group.name}"
  end
end

if options[:build_number]
  builds = Spaceship::ConnectAPI.get_builds(
    filter: { app: app.id, version: options[:build_number] },
    includes: "app,buildBetaDetail,preReleaseVersion",
    limit: 10,
    sort: "-uploadedDate"
  ).to_models
  build = builds.find { |candidate| candidate.version == options[:build_number] } || builds.first
  if build
    begin
      build.add_beta_groups(beta_groups: [group])
      puts "associated build #{build.version} with #{group.name}"
    rescue => e
      raise unless e.message =~ /already|relationship|409/i
      puts "build already associated with #{group.name}"
    end
  else
    warn "no build found for #{options[:build_number]}"
  end
end

if options[:enable_public_link]
  group.update(attributes: {
    public_link_enabled: true,
    public_link_limit_enabled: true,
    public_link_limit: options[:public_limit]
  })
  refreshed = Spaceship::ConnectAPI.get_beta_groups(filter: { app: app.id }, includes: nil, limit: 200).all_pages.flat_map(&:to_models).find { |candidate| candidate.id == group.id }
  puts "public link enabled for #{group.name}"
  puts "public_link=#{refreshed.public_link}" if refreshed&.public_link
end
