# Side Sessions

ORCA-HVN uses "side session" as a portable concept for work that should stay adjacent to the main execution thread instead of hijacking it.

This is a framework behavior first, not a promise that every harness exposes the same UI.

## Two Side-Session Modes

### Quick Side Question

Use this for:

- "what file was that again?"
- "why did you choose this?"
- "what changed?"
- "sanity check this assumption"

Preferred behavior:

- if the harness supports an ephemeral side-question primitive such as `/btw`, use it
- keep the answer short
- do not mutate the repo
- do not turn it into a long back-and-forth workflow

### Durable Side Session

Use this for:

- interactive explanation
- extended review discussion
- design critique
- ideation or product debate
- research interpretation that should not derail the main build thread

Preferred behavior:

- open a separate thread, side pane, or popout when the harness clearly supports it
- otherwise keep it separate by framing and artifact
- keep execution ownership in the main thread
- emit a structured handoff when the side session should trigger action

## Default ORCA-HVN Mapping

| Need | ORCA-HVN path | Expected behavior |
| --- | --- | --- |
| Quick question without derailing the main thread | `orca-btw` concept or host-native `/btw` | one-shot side answer, usually ephemeral |
| Interactive "what is happening and why?" conversation | `orca-explain` | durable explanation session with follow-up questions |
| Adjacent critique or synthesis | `orca-review`, `orca-design`, `orca-research`, `orca-idea` in side-session mode when useful | separate analysis thread or framed side artifact |

## Command Candidates

The strongest ORCA-HVN candidates for side sessions are:

- `orca-explain`
- `orca-review`
- `orca-design`
- `orca-research`
- `orca-idea`

These commands produce better outcomes when interpretation stays separate from the main executor thread.

Commands such as `orca-build`, `orca-ship`, and `orca-update` should stay in the main execution path unless a side session is only providing commentary or review.

## Safety Rules

- side sessions are non-mutating by default
- the main thread still owns execution
- if the side session reaches a clear action request, produce a handoff instead of silently executing there
- do not claim a side pane, popout, or `/btw` primitive unless the active harness actually supports it
