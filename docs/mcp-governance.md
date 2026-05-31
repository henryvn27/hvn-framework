# MCP Governance

MCP servers extend agent capability, but they also expand the trust boundary. HVN does not treat MCP servers as safe by default.

## Default Rule

An MCP server is untrusted until reviewed and registered.

Registration does not mean unrestricted use. It means the server has a documented purpose, trust status, allowed contexts, permissions, and review date.

## Trust Levels

- `allowed`
- `allowed with constraints`
- `approval required`
- `blocked`

## MCP-Specific Risks

Review MCP servers for:

- tool descriptions that overpromise authority
- broad file, browser, calendar, email, repo, or deployment access
- unsafe command execution
- unclear upstream ownership
- automatic updates or unpinned versions
- unbounded output or long-running calls
- confusing names that hide side effects
- data exfiltration risk

## Registry

MCP server entries live in `registry/mcp-servers/` and should follow [templates/mcp-server-entry.md](../templates/mcp-server-entry.md).

## Version And Source Control

Prefer:

- pinned server versions
- known source repositories or package registries
- explicit permission scopes
- narrowly configured tool exposure
- review notes when versions or scopes change

## Operating Rule

If an MCP server can perform high-risk actions, the server may be registered as `allowed with constraints` while specific tool calls remain `approval required`.

Use [docs/mcp-review-workflow.md](mcp-review-workflow.md) before adding or expanding MCP access.
