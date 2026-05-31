# Evals

HVN evals score trajectories, not just final outputs. A result can look good and still fail because the agent ignored scope, skipped the spec, used the wrong artifacts, hid uncertainty, or looped without producing evidence.

## Purpose

Use evals to answer:

- Did the agent ask the right questions?
- Did it produce a usable spec or plan?
- Did it stay inside approved scope?
- Did it use the right artifacts and context boundaries?
- Did it verify the work appropriately?
- Did it hand off clearly?
- Did it avoid avoidable loops or unnecessary work?
- Did it produce a final result that would help a maintainer ship safely?

## Evaluation Model

Each eval case should include:

- scenario and setup
- target command or workflow
- expected artifacts
- pass/fail checks
- rubric dimensions
- reviewer notes

Use [templates/eval-case.md](../templates/eval-case.md) for individual cases and [templates/eval-report.md](../templates/eval-report.md) for results. Required fields are defined in [templates/contracts/eval-contract.md](../templates/contracts/eval-contract.md).

For onboarding and spec quality comparisons, use the dedicated benchmark pack in [docs/benchmark-pack.md](benchmark-pack.md) and `benchmarks/onboarding-spec/`.

## Trajectory Dimensions

Recommended dimensions:

- Intake quality
- Spec quality
- Scope control
- Artifact discipline
- Verification discipline
- Handoff quality
- Efficiency
- Final usefulness

## Scoring

HVN supports both:

- Pass/fail checks for hard requirements
- Rubric scores for judgment-heavy dimensions

Use pass/fail for things like:

- a required spec was produced
- approval was requested before risky work
- QA mode boundaries were preserved
- the run recorded a stop reason

Use rubric scoring when grading:

- question quality
- clarity of reasoning
- usefulness of the plan
- strength of verification choices

## Eval Sets

Start with small curated eval sets that a maintainer can actually review. The recommended starter set lives at [examples/evals/starter-set.md](../examples/evals/starter-set.md) and covers 12 issue-shaped scenarios.

## Reporting

Each eval run should produce a human-reviewable report with:

- scope of the eval run
- case-by-case outcomes
- common failure patterns
- suggested framework improvements

When workflow efficiency matters, pair evals with per-run accounting from [docs/workflow-accounting.md](workflow-accounting.md).

## Relationship To QA

QA checks whether the product behaves correctly.
Evals check whether the agent workflow behaved correctly.

Both matter. QA can pass while the workflow still fails the framework standard.
