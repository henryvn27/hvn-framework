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
2. State the Linear issue or opt-out work item tying the passes together.
3. Read the Linear issue or opt-out record only after the blind pass is saved, unless blind QA was waived.
4. List included context.
5. List withheld context.
6. Include only what the tester needs for the pass.
7. State contamination risk and allowed tools.
8. Tie the packet to the same issue or work item as the first pass.

## Expected Outputs

- Context packet embedded in `templates/guided-qa-report.md`, `templates/linear-guided-qa-comment.md`, or a standalone brief

## Quality Bar

The packet should be small, explicit, and impossible to confuse with full project context.

## Common Failure Modes

- Including implementation details for a user-flow retest.
- Omitting what was withheld.
- Reusing blind terminology after briefing.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-test-briefed`, `hvn-web-qa`, and `hvn-ios-sim-qa`.
