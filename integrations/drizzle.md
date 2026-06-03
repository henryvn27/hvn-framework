# Drizzle

- Category: backend and data
- Priority tier: tier 2
- Ideal use cases: SQL-forward typed database access with lighter abstraction
- Setup requirements: schema definitions, migration or push workflow, DB config
- Permissions or credentials: database connection string
- Supported workflows: typed SQL access, migration workflows, app backends
- Validation steps: schema compiles, migrations or push flow documented, runtime target compatible
- Common failure modes: drift between SQL intent and generated files, unclear migration workflow
- Related ORCA Framework commands or docs: `orca-integration`, `integration-validation.md`
- Related integrations: Postgres, Neon, Railway
- Risk notes: teams should choose one database access style intentionally
- Web, mobile, or platform caveats: backend concern across platforms
