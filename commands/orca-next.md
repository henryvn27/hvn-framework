# orca-next

## Purpose

Produce adaptive next-step guidance after a major ORCA-HVN phase completes.

## When To Use

Use after onboarding, spec creation, milestone planning, implementation, QA, regression follow-up, review, shipping, or handoff.

## Required Inputs

- Completed phase
- Artifact or evidence produced
- Current blocker or approval status

## Optional Inputs

- Output mode: concise, standard, or advanced
- Intent style: just tell me what to do, explain briefly, or show options
- User guidance profile

## Workflow

1. Use `orca-next-step`.
2. Confirm the phase completion signal.
3. Choose the next action from `docs/next-step-decision-rules.md`.
4. Render the matching phase template.
5. Keep the output short unless the user asks for more detail.

## Outputs And Artifacts

- Phase-exit next-step guidance
- Optional `templates/user-guidance-profile.md` when a preference should be recorded

## Failure Cases

- If the phase is incomplete, state the blocker instead of pretending it is done.
- If approval is required, recommend approval before continuation.
- If the user asked for no guidance, stay silent.

## Related Commands And Skills

- Commands: `orca-onboard`, `orca-spec`, `orca-plan`, `orca-build`, `orca-test-blind`, `orca-review`, `orca-ship`
- Skills: `orca-next-step`
