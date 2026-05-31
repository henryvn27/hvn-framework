# Background UX

Background mode should be easy to start, inspect, stop, and resume.

## Primary Commands

- `orca-keep-going`: continue a current task in a bounded unattended run
- `orca-background`: create or inspect the run contract and plan
- `orca-background-status`: inspect the current or last background run

## Core User Flows

### Start

The user says:

- keep making progress on this
- run while I sleep
- keep pushing this forward in the background

ORCA-HVN should:

1. define or confirm the run contract
2. choose the lowest sufficient autonomy level
3. state the stop conditions
4. begin the bounded run

### Inspect

Use `orca-background-status` to show:

- latest run state
- progress summary
- what changed
- blockers
- suggested next unattended run

### Stop

Stopping should preserve:

- latest receipt
- current final state
- open blockers
- resume recommendation

### Resume

Resume should read the prior contract, receipt, and final state before deciding whether to:

- continue
- revise the plan
- stop for human review
