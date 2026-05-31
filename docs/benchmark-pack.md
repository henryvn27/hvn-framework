# Benchmark Pack

HVN benchmark packs provide a repeatable way to compare onboarding and spec quality over time. The goal is not synthetic leaderboard theater. The goal is to catch whether workflow changes improve or degrade the ability to turn fuzzy requests into usable specs.

## Purpose

Use benchmark packs to compare:

- HVN version to HVN version
- prompt set A to prompt set B
- workflow changes over time

## What The Pack Measures

The onboarding and spec benchmark focuses on:

- ambiguity detection
- question quality
- constraint capture
- edge-case awareness
- scope discipline
- acceptance criteria quality
- verification readiness
- overall spec usability

## Pack Structure

- [benchmarks/onboarding-spec/README.md](../benchmarks/onboarding-spec/README.md)
- `benchmarks/onboarding-spec/cases/`
- [templates/benchmark-case.md](../templates/benchmark-case.md)
- [templates/benchmark-report.md](../templates/benchmark-report.md)

## Scoring Model

Use both:

- pass or fail checks for hard requirements
- rubric scoring for quality dimensions

Examples of hard requirements:

- the workflow identified key ambiguity
- the workflow separated goals from non-goals
- the resulting spec contains testable acceptance criteria

Examples of rubric dimensions:

- whether the questions were high leverage
- whether the scope stayed disciplined
- whether the resulting spec would help build and QA

## Comparison Guidance

When comparing benchmark runs:

- use the same cases when possible
- note workflow version, command version, and any prompt changes
- compare both aggregate outcomes and failure patterns
- do not treat small score differences as precise science

## Evidence Standard

Benchmark reports should link to:

- the case definition
- the produced onboarding or spec artifact
- the scoring notes
- any known confounders

The benchmark is useful only if a maintainer can inspect why a run passed or failed.
