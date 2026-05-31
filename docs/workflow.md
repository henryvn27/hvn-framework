# Workflow

HVN follows a staged workflow centered on a durable work item. In Linear-first mode, that work item is a Linear issue. In opt-out mode, it is the user's chosen issue, document, or tracker item.

The workflow is host-neutral. Claude Code, Codex CLI, OpenCode, and Hermes Agent may invoke commands differently, but they should preserve the same artifacts, run memory, Linear sync behavior, and QA context boundaries.

## Standard Sequence

1. `hvn-route`: select skill, Linear path, preserve-stack posture, authenticity preflight, and full-output mode.
2. `hvn-linear-check`: inspect or prepare Linear project and issue context.
3. `hvn-linear-health`: confirm the issue is ready for the next gate.
4. `hvn-memory-init`: create run memory when the workstream does not already have it.
5. `hvn-memory-read`: brief the active agent from current memory.
6. `hvn-linear-intake` or `hvn-onboard`: interview the user or issue context until the problem is spec-ready, then update memory.
7. `hvn-question-flow`: ask focused rounds when missing context blocks the next artifact.
8. `hvn-discover`: inspect the repo, platform, dependencies, and constraints, then preserve durable findings.
9. `hvn-research`: gather external evidence when facts may be stale or unknown.
10. `hvn-style`: select or update an aesthetic profile when taste continuity matters.
11. `hvn-spec`: define the primary execution spec with v1, later-phase, and out-of-scope boundaries.
12. `hvn-spec-check`: decide whether the spec is ready for planning, needs clarification, or is too vague.
13. `hvn-memory-update`: link the spec and record any scope corrections.
14. `hvn-linear-plan-comment` or `hvn-plan`: create milestone phases from the spec and approval request.
15. Human approval: required before build when scope affects product behavior, data, security, billing, or release.
16. `hvn-memory-update`: record approval state, spec version, and first build phase.
17. `hvn-calibrate`: run authenticity preflight when UI, design, frontend presentation, product copy, or polished writing matters.
18. `hvn-build`: implement approved scope against the spec using the selected skill.
19. `hvn-memory-update`: preserve completed phases, failed attempts, blockers, spec deviations, and next steps.
20. `hvn-review`: inspect behavior, maintainability, spec fit, skill fit, authenticity fit, and regression candidates.
21. `hvn-design`: review UX, accessibility, responsive behavior, product clarity, and generic design signals.
22. `hvn-blind-qa-brief`: collect platform, launch target, and allowed context when a QA brief is needed.
23. `hvn-test-blind`: run first-look QA with minimal context and no run memory or spec input.
24. `hvn-memory-update`: save blind QA output after the blind report is durable.
25. `hvn-test-briefed`: retest with a bounded packet and acceptance criteria.
26. `hvn-delta`: compare blind and briefed outcomes.
27. `hvn-regression`: create or run regression packs.
28. `hvn-test-regression`: verify fixes and adjacent flows against the spec.
29. `hvn-security`: inspect security-relevant surfaces.
30. `hvn-linear-ship-check` or `hvn-ship`: prepare release and done-state evidence.
31. `hvn-memory-update`: finalize, compress, or archive memory.
32. `hvn-retro`: capture lessons and follow-up work.

## Discuss To Verify Loop

HVN's default loop for non-trivial work is:

1. Discuss or onboard.
2. Research when needed.
3. Create or refine the spec.
4. Split scope and phases.
5. Plan execution from the spec.
6. Execute against the spec.
7. Verify against the spec.
8. Update run memory, Linear, and follow-up scope.

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
