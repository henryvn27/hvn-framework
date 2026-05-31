# MCP Review Workflow

Use this workflow before adding a new MCP server or expanding an existing server's permissions.

## Review Steps

1. Identify the server, source, owner, version, and installation path.
2. List exposed tools and the actions they can take.
3. Identify data access, mutation rights, network access, and command-execution capability.
4. Define allowed contexts and blocked contexts.
5. Decide trust status: `allowed`, `allowed with constraints`, `approval required`, or `blocked`.
6. Define parameter validation and logging expectations.
7. Record the decision in the MCP registry.
8. Add approval or checkpoint requirements for high-risk calls.

## Review Output

Use [templates/mcp-review.md](../templates/mcp-review.md).

## Approval Rule

If the server can mutate user data, repos, releases, deployments, credentials, billing, or permissions, default to `approval required` until a maintainer explicitly approves narrower use.

## Re-Review Triggers

Re-review when:

- version changes
- tool list changes
- permission scope changes
- ownership changes
- a tool call produces unexpected side effects
