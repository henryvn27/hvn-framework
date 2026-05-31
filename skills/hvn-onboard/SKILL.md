---
name: hvn-onboard
description: Run an adaptive subagent-style interview and produce an intake summary, unresolved questions, recommended workflow, and draft spec skeleton.
---

# HVN Onboard

## What This Skill Is

An adaptive onboarding workflow for turning unclear intent into usable product context.

## Trigger

Use for new products, major features, ambiguous requests, or work with missing user and success context.

## Do Not Trigger

Do not use when a complete approved spec already exists.

## Required Inputs

- Initial request or idea

## Optional Inputs

- Existing notes
- Known user segments
- Constraints

## Exact Workflow

1. State that onboarding is gathering enough information for a first useful spec.
2. Ask high-leverage questions about user, job, success, constraints, risks, platform, data, and non-goals.
3. Adapt based on answers; do not run a fixed questionnaire when fewer questions are enough.
4. Stop when the next answer is unlikely to materially change the first spec.
5. Produce intake summary, unresolved questions, recommended HVN path, and draft spec skeleton.

## Expected Outputs

- Filled `templates/intake.md`
- Initial spec skeleton using `templates/spec.md`

## Quality Bar

The result should let another agent write a credible spec without rereading the entire conversation.

## Common Failure Modes

- Asking every possible question.
- Starting implementation before understanding the user job.
- Hiding assumptions instead of listing them.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-spec`, `hvn-discover`, and `hvn-research`.
