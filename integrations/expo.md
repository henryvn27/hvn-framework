# Expo

- Category: mobile
- Priority tier: tier 1
- Ideal use cases: fast mobile app delivery, shared React Native skill path, Android and iOS plus optional web
- Setup requirements: Expo project, Expo CLI, app config, device or simulator workflow
- Permissions or credentials: Expo account for hosted services where needed
- Supported workflows: local dev, device previews, managed app iteration, OTA-aware planning
- Validation steps: `npx expo start` works, app opens on device or simulator, app config is valid
- Common failure modes: unclear managed-versus-native expectations, missing EAS setup for build workflows, tunnel misuse as permanent default
- Related ORCA-HVN commands or docs: `orca-integration`, `orca-setup-integration`, `guides/expo-guide.md`, `mobile-stack-guide.md`
- Related integrations: React Native, Expo EAS, RevenueCat, OneSignal, Sentry
- Risk notes: easy start does not remove native release and billing constraints
- Web, mobile, or platform caveats: first-class mobile path; treat store workflows differently from web deploys
