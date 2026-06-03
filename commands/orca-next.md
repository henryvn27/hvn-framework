# orca-next

## Purpose

Produce adaptive next-step guidance after a major ORCA Framework phase completes.

## When To Use

Use after onboarding, spec creation, milestone planning, implementation, QA, regression follow-up, review, shipping, or handoff.

## Required Inputs

- Completed phase
- Artifact or evidence produced
- Current blocker or approval status
- Whether the controller should continue directly or delegate

## Optional Inputs

- Output mode: concise, standard, or advanced
- Intent style: just tell me what to do, explain briefly, or show options
- User guidance profile

## Linear Context

- Expects: current issue or project state, latest artifact, and any newly returned worker result when Linear-first mode is active
- Reads: blockers, approvals, outstanding gates, and latest evidence
- Posts: optional next-state recommendation when a coordinating comment is useful
- Human approval: depends on the recommended next action

## Opt-Out Context

Use the chosen local record as the current-state source and write next-step guidance against it when needed.

## Workflow

1. Use `orca-next-step`.
2. Confirm the phase completion signal.
3. Choose the next action from `docs/next-step-decision-rules.md`.
4. Decide whether the next move is direct execution, delegation, QA, approval, or resume.
5. Render the matching phase template.
6. Keep the output short unless the user asks for more detail.

## Outputs And Artifacts

- Phase-exit next-step guidance
- Optional `templates/user-guidance-profile.md` when a preference should be recorded

## Failure Cases

- If the phase is incomplete, state the blocker instead of pretending it is done.
- If approval is required, recommend approval before continuation.
- If delegation is the clearer path, say what should be delegated and which artifact should come back next.
- If the user asked for no guidance, stay silent.

## Related Commands And Skills

- Commands: `orca-onboard`, `orca-spec`, `orca-plan`, `orca-build`, `orca-test-blind`, `orca-review`, `orca-ship`
- Skills: `orca-next-step`
