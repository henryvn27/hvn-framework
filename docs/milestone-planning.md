# Milestone Planning

ORCA-HVN milestone planning turns a spec into bounded phases that can be reviewed, assigned, and verified.

## Purpose

Use milestone planning when a spec is too large for one safe build step.

## Milestone Shape

A good milestone has:

- a clear objective
- explicit in-scope and out-of-scope boundaries
- expected files or surfaces
- verification method
- rollback or containment notes
- approval triggers

It should also produce a state that another engineer can review or test without waiting for the entire project to finish.

## Default Breakdown Rule

If the request is "build the project" or "do the whole feature", ORCA should usually split it into:

1. first working slice
2. main capability expansion
3. risk-heavy or integration-heavy follow-up
4. QA, polish, and release-readiness work only when they are meaningfully separate

Do not hide the first executable slice inside a giant umbrella milestone.

## Goal Mode Integration

After a spec is split into milestones, the next well-bounded milestone may become a goal candidate. Use [docs/goal-mode.md](goal-mode.md) and [templates/goal-contract.md](../templates/goal-contract.md).

Use goal mode only when:

- the milestone has a measurable done condition
- verification can prove completion
- scope boundaries are explicit
- risk is low enough or approved

Do not convert a whole roadmap into one goal.
