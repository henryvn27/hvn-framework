# orca-delegate

## Purpose

Create a bounded delegation brief for another harness or collaborator.

## When To Use

Use when a controller decides implementation, research, QA, review, or goal execution should be performed by another actor.

## Required Inputs

- objective
- linked work item or artifact
- scope boundaries

## Optional Inputs

- executor harness
- verification requirements
- stop conditions

## Workflow

1. Use `orca-delegation`.
2. Define scope, constraints, required outputs, verification, and stop conditions.
3. Emit a structured delegation brief.

## Outputs And Artifacts

- `templates/delegation-brief.md`

## Related Commands And Skills

- Commands: `orca-ingest`, `orca-next`, `orca-goal`
- Skills: `orca-delegation`
