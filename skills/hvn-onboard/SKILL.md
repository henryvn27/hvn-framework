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

- Initial request, Linear issue description, or opt-out work item

## Optional Inputs

- Existing notes
- Known user segments
- Constraints

## Exact Workflow

1. Use `hvn-router` for non-trivial onboarding.
2. State that onboarding is gathering enough information for a first useful spec.
3. If the prompt came from Linear, read issue title, description, labels, state, comments, links, and project context.
4. If the user opted out of Linear, identify the alternative work item or artifact that will hold the intake.
5. Ask high-leverage questions about user, job, success, constraints, risks, platform, data, and non-goals.
6. Adapt based on answers; do not run a fixed questionnaire when fewer questions are enough.
7. Stop when the next answer is unlikely to materially change the first spec.
8. Produce intake summary, unresolved questions, recommended HVN path, and draft spec skeleton.
9. Post or prepare the summary for the Linear issue or opt-out record.

## Expected Outputs

- Filled `templates/intake.md`
- Initial spec skeleton using `templates/spec.md`
- Linear intake comment when Linear-first mode is active

## Quality Bar

The result should let another agent write a credible spec without rereading the entire conversation.

## Common Failure Modes

- Asking every possible question.
- Starting implementation before understanding the user job.
- Hiding assumptions instead of listing them.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-linear-intake`, `hvn-spec`, `hvn-discover`, and `hvn-research`.
