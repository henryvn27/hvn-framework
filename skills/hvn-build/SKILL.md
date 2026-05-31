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

- Latest approved spec

## Optional Inputs

- Plan
- Test commands
- Existing artifacts

## Exact Workflow

1. Use `hvn-router` to confirm the most specific installed skill for the task.
2. Read the latest approved spec before relying on chat history.
3. Confirm the approved scope, active milestone, and spec version from Linear or the opt-out record.
4. Read run memory and relevant regression packs.
5. Read relevant files before editing.
6. Preserve user changes and existing patterns.
7. Run or apply authenticity preflight when UI or polished writing matters.
8. Preserve stack and functionality unless redesign or rewrite was approved in the spec.
9. Make the smallest coherent change that satisfies the current spec phase.
10. Do not expand scope casually; if requirements changed, update the spec before continuing.
11. Run verification mapped to the spec acceptance criteria and relevant regression packs.
12. Record what changed, which spec criteria were satisfied, deviations, and what could not be verified in the durable record and run memory.

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
- Implementing from loose conversation instead of the latest spec.
- Silently accepting scope creep.

## Relationship To Other HVN Skills And Commands

Used by `hvn-build`; followed by review and QA skills.
