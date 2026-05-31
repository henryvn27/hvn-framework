# Neon

- Category: backend and data
- Priority tier: tier 2
- Ideal use cases: serverless Postgres, branching-friendly product teams
- Setup requirements: Neon project, connection strings, migration plan
- Permissions or credentials: project or database credentials
- Supported workflows: Postgres hosting, environment branching, app data layer
- Validation steps: connection works, branch strategy documented, ORM configured
- Common failure modes: env confusion, branch drift, unclear production migration path
- Related ORCA-HVN commands or docs: `orca-setup-integration`, `integration-validation.md`
- Related integrations: Postgres, Prisma, Drizzle, Vercel
- Risk notes: branch convenience can hide schema discipline gaps
- Web, mobile, or platform caveats: backend concern, often paired with web stacks
