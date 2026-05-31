---
name: hvn-ship
description: Prepare release readiness checks, release notes, rollback guidance, and handoff.
---

# HVN Ship

## What This Skill Is

A final release-readiness workflow.

## Trigger

Use when implementation, review, and QA are complete or when preparing a public release.

## Do Not Trigger

Do not use to bypass incomplete review, QA, or security gates.

## Required Inputs

- Completed work summary
- Verification evidence

## Optional Inputs

- Version number
- Deployment instructions
- Known residual risks

## Exact Workflow

1. Confirm acceptance criteria.
2. Confirm review, QA, and security status.
3. Run final validation where available.
4. Prepare release notes, rollback guidance, and follow-ups.
5. Mark blockers clearly if release should not proceed.

## Expected Outputs

- Filled `templates/ship-checklist.md`

## Quality Bar

Shipping output should let another maintainer release or defer with clear reasoning.

## Common Failure Modes

- Calling work shipped with failed validation.
- Missing rollback or recovery instructions.
- Hiding incomplete gates.

## Relationship To Other HVN Skills And Commands

Uses outputs from review, QA, security, and regression skills.
