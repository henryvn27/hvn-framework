# hvn-goal-status

## Purpose

Summarize current goal lifecycle state for handoff, inspection, or resume.

## When To Use

Use when a goal is active, paused, completed, cleared, blocked, or being handed off.

## Required Inputs

- Goal contract or host goal status

## Optional Inputs

- Trace
- Run memory
- Shared state
- Verification result

## Workflow

1. Read goal contract and host status when available.
2. Summarize lifecycle state, progress, blocker, verification, and approvals.
3. Update goal status artifact and run memory when needed.

## Outputs And Artifacts

- `templates/goal-status.md`

## Failure Cases

- If host status is unavailable, mark it unknown and rely on HVN artifacts.

## Related Commands And Skills

- Commands: `hvn-inspect`, `hvn-state`, `hvn-trace`
- Skills: `hvn-goal-mode`
