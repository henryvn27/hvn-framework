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

1. Confirm the approved scope from Linear or the opt-out record.
2. Read relevant files before editing.
3. Preserve user changes and existing patterns.
4. Make the smallest coherent change that satisfies the phase.
5. Run appropriate verification.
6. Record what changed and what could not be verified in the durable record.

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
