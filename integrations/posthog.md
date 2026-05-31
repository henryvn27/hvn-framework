# PostHog

- Category: analytics and monitoring
- Priority tier: tier 1
- Ideal use cases: product analytics, event tracking, feature experiments
- Setup requirements: project, SDK install, event plan
- Permissions or credentials: API key or project credentials
- Supported workflows: event tracking, product analytics, experiment-aware product iteration
- Validation steps: SDK installed, key configured, event plan documented
- Common failure modes: library installed but no event plan, noisy inconsistent events, environment confusion
- Related ORCA-HVN commands or docs: `orca-integration`, `integration-validation.md`, `saas-stack-guide.md`
- Related integrations: Next.js, Expo, Sentry
- Risk notes: analytics without an event plan becomes dead weight
- Web, mobile, or platform caveats: works across platforms, but web and mobile event semantics differ
