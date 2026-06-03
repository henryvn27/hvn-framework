---
name: orca-next-step
description: Produce short adaptive phase-exit guidance after major ORCA Framework workflow stages.
---

# ORCA Framework Next Step

## What This Skill Is

A guidance skill for telling the user what to do next after a phase completes.

## Trigger

Use after onboarding, spec creation, milestone planning, implementation, QA, regression follow-up, review, ship readiness, or handoff.

## Do Not Trigger

Do not use when the next action is already being executed, when the phase did not complete, or when the user requested no guidance.

## Inputs

- Completed phase
- Artifact or evidence produced
- Blockers, approvals, or verification gaps
- Inferred or explicit output mode
- User intent style

## Workflow

1. Confirm the phase actually completed.
2. Check [phase-exit rules](../../docs/phase-exit-rules.md).
3. Choose concise, standard, or advanced mode.
4. Choose the default next action using [decision rules](../../docs/next-step-decision-rules.md).
5. Use the matching `templates/next-step-*.md` phase template.
6. Keep the output short and skippable.
7. Stay silent if guidance would be redundant.

## Quality Bar

The output must be calm, concrete, non-patronizing, and easy to skim. It should give one default action, one optional alternate, and one reason.

## Anti-Patterns

- tutorial tone
- fake motivation
- too many options
- unexplained jargon
- hiding blockers
- pushing forward when approval or clarification is needed

## Related Docs

- `docs/next-step-guidance.md`
- `docs/guidance-tone.md`
- `docs/experience-adaptation.md`
- `docs/phase-exit-rules.md`
