# Control Studios TestFlight Release Runbook

## Inspect

Use bounded commands. Examples:

```bash
rg -n "PRODUCT_BUNDLE_IDENTIFIER|MARKETING_VERSION|CURRENT_PROJECT_VERSION|DEVELOPMENT_TEAM|CODE_SIGN|scheme|bundle" -S .
xcodebuild -list -project App.xcodeproj
xcodebuild -showBuildSettings -project App.xcodeproj -scheme App -configuration Release | rg "PRODUCT_BUNDLE_IDENTIFIER|MARKETING_VERSION|CURRENT_PROJECT_VERSION|DEVELOPMENT_TEAM|CODE_SIGN|PROVISIONING"
```

## App Store Connect Creation

Create app/bundle id if missing:

```bash
FASTLANE_USER="henry@controlstudios.net" \
FASTLANE_PASSWORD="$APPLE_ID_PASSWORD" \
fastlane produce \
  --team_id T5XL63445V \
  --app_identifier "$BUNDLE_ID" \
  --app_name "$APP_NAME" \
  --sku "$SKU" \
  --platform ios \
  --language en-US
```

Create/download/install App Store profile:

```bash
FASTLANE_USER="henry@controlstudios.net" \
FASTLANE_PASSWORD="$APPLE_ID_PASSWORD" \
fastlane sigh \
  --username henry@controlstudios.net \
  --team_id T5XL63445V \
  --app_identifier "$BUNDLE_ID" \
  --force \
  --filename "${APP_NAME}_AppStore.mobileprovision" \
  --output_path build/profiles
```

## Archive

Preferred for Xcode projects:

```bash
xcodebuild \
  -project App.xcodeproj \
  -scheme App \
  -configuration Release \
  -destination "generic/platform=iOS" \
  -archivePath build/AppStoreArchive/App.xcarchive \
  archive
```

Verify signing:

```bash
plutil -p build/AppStoreArchive/App.xcarchive/Info.plist | rg "CFBundleIdentifier|CFBundleShortVersionString|CFBundleVersion|SigningIdentity|Team"
```

Expected signing:

```text
SigningIdentity = Apple Distribution: Control Studios Brand LLC (T5XL63445V)
Team = T5XL63445V
```

## Export Options

Use an App Store Connect export plist similar to:

```xml
<dict>
  <key>destination</key>
  <string>export</string>
  <key>method</key>
  <string>app-store-connect</string>
  <key>provisioningProfiles</key>
  <dict>
    <key>com.example.bundle</key>
    <string>com.example.bundle AppStore</string>
  </dict>
  <key>signingCertificate</key>
  <string>Apple Distribution</string>
  <key>signingStyle</key>
  <string>manual</string>
  <key>stripSwiftSymbols</key>
  <true/>
  <key>teamID</key>
  <string>T5XL63445V</string>
  <key>uploadSymbols</key>
  <true/>
</dict>
```

Export:

```bash
xcodebuild -exportArchive \
  -archivePath build/AppStoreArchive/App.xcarchive \
  -exportPath build/AppStoreExport \
  -exportOptionsPlist release/ExportOptions-AppStoreExport.plist
```

## Upload

```bash
FASTLANE_USER="henry@controlstudios.net" \
FASTLANE_PASSWORD="$APPLE_ID_PASSWORD" \
FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD="$APP_SPECIFIC_PASSWORD" \
fastlane pilot upload \
  --username henry@controlstudios.net \
  --team_id T5XL63445V \
  --app_identifier "$BUNDLE_ID" \
  --ipa build/AppStoreExport/App.ipa \
  --skip_waiting_for_build_processing true
```

Success text to preserve:

```text
Successfully uploaded package to App Store Connect.
Successfully uploaded the new binary to App Store Connect
```

## Common Blockers

- `Missing password`: no Apple ID password/session for Fastlane.
- `Please sign in with an app-specific password`: Transporter needs `FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD`.
- `No profiles for '<bundle id>'`: create/download/install App Store profile with `sigh`.
- Archive signed with Apple Development: Release signing is not pinned to Apple Distribution/App Store profile.
- Dependency signing conflict: command-line signing settings leaked into SwiftPM/package targets. Move signing settings to the app target config instead.
- Fastlane build lookup error like `'betaBuildMetrics' is not a valid relationship name`: upload may still have succeeded; verify in App Store Connect or use lower-level Spaceship calls with includes excluding `betaBuildMetrics`.

