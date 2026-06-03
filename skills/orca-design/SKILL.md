---
name: orca-design
description: Review user-facing product surfaces for clarity, accessibility, responsive behavior, copy, interaction quality, and whether they feel intentional instead of generic or AI-shaped.
---

# ORCA-HVN Design

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

1. Read the issue or opt-out record for user goal and design constraints.
2. Identify the user goal.
3. Inspect hierarchy, information scent, loading states, empty states, responsiveness, accessibility, and copy.
4. Flag async surfaces that go visually blank while data loads when a skeleton frame should preserve structure and user confidence.
5. Check whether the work feels product-specific or generically generated.
6. Separate visual observations from inferred behavior.
7. If the task is strongly design-heavy and the user wants the official wrapped pack path, route to Impeccable instead of substituting repo-local ORCA guidance.
8. Produce prioritized design findings and fixes.
9. Post or prepare findings for the durable record.

## Expected Outputs

- Design review notes or section in `templates/review-report.md`

## Quality Bar

Feedback should improve user success and product credibility, not merely impose taste.

## Common Failure Modes

- Inventing visual details without a screenshot or browser.
- Optimizing decoration over task completion.
- Missing keyboard and screen-reader affordances.
- Accepting generic prompt-shaped UI or copy because it is superficially polished.

## Relationship To Other ORCA-HVN Skills And Commands

Pairs with `orca-impeccable`, `orca-web-qa`, `orca-ios-sim-qa`, and `orca-review`.
