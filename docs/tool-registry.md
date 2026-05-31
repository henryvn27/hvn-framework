# Tool Registry

The ORCA-HVN tool registry records which external tools and MCP servers are trusted, constrained, approval-required, or blocked.

## Location

- Tools: `registry/tools/`
- MCP servers: `registry/mcp-servers/`

## Entry Templates

- [templates/tool-registry-entry.md](../templates/tool-registry-entry.md)
- [templates/mcp-server-entry.md](../templates/mcp-server-entry.md)

## Registry Rules

- Prefer allowlists over blocklists.
- Treat missing registry entries as `approval required`.
- Record review dates and permission scopes.
- Keep risky behaviors explicit.
- Link approval or checkpoint artifacts when a tool is allowed only after human review.

## Review Cadence

Review entries when:

- a tool or server version changes
- permission scope changes
- new risky behavior is discovered
- a security incident or near miss occurs
- the tool becomes part of a release or deploy workflow

## Audit Expectations

For meaningful tool use, traces or inspection artifacts should record:

- tool or MCP server used
- purpose of the call
- high-level parameters or parameter class
- whether approval was required
- artifact or result produced

Do not log secrets or raw credential values.
