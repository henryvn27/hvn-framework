---
name: orca-eval
description: Evaluate ORCA-HVN workflows by scoring trajectories, artifact quality, and final usefulness.
---

# ORCA-HVN Eval

## What This Skill Is

A trajectory-based evaluation workflow for judging how well ORCA-HVN behaved, not just what it produced.

## Trigger

Use when validating a workflow, comparing changes to ORCA-HVN, or reviewing whether a command or skill is trustworthy.

## Do Not Trigger

Do not use as a substitute for product QA or security review.

## Required Inputs

- Eval case or eval set
- Target command, skill, or workflow

## Optional Inputs

- Trace artifacts
- Spec, plan, QA, or ship artifacts
- Prior eval report

## Exact Workflow

1. Read the eval case and target workflow.
2. Identify hard checks and rubric dimensions.
3. Review traces and artifacts, not just the final answer.
4. Record pass or fail and rubric notes.
5. Summarize common failure patterns and recommendations.

## Expected Outputs

- Filled `templates/eval-report.md`

## Quality Bar

The report should explain why a workflow passed or failed and what to improve next.

## Common Failure Modes

- Grading only the final artifact.
- Ignoring scope control and approval behavior.
- Treating weak evidence as a pass.

## Relationship To Other ORCA-HVN Skills And Commands

Works with `orca-trace`, `orca-spec`, `orca-plan`, QA skills, and `orca-ship`.
