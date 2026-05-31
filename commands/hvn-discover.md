# hvn-discover

## Purpose

Inspect an existing codebase, product surface, or technical environment before planning work.

## When To Use

Use before changing an existing project or when constraints are unknown.

## Required Inputs

- Repository path, app URL, or product surface

## Optional Inputs

- Known problem area
- Test commands
- Architecture notes

## Workflow

1. Use `hvn-discover`.
2. Inspect structure, dependencies, scripts, tests, and relevant files.
3. Identify ownership boundaries and existing patterns.
4. Record risks, constraints, and recommended next steps.

## Outputs And Artifacts

- `templates/discovery-notes.md`

## Failure Cases

- If files or tools are inaccessible, record the access blocker.
- If the project is empty, recommend `hvn-onboard` or `hvn-spec`.

## Related Commands And Skills

- Commands: `hvn-research`, `hvn-spec`, `hvn-plan`
- Skills: `hvn-discover`
