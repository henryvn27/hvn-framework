# Pinecone

- Category: AI and app-infra extras
- Priority tier: tier 3
- Ideal use cases: vector search for retrieval-backed AI features
- Setup requirements: index setup, embedding plan, retrieval architecture
- Permissions or credentials: API key
- Supported workflows: vector retrieval and RAG architectures
- Validation steps: index reachable, embedding dimension matches, retrieval path tested
- Common failure modes: no retrieval evaluation, vague indexing strategy, stale embeddings
- Related ORCA-HVN commands or docs: `orca-integration`, `evals.md`
- Related integrations: OpenAI, Anthropic, Langfuse
- Risk notes: do not add vector storage without a retrieval quality reason
- Web, mobile, or platform caveats: backend concern
