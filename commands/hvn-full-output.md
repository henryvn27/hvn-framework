# hvn-full-output

## Purpose

Enable full-output behavior for exhaustive deliverables.

## When To Use

Use when the user asks for complete files, exhaustive output, full deliverables, no omissions, or explicitly says not to abbreviate.

## Required Inputs

- User request
- Deliverable list

## Optional Inputs

- Linear issue ID
- Output budget or sequencing constraints

## Linear Context

- Expects: issue ID for non-trivial work when available
- Reads: requested deliverables and acceptance criteria
- Posts: output scope and completion status when useful
- Trigger: complete output, exhaustive output, no omissions, full files
- Human approval: not required

## Workflow

1. Count requested deliverables.
2. Lock the deliverable list.
3. Produce complete artifacts without placeholder omissions.
4. If output must be split, stop only at a clean boundary and state where to resume.
5. Verify every requested item is present.

## Outputs And Artifacts

- Complete deliverables
- Completion checklist

## Failure Cases

- If constraints prevent complete output, state the blocker and provide the completed subset plus exact remaining work.

## Related Commands And Skills

- Commands: `hvn-route`, `hvn-build`
- Skills: `hvn-full-output`
