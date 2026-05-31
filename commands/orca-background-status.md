# orca-background-status

## Purpose

Summarize the current or latest background run.

## When To Use

Use when the user or controller needs to inspect unattended progress, blockers, final state, or resume readiness.

## Required Inputs

- current project or task context

## Optional Inputs

- specific background run reference

## Workflow

1. Read the latest background contract, plan, and receipt.
2. Report final state, progress summary, and blockers.
3. Report whether resume is sensible.
4. Recommend the next unattended or human-reviewed step.

## Outputs And Artifacts

- latest background run receipt
- related status or lineage artifacts when relevant

## Failure Cases

- If no background run exists, say so directly and recommend `orca-background`.

## Related Commands And Skills

- Commands: `orca-background`, `orca-keep-going`, `orca-status`, `orca-inspect`
- Skills: `orca-background-mode`
