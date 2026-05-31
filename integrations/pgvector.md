# pgvector

- Category: AI and app-infra extras
- Priority tier: tier 2
- Ideal use cases: vector search inside Postgres-centric stacks
- Setup requirements: extension enabled, embedding strategy, query path
- Permissions or credentials: database access
- Supported workflows: in-database vector retrieval
- Validation steps: extension enabled, query path works, retrieval quality evaluated
- Common failure modes: adding vectors with no evaluation plan, performance assumptions not tested
- Related ORCA-HVN commands or docs: `orca-integration`, `evals.md`
- Related integrations: Postgres, Supabase, OpenAI
- Risk notes: simple setup still needs retrieval-quality validation
- Web, mobile, or platform caveats: backend concern
