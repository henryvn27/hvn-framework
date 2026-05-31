# orca-background

## Purpose

Create, inspect, or revise a bounded ORCA-HVN background run contract.

## When To Use

Use when the user wants ORCA-HVN to continue making progress unattended and the work needs explicit autonomy, scope, and stop conditions.

## Required Inputs

- current task, goal, or work item

## Optional Inputs

- autonomy level
- risk tier
- scope limits
- stage budget

## Workflow

1. Use `orca-background-mode`.
2. Define or read the background run contract.
3. Choose the lowest sufficient autonomy level.
4. Set step, time, scope, and permission limits.
5. Produce a run plan and expected final states.

## Outputs And Artifacts

- `templates/background-run-contract.md`
- `templates/background-run-plan.md`

## Failure Cases

- If the task is too vague, route back to spec, milestone planning, or goal preparation.
- If the task is Tier 3 risk, refuse unattended mode and recommend a checkpointed foreground workflow.

## Related Commands And Skills

- Commands: `orca-keep-going`, `orca-background-status`, `orca-goal`, `orca-checkpoint`
- Skills: `orca-background-mode`
