# Workflow

HVN follows a staged workflow centered on a durable work item. In Linear-first mode, that work item is a Linear issue. In opt-out mode, it is the user's chosen issue, document, or tracker item.

## Standard Sequence

1. `hvn-route`: select skill, Linear path, preserve-stack posture, authenticity preflight, and full-output mode.
2. `hvn-linear-check`: inspect or prepare Linear project and issue context.
3. `hvn-linear-health`: confirm the issue is ready for the next gate.
4. `hvn-memory-init`: create run memory when the workstream does not already have it.
5. `hvn-memory-read`: brief the active agent from current memory.
6. `hvn-linear-intake` or `hvn-onboard`: clarify issue context and update memory.
7. `hvn-question-flow`: ask focused rounds when missing context blocks the next artifact.
8. `hvn-discover`: inspect the repo, platform, dependencies, and constraints, then preserve durable findings.
9. `hvn-research`: gather external evidence when facts may be stale or unknown.
10. `hvn-style`: select or update an aesthetic profile when taste continuity matters.
11. `hvn-spec`: define goals, non-goals, user flows, and acceptance criteria.
12. `hvn-memory-update`: link the spec and record any scope corrections.
13. `hvn-linear-plan-comment` or `hvn-plan`: create implementation phases and approval request.
14. Human approval: required before build when scope affects product behavior, data, security, billing, or release.
15. `hvn-memory-update`: record approval state and first build phase.
16. `hvn-calibrate`: run authenticity preflight when UI, design, frontend presentation, product copy, or polished writing matters.
17. `hvn-build`: implement approved scope using the selected skill.
18. `hvn-memory-update`: preserve completed phases, failed attempts, blockers, and next steps.
19. `hvn-review`: inspect behavior, maintainability, skill fit, authenticity fit, and regression candidates.
20. `hvn-design`: review UX, accessibility, responsive behavior, product clarity, and generic design signals.
21. `hvn-blind-qa-brief`: collect platform, launch target, and allowed context when a QA brief is needed.
22. `hvn-test-blind`: run first-look QA with minimal context and no run memory input.
23. `hvn-memory-update`: save blind QA output after the blind report is durable.
24. `hvn-test-briefed`: retest with a bounded packet.
25. `hvn-delta`: compare blind and briefed outcomes.
26. `hvn-regression`: create or run regression packs.
27. `hvn-test-regression`: verify fixes and adjacent flows.
28. `hvn-security`: inspect security-relevant surfaces.
29. `hvn-linear-ship-check` or `hvn-ship`: prepare release and done-state evidence.
30. `hvn-memory-update`: finalize, compress, or archive memory.
31. `hvn-retro`: capture lessons and follow-up work.

## Recommended Linear Gates

- Triage
- Ready for Spec
- Spec Ready
- Ready for Build
- In Progress
- In Review
- In QA
- Ready to Ship
- Done

Actual state names may vary by team. HVN expects equivalent gates.

## Opt-Out Workflow

If Linear is not used, define:

- Work item location
- State or gate labels
- Where comments or reports are written
- Where linked artifacts live
- Who can approve build and ship gates

Then run the same HVN sequence against that record.

Run memory still applies in opt-out mode. Store it under `.hvn/memory/runs/` or in the chosen durable system of record, and replace Linear IDs with the selected tracker, issue, folder, or document identifiers.

Interactive question flows also apply in opt-out mode. Capture question rounds in local artifacts or the selected tracker instead of Linear comments.

## Skipping Stages

Small changes may combine stages. A production feature touching auth, payments, data deletion, public UX, install scripts, or CI should not skip spec, review, security consideration, and QA.
