# Spec-Driven Workflow

ORCA-HVN is spec-driven because implementation quality depends on having a clear contract before build and QA begin.

## Standard Flow

1. Intake or onboarding clarifies the work item.
2. Discovery and research gather evidence.
3. Legacy archaeology enriches the context when the repo is inherited, under-documented, or fragile.
4. `orca-spec` writes the implementation contract.
5. `orca-plan` turns the spec into sequenced work with verification gates.
6. `orca-next` explains the next move after spec and planning when useful.
7. The next bounded milestone may become a goal contract when completion and verification are clear.
8. Approval gates control risky actions before build or goal execution.
9. Build, review, QA, and ship all work against the approved spec.
10. Benchmark packs can compare how well onboarding and spec workflows perform over time.
11. Traces, evals, workflow metrics, and run memory preserve what happened and what should carry forward.

## Spec Contract

The default shape for a spec is defined by:

- [templates/spec.md](../templates/spec.md)
- [templates/contracts/spec-contract.md](../templates/contracts/spec-contract.md)

Specs should include:

- goals
- background
- user scenarios
- requirements
- non-goals
- edge cases
- acceptance criteria
- assumptions
- open questions

## Why This Matters

Spec-driven work reduces:

- accidental scope expansion
- hidden assumptions
- untestable done states
- QA confusion about intended behavior

The spec is the contract. The plan is the route. The trace is the record. The eval is the judgment.

For legacy systems, the modernization spec should preserve observed behavior, name business logic hotspots, and define the regression safety net before implementation begins.

After spec creation, next-step guidance should usually recommend milestone planning. If acceptance criteria are not testable, it should recommend revising the spec instead.
