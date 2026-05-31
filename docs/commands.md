# Commands

Commands are installable prompt definitions stored in `commands/`. Each command has a consistent shape:

- Purpose
- When to use
- Required inputs
- Optional inputs
- Linear context or opt-out equivalent
- Workflow
- Outputs and artifacts
- Failure cases
- Related commands and skills

## Linear Commands

- `hvn-linear-setup`
- `hvn-linear-intake`
- `hvn-linear-sync`
- `hvn-linear-plan-comment`
- `hvn-linear-qa-report`
- `hvn-linear-ship-check`

These commands read from and post back to Linear issues when Linear-first mode is active. In opt-out mode, they can be adapted to the chosen system of record.

## Core Commands

- `hvn-help`
- `hvn-onboard`
- `hvn-discover`
- `hvn-research`
- `hvn-spec`
- `hvn-plan`
- `hvn-build`
- `hvn-review`
- `hvn-design`
- `hvn-test-blind`
- `hvn-test-briefed`
- `hvn-test-regression`
- `hvn-security`
- `hvn-ship`
- `hvn-retro`

## Command Triggering

Linear state, labels, comments, and agent delegation should trigger command selection. Example:

- `needs-spec` triggers `hvn-spec`.
- `Spec Ready` triggers `hvn-linear-plan-comment`.
- `Ready for Build` triggers `hvn-build` after approval.
- `In QA` plus `blind-qa` triggers `hvn-test-blind`.
- `Ready to Ship` triggers `hvn-linear-ship-check`.
