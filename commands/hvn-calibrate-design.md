# hvn-calibrate-design

## Purpose

Run authenticity preflight for UI, visual design, and frontend presentation.

## When To Use

Use before landing pages, dashboards, mobile UI, redesigns, product UI, brand-sensitive frontend work, or visual presentation work.

## Required Inputs

- UI or design task
- Target user
- Product category

## Optional Inputs

- Linear issue ID
- Existing design system
- Brand constraints
- Visual references
- Product screenshots or data

## Linear Context

- Reads: issue context, product surface, design constraints, references, and platform labels
- Posts: design calibration note and review criteria
- Trigger: UI-heavy work, `design-calibration`, `frontend`, `redesign`, `brand`
- Human approval: not required unless calibration changes scope

## Workflow

1. Identify product category, user job, and first-impression goal.
2. List generic AI design tropes to avoid.
3. Define visual direction and product-specific inputs.
4. Choose component and layout constraints.
5. Record review criteria.

## Outputs And Artifacts

- `templates/design-calibration.md`

## Failure Cases

- If visual context is unavailable, state the limitation and calibrate from product and audience context only.

## Related Commands And Skills

- Commands: `hvn-calibrate`, `hvn-design`, `hvn-review`
- Skills: `hvn-authenticity-preflight`, `hvn-design`, `hvn-router`
