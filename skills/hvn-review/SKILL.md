---
name: hvn-review
description: Review changes for bugs, regressions, maintainability, tests, and release risk.
---

# HVN Review

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

1. Inspect changed behavior and contracts.
2. Identify likely bugs and regressions.
3. Check test and validation coverage.
4. Prioritize findings by severity.
5. State residual risk when no blocking findings exist.

## Expected Outputs

- Filled `templates/review-report.md`

## Quality Bar

Findings must be actionable, grounded in evidence, and ordered by impact.

## Common Failure Modes

- Summarizing instead of reviewing.
- Reporting style preferences as defects.
- Missing tests for behavior changes.

## Relationship To Other HVN Skills And Commands

Pairs with `hvn-design`, `hvn-security`, and `hvn-ship`.
