# Linear Issue Health

Issue health checks decide whether a Linear issue is ready for agent work.

## Purpose

An unhealthy issue causes wasted implementation, wrong assumptions, and brittle handoffs. HVN checks issue health before spec, build, QA, and ship gates.

## Signals

Inspect for:

- Missing scope
- Ambiguous ask
- No acceptance criteria
- Missing environment or repo context
- No linked spec for non-trivial work
- No QA plan where needed
- Missing owner or reviewer clarity
- Missing issue links for dependent work
- Stale blockers
- Unclear current status

## Outputs

The health report states:

- Overall status
- Missing information
- Recommended next actions
- Whether the issue is ready for spec, ready for build, or blocked

## Linear Integration

Post the health report as a Linear comment before implementation. If the issue is blocked, do not build until the missing information is resolved or an explicit assumption is approved.
