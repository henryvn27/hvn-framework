---
name: orca-linear-executor
description: Execute approved Linear issue scope and keep implementation progress synchronized to the issue thread.
---

# ORCA-HVN Linear Executor

## What This Skill Is

The Linear-aware build execution workflow.

## Trigger

Use when an issue is approved for build or assigned to a build agent.

## Do Not Trigger

Do not use when approval is required but missing.

## Required Inputs

- Issue ID
- Approved plan or approved scope

## Optional Inputs

- Branch name
- PR link
- Test commands

## Exact Workflow

1. Confirm the plan is approved when required.
2. Implement only approved scope.
3. Post progress comments at meaningful phase boundaries.
4. Link branches, PRs, validation output, and blockers.
5. Route scope changes back to planning.

## Expected Outputs

- Implementation updates
- Verification evidence
- Review handoff comment

## Quality Bar

The issue thread should show what changed, why, and how it was verified.

## Common Failure Modes

- Building unapproved scope.
- Posting vague progress.
- Failing to surface implementation blockers.

## Relationship To Other ORCA-HVN Skills And Commands

Pairs with `orca-build`, `orca-review`, and `orca-linear-sync`.
