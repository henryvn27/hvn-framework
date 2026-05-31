# Firebase Auth

- Category: auth
- Priority tier: tier 2
- Ideal use cases: mobile-first apps and teams already on Firebase
- Setup requirements: Firebase project, enabled providers, SDK config
- Permissions or credentials: Firebase project credentials and provider credentials
- Supported workflows: email, phone, and provider auth
- Validation steps: project configured, provider enabled, client auth flow works
- Common failure modes: provider setup incomplete, auth data model unclear, mobile deep-link handling weak
- Related ORCA-HVN commands or docs: `orca-integration`, `mobile-stack-guide.md`
- Related integrations: Firebase, Crashlytics, Expo, React Native
- Risk notes: auth success still needs backend authorization planning
- Web, mobile, or platform caveats: strong mobile fit with web support when needed
