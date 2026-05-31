# RevenueCat

- Category: payments
- Priority tier: tier 1
- Ideal use cases: mobile subscriptions and cross-platform entitlement management
- Setup requirements: RevenueCat project, store products, SDK integration, entitlement model
- Permissions or credentials: RevenueCat account, store credentials through platform portals
- Supported workflows: subscription orchestration, entitlement sync, mobile purchase handling
- Validation steps: products configured, entitlements documented, store path chosen, SDK installed
- Common failure modes: using a web billing mental model for native subscriptions, missing store product mapping, unclear entitlement naming
- Related ORCA-HVN commands or docs: `orca-integration`, `mobile-vs-web-integrations.md`, `docs/examples/mobile-subscriptions-revenuecat.md`
- Related integrations: Expo, React Native, Stripe, Firebase, Supabase
- Risk notes: do not flatten RevenueCat and Stripe into the same native digital-purchase recommendation
- Web, mobile, or platform caveats: primary recommendation for native digital subscriptions; different from normal web checkout
