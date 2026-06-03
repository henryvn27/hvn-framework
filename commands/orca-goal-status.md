# orca-goal-status

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
2. For Codex or Claude Code, prefer native `/goal` status before falling back to artifacts.
3. Summarize lifecycle state, progress, blocker, verification, and approvals.
4. Update goal status artifact and run memory when needed.

## Outputs And Artifacts

- `templates/goal-status.md`

## Failure Cases

- If host status is unavailable, mark it unknown and rely on ORCA-HVN artifacts.

## Related Commands And Skills

- Commands: `orca-inspect`, `orca-state`, `orca-trace`
- Skills: `orca-goal-mode`
