# orca-keep-going

## Purpose

Continue a current ORCA Framework task in a bounded background run.

## When To Use

Use when the user wants ORCA Framework to keep making progress while they are away and a safe contract can be defined quickly.

## Required Inputs

- current task, contract, goal, or milestone

## Optional Inputs

- autonomy level
- duration
- max steps

## Workflow

1. Use `orca-background-mode`.
2. Read or create the background run contract.
3. Confirm scope, autonomy level, and stop conditions.
4. Run only inside the defined envelope.
5. Stop with one final state and emit a background run receipt.

## Outputs And Artifacts

- `templates/background-run-receipt.md`
- updated runtime or inspection status when needed

## Failure Cases

- If the run needs repeated permission that is unavailable, stop as `blocked-on-permission`.
- If the run loops semantically, stop as `stalled` or `needs-human`.

## Related Commands And Skills

- Commands: `orca-background`, `orca-background-status`, `orca-goal`, `orca-status`
- Skills: `orca-background-mode`
