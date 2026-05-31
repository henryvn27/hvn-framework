---
name: hvn-benchmark
description: Compare onboarding and spec quality across benchmark cases using inspectable scoring.
---

# HVN Benchmark

## What This Skill Is

A benchmarking workflow for onboarding and spec quality across realistic cases.

## Trigger

Use when validating spec or onboarding workflow quality, comparing framework versions, or reviewing whether a workflow change helped or hurt.

## Do Not Trigger

Do not use as a substitute for product QA or generic issue triage.

## Required Inputs

- Benchmark case or case set
- Target onboarding or spec workflow

## Optional Inputs

- Prior benchmark report
- Generated onboarding artifact
- Generated spec artifact

## Exact Workflow

1. Read the benchmark case and scoring notes.
2. Run or review the onboarding and spec workflow under test.
3. Score pass or fail checks and rubric dimensions.
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

## Relationship To Other HVN Skills And Commands

Works with `hvn-spec`, `hvn-eval`, and `hvn-observability`.
