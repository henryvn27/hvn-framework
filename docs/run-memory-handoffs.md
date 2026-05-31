# Run Memory Handoffs

Run memory is the handoff spine for HVN. Each agent should leave enough state for the next role to continue without receiving hidden context that would weaken the next pass.

## Handoff Principles

- Handoffs are role-specific.
- The current state belongs at the top of memory.
- Timestamped entries preserve provenance when it matters.
- Blind QA must not receive run memory before its first-look pass.
- Failed attempts are useful and should not be hidden.
- The receiving role should have one clear next action.

## Planner To Builder

Planner updates memory with:

- approved scope
- non-goals
- key constraints
- plan link
- approval source
- open questions that remain acceptable during build
- first implementation phase

Builder receives the memory plus the approved plan and linked artifacts.

## Builder To Reviewer

Builder updates memory with:

- files or modules touched
- behavior changed
- verification run
- known limitations
- failed attempts that affect review
- regression risks
- PR or diff link

Reviewer receives the memory, diff, spec, and verification evidence.

## Reviewer To Builder

Reviewer updates memory with:

- findings ordered by severity
- required fixes
- optional improvements separated from blockers
- regression candidates
- evidence links

Builder receives the active findings and next fix scope.

## Blind QA To Context Briefer

Blind QA does not receive run memory before testing. After the blind pass, its report can be summarized into memory:

- what the tester attempted
- what was visible or confusing
- failures, friction, and accessibility issues
- screenshots or recordings
- first-look clarity gaps

The context briefer then reads memory and creates a bounded second-pass packet.

## Context Briefer To Briefed QA

The briefer updates memory with:

- blind findings preserved as blind evidence
- selected goals for briefed QA
- constraints and acceptance criteria for retest
- what context was intentionally disclosed

Briefed QA receives only the bounded packet, not the full internal history unless informed QA is explicitly requested.

## Reviewer Or QA To Regression

Reviewer and QA agents should add regression candidates to memory when findings are likely to recur:

- scenario
- setup
- expected result
- failure signal
- source finding
- priority

The regression owner converts durable candidates into `templates/regression-pack.md` or the team's equivalent.

## Merge Handoffs

When multiple agents produce separate memory fragments:

1. Preserve each fragment's timestamped provenance.
2. Write one current-state summary.
3. Resolve conflicts explicitly.
4. Link both source fragments.
5. Assign the next owner.

Do not leave parallel memories with contradictory next steps.
