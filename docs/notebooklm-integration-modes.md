# NotebookLM Integration Modes

NotebookLM support in ORCA Framework is conditional. It should help users who chose NotebookLM or clearly need a notebook-oriented research surface, but it should not imply one universal integration path.

## Mode A: Official Enterprise Path

Use this path when the user has NotebookLM Enterprise or Gemini Enterprise access through Google Cloud.

What this path supports:

- notebook creation and management through documented Google Cloud APIs
- source management through documented APIs
- enterprise sharing and IAM-backed access control
- integration with Gemini Enterprise web-app workflows where supported

What this path requires:

- a Google Cloud project
- billing
- Discovery Engine API enabled
- NotebookLM Enterprise roles and licenses
- enterprise identity and permission setup

What to be honest about:

- this is not a simple public consumer API
- the documented APIs are primarily management and source operations, not a universal general-purpose NotebookLM chat API
- some features remain preview or allowlist-limited

## Mode B: Community Or Unofficial Path

Use this path when the user wants NotebookLM integrated into agents or automation outside the enterprise API surface.

Typical mechanisms:

- MCP servers
- browser automation
- export or import helpers
- local wrappers around NotebookLM browser workflows

What this path can be good for:

- user-managed research workflows
- agent-assisted notebook queries
- controller-agent knowledge lookups
- citation-grounded synthesis if the chosen tool actually exposes it

What to be honest about:

- these paths are not official Google integrations
- they may depend on browser sessions, cookies, or visible login flows
- they may break when the NotebookLM UI or auth flow changes
- they can create higher operational and account-risk than the official path

## ORCA Framework Handling Rule

- If the user explicitly asks for NotebookLM, help them choose the right mode.
- If they already use NotebookLM, support their chosen path instead of arguing for a different tool.
- If the workflow is research-heavy and NotebookLM is a clear fit, it can be suggested conditionally.
- If the fit is weak or unclear, stay neutral.
