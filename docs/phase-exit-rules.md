# Phase Exit Rules

Phase exit rules define when HVN should emit next-step guidance and when it should pause.

## Phase Rules

| Phase | Completion Signal | Default Next Move | Pause When |
| --- | --- | --- | --- |
| Onboarding | Intake summary and unresolved questions are recorded. | Create or refine the spec. | Core intent, owner, or success condition is unknown. |
| Spec | Goals, non-goals, requirements, and acceptance criteria are written. | Split into milestones or plan implementation. | Acceptance criteria are untestable or scope is contested. |
| Milestone planning | Phases, verification gates, and approvals are defined. | Approve or start the first bounded milestone. | The milestone is project-sized, risky, or lacks verification. |
| Implementation | Approved scope is built and local verification evidence exists. | Run review and QA. | Build changed scope, destructive behavior, dependencies, or architecture without approval. |
| QA | Findings are recorded with evidence and severity. | Fix blockers or promote regression tasks. | Results are ambiguous or reproduction is unclear. |
| Regression follow-up | Durable regression candidate or task is created. | Retest the fix or move to review. | The finding is flaky, low confidence, or not tied to behavior. |
| Review | Findings are resolved or explicitly accepted. | Prepare ship check or handoff. | Security, maintainability, or product risks remain unresolved. |
| Shipping / handoff | Ship readiness evidence and handoff notes are complete. | Ship, archive, or open follow-up work. | Release credentials, approvals, or verification evidence are missing. |

## Stop Instead Of Push Forward

Recommend stopping when:

- the next action would invent scope
- approval is required
- verification is missing
- the user needs to make a product decision
- the repo is in an unsafe or conflicted state
- another agent may be editing the same surface

## Trigger Rule

Emit guidance only after a real completion signal. If the phase is incomplete, state the blocker and the one action needed to unblock it.
