---
name: orca-linear-qa
description: Coordinate blind, guided, and regression QA through Linear comments and bounded context packets.
---

# ORCA-HVN Linear QA

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

1. Confirm pass type and context boundaries.
2. For blind QA, provide only issue ID, platform, launch instructions, and optional one-sentence mission.
3. Run browser, simulator, CLI, or manual QA.
4. Post findings with evidence and confidence limits.
5. For second pass, create or consume a minimal context brief.
6. Surface the difference between blind and briefed outcomes.

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

## Relationship To Other ORCA-HVN Skills And Commands

Pairs with `orca-blind-qa`, `orca-context-brief`, `orca-ios-sim-qa`, and `orca-web-qa`.
