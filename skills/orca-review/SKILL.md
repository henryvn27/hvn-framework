---
name: orca-review
description: Review changes for bugs, regressions, maintainability, tests, and release risk.
---

# ORCA-HVN Review

## What This Skill Is

A code and artifact review workflow.

## Trigger

Use before QA or release, or when the user asks for a review.

## Do Not Trigger

Do not use as a substitute for blind QA.

## Required Inputs

- Diff, changed files, or artifact set

## Optional Inputs

- Spec
- Test output
- Risk notes

## Exact Workflow

1. Read approved scope, diff, and verification evidence from Linear or the opt-out record.
2. Inspect changed behavior and contracts.
3. Identify likely bugs and regressions.
4. Check test and validation coverage.
5. Prioritize findings by severity.
6. Post or prepare a review comment with decision and next gate.
7. State residual risk when no blocking findings exist.

## Expected Outputs

- Filled `templates/review-report.md`
- `templates/linear-review-comment.md` when Linear-first mode is active

## Quality Bar

Findings must be actionable, grounded in evidence, and ordered by impact.

## Common Failure Modes

- Summarizing instead of reviewing.
- Reporting style preferences as defects.
- Missing tests for behavior changes.

## Relationship To Other ORCA-HVN Skills And Commands

Pairs with `orca-design`, `orca-security`, and `orca-ship`.
