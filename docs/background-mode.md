# Background Mode

ORCA-HVN background mode is an explicit, opt-in way to keep making bounded progress while the user is away.

This is not "run forever." It is structured autonomous progress inside a defined envelope.

## Purpose

Use background mode when the user wants ORCA-HVN to continue moving a task forward without constant supervision.

Good examples:

- research and note-taking
- draft documentation
- QA preparation
- test-writing passes in a narrow area
- bounded local refactors with clear receipts
- backlog triage, grouping, or work-item extraction

## What Background Mode Is

Background mode is:

- opt-in
- bounded by time, steps, scope, and risk
- stateful and resumable
- receipt-driven
- interruption-friendly
- conservative about permissions and destructive actions

## What Background Mode Is Not

Background mode is not:

- indefinite autonomous execution
- a replacement for approval gates
- permissionless external action
- a license to keep retrying the same blocked move
- a closed loop with no inspectable output

## Autonomy Levels

Treat autonomy as a budget, not a binary.

### Read-Only

- analysis
- research
- inspection
- planning
- note generation

### Low-Risk Writes

- local documentation edits
- local note updates
- small scoped test additions
- low-risk local file changes inside an approved area

### Full Local Writes

- broader local edits within approved directories
- multiple-file refactors
- implementation work that still stays inside the run contract

### Tool-Limited

- same as one of the levels above, but with an explicit allowlist of tools and services

Background mode should always choose the lowest autonomy level that still makes progress.
If a foreground move is clearer and lower-friction, prefer it over background ceremony.

When integrations are involved, background mode should prefer:

- read-only validation first
- local artifact prep over external writes
- platform-aware diagnostics instead of guessing a stack path
- explicit stop conditions when mobile release, billing, auth, or push setup is incomplete

## Recommended Use Cases

- overnight research
- while-away refactor planning
- morning-ready receipts for local implementation slices
- queue processing where the queue and stop conditions are explicit
- draft generation that a human can review later

## Discouraged Or Disallowed Use Cases

Do not use unattended background mode for:

- mass deletion
- broad rewrites without a checkpoint
- live production changes
- irreversible external messaging
- actions that depend on interactive secrets or approvals

## Core Artifacts

- [templates/background-run-contract.md](../templates/background-run-contract.md)
- [templates/background-run-plan.md](../templates/background-run-plan.md)
- [templates/background-run-receipt.md](../templates/background-run-receipt.md)

## Final States

Every background run must end in one clear state:

- completed
- partial-progress
- failed
- blocked-on-permission
- blocked-on-information
- needs-human
- stalled

Do not leave a background run in an ambiguous "still thinking" state.

If a background run repeatedly exposes the same missing guardrail, missing status surface, or awkward permission flow, capture that in the session improvement loop rather than treating it as an isolated annoyance.
