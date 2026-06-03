# Command Mapping

ORCA-HVN command mapping separates the logical framework command from host-specific slash commands.

## ORCA-HVN Goal Commands

- `orca-goal`: decide whether goal mode is appropriate
- `orca-goal-create`: generate a goal contract
- `orca-goal-status`: summarize lifecycle state
- `orca-goal-review`: review goal quality and safety

## ORCA-HVN Explain Command

- `orca-explain`: start a dedicated explanation session and keep follow-up questions inside that session until a handoff back to execution is needed

## ORCA-HVN Side-Session Shortcut

- `orca-btw`: portable shortcut for a quick side question when the host exposes an ephemeral side-chat primitive

## ORCA-HVN Questioning

- onboarding, install, and setup interviews should prefer structured harness question tools when the host exposes them
- fall back to concise grouped text questions only when no better question surface exists

## Host Mapping

| ORCA-HVN action | Codex CLI | Claude Code | Fallback |
| --- | --- | --- | --- |
| Create goal | `/goal <objective>` | `/goal <condition>` when hooks and workspace trust permit it | create goal contract and run normal ORCA-HVN workflow |
| View status | `/goal` | `/goal` | update `templates/goal-status.md` |
| Pause or stop | `/goal pause` when the user wants to stop without clearing the objective | `/goal clear` or interrupt according to host docs | checkpoint and status artifact |
| Resume | `/goal resume` | resume the Claude session; active goals restore on session resume according to host docs | resume from shared state and goal status |
| Clear | `/goal clear` | `/goal clear` | mark goal cleared in status artifact |

## Explain Mapping

| ORCA-HVN action | Codex CLI | Claude Code | Fallback |
| --- | --- | --- | --- |
| Start explain | use a separate explanation session or thread when the host clearly supports it; otherwise frame a distinct `orca-explain` session in the current conversation | use a separate explanation session or thread when the host clearly supports it; otherwise frame a distinct `orca-explain` session in the current conversation | create `templates/explanation-session.md` and keep the session separate by framing |
| Ask follow-up | keep follow-up questions inside the explanation session | keep follow-up questions inside the explanation session | continue the explanation artifact and thread |
| Handoff back to execution | emit a structured handoff to the main thread instead of doing the work inside explain mode | emit a structured handoff to the main thread instead of doing the work inside explain mode | point back to the main workflow command and capture handoff notes in the explanation artifact |

## Quick Side Question Mapping

| ORCA-HVN action | Codex CLI | Claude Code | Fallback |
| --- | --- | --- | --- |
| Ask quick side question | use a separate thread or popout only when the active Codex surface clearly supports it; no documented Codex `/btw` equivalent should be assumed | use `/btw <question>` for one-shot side questions when available | ask inline and label it as a quick non-mutating side question |
| Continue with follow-up | open `orca-explain` or another durable side session if back-and-forth is needed | switch from `/btw` to `orca-explain` if the user needs follow-up turns or tool-backed reasoning | continue in a framed `orca-explain` session |

## Structured Question Mapping

| ORCA-HVN action | Codex CLI | Claude Code | Fallback |
| --- | --- | --- | --- |
| Setup or onboarding interview | use a host-native structured question or input tool when the active Codex surface exposes one; prefer that over dumping many raw questions into the thread | use a host-native structured question or input tool when the active Claude surface exposes one; otherwise keep the interview short and grouped | ask concise grouped text questions and stop when the next answer would not materially change the path |

## Best-Fit Side-Session Commands

The best ORCA-HVN commands to run in a side session when the host supports it are:

- `orca-explain`
- `orca-review`
- `orca-design`
- `orca-research`
- `orca-idea`
