---
name: hvn-web-qa
description: Run browser or web automation QA with first-look, briefed, and regression modes.
---

# HVN Web QA

## What This Skill Is

A browser QA workflow for web products.

## Trigger

Use when a URL, local dev server, deployed site, or web app surface is available.

## Do Not Trigger

Do not use for native-only apps unless they expose a web surface.

## Required Inputs

- URL or launch command

## Optional Inputs

- Viewports
- Browser tools
- Context packet
- Acceptance criteria

## Exact Workflow

1. State the QA mode.
2. In Linear-first mode, read only issue context allowed for that pass.
3. For briefed or regression QA, read the latest approved spec and acceptance criteria.
4. Open the app in a browser or browser automation tool.
5. Observe visible content, accessibility-visible elements, console errors, and network failures when tools support them.
6. Attempt realistic tasks.
7. For non-blind passes, verify behavior against spec acceptance and verification criteria.
8. Flag if the app or site feels generic, untrustworthy, indistinct, or inconsistent with calibration.
9. Capture screenshots or DOM evidence when available.
10. Produce reproducible findings for the issue or opt-out record, including spec deviations when applicable.

## Expected Outputs

- Blind pass: `templates/blind-qa-report.md`
- Guided pass: `templates/guided-qa-report.md`
- Regression pass: `templates/regression-report.md`

## Quality Bar

Findings should include exact steps, observed result, expected result, and evidence.

## Common Failure Modes

- Reading hidden project docs during blind QA.
- Testing only the happy path.
- Missing responsive and keyboard behavior.
- Failing to map briefed or regression QA findings to spec criteria.

## Relationship To Other HVN Skills And Commands

Pairs with `hvn-blind-qa`, `hvn-context-brief`, and `hvn-design`.
