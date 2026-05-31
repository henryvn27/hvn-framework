# hvn-design

## Purpose

Review product experience, visual hierarchy, accessibility, copy, responsive behavior, and interaction quality.

## When To Use

Use for frontend, product, marketing, mobile, or user-facing CLI work.

## Required Inputs

- Product surface or changed UI

## Optional Inputs

- Linear issue ID or opt-out work item
- Brand constraints
- Screenshots
- Design system
- Target user

## Linear Context

- Expects: issue ID, target user, product surface, screenshots or launch link, acceptance criteria
- Reads: intended user job, design constraints, QA findings, linked screenshots
- Posts: prioritized design findings, accessibility notes, recommended next state
- Trigger: `design-review`, `In Review`, user-facing UI changes
- Human approval: required to waive major accessibility or product clarity blockers

## Opt-Out Context

Store design findings in the chosen record.

## Workflow

1. Use `hvn-design`.
2. Inspect the experience from user goals outward.
3. Check clarity, hierarchy, states, accessibility, responsiveness, and interaction feel.
4. Produce prioritized design findings.
5. Sync findings to the work item.

## Outputs And Artifacts

- Design review notes
- Updates to `templates/review-report.md` when paired with code review

## Failure Cases

- If visual context is unavailable, do not invent visual observations.
- If product goals are unclear, ask for target user and task.

## Related Commands And Skills

- Commands: `hvn-test-blind`, `hvn-review`
- Skills: `hvn-design`, `hvn-linear-core`
