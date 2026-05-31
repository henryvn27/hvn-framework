# Workflow

HVN follows a staged workflow. Not every project needs every stage, but every skipped stage should be an explicit decision.

## Standard Sequence

1. `hvn-onboard`: collect intent and unresolved questions.
2. `hvn-discover`: inspect the repo, platform, dependencies, and constraints.
3. `hvn-research`: gather external evidence when facts may be stale or unknown.
4. `hvn-spec`: define goals, non-goals, user flows, and acceptance criteria.
5. `hvn-plan`: create implementation phases with verification for each phase.
6. `hvn-build`: implement with focused changes and local checks.
7. `hvn-review`: inspect diff and behavior before QA.
8. `hvn-design`: review UX, accessibility, responsive behavior, and product clarity.
9. `hvn-test-blind`: run first-look QA with no hidden context.
10. `hvn-test-briefed`: retest with a bounded packet.
11. `hvn-test-regression`: verify fixes and unaffected paths.
12. `hvn-security`: inspect security-relevant surfaces.
13. `hvn-ship`: prepare release and handoff.
14. `hvn-retro`: capture lessons and follow-up work.

## Skipping Stages

Small changes may combine stages. For example, a typo fix can skip onboarding and research. A production feature touching auth, payments, data deletion, or public UX should not skip spec, review, security consideration, and QA.
