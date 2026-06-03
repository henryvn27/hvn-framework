---
name: orca-build
description: Implement planned changes with scoped edits, verification, and respect for existing project patterns.
---

# ORCA-HVN Build

## What This Skill Is

The implementation workflow for ORCA-HVN.

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
5. For user-facing async data, include loading, empty, and error states; prefer skeleton frames when the eventual layout is known and the surface would otherwise look blank.
6. If the user wants the official wrapped execution pack and Superpowers is the stronger fit, route that segment there instead of reproducing the upstream workflow locally.
7. Run appropriate verification.
8. Record what changed and what could not be verified in the durable record.

## Expected Outputs

- Completed file changes
- Verification notes
- Updated artifacts or Linear comments when applicable

## Quality Bar

The work should be maintainable by the repo's existing standards and should not leave hidden scaffolding.
User-facing async work should not feel visually broken while data is in flight.

## Common Failure Modes

- Rewriting unrelated systems.
- Skipping verification.
- Leaving generated claims unsupported.

## Relationship To Other ORCA-HVN Skills And Commands

Used by `orca-build`; may pair with `orca-superpowers`; followed by review and QA skills.
