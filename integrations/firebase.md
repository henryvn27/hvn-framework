# Firebase

- Category: mobile
- Priority tier: tier 2
- Ideal use cases: mobile-first backend needs, auth, messaging, analytics, app services
- Setup requirements: Firebase project, app registration, SDK setup
- Permissions or credentials: Firebase project access and app credentials
- Supported workflows: auth, push plumbing, analytics, backend helpers
- Validation steps: project linked, SDK config present, chosen Firebase services documented
- Common failure modes: app registered but service choices unclear, mixing Firebase and Supabase responsibilities with no boundary
- Related ORCA Framework commands or docs: `orca-integration`, `mobile-stack-guide.md`
- Related integrations: Firebase Auth, Crashlytics, OneSignal, Expo, React Native
- Risk notes: service sprawl if teams enable many modules without an app architecture decision
- Web, mobile, or platform caveats: strong mobile fit, but still needs explicit platform handling
