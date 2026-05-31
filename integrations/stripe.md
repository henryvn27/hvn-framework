# Stripe

- Category: payments
- Priority tier: tier 1
- Ideal use cases: web billing, subscriptions, checkout, SaaS payments
- Setup requirements: Stripe account, products or prices, webhook handling
- Permissions or credentials: API keys, webhook secret
- Supported workflows: web subscriptions, checkout, billing, payment flows
- Validation steps: keys present, product model defined, webhook path tested
- Common failure modes: missing webhook handling, environment key mixups, using Stripe where native app-store billing is required
- Related ORCA-HVN commands or docs: `orca-integration`, `saas-stack-guide.md`, `mobile-vs-web-integrations.md`
- Related integrations: Next.js, Vercel, RevenueCat, PostHog
- Risk notes: do not use Stripe as the default answer for native in-app digital subscriptions
- Web, mobile, or platform caveats: first-class for web billing; not a generic substitute for app-store purchase flows
