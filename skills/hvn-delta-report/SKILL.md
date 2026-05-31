---
name: hvn-delta-report
description: Compare blind QA and briefed QA to identify product clarity gaps.
---

# HVN Delta Report

## What This Skill Is

A QA insight workflow comparing first-look experience against lightly briefed retesting.

## Trigger

Use after blind QA and briefed QA have both been completed for the same issue or surface.

## Do Not Trigger

Do not use when the blind pass was contaminated or when only one QA pass exists.

## Required Inputs

- Blind QA report
- Briefed QA report
- Context brief

## Optional Inputs

- Linear issue
- Screenshots
- Accessibility notes

## Exact Workflow

1. Confirm both reports refer to the same product surface.
2. Compare task completion, confusion, trust, clarity, and blockers.
3. Identify issues that disappeared with context.
4. Identify issues that remained after context.
5. Explain what the gap reveals about onboarding, copy, IA, hierarchy, or functionality.
6. Recommend fix, follow-up, or ship decision.

## Expected Outputs

- `templates/blind-to-briefed-delta.md`

## Quality Bar

The report should produce product insight, not a mechanical diff.

## Common Failure Modes

- Treating a briefed pass as proof the blind issue no longer matters.
- Comparing different builds without saying so.
- Ignoring trust and clarity signals.

## Relationship To Other HVN Skills And Commands

Uses `hvn-blind-qa`, `hvn-context-brief`, `hvn-linear-qa`, and `hvn-ship`.
