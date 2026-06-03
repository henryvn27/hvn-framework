# Commands

Use this page to route intent. The source of truth for exact behavior is `commands/`.

## Core Path

| Intent | Command |
| --- | --- |
| Set up the project and user preferences | `orca-onboard` |
| Define the work | `orca-spec` |
| Break it into stages | `orca-plan` |
| Execute one bounded slice | `orca-build` |
| Review the result | `orca-review` |
| Decide the next move | `orca-next` |

## Coordination

| Intent | Command |
| --- | --- |
| Run autonomous work with a done condition | `orca-goal` |
| Continue bounded unattended work | `orca-background` |
| Coordinate subagents | `orca-controller` |
| Explain what is happening | `orca-explain` |
| Open a side conversation when the host supports it | `orca-side-session` |
| Export local status for Orca Monitor | `orca-monitor-status` |

## References

- Full index: `docs/command-index.md`
- Command contracts: `commands/`
- Host mapping: `docs/command-mapping.md`
