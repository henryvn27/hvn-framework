# Expo EAS

- Category: mobile
- Priority tier: tier 1
- Ideal use cases: managed builds, store submissions, OTA-capable release workflows
- Setup requirements: Expo account, EAS CLI, project config, build profiles
- Permissions or credentials: Expo account, store credentials when releasing
- Supported workflows: build, submit, update, release-channel planning
- Validation steps: EAS project linked, build profiles present, `eas build` path documented, update strategy explicit
- Common failure modes: Expo app with no EAS setup, missing profiles, OTA assumptions without compatible build
- Related ORCA-HVN commands or docs: `orca-setup-integration`, `orca-validate-integration`, `guides/expo-guide.md`
- Related integrations: Expo, React Native, Sentry, RevenueCat, OneSignal
- Risk notes: OTA updates do not replace store submissions for native-layer changes
- Web, mobile, or platform caveats: mobile-only release system
