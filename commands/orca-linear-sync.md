# orca-linear-sync

## Purpose

Synchronize ORCA-HVN artifacts, state recommendations, and handoff notes back to a Linear issue.

## When To Use

Use after any agent pass that changes scope, plan, verification, QA status, or ship readiness.

## Required Inputs

- Linear issue ID
- Artifact or update summary

## Optional Inputs

- Links to specs, plans, reports, branches, PRs, screenshots, builds, or releases
- Recommended state and labels

## Linear Context

- Reads: latest issue state, labels, comments, and linked artifacts
- Posts: concise status comment with evidence and next action
- Trigger: any ORCA-HVN command completion
- Human approval: required before applying state changes when workspace policy requires manual transitions

## Workflow

1. Compare local artifact status with Linear issue status.
2. Post a comment with context read, work completed, evidence, blockers, and next state.
3. Add links to durable artifacts.
4. Recommend label or state updates.

## Outputs And Artifacts

- Linear sync comment

## Failure Cases

- If Linear auth is blocked, save the exact comment text for manual posting.
- If artifact links are unavailable, paste concise summaries.

## Related Commands And Skills

- Commands: all ORCA-HVN commands
- Skills: `orca-linear-core`
