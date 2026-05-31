# hvn-linear-health

## Purpose

Evaluate whether a Linear issue is healthy enough for agents to work on.

## When To Use

Use before spec, build, QA, ship, or any non-trivial agent handoff.

## Required Inputs

- Linear issue ID or issue context

## Optional Inputs

- Project
- Related issues
- Spec
- Plan
- QA plan

## Linear Context

- Reads: title, description, state, labels, comments, links, project, owner, assignee, blockers
- Posts: health report and gate recommendation
- Trigger: start of non-trivial work, stale issue, unclear handoff, pre-build check
- Human approval: not required to report; required to proceed with known missing critical info

## Workflow

1. Inspect scope, acceptance criteria, environment, links, owner, reviewer, QA plan, blockers, and status.
2. Mark missing or stale information.
3. Recommend ready for spec, ready for build, needs clarification, or blocked.
4. Post or prepare the report.

## Outputs And Artifacts

- `templates/linear-health-report.md`

## Failure Cases

- If Linear is blocked, create a manual health report from available context.
- If issue state and comments conflict, mark health as unclear.

## Related Commands And Skills

- Commands: `hvn-linear-check`, `hvn-onboard`, `hvn-spec`
- Skills: `hvn-linear-health`, `hvn-linear-core`
