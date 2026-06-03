# Prisma

- Category: backend and data
- Priority tier: tier 2
- Ideal use cases: typed data access, migrations, app-service backends
- Setup requirements: schema file, datasource config, client generation
- Permissions or credentials: database connection string
- Supported workflows: schema modeling, migrations, typed queries
- Validation steps: schema valid, client generates, migrations apply safely
- Common failure modes: drift between DB and schema, unsupported runtime assumptions, migration ownership unclear
- Related ORCA Framework commands or docs: `orca-integration`, `integration-validation.md`
- Related integrations: Postgres, Neon, Vercel
- Risk notes: generated client convenience does not remove migration discipline
- Web, mobile, or platform caveats: backend tooling, not a client-side mobile layer
