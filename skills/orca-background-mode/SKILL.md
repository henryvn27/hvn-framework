---
name: orca-background-mode
description: Run bounded unattended ORCA-HVN progress loops with clear autonomy levels, loop guards, permission handling, and resumable receipts.
---

# ORCA-HVN Background Mode

## What This Skill Is

A guarded autonomy workflow for unattended progress.

## Trigger

Use when the user explicitly asks ORCA-HVN to keep making progress while they are away or asleep.

## Do Not Trigger

Do not use for vague "keep improving things" requests without scope, limits, or stop conditions.

## Required Inputs

- task, milestone, goal, or work item

## Optional Inputs

- autonomy level
- risk tier
- time budget
- step budget
- allowed scope

## Exact Workflow

1. Define or read a background run contract.
2. Classify the task type and risk tier.
3. Set hard limits for time and steps.
4. Choose the lowest sufficient autonomy level.
5. Require each iteration to add new evidence, structure, or artifact progress.
6. Trigger circuit breakers on repeated failures, repeated blocked permissions, or semantic repetition.
7. Stop with one final state and emit a background run receipt.
8. Make the run resumable through status, receipts, and prior contract state.

## Expected Outputs

- background run contract
- background run plan
- background run receipt
- blocked-permission note when relevant

## Quality Bar

The run should make real bounded progress or stop cleanly. It should never rely on "maybe the next retry will work" as its core strategy.

## Common Failure Modes

- unattended scope creep
- retrying the same blocked permission
- rewriting the same plan without new evidence
- taking Tier 3 actions in unattended mode
- ending without a final state

## Relationship To Other ORCA-HVN Skills And Commands

Works with goal mode, runtime adaptation, receipts, lineage, status, checkpoints, and stage budgets.
