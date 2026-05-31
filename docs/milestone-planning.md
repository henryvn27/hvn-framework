# Milestone Planning

HVN milestone planning turns a spec into bounded phases that can be reviewed, assigned, and verified.

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

## Goal Mode Integration

After a spec is split into milestones, the next well-bounded milestone may become a goal candidate. Use [docs/goal-mode.md](goal-mode.md) and [templates/goal-contract.md](../templates/goal-contract.md).

Use goal mode only when:

- the milestone has a measurable done condition
- verification can prove completion
- scope boundaries are explicit
- risk is low enough or approved

Do not convert a whole roadmap into one goal.
