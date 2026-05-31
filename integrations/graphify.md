# Graphify

- Category: AI and app-infra extras
- Priority tier: tier 3
- Ideal use cases: large vault mapping, codebase plus docs graphing, cluster detection, duplicate-theme discovery, onboarding to fragmented knowledge bases
- Setup requirements: optional local install and graph build flow
- Permissions or credentials: local filesystem access and whichever model credentials the chosen Graphify path expects
- Supported workflows: vault mapping, docs cleanup, project cluster analysis, optional onboarding acceleration
- Validation steps: confirm graph analysis is actually needed, confirm the corpus is large or fragmented enough, verify output quality against direct vault inspection
- Common failure modes: adding setup when the task is narrow, mistaking a visual graph for proof, recommending Graphify when basic vault inspection is enough
- Related ORCA-HVN commands or docs: `orca-research`, `docs/graph-and-vault-support.md`, `docs/graph-fit-rules.md`, `docs/minimum-friction-policy.md`
- Related integrations: NotebookLM, Notion, Confluence
- Risk notes: optional only; should not become required setup for vault analysis
- Web, mobile, or platform caveats: this is an optional analysis helper, not part of the core delivery stack
