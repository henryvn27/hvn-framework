# OneSignal

- Category: mobile
- Priority tier: tier 2
- Ideal use cases: mobile push notifications, engagement messaging, user notification flows
- Setup requirements: app setup, SDK install, APNs or FCM credentials
- Permissions or credentials: OneSignal app access, iOS and Android push credentials
- Supported workflows: push setup, permission prompting, notification testing
- Validation steps: SDK present, app initialized, platform credentials configured, test push succeeds
- Common failure modes: SDK installed but platform credentials missing, permission prompting done at the wrong time, Expo or native setup mismatch
- Related ORCA-HVN commands or docs: `orca-setup-integration`, `integration-diagnostics.md`, `docs/examples/mobile-push-onesignal.md`
- Related integrations: Expo, React Native, Firebase, Sentry
- Risk notes: push flows often fail late if not validated on real devices
- Web, mobile, or platform caveats: mobile-first concerns; platform setup differs per OS
