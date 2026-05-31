# Paddle

- Category: payments
- Priority tier: tier 3
- Ideal use cases: web SaaS with merchant-of-record preference
- Setup requirements: Paddle account, products, checkout integration
- Permissions or credentials: API credentials and dashboard access
- Supported workflows: web checkout, subscription billing, MoR flows
- Validation steps: products configured, checkout path tested, webhook or event handling configured
- Common failure modes: tax or product assumptions not mapped, webhook handling incomplete
- Related ORCA-HVN commands or docs: `orca-integration`, `web-stack-guide.md`
- Related integrations: Next.js, Vercel, PostHog
- Risk notes: web-centric billing path with its own operational model
- Web, mobile, or platform caveats: web-first, not native mobile subscription guidance
