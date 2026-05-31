---
name: hvn-onboard
description: Run an interview-first intake process and produce spec-ready onboarding context.
---

# HVN Onboard

## What This Skill Is

An adaptive intake interview for turning unclear intent into spec-ready product and engineering context.

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
2. Check issue health when Linear context exists.
3. Initialize or update run memory.
4. State that onboarding is gathering enough information for a first useful spec.
5. If the prompt came from Linear, read issue title, description, labels, state, comments, links, and project context.
6. If the user opted out of Linear, identify the alternative work item or artifact that will hold the intake.
7. Determine whether the work is greenfield or inside an existing project.
8. Ask high-leverage questions about problem, intended outcome, user or stakeholder needs, success criteria, constraints, preferences, edge cases, platform, data, repo conditions, stack assumptions, and non-goals.
9. Adapt based on answers; do not run a fixed questionnaire when fewer questions are enough.
10. Redirect implementation planning until the problem is sufficiently understood.
11. Stop when the next answer is unlikely to materially change the first useful spec.
12. Produce onboarding intake, unresolved questions, readiness assessment, recommended HVN path, and spec creation recommendation.
13. Post or prepare the summary for the Linear issue or opt-out record.
14. Seed run memory with onboarding findings and spec readiness.

## Expected Outputs

- Filled `templates/onboarding-intake.md`
- Optional `templates/intake.md`
- Spec creation recommendation using `templates/spec.md`
- Linear intake comment when Linear-first mode is active

## Quality Bar

The result should let another agent write a credible spec without rereading the entire conversation or asking basic problem-definition questions again.

## Common Failure Modes

- Asking every possible question.
- Starting implementation before understanding the user job.
- Hiding assumptions instead of listing them.
- Treating a solution idea as the problem statement.
- Skipping greenfield versus existing-project classification.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-linear-intake`, `hvn-spec`, `hvn-discover`, and `hvn-research`.
