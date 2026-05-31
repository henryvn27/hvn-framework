---
name: hvn-build
description: Implement planned changes with scoped edits, verification, and respect for existing project patterns.
---

# HVN Build

## What This Skill Is

The implementation workflow for HVN.

## Trigger

Use when the user has asked for code, docs, scripts, or repository changes.

## Do Not Trigger

Do not use when the user only wants brainstorming, review, or research.

## Required Inputs

- Task or spec

## Optional Inputs

- Plan
- Test commands
- Existing artifacts

## Exact Workflow

1. Use `hvn-router` to confirm the most specific installed skill for the task.
2. Confirm the approved scope from Linear or the opt-out record.
3. Read relevant files before editing.
4. Preserve user changes and existing patterns.
5. Preserve stack and functionality unless redesign or rewrite was approved.
6. Make the smallest coherent change that satisfies the phase.
7. Run appropriate verification.
8. Record what changed and what could not be verified in the durable record.

## Expected Outputs

- Completed file changes
- Verification notes
- Updated artifacts or Linear comments when applicable

## Quality Bar

The work should be maintainable by the repo's existing standards and should not leave hidden scaffolding.

## Common Failure Modes

- Rewriting unrelated systems.
- Skipping verification.
- Leaving generated claims unsupported.

## Relationship To Other HVN Skills And Commands

Used by `hvn-build`; followed by review and QA skills.
