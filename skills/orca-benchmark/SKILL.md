---
name: orca-benchmark
description: Compare install, onboarding, spec, or orchestration quality across benchmark cases using inspectable scoring.
---

# ORCA Framework Benchmark

## What This Skill Is

A benchmarking workflow for install, onboarding, spec, and orchestration quality across realistic cases.

## Trigger

Use when validating install, onboarding, spec, or orchestration workflow quality, comparing framework versions, or reviewing whether a workflow change helped or hurt.

## Do Not Trigger

Do not use as a substitute for product QA or generic issue triage.

## Required Inputs

- Benchmark case or case set
- Target workflow under test

## Optional Inputs

- Prior benchmark report
- Generated workflow artifacts

## Exact Workflow

1. Read the benchmark case and scoring notes.
2. Run or review the workflow under test.
3. Score pass or fail checks, friction signals, and rubric dimensions.
4. Record failure patterns and comparison notes.
5. Write a benchmark report that a maintainer can inspect.

## Expected Outputs

- Filled `templates/benchmark-report.md`

## Quality Bar

The report should make clear whether workflow quality improved, regressed, or stayed mixed.

## Common Failure Modes

- confusing prompt style changes with actual workflow improvement
- over-weighting one case
- scoring vague specs as good enough
- rewarding speed when the workflow actually lost critical setup or onboarding information

## Relationship To Other ORCA Framework Skills And Commands

Works with `orca-install`, `orca-onboard`, `orca-spec`, `orca-eval`, and `orca-observability`.
