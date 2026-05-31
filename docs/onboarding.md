# Onboarding

HVN onboarding is an interview-first intake process for turning unclear product or engineering intent into enough structured context to write a useful spec.

Onboarding is not implementation planning. It should not jump to tasks, files, or code changes before the problem is understood.

## Purpose

Onboarding gathers the facts and decisions that shape the first spec:

- problem statement
- intended outcome
- users or stakeholders
- environment and repo context
- greenfield or existing-project status
- constraints and preferences
- stack assumptions
- edge cases
- success criteria
- ambiguity and open questions

The output is a structured intake artifact, not a plan.

## Interview Behavior

Use `hvn-question-flow` in onboarding mode. Ask one high-leverage question by default, or a compact 2-3 question batch when the questions are short and independent.

Good onboarding questions:

- change the spec
- expose hidden scope
- identify constraints
- reveal edge cases
- clarify success criteria
- distinguish v1 from later work

Bad onboarding questions:

- ask facts already present in the issue, repo, memory, or prior artifact
- satisfy curiosity without changing the spec
- force the user through a giant form
- ask implementation details before the desired behavior is understood

## Greenfield Versus Existing Project

Onboarding must identify whether the work is greenfield or inside an existing project.

For greenfield work, gather:

- target user
- first workflow
- first release boundary
- technology preferences
- deployment or distribution expectations
- non-goals

For existing projects, gather:

- repo path or product surface
- current behavior
- desired behavior
- conventions that must be preserved
- related files, flows, or systems if known
- regression-sensitive areas

Existing-project onboarding should route to discovery before spec when repo conditions are unknown.

## Readiness For Spec

Onboarding is ready for spec when:

- the problem can be stated clearly
- the intended outcome is concrete
- current scope and non-scope are visible
- success criteria are testable enough to draft
- major constraints are known or marked as assumptions
- open questions have owners and next gates

If those conditions are not met, continue the interview or route to discovery or research.

## Output

Use `templates/onboarding-intake.md`.

The artifact should include:

- problem statement
- intended outcome
- environment or repo context
- constraints
- assumptions
- edge cases
- stakeholder or user needs
- success criteria
- open questions
- readiness assessment for spec creation

## Linear And Run Memory

In Linear-first mode, onboarding should post or prepare a concise intake summary. It should also seed run memory with:

- objective
- scope boundary
- assumptions
- open questions
- spec readiness
- linked intake artifact

If Linear is blocked, create local artifacts and record the exact issue update to sync later.
