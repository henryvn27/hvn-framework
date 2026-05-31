# Spec-Driven Workflow

HVN is spec-driven because implementation quality depends on having a clear contract before build and QA begin.

## Standard Flow

1. Intake or onboarding clarifies the work item.
2. Discovery and research gather evidence.
3. `hvn-spec` writes the implementation contract.
4. `hvn-plan` turns the spec into sequenced work with verification gates.
5. Approval gates control risky actions before build.
6. Build, review, QA, and ship all work against the approved spec.
7. Traces, evals, and run memory preserve what happened and what should carry forward.

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
