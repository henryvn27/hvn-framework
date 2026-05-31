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

## Sources

- https://code.claude.com/docs/en/goal
- https://code.claude.com/docs/en/commands
