# Sentry

- Category: analytics and monitoring
- Priority tier: tier 1
- Ideal use cases: runtime monitoring, error reporting, release health
- Setup requirements: SDK install, DSN, environment tagging
- Permissions or credentials: project DSN and dashboard access
- Supported workflows: error capture, release diagnostics, crash triage
- Validation steps: SDK present, DSN configured, test error appears
- Common failure modes: SDK installed but environment tagging weak, source maps or release markers missing
- Related ORCA-HVN commands or docs: `orca-integration`, `integration-validation.md`
- Related integrations: Next.js, Expo, React Native, Crashlytics, Vercel
- Risk notes: noisy low-context errors reduce usefulness
- Web, mobile, or platform caveats: works across web and mobile, but mobile crash patterns differ
