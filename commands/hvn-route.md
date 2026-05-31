# hvn-route

## Purpose

Select the most specific installed skill and work-management path for a task before execution.

## When To Use

Use at the start of non-trivial work, frontend/design tasks, redesign work, image-to-code work, brand work, full-output requests, and any task with multiple possible skill paths.

## Required Inputs

- User request
- Available installed skills or known skill set
- Current repository or product context

## Optional Inputs

- Linear project or issue ID
- Existing artifacts
- Target platform
- Design constraints

## Linear Context

- Expects: matching project and issue when work is non-trivial
- Reads: issue scope, labels, state, comments, and linked artifacts
- Posts: routing decision when useful
- Trigger: non-trivial work, `needs-routing`, ambiguous delegation
- Human approval: not required

## Workflow

1. Determine whether the task is non-trivial and needs Linear.
2. Check Linear project and issue availability or record blocked sync.
3. Identify explicit user-named skills.
4. Select the narrowest installed skill matching the primary task.
5. Add compatible constraints from broader skills.
6. State preserve-stack or redesign posture.
7. State full-output mode when applicable.

## Outputs And Artifacts

- Routing decision
- Selected skill or fallback
- Linear project and issue expectation
- Preserve-stack or redesign note

## Failure Cases

- If the ideal skill is unavailable, state the fallback.
- If Linear is blocked, record exact pending sync.

## Related Commands And Skills

- Commands: `hvn-linear-check`, `hvn-full-output`, `hvn-build`
- Skills: `hvn-router`, `hvn-linear-core`, `hvn-full-output`
