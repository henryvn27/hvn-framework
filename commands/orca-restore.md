# orca-restore

## Purpose

Restore a workflow from a checkpoint, known-good artifact state, or prior safe boundary.

## When To Use

Use after failed goal runs, risky rollout changes, broken harness paths, or interrupted execution where a known restore point exists.

## Required Inputs

- restore point, checkpoint, or known-good artifact set

## Optional Inputs

- target harness
- active runtime policy
- reason for restore

## Workflow

1. Identify the restore point.
2. Confirm which artifacts remain valid.
3. Re-establish the safe workflow state.
4. Record what was restored and what remains degraded or blocked.

## Outputs And Artifacts

- restore summary linked from runtime status or receipt

## Failure Cases

- If the restore point is stale or incomplete, say so directly.
- If external state makes restore unsafe, stop and escalate.

## Related Commands And Skills

- Commands: `orca-replay`, `orca-status`, `orca-checkpoint`
