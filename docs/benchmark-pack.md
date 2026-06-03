# Benchmark Pack

ORCA-HVN benchmark packs provide a repeatable way to compare install, onboarding, spec, and orchestration quality over time. The goal is not synthetic leaderboard theater. The goal is to catch whether workflow changes improve or degrade the actual user path.

## Purpose

Use benchmark packs to compare:

- ORCA-HVN version to ORCA-HVN version
- prompt set A to prompt set B
- workflow changes over time
- ORCA-HVN against adjacent frameworks when the comparison is grounded and repeatable

## What The Pack Measures

The benchmark packs focus on:

- install speed and clarity
- onboarding information yield versus hassle
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
- [benchmarks/install-onboarding-race/README.md](../benchmarks/install-onboarding-race/README.md)
- `benchmarks/onboarding-spec/cases/`
- [templates/benchmark-case.md](../templates/benchmark-case.md)
- [templates/benchmark-report.md](../templates/benchmark-report.md)

## Scoring Model

Use both:

- pass or fail checks for hard requirements
- rubric scoring for quality dimensions

Examples of hard requirements:

- the install completed without hidden manual recovery
- the onboarding captured enough information to start real work
- the workflow identified key ambiguity
- the workflow separated goals from non-goals
- the resulting spec contains testable acceptance criteria

Examples of rubric dimensions:

- whether the install path was understandable to a first-time user
- whether the onboarding asked too little or too much
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
