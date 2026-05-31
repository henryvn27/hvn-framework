# NotebookLM

- Category: AI and app-infra extras
- Priority tier: tier 2
- Ideal use cases: research synthesis, document-grounded Q&A, study notebooks, project knowledge collections, evidence gathering for ideation
- Setup requirements: either NotebookLM Enterprise access with Google Cloud setup or a user-managed community path such as MCP or browser automation
- Permissions or credentials: enterprise IAM roles and licensing for the official path, or Google account plus local tool setup for community paths
- Supported workflows: research, business ideation, documentation digestion, project orientation, controller-agent knowledge support
- Validation steps: confirm which integration mode applies, verify access, verify notebook reachability, verify risk tolerance for the chosen path
- Common failure modes: assuming a universal public API exists, mixing personal and enterprise sharing assumptions, relying on unofficial browser automation without caveats, recommending NotebookLM when the workflow is not knowledge-heavy
- Related ORCA-HVN commands or docs: `orca-integration`, `orca-setup-integration`, `orca-recommend-stack`, `docs/notebooklm-integration-modes.md`, `docs/notebooklm-validation.md`
- Related integrations: Notion, Confluence, Google Drive, OpenAI, Anthropic
- Risk notes: official and unofficial paths are not equivalent; browser-driven automation should be treated as user-managed and higher-risk
- Web, mobile, or platform caveats: this is a knowledge and research layer, not a deployment, billing, or runtime infrastructure default
