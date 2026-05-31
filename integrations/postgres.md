# Postgres

- Category: backend and data
- Priority tier: tier 2
- Ideal use cases: core relational data storage, product databases, internal tools
- Setup requirements: hosted Postgres or managed service, schema plan, migration path
- Permissions or credentials: database credentials
- Supported workflows: schema design, migrations, app data layer
- Validation steps: connectivity works, migration tool chosen, backup and env split documented
- Common failure modes: schema drift, migration uncertainty, app and analytics data mixed carelessly
- Related ORCA-HVN commands or docs: `orca-integration`, `integration-validation.md`
- Related integrations: Supabase, Neon, Prisma, Drizzle, Railway
- Risk notes: durable data decisions need explicit ownership
- Web, mobile, or platform caveats: backend concern across platforms
