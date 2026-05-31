# Claude Code Host Adapter

Claude Code documents `/goal` as a session-scoped command that keeps working across turns until a completion condition is met.

## HVN Usage

Use native `/goal` when:

- Claude Code version supports it
- workspace trust requirements are satisfied
- the HVN goal contract is complete
- the completion condition can be evaluated from surfaced evidence

## Lifecycle

Claude Code documents:

- setting a goal with `/goal <condition>`
- viewing status with `/goal`
- clearing with `/goal clear`
- resuming a session with an active goal according to host behavior

HVN should still track lifecycle in `templates/goal-status.md`.

## Fallback

If host requirements are not met, run the same goal contract through normal HVN workflow with shared state, traces, checkpoints, and status artifacts.

## External Tool Setup

Claude Code supports MCP-based tool setup, but individual service availability and authentication depend on the user's local configuration and workspace trust.

| Service | Preferred methods | Verification | Fallback |
| --- | --- | --- | --- |
| GitHub | Claude-supported MCP or host connector when configured | read target repo, issue, or PR before writing | local repo plus manual issue or PR text |
| Linear | Claude-supported MCP path, including Linear's documented MCP option when approved | read target issue before posting comments | pasted Linear issue plus local comment artifacts |

Use conservative setup language. If MCP auth fails or the server is unavailable, switch to manual artifacts instead of blocking unrelated local work.

## Sources

- https://code.claude.com/docs/en/goal
- https://code.claude.com/docs/en/commands
- https://code.claude.com/docs/en/mcp
