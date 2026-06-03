# Clerk

- Category: auth
- Priority tier: tier 2
- Ideal use cases: polished auth for web SaaS and some multi-platform cases
- Setup requirements: project setup, keys, app integration
- Permissions or credentials: Clerk keys and dashboard access
- Supported workflows: sign-in, sign-up, session handling, user management
- Validation steps: keys present, auth flow works, middleware or client integration documented
- Common failure modes: middleware mismatch, redirect confusion, auth UI without backend role mapping
- Related ORCA Framework commands or docs: `orca-integration`, `saas-stack-guide.md`
- Related integrations: Next.js, Stripe, PostHog
- Risk notes: auth UX polish does not replace authorization design
- Web, mobile, or platform caveats: strongest as a web SaaS default
