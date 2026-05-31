---
name: orca-linear-release
description: Validate ship readiness in Linear issue-native terms before recommending done.
---

# ORCA-HVN Linear Release

## What This Skill Is

The release gate workflow for Linear-first ORCA-HVN projects.

## Trigger

Use for `Ready to Ship`, `ready-to-ship`, release candidate, or done-transition requests.

## Do Not Trigger

Do not use when review or QA gates are incomplete unless the goal is to identify blockers.

## Required Inputs

- Issue ID
- Verification evidence
- Review and QA status

## Optional Inputs

- Release notes
- Rollback plan
- Follow-up issues

## Exact Workflow

1. Read the issue thread and linked artifacts.
2. Confirm spec, plan approval, implementation, review, QA, security, and regression status.
3. Post a ship checklist.
4. Recommend done only when evidence is present.
5. Create or recommend follow-up issues for deferred work.

## Expected Outputs

- Linear ship readiness comment
- Done or blocked recommendation

## Quality Bar

The issue should not move to done on trust; it moves with evidence.

## Common Failure Modes

- Treating merged code as shipped without QA.
- Omitting rollback guidance.
- Losing follow-up work after release.

## Relationship To Other ORCA-HVN Skills And Commands

Pairs with `orca-ship`, `orca-retro`, and `orca-linear-ship-check`.
