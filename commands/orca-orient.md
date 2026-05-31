# orca-orient

## Purpose

Produce a fast project-orientation artifact for humans or controller agents entering the repository.

## When To Use

Use at project entry, resume, handoff, or before delegation.

## Required Inputs

- repository state

## Optional Inputs

- active work item
- latest receipt
- latest goal contract

## Workflow

1. Read `HVN-STATUS.md`.
2. Gather current phase, active work item, goal, required integrations, blockers, and missing artifacts.
3. Write the orientation summary using `templates/project-orientation.md`.
4. Recommend the next action or next command.

## Outputs And Artifacts

- `templates/project-orientation.md`

## Related Commands And Skills

- Commands: `orca-status`, `orca-inspect`, `orca-next`
- Skills: `orca-controller-mode`
