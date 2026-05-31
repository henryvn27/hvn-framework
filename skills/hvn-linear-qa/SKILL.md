---
name: hvn-linear-qa
description: Coordinate blind, guided, and regression QA through Linear comments and bounded context packets.
---

# HVN Linear QA

## What This Skill Is

The Linear-aware QA workflow for first-look, guided, and regression testing.

## Trigger

Use for issues in QA states or labeled `blind-qa`, `guided-qa`, or `regression`.

## Do Not Trigger

Do not call a pass blind if the tester has already read hidden spec, plan, code, or design rationale.

## Required Inputs

- Issue ID
- QA mode
- Platform and launch instructions

## Optional Inputs

- One-sentence user mission for blind QA
- Context packet for guided QA
- Screenshots or logs

## Exact Workflow

1. Confirm project and issue identifiers.
2. Confirm pass type and context boundaries.
3. For blind QA, provide only issue ID, platform, launch instructions, and optional one-sentence mission.
4. Run browser, simulator, CLI, or manual QA.
5. Post findings with evidence and confidence limits.
6. For second pass, create or consume a minimal context brief.
7. Surface the difference between blind and briefed outcomes.

## Expected Outputs

- Linear blind QA comment
- Linear guided QA comment
- Regression comment when applicable

## Quality Bar

The issue thread should preserve the first-look report and keep later context separate.

## Common Failure Modes

- Contaminating blind QA with the spec.
- Posting findings without reproduction steps.
- Collapsing blind and guided outcomes into one report.

## Relationship To Other HVN Skills And Commands

Pairs with `hvn-blind-qa`, `hvn-context-brief`, `hvn-ios-sim-qa`, and `hvn-web-qa`.
