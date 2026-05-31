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
- `hvn-trace`
- `hvn-state`
- `hvn-metrics`
- `hvn-checkpoint`
- `hvn-inspect`
- `hvn-benchmark`
- `hvn-eval`
- `hvn-approve`
- `hvn-review`
- `hvn-design`
- `hvn-test-blind`
- `hvn-test-briefed`
- `hvn-test-regression`
- `hvn-regression-task`
- `hvn-security`
- `hvn-security-check`
- `hvn-ship`
- `hvn-retro`

## Command Triggering

Linear state, labels, comments, and agent delegation should trigger command selection. Example:

- `needs-spec` triggers `hvn-spec`.
- `Spec Ready` triggers `hvn-linear-plan-comment`.
- `Ready for Build` triggers `hvn-build` after `hvn-approve` when approval is required.
- `In QA` plus `blind-qa` triggers `hvn-test-blind`.
- `Ready to Ship` triggers `hvn-linear-ship-check`.

Use `hvn-trace` and `hvn-eval` when the workflow itself needs review, not just the product artifact.
Use `hvn-metrics` when elapsed time, retries, or optional usage signals matter, and `hvn-benchmark` when onboarding/spec quality should be compared over time.
Use `hvn-state`, `hvn-checkpoint`, and `hvn-inspect` when multiple roles need a shared current view or when a run must pause and resume safely.
