---
name: orca-approval-gate
description: Decide when risky work must pause for approval and record the approval request clearly.
---

# ORCA Framework Approval Gate

## What This Skill Is

A policy workflow for deciding whether work can proceed automatically or needs approval first.

## Trigger

Use before destructive actions, broad refactors, installer changes, dependency upgrades, release-risk decisions, or scope expansion.

## Do Not Trigger

Do not use for low-risk discovery, documentation, or already approved narrow work.

## Required Inputs

- Proposed action
- Risk and scope summary

## Optional Inputs

- Related spec or plan
- Verification plan
- Rollback plan

## Exact Workflow

1. Classify the proposed action and blast radius.
2. Decide whether the action is safe to proceed, needs approval, or should stop.
3. If approval is needed, write a request using `templates/approval-request.md`.
4. Record the decision in the durable work record.
5. If approval is denied or delayed, propose the safest next move.

## Expected Outputs

- Filled `templates/approval-request.md` when approval is needed

## Quality Bar

A maintainer should understand the risk, decision, and next step quickly.

## Common Failure Modes

- Treating low confidence as permission to proceed.
- Requesting approval without stating the blast radius.
- Expanding scope while waiting for approval.

## Relationship To Other ORCA Framework Skills And Commands

Supports `orca-plan`, `orca-build`, `orca-approve`, `orca-security-check`, and `orca-ship`.
