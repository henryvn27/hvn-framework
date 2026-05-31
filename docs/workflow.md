# Workflow

HVN follows a staged workflow centered on a durable work item. In Linear-first mode, that work item is a Linear issue. In opt-out mode, it is the user's chosen issue, document, or tracker item.

## Standard Sequence

1. `hvn-linear-intake` or `hvn-onboard`: clarify issue context.
2. `hvn-discover`: inspect the repo, platform, dependencies, and constraints.
3. `hvn-legacy`: run repo archaeology and modernization prep when the system is inherited, under-documented, or fragile.
4. `hvn-research`: gather external evidence when facts may be stale or unknown.
5. `hvn-spec`: define goals, non-goals, user flows, and acceptance criteria.
6. `hvn-linear-plan-comment` or `hvn-plan`: create implementation phases, verification gates, and approval expectations.
7. `hvn-approve`: request or confirm approval when risk, scope, or confidence requires it.
8. `hvn-build`: implement approved scope.
9. `hvn-trace`: record meaningful execution steps, decisions, and stop reason.
10. `hvn-state`: maintain shared coordination state for multi-role or resumable runs.
11. `hvn-metrics`: record timing, retries, and optional usage signals for the run.
12. `hvn-review`: inspect behavior and maintainability.
13. `hvn-design`: review UX, accessibility, responsive behavior, and product clarity.
14. `hvn-test-blind`: run first-look QA with minimal context.
15. `hvn-test-briefed`: retest with a bounded packet.
16. `hvn-test-regression`: verify fixes and adjacent flows.
17. `hvn-regression-task`: convert strong findings into reusable regression work.
18. `hvn-checkpoint`: pause risky or ambiguous work for human inspection and decision.
19. `hvn-inspect`: summarize current run identity, state, artifacts, and blockers for review or resume.
20. `hvn-tool-review` or `hvn-mcp-review`: govern new or risky external tools and MCP servers.
21. `hvn-security` or `hvn-security-check`: inspect security-relevant surfaces and untrusted inputs.
22. `hvn-benchmark` and `hvn-eval`: judge workflow quality when framework behavior is under review.
23. `hvn-linear-ship-check` or `hvn-ship`: prepare release and done-state evidence.
24. `hvn-retro`: capture lessons and follow-up work.

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
- legacy archaeology turns under-documented systems into actionable modernization context
- run memory stores reusable facts and decisions
- traces record what happened
- shared state records the current multi-role coordination picture
- workflow metrics record time and retry burden
- evals judge how well it happened
- benchmark packs compare onboarding and spec quality over time
- regression tasks preserve repeated QA lessons
- approval gates control risky actions
- checkpoints create safe human intervention points
- inspector artifacts make paused and blocked runs resumable
- tool and MCP registries make external execution trust explicit
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
