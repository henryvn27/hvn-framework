---
name: orca-retro
description: Capture outcomes, lessons, failure patterns, and follow-up improvements after completed work.
---

# ORCA-HVN Retro

## What This Skill Is

A learning workflow for improving future ORCA-HVN work.

## Trigger

Use after release, incident, major feature, or substantial agent workflow.

## Do Not Trigger

Do not use before the work has an outcome to examine.

## Required Inputs

- Completed work summary

## Optional Inputs

- Spec
- Plan
- Review report
- QA reports
- Release notes

## Exact Workflow

1. Read the issue, project, or opt-out record for outcome evidence.
2. Compare outcome to the original spec.
3. Identify what worked, what failed, and what surprised the team.
4. Convert lessons into concrete follow-ups.
5. Note any framework improvements.
6. Post or prepare the retrospective for the durable record.
7. If the framework-improvement note or quality-signal evidence is reusable and actionable, route it through the session improvement loop.

## Expected Outputs

- Filled `templates/retrospective.md`

## Quality Bar

The retro should change future behavior, not merely describe the past.

## Common Failure Modes

- Writing vague lessons.
- Avoiding uncomfortable causes.
- Creating follow-ups without triggers or owners.

## Relationship To Other ORCA-HVN Skills And Commands

Feeds future onboarding, planning, framework updates, and `orca-improve-framework`.
