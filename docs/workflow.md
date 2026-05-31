# Workflow

HVN follows a staged workflow centered on a durable work item. In Linear-first mode, that work item is a Linear issue. In opt-out mode, it is the user's chosen issue, document, or tracker item.

## Standard Sequence

1. `hvn-linear-intake` or `hvn-onboard`: clarify issue context.
2. `hvn-check-setup` or `hvn-setup`: identify required external tools when the next phase depends on GitHub, Linear, MCP, or a host connector.
3. `hvn-discover`: inspect the repo, platform, dependencies, and constraints.
4. `hvn-legacy`: run repo archaeology and modernization prep when the system is inherited, under-documented, or fragile.
5. `hvn-research`: gather external evidence when facts may be stale or unknown.
6. `hvn-spec`: define goals, non-goals, user flows, and acceptance criteria.
7. `hvn-linear-plan-comment` or `hvn-plan`: create implementation phases, verification gates, and approval expectations.
8. `hvn-next`: emit concise phase-exit guidance when the next move is not already obvious or underway.
9. `hvn-goal`: decide whether the next bounded milestone should become a goal contract.
10. `hvn-approve`: request or confirm approval when risk, scope, or confidence requires it.
11. `hvn-build`: implement approved scope.
12. `hvn-trace`: record meaningful execution steps, decisions, and stop reason.
13. `hvn-state`: maintain shared coordination state for multi-role or resumable runs.
14. `hvn-metrics`: record timing, retries, and optional usage signals for the run.
15. `hvn-review`: inspect behavior and maintainability.
16. `hvn-design`: review UX, accessibility, responsive behavior, and product clarity.
17. `hvn-test-blind`: run first-look QA with minimal context.
18. `hvn-test-briefed`: retest with a bounded packet.
19. `hvn-test-regression`: verify fixes and adjacent flows.
20. `hvn-regression-task`: convert strong findings into reusable regression work.
21. `hvn-checkpoint`: pause risky or ambiguous work for human inspection and decision.
22. `hvn-inspect`: summarize current run identity, state, artifacts, and blockers for review or resume.
23. `hvn-tool-review` or `hvn-mcp-review`: govern new or risky external tools and MCP servers.
24. `hvn-security` or `hvn-security-check`: inspect security-relevant surfaces and untrusted inputs.
25. `hvn-benchmark` and `hvn-eval`: judge workflow quality when framework behavior is under review.
26. `hvn-linear-ship-check` or `hvn-ship`: prepare release and done-state evidence.
27. `hvn-retro`: capture lessons and follow-up work.
28. `hvn-status`: explain current harness detection, enabled features, degraded capabilities, and policy switches when behavior needs inspection.

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
- next-step guidance makes phase exits clear without adding process noise
- setup checks keep GitHub, Linear, and MCP dependencies explicit and optional when possible
- compatibility audits keep harness-specific claims explicit instead of assuming parity
- legacy archaeology turns under-documented systems into actionable modernization context
- goal contracts make long-running work bounded and verifiable
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

When a major stage completes, use [next-step guidance](next-step-guidance.md) unless the next action is already being executed or the user has opted out.

If a missing integration blocks that next action, use [external tool setup](external-tool-setup.md) and [degraded mode](degraded-mode.md) before asking the user to install anything.

When harness capability matters, use [harness compatibility](harness-compatibility.md) and [compatibility matrix](compatibility-matrix.md) to choose the safest path.
