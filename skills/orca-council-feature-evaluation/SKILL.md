---
name: orca-council-feature-evaluation
description: Use a five-subagent council to decide whether a proposed feature deserves roadmap, spec, or build work.
---

# ORCA Feature Evaluation Council

## What This Skill Is

A specialized council for evaluating whether a new feature should be built, delayed, narrowed, or rejected.

It is for feature judgment before implementation, not for writing the implementation plan itself.

## Trigger

Use when the user wants to know:

- should we add this feature
- is this the right version of the feature
- does the user value justify the complexity
- is there a smaller wedge worth shipping first

## Five Council Roles

1. User Value Advocate
2. Product Strategy Owner
3. Engineering Cost Realist
4. Support And Ops Impact Reviewer
5. Skeptical Risk Reviewer

## Stage-1 Expectations

Each worker should answer:

- what user problem the feature actually solves
- whether the feature changes outcomes materially
- what complexity or maintenance burden it adds
- whether a narrower first version would be better
- why the feature should be built now, later, or never

## Stage-3 Synthesis Must Produce

- recommendation:
  - build now
  - narrow and test
  - defer
  - reject
- strongest user-value case
- strongest cost or complexity objection
- minimal valuable version if the feature survives
- what evidence would change the decision

## Required Outputs

Use:

- `templates/council-synthesis.md`
- `templates/opportunity-memo.md` when the feature is strategic enough to justify it
- bridge to `orca-spec` only if the council says the feature earned product work

## Failure Modes

- treating internal excitement as user demand
- ignoring maintenance or support burden
- approving a bloated first version
- using the council after the build decision was already made

## Relationship To Other ORCA Framework Skills And Commands

Pairs with `orca-research`, `orca-spec`, `orca-plan`, `orca-review`, and `orca-business-ideation` when the feature is really a product-direction decision.
