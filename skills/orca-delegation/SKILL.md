---
name: orca-delegation
description: Create bounded delegation briefs and structured executor returns for ORCA-HVN workflows.
---

# ORCA-HVN Delegation

## What This Skill Is

A delegation procedure for controller-to-executor handoff across harnesses or humans.

## Trigger

Use when a controller decides another actor should perform bounded implementation, research, QA, or review work.

## Required Inputs

- objective
- linked work artifact
- scope boundaries

## Exact Workflow

1. State the objective and linked artifacts.
2. Bound scope and out-of-scope work.
3. Define required outputs and verification.
4. Define stop conditions and return format.
5. Require a structured result on return.

## Expected Outputs

- `templates/delegation-brief.md`
- `templates/delegation-result.md`

## Quality Bar

The executor should not have to infer the real task.

## Common Failure Modes

- delegation with fuzzy scope
- no verification requirement
- no structured return format
