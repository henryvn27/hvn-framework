# OpenAI

- Category: AI and app-infra extras
- Priority tier: tier 1
- Ideal use cases: app AI features, generation, classification, embeddings, evals
- Setup requirements: API access, model choice, prompt or safety design
- Permissions or credentials: API key
- Supported workflows: AI product features, evals, tracing via adjacent tooling
- Validation steps: key present, chosen models documented, cost and safety path considered
- Common failure modes: no eval path, no token or cost visibility plan, prompt sprawl
- Related ORCA-HVN commands or docs: `orca-integration`, `token-efficiency.md`, `evals.md`
- Related integrations: pgvector, Pinecone, Langfuse, Helicone
- Risk notes: runtime cost, safety, and evaluation should stay explicit
- Web, mobile, or platform caveats: backend or edge concern more than direct mobile-client secret handling
