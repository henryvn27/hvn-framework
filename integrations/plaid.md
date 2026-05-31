# Plaid

- Category: payments
- Priority tier: tier 3
- Ideal use cases: bank-linking and financial data flows, not core subscription billing
- Setup requirements: Plaid app, environment keys, sandbox or production setup
- Permissions or credentials: Plaid credentials
- Supported workflows: bank account linking, financial data retrieval
- Validation steps: key presence, link flow works, environment matches target
- Common failure modes: using Plaid as if it were a subscription processor, sandbox assumptions leaking into prod
- Related ORCA-HVN commands or docs: `orca-integration`, `mobile-vs-web-integrations.md`
- Related integrations: Stripe, Postgres
- Risk notes: financial-data flows need precise scope and compliance handling
- Web, mobile, or platform caveats: do not flatten into the same bucket as Stripe or RevenueCat
