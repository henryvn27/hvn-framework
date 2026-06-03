# Hosts And Harnesses

ORCA is portable, but it should not pretend every host exposes the same controls.

| Host | ORCA Expectation |
| --- | --- |
| Codex | Prefer native goals, side sessions, subagents, and tool affordances when available. Fall back to portable artifacts when a feature is missing. |
| Claude Code | Prefer native slash commands and side conversations when clearly supported. Keep ORCA contracts stable when host behavior differs. |
| Unknown host | Run the portable workflow only. Do not claim native support without evidence. |

## Read Next

- `docs/compatibility-matrix.md`
- `docs/hosts/codex-cli.md`
- `docs/hosts/claude-code.md`
- `docs/harness-capability-matrix.md`
