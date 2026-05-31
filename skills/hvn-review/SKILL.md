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

1. Read the latest approved spec, approved scope, diff, and verification evidence from Linear or the opt-out record.
2. Verify the change maps to spec requirements and does not include casual scope expansion.
3. Inspect whether routing selected the most specific appropriate installed skill.
4. Check whether authenticity preflight was required and followed.
5. For writing, check rhythm, specificity, tone, filler, and point of view.
6. For design, check templated patterns, generic visual tropes, and indistinct first impression.
7. Inspect changed behavior and contracts against acceptance criteria.
8. Identify likely bugs and regressions.
9. Mark findings that should become regression packs.
10. Check test and validation coverage against spec verification criteria.
11. Prioritize findings by severity.
12. Post or prepare a review comment with decision and next gate.
13. Update run memory and regression candidates.
14. State residual risk when no blocking findings exist.

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
- Reviewing against inferred intent instead of the approved spec.
- Ignoring implementation that exceeds current scope.

## Relationship To Other HVN Skills And Commands

Pairs with `hvn-design`, `hvn-security`, and `hvn-ship`.
