---
name: orca-regression-task
description: Turn QA, review, or debugging findings into structured regression tasks with deterministic verification where possible.
---

# ORCA-HVN Regression Task

## What This Skill Is

A workflow for converting findings into reusable regression tasks instead of letting them disappear after a fix.

## Trigger

Use when blind QA, briefed QA, review, design review, bug review, or debugging reveals a repeated or high-value risk worth preserving.

## Do Not Trigger

Do not promote every weak or ambiguous finding into a regression task.

## Required Inputs

- Source finding
- Affected surface

## Optional Inputs

- Related issue
- Fix summary
- Logs, screenshots, or reproduction notes

## Exact Workflow

1. Capture the finding as a regression candidate.
2. Decide whether the candidate should be test now, backlog, or watch only.
3. If promoted, write a structured regression task.
4. Preserve deterministic reproduction and verification steps where possible.
5. Record fragility and environment risk instead of hiding it.

## Expected Outputs

- Filled `templates/regression-candidate.md`
- Filled `templates/regression-task.md` when promoted

## Quality Bar

A maintainer should be able to tell what to test, why it matters, and how stable the check is likely to be.

## Common Failure Modes

- generating vague retest notes
- forcing automation before the scenario is deterministic
- losing the link back to the original finding

## Relationship To Other ORCA-HVN Skills And Commands

Works with `orca-test-blind`, `orca-test-briefed`, `orca-test-regression`, `orca-review`, and `orca-regression-task`.
