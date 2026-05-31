# Spec-Driven Workflow

HVN treats the spec as the primary execution artifact for non-trivial work. Chat context, run memory, Linear comments, and plans support the spec; they do not replace it.

## Core Rule

Spec first. Plan from the spec. Execute against the spec. Verify against the spec.

```text
Discuss / onboard
Research when needed
Create or refine spec
Split scope and phases
Plan execution
Execute against spec
Verify against spec
Update memory, Linear, and follow-up scope
```

## Why The Spec Matters

A spec is the contract that lets separate agents reach the same interpretation of done. Without a precise spec, build agents improvise, reviewers review intent they inferred, and QA tests against memory or vibes.

The spec should define enough detail that a builder can act without guessing and a reviewer can verify without defending the implementation.

## Source Of Truth

For non-trivial work:

- the latest approved spec controls build scope
- the plan derives phases from the spec
- build work maps changes to spec requirements
- review checks implementation against spec and adjacent risks
- QA verifies acceptance criteria and user-visible behavior
- run memory records which spec version is active

If requirements change, update the spec before expanding implementation.

## Required Spec Content

Use `templates/spec.md`. A usable spec includes:

- title
- linked Linear issues or opt-out records
- problem
- objective
- in-scope work
- out-of-scope work
- target users or usage context
- constraints
- assumptions
- edge cases
- UX or system behavior
- data or API implications
- file or area of change
- acceptance criteria
- verification criteria
- rollout or risk notes when relevant

## Spec Lifecycle

### Draft

Created from onboarding, discovery, research, and issue context. A draft can carry assumptions and open questions.

### Checked

Reviewed with `hvn-spec-check`. The output is one of:

- ready for planning
- needs clarification
- too vague to proceed

### Approved

Human-approved when the work changes product behavior, data, security, billing, release process, or public user experience.

### Revised

Updated when scope, constraints, acceptance criteria, or requirements change.

### Archived

Linked from final run memory and Linear ship evidence after completion.

## Planning From Spec

Planning should not start from chat alone. `hvn-plan` reads the latest spec, splits work into milestones, maps tasks to requirements, and attaches phase-level verification.

## Execution Against Spec

`hvn-build` should:

- read the latest approved spec first
- implement only in-scope work
- record deviations
- stop when requirements change
- update the spec before expanding scope

## Verification Against Spec

Verification checks acceptance and verification criteria directly. If a criterion cannot be verified, the spec is incomplete and should be revised.

## Linear And Run Memory

Specs should reference Linear issue IDs when available. Run memory should record:

- active spec link
- spec status
- approval source
- current phase
- spec revisions
- deviations and follow-up scope
