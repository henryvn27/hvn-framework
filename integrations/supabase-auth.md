# Supabase Auth

- Category: auth
- Priority tier: tier 2
- Ideal use cases: teams already using Supabase as app backend
- Setup requirements: auth providers, redirect or deep-link config, user-data model
- Permissions or credentials: Supabase project config, provider credentials if used
- Supported workflows: sign-in, sign-up, social auth, session handling
- Validation steps: providers configured, client envs present, redirect or deep-link flow verified
- Common failure modes: no user-data ownership plan, redirect mismatch, mobile deep-link gaps
- Related ORCA-HVN commands or docs: `orca-validate-integration`, `mobile-vs-web-integrations.md`
- Related integrations: Supabase, Expo, React Native, Next.js
- Risk notes: auth setup should include user-data and authorization decisions
- Web, mobile, or platform caveats: same backend, different client flow expectations
