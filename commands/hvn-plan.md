# hvn-plan

## Purpose

Convert a spec into implementation phases with verification gates.

## When To Use

Use after `hvn-spec` and before `hvn-build`.

## Required Inputs

- Approved or working spec

## Optional Inputs

- Discovery notes
- Test commands
- Release target

## Workflow

1. Use `hvn-plan`.
2. Break work into small phases.
3. Define files or modules likely to change.
4. Attach verification to each phase.
5. Identify review and QA gates.

## Outputs And Artifacts

- `templates/plan.md`

## Failure Cases

- If dependencies are unknown, return to discovery.
- If verification is impossible, record manual evidence required.

## Related Commands And Skills

- Commands: `hvn-build`, `hvn-review`
- Skills: `hvn-plan`
