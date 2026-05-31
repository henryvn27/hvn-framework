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

1. Read approved scope, diff, and verification evidence from Linear or the opt-out record.
2. Inspect whether routing selected the most specific appropriate installed skill.
3. Check whether authenticity preflight was required and followed.
4. For writing, check rhythm, specificity, tone, filler, and point of view.
5. For design, check templated patterns, generic visual tropes, and indistinct first impression.
6. Inspect changed behavior and contracts.
7. Identify likely bugs and regressions.
8. Check test and validation coverage.
9. Prioritize findings by severity.
10. Post or prepare a review comment with decision and next gate.
11. State residual risk when no blocking findings exist.

## Expected Outputs

- Filled `templates/review-report.md`
- `templates/linear-review-comment.md` when Linear-first mode is active
- `templates/authenticity-review.md` when authenticity mattered

## Quality Bar

Findings must be actionable, grounded in evidence, and ordered by impact.

## Common Failure Modes

- Summarizing instead of reviewing.
- Reporting style preferences as defects.
- Missing tests for behavior changes.

## Relationship To Other HVN Skills And Commands

Pairs with `hvn-design`, `hvn-security`, and `hvn-ship`.
