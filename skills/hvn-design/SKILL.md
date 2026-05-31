---
name: hvn-design
description: Review user-facing product surfaces for clarity, accessibility, responsive behavior, copy, and interaction quality.
---

# HVN Design

## What This Skill Is

A product and UX review workflow for user-facing work.

## Trigger

Use for frontend, mobile, marketing, product UI, documentation UX, or CLI interaction design.

## Do Not Trigger

Do not use for backend-only changes without user-facing behavior.

## Required Inputs

- Product surface, screenshot, or UI files

## Optional Inputs

- Target user
- Brand or design system
- Accessibility requirements

## Exact Workflow

1. Use `hvn-router` to confirm a design/frontend-specific skill path when available.
2. Run or apply `hvn-authenticity-preflight`.
3. Read the issue or opt-out record for user goal and design constraints.
4. Identify the user goal.
5. Inspect hierarchy, information scent, states, responsiveness, accessibility, copy, and generic design signals.
6. Separate visual observations from inferred behavior.
7. Preserve existing product conventions unless redesign was requested.
8. Produce prioritized design findings and fixes.
9. Post or prepare findings for the durable record.

## Expected Outputs

- Design review notes or section in `templates/review-report.md`

## Quality Bar

Feedback should improve user success, not merely impose taste.

## Common Failure Modes

- Inventing visual details without a screenshot or browser.
- Optimizing decoration over task completion.
- Missing keyboard and screen-reader affordances.

## Relationship To Other HVN Skills And Commands

Pairs with `hvn-web-qa`, `hvn-ios-sim-qa`, and `hvn-review`.
