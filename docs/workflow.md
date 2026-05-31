# Workflow

HVN follows a staged workflow centered on a durable work item. In Linear-first mode, that work item is a Linear issue. In opt-out mode, it is the user's chosen issue, document, or tracker item.

## Standard Sequence

1. `hvn-route`: select skill, Linear path, preserve-stack posture, authenticity preflight, and full-output mode.
2. `hvn-linear-check`: inspect or prepare Linear project and issue context.
3. `hvn-linear-intake` or `hvn-onboard`: clarify issue context.
4. `hvn-discover`: inspect the repo, platform, dependencies, and constraints.
5. `hvn-research`: gather external evidence when facts may be stale or unknown.
6. `hvn-spec`: define goals, non-goals, user flows, and acceptance criteria.
7. `hvn-linear-plan-comment` or `hvn-plan`: create implementation phases and approval request.
8. Human approval: required before build when scope affects product behavior, data, security, billing, or release.
9. `hvn-calibrate`: run authenticity preflight when UI, design, frontend presentation, product copy, or polished writing matters.
10. `hvn-build`: implement approved scope using the selected skill.
11. `hvn-review`: inspect behavior, maintainability, skill fit, and authenticity fit.
12. `hvn-design`: review UX, accessibility, responsive behavior, product clarity, and generic design signals.
13. `hvn-test-blind`: run first-look QA with minimal context.
14. `hvn-test-briefed`: retest with a bounded packet.
15. `hvn-test-regression`: verify fixes and adjacent flows.
16. `hvn-security`: inspect security-relevant surfaces.
17. `hvn-linear-ship-check` or `hvn-ship`: prepare release and done-state evidence.
18. `hvn-retro`: capture lessons and follow-up work.

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

## Skipping Stages

Small changes may combine stages. A production feature touching auth, payments, data deletion, public UX, install scripts, or CI should not skip spec, review, security consideration, and QA.
