---
name: orca-session-improvement
description: Review a completed session for reusable ORCA-HVN framework friction, filter weak candidates, and prepare user-approved issue drafts.
---

# ORCA-HVN Session Improvement

## What This Skill Is

A lightweight end-of-session improvement workflow that turns real session friction into actionable framework backlog work.

## Trigger

Use after meaningful sessions, blocked sessions, retros, or repeated framework friction.

## Do Not Trigger

Do not use for trivial sessions or for project-specific pain that does not belong to ORCA-HVN itself.

## Required Inputs

- Session summary

## Optional Inputs

- Receipt
- Trace
- Review findings
- QA notes
- Existing issue references

## Exact Workflow

1. Fill a brief session review.
2. Capture candidate framework improvements only.
3. Classify the category.
4. Run an issue-worthiness check.
5. Check for duplicates or close overlap.
6. If still warranted, prepare a concise approval prompt for the user.
7. If approved, draft a structured ORCA-HVN issue or link context to an existing one.
8. Record the candidate in the improvement backlog when follow-up is still pending.

## Expected Outputs

- Filled `templates/session-improvement-review.md`
- Filled `templates/framework-improvement-note.md`
- Filled `templates/issue-worthiness-check.md`
- Optional `templates/related-issue-note.md`
- Optional `templates/hvn-framework-issue.md`
- Optional `templates/improvement-backlog-entry.md`

## Quality Bar

The loop should stay lightweight, high-signal, deduplicated, and clearly separated from project-specific issue flow.

## Common Failure Modes

- treating every inconvenience as a framework issue
- mixing project bugs with framework gaps
- prompting the user before checking whether the candidate is actionable
- filing duplicates instead of merging evidence
- submitting externally without explicit approval

## Relationship To Other ORCA-HVN Skills And Commands

Works with `orca-retro`, `orca-review`, `orca-inspect`, `orca-status`, receipts, traces, and the docs or automation maintenance layer.
