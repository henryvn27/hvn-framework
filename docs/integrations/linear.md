# Linear Integration

Linear integration is useful when Linear is the system of record for ORCA-HVN intake, planning, QA, review, and ship readiness.

## When Linear Is Required

Require Linear setup when ORCA-HVN must:

- read the source issue directly
- post specs, plans, QA reports, review notes, or ship checks
- update issue state or labels
- create or link follow-up issues
- inspect project, team, or cycle context

## When Linear Is Optional

Linear is optional when:

- the user pastes issue context manually
- the team uses another system of record
- ORCA-HVN can write local artifacts for later posting
- the next phase does not require tracker writes

## Setup Paths

- Native connector: use when the harness provides a Linear connector.
- Remote MCP: use Linear's official endpoint `https://mcp.linear.app/mcp` when the host supports remote MCP and the user approves that setup.
- API token: use only when the environment already supports scoped tokens safely.
- Manual: paste issue context and write local comments or artifacts for later posting.

Do not assume remote MCP setup works the same way in every host.

Codex-specific note:

- enable `[features] experimental_use_rmcp_client = true` in `~/.codex/config.toml`
- then use `codex mcp add linear --url https://mcp.linear.app/mcp`
- use `codex mcp login linear` for the auth flow
- if interactive auth is blocked, use the documented bearer-token path only in a secure secret-managed environment

## Validation

Prefer non-destructive checks:

- confirm the workspace or team is reachable
- read the target issue
- confirm comment or update capability only when required
- verify the issue, project, and state names ORCA-HVN will use

If write validation is risky, use a smoke-test issue or ask the user before posting.

Runtime adaptation should avoid recommending direct Linear sync as the default when the harness profile marks Linear integration as partial or unclear.

## Fallback

If Linear is unavailable, ORCA-HVN can still:

- work from pasted issue context
- produce local spec, plan, QA, review, and ship artifacts
- ask the user to paste updates into Linear
- map Linear states to another tracker temporarily
- record that Linear is blocked and note the exact issue or project update that still needs to be posted later

## Sources

- https://linear.app/docs/mcp
- https://linear.app/docs
