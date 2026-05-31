# Workflow

HVN follows a staged workflow centered on a durable work item. In Linear-first mode, that work item is a Linear issue. In opt-out mode, it is the user's chosen issue, document, or tracker item.

## Standard Sequence

1. `hvn-linear-intake` or `hvn-onboard`: clarify issue context.
2. `hvn-discover`: inspect the repo, platform, dependencies, and constraints.
3. `hvn-research`: gather external evidence when facts may be stale or unknown.
4. `hvn-spec`: define goals, non-goals, user flows, and acceptance criteria.
5. `hvn-linear-plan-comment` or `hvn-plan`: create implementation phases, verification gates, and approval expectations.
6. `hvn-approve`: request or confirm approval when risk, scope, or confidence requires it.
7. `hvn-build`: implement approved scope.
8. `hvn-trace`: record meaningful execution steps, decisions, and stop reason.
9. `hvn-metrics`: record timing, retries, and optional usage signals for the run.
10. `hvn-review`: inspect behavior and maintainability.
11. `hvn-design`: review UX, accessibility, responsive behavior, and product clarity.
12. `hvn-test-blind`: run first-look QA with minimal context.
13. `hvn-test-briefed`: retest with a bounded packet.
14. `hvn-test-regression`: verify fixes and adjacent flows.
15. `hvn-regression-task`: convert strong findings into reusable regression work.
16. `hvn-security` or `hvn-security-check`: inspect security-relevant surfaces and untrusted inputs.
17. `hvn-benchmark` and `hvn-eval`: judge workflow quality when framework behavior is under review.
18. `hvn-linear-ship-check` or `hvn-ship`: prepare release and done-state evidence.
19. `hvn-retro`: capture lessons and follow-up work.

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

## Reliability Layer

The workflow now relies on six supporting controls:

- onboarding, discovery, and spec create durable context
- run memory stores reusable facts and decisions
- traces record what happened
- workflow metrics record time and retry burden
- evals judge how well it happened
- benchmark packs compare onboarding and spec quality over time
- regression tasks preserve repeated QA lessons
- approval gates control risky actions
- contracts keep artifacts structurally consistent

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
