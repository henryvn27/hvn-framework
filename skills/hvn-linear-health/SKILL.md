---
name: hvn-linear-health
description: Check whether a Linear issue is healthy enough for HVN agent work.
---

# HVN Linear Health

## What This Skill Is

A readiness check for Linear issues.

## Trigger

Use before spec, build, QA, ship, or any non-trivial agent handoff.

## Do Not Trigger

Do not use for trivial questions or when Linear has been explicitly opted out.

## Required Inputs

- Linear issue context

## Optional Inputs

- Related issues
- Spec
- Plan
- QA plan
- Blocker links

## Exact Workflow

1. Inspect scope, ask clarity, acceptance criteria, environment, links, owner, reviewer, QA plan, blockers, and status.
2. Identify missing or stale information.
3. Assign health status: ready for spec, ready for build, needs clarification, or blocked.
4. Recommend the next action.
5. Post or prepare the health report.

## Expected Outputs

- `templates/linear-health-report.md`

## Quality Bar

The report should prevent agents from building from ambiguous or stale issues.

## Common Failure Modes

- Treating a long issue as a healthy issue.
- Ignoring stale blockers.
- Proceeding to build without acceptance criteria.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-linear-check`, `hvn-onboard`, `hvn-spec`, `hvn-plan`, and `hvn-build`.
