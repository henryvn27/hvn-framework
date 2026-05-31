# Command Mapping

ORCA-HVN command mapping separates the logical framework command from host-specific slash commands.

## ORCA-HVN Goal Commands

- `orca-goal`: decide whether goal mode is appropriate
- `orca-goal-create`: generate a goal contract
- `orca-goal-status`: summarize lifecycle state
- `orca-goal-review`: review goal quality and safety

## Host Mapping

| ORCA-HVN action | Codex CLI | Claude Code | Hermes Agent | Fallback |
| --- | --- | --- | --- | --- |
| Create goal | `/goal <objective>` when available | `/goal <condition>` when available | verify local support first | create goal contract and run normal ORCA-HVN workflow |
| View status | `/goal` when available | `/goal` when available | verify local support first | update `templates/goal-status.md` |
| Pause or stop | host lifecycle command when available | clear or interrupt according to host docs | verify local support first | checkpoint and status artifact |
| Resume | host resume behavior when available | resume supported sessions according to host docs | verify local support first | resume from shared state and goal status |
| Clear | clear command when available | `/goal clear` when available | verify local support first | mark goal cleared in status artifact |
