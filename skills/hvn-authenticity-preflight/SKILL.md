---
name: hvn-authenticity-preflight
description: Run short anti-generic calibration before high-visibility UI, design, frontend presentation, product copy, or polished writing.
---

# HVN Authenticity Preflight

## What This Skill Is

A short research-and-calibration workflow that helps HVN avoid generic AI-looking design and generic AI-sounding writing.

## Trigger

Use when the task involves meaningful UI, visual design, frontend presentation, landing pages, dashboards, mobile UI, redesign, UX copy, product copy, README work, docs, essays, outreach, brand writing, or any output where tone, credibility, originality, or polish matter.

## Do Not Trigger

Do not use for trivial edits, mechanical code changes, or private notes where polish and first impression do not matter.

## Required Inputs

- Task
- Medium: design, writing, or both
- Audience or user

## Optional Inputs

- Linear issue ID
- Brand constraints
- Existing product references
- Installed design or writing skills
- Examples to match or avoid

## Exact Workflow

1. Confirm whether design calibration, writing calibration, or both are needed.
2. Keep research short and targeted.
3. Identify generic patterns likely for this medium.
4. Read the active aesthetic profile when available.
5. Define the specific direction that fits this project.
6. List concrete details, vocabulary, layout constraints, references, or product facts to use.
7. Record what the final review should check.
8. Post or prepare the calibration for Linear or the opt-out record when the work is non-trivial.
9. Hand the calibration to the routed design, writing, build, or review skill.

## Design Calibration Checks

- Avoid overused gradient-heavy SaaS visuals.
- Avoid purple or blue blob aesthetics unless the brand requires them.
- Avoid repetitive three-column feature-card grids.
- Avoid excessive icon-in-circle templates.
- Avoid generic startup hero copy patterns.
- Avoid uniformly rounded, over-smoothed components.
- Avoid decorative clutter that replaces hierarchy.
- Avoid visually expensive but strategically empty sections.

## Writing Calibration Checks

- Avoid repetitive sentence cadence.
- Avoid predictable paragraph rhythm.
- Avoid abstract claims with low specificity.
- Avoid generic transitions and filler.
- Avoid over-explaining obvious points.
- Avoid marketing fog.
- Avoid polished but impersonal voice.
- Avoid fake personal anecdotes.

## Expected Outputs

- `templates/design-calibration.md`
- `templates/writing-calibration.md`
- Calibration summary for Linear or opt-out record

## Quality Bar

The calibration should be specific enough to change the final artifact, but short enough not to become a research project.

## Common Failure Modes

- Treating authenticity as detector evasion.
- Producing generic lists not tied to the project.
- Calibrating but ignoring the findings during build or review.
- Inventing lived experience instead of using grounded detail.

## Relationship To Other HVN Skills And Commands

Triggered by `hvn-router` and `hvn-calibrate`; feeds `hvn-design`, `hvn-build`, `hvn-review`, `hvn-web-qa`, and writing-heavy workflows.
