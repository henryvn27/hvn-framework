---
name: hvn-debug
description: Diagnose and fix defects against the approved HVN spec without expanding scope.
---

# HVN Debug

## What This Skill Is

A debugging workflow that treats the latest approved spec as the expected behavior contract.

## Trigger

Use when a bug, failing test, QA finding, review finding, or user-reported defect needs diagnosis and repair.

## Do Not Trigger

Do not use for open-ended redesign, feature expansion, or speculative cleanup.

## Required Inputs

- Bug report, failing test, QA finding, or review finding
- Latest approved spec or explicit task contract

## Optional Inputs

- Run memory
- Linear issue
- Logs
- Reproduction steps
- Regression pack

## Exact Workflow

1. Read the latest approved spec first.
2. Identify which requirement, acceptance criterion, or verification criterion is failing.
3. Reproduce or inspect the failure with available tools.
4. Separate confirmed facts from assumptions.
5. Diagnose the smallest likely cause.
6. Fix only the defect or spec-approved scope.
7. If the expected behavior has changed, stop and update the spec before implementing new behavior.
8. Run verification mapped to the failing criterion.
9. Add or update regression coverage when the defect is likely to recur.
10. Update run memory and Linear or the opt-out record with the fix, verification, and any spec deviation.

## Expected Outputs

- Diagnosis summary
- Scoped fix
- Verification evidence
- Regression candidate when relevant
- Run memory update

## Quality Bar

The fix should satisfy the spec criterion without introducing unrelated behavior.

## Common Failure Modes

- Fixing symptoms without identifying the failing spec criterion.
- Expanding scope during a bug fix.
- Treating changed requirements as a bug.
- Claiming verification without evidence.

## Relationship To Other HVN Skills And Commands

Pairs with `hvn-build`, `hvn-review`, `hvn-web-qa`, and `hvn-regression-pack`.
