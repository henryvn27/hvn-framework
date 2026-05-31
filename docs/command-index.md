# Command Index

Use this page when you need to decide which command should start next.

## Orientation

- `hvn-help`: general routing, first-run, and install guidance
- `hvn-docs`: documentation routing, freshness review, wiki sync, and doc maintenance

## Intake And Clarification

- `hvn-onboard`: interview-first intake for ambiguous work
- `hvn-question-flow`: focused question rounds
- `hvn-discover`: repo and environment discovery
- `hvn-research`: external fact gathering

## Specs And Planning

- `hvn-spec`: create the execution spec
- `hvn-spec-check`: gate the spec before planning
- `hvn-plan`: build a milestone plan
- `hvn-linear-plan-comment`: post the plan back to the work item

## Delivery

- `hvn-build`: implement approved scope
- `hvn-review`: inspect implementation against the spec
- `hvn-design`: review UX and product clarity
- `hvn-security`: inspect security-relevant surfaces
- `hvn-ship`: prepare release or done-state output
- `hvn-linear-ship-check`: ship readiness for Linear-first work

## QA

- `hvn-blind-qa-brief`: define allowed blind QA context
- `hvn-test-blind`: run first-look QA
- `hvn-test-briefed`: retest with bounded context
- `hvn-test-regression`: run or rerun regression coverage
- `hvn-regression`: create or manage regression packs
- `hvn-delta`: compare blind and briefed outcomes

## Continuity And Routing

- `hvn-route`: choose skill, work-management mode, and posture
- `hvn-memory`: generic run memory operations
- `hvn-memory-init`: create run memory
- `hvn-memory-read`: brief an agent from memory
- `hvn-memory-update`: preserve progress, blockers, and next steps
- `hvn-retro`: capture follow-up lessons

## Calibration

- `hvn-calibrate`: general authenticity preflight
- `hvn-calibrate-design`: design-specific calibration
- `hvn-calibrate-writing`: writing-specific calibration
- `hvn-style`: choose or refresh an aesthetic profile
- `hvn-full-output`: enforce exhaustive deliverables

## Linear-First Commands

- `hvn-linear-check`
- `hvn-linear-health`
- `hvn-linear-setup`
- `hvn-linear-intake`
- `hvn-linear-sync`
- `hvn-linear-qa-report`

These commands depend on Linear when Linear-first mode is active and should map to an equivalent durable record in opt-out mode.

## Which Command Fits?

- If the request is fuzzy, start with `hvn-onboard`.
- If the next artifact is unclear, start with `hvn-help` or `hvn-route`.
- If you already know the outcome and need the contract, start with `hvn-spec`.
- If docs or wiki look stale, start with `hvn-docs`.

For the lifecycle around these commands, read [workflow.md](workflow.md).
