# Milestone Planning

HVN planning converts an approved spec into meaningful phases or milestones with verification expectations.

A plan is not a brainstorm. It is the execution path derived from the spec.

## Inputs

Planning requires:

- latest approved spec
- requirements split
- relevant discovery notes
- known constraints
- run memory
- Linear issue or opt-out work item

If the spec is weak, run `hvn-spec-check` before planning.

## Milestone Shape

Each milestone should include:

- objective
- spec requirements covered
- implementation tasks
- files or areas likely to change
- dependencies
- verification criteria
- review or QA gate
- rollback or recovery notes when relevant

## Phase Sizing

A good phase creates a reviewable, testable state. Avoid phases that are so large they can only be verified at the end.

Use smaller phases when work touches:

- auth
- billing
- data mutation
- migrations
- public UX
- install scripts
- CI or release automation

## Mapping Tasks To Requirements

Every task should map to at least one spec requirement or verification criterion. If a task does not map, it is likely scope creep or preparatory work that needs justification.

## Incremental Completion

After each phase:

1. Verify phase criteria.
2. Update run memory.
3. Record blockers and deviations.
4. Decide whether the next phase still matches the spec.

## Artifact

Use `templates/milestone-plan.md` for milestone plans and `templates/plan.md` for the broader implementation plan.
