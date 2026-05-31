---
name: orca-legacy
description: Audit, enrich, and plan safe modernization for legacy or under-documented systems.
---

# ORCA-HVN Legacy

## What This Skill Is

A legacy modernization workflow for understanding inherited systems and planning staged, verifiable change.

## Trigger

Use for old, messy, under-documented, inherited, or fragile systems where the risk is understanding and preserving behavior.

## Do Not Trigger

Do not use as a license for a broad rewrite or dependency sweep.

## Required Inputs

- Repository, module, system, or work item
- Modernization goal or pain point

## Optional Inputs

- Known risky flows
- Existing docs
- Test commands
- Runtime or deployment context

## Exact Workflow

1. Read the work item and existing docs.
2. Perform repo archaeology before proposing changes.
3. Map modules, dependencies, call chains, and key flows.
4. Extract business logic and undocumented assumptions.
5. Identify test gaps, fragile areas, and migration risks.
6. Produce a legacy audit and risk report.
7. Draft a modernization spec for the first safe slice.
8. Recommend regression tasks that preserve important behavior.

## Expected Outputs

- Filled `templates/legacy-audit.md`
- Filled `templates/legacy-risk-report.md`
- Filled `templates/modernization-spec.md`

## Quality Bar

The output should make the legacy system safer to change without pretending it is fully understood.

## Common Failure Modes

- rewriting before mapping behavior
- treating missing tests as permission to change freely
- deleting suspected dead code without runtime evidence
- modernizing dependencies without understanding call chains

## Relationship To Other ORCA-HVN Skills And Commands

Feeds `orca-spec`, `orca-plan`, `orca-regression-task`, `orca-review`, and QA workflows.
