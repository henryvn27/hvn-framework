# Spec-Driven Workflow

ORCA-HVN is spec-driven because implementation quality depends on having a clear contract before build and QA begin.

That contract should usually come after idea shaping and validation, not instead of them.

## Standard Flow

1. Intake or onboarding clarifies the work item.
2. If the work begins as an opportunity, `orca-idea`, `orca-evaluate-idea`, `orca-plan-idea`, and `orca-validate-idea` shape the decision before product delivery begins.
3. Discovery and research gather evidence.
4. Legacy archaeology enriches the context when the repo is inherited, under-documented, or fragile.
5. `orca-spec` writes the implementation contract.
6. `orca-plan` turns the spec into sequenced milestone-sized work with verification gates and an explicit first execution slice.
7. `orca-next` explains the next move after spec and planning when useful.
8. The next bounded milestone may become a goal contract when completion and verification are clear.
9. Approval gates control risky actions before build or goal execution.
10. Build, review, QA, and ship all work against the approved spec.
11. Benchmark packs can compare how well onboarding and spec workflows perform over time.
12. Traces, evals, workflow metrics, and run memory preserve what happened and what should carry forward.

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

It should not be used to cover for unresolved opportunity questions. If the team still does not know whether the idea deserves to exist, ORCA-HVN should stay in the ideation lane until the next validation step is clear.

The spec is the contract. The plan is the route. The trace is the record. The eval is the judgment.

For legacy systems, the modernization spec should preserve observed behavior, name business logic hotspots, and define the regression safety net before implementation begins.

After spec creation, next-step guidance should usually recommend milestone planning. If acceptance criteria are not testable, it should recommend revising the spec instead.

For net-new products, the usual bridge is:

idea one-pager -> scorecard -> opportunity memo -> validation plan -> spec
