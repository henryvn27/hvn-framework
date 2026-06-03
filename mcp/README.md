# MCP Examples

ORCA-HVN includes example MCP snippets for QA workflows. These files are not universal configuration files; adapt command names and paths to your agent client and installed MCP servers.

- `linear.example.json` shows the intended shape for Linear coordination when using Linear's official remote MCP endpoint through an MCP-compatible host.
- `ios-simulator.example.json` shows the intended shape for simulator QA.
- `browser.example.json` shows the intended shape for browser QA.

Use the examples with `orca-linear-setup`, `orca-linear-core`, `orca-ios-sim-qa`, and `orca-web-qa`. Keep credentials in your agent client's secret store.

MCP servers are not trusted by default. Review [docs/mcp-governance.md](../docs/mcp-governance.md) and [docs/mcp-review-workflow.md](../docs/mcp-review-workflow.md) before adding or expanding a server. Registry entries belong in `registry/mcp-servers/`.
