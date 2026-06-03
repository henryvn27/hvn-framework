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
3. When describing current work, say what is being changed or checked in concrete terms, such as `rerunning provider QA on the save flow` or `updating the release checklist`, instead of saying only `using ORCA` or `running ORCA`.
4. Report whether resume is sensible.
5. Recommend the next unattended or human-reviewed step.

## Outputs And Artifacts

- latest background run receipt
- related status or lineage artifacts when relevant

## Failure Cases

- If no background run exists, say so directly and recommend `orca-background`.

## Related Commands And Skills

- Commands: `orca-background`, `orca-keep-going`, `orca-status`, `orca-inspect`
- Skills: `orca-background-mode`
