---
name: hvn-context-brief
description: Create bounded context packets for briefed QA and layered retesting.
---

# HVN Context Brief

## What This Skill Is

A workflow for preparing limited context packets after blind QA.

## Trigger

Use before briefed QA, targeted retesting, or regression testing.

## Do Not Trigger

Do not use before the blind pass is complete unless blind QA has been explicitly waived.

## Required Inputs

- QA goal
- Context source

## Optional Inputs

- Blind QA report
- Acceptance criteria
- Known fixes

## Exact Workflow

1. Define the pass type: blind, briefed, or informed.
2. List included context.
3. List withheld context.
4. Include only what the tester needs for the pass.
5. State contamination risk and allowed tools.

## Expected Outputs

- Context packet embedded in `templates/guided-qa-report.md` or a standalone brief

## Quality Bar

The packet should be small, explicit, and impossible to confuse with full project context.

## Common Failure Modes

- Including implementation details for a user-flow retest.
- Omitting what was withheld.
- Reusing blind terminology after briefing.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-test-briefed`, `hvn-web-qa`, and `hvn-ios-sim-qa`.
