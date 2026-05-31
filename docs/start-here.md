# Start Here

If you are new to ORCA, read this page before you dive into feature docs.

## What ORCA Is

ORCA is an orchestration framework for running agent-assisted software work with a durable system of record. The formal repository and framework name is ORCA-HVN. It combines spec-driven execution, workflow gating, QA discipline, host-aware behavior, and artifact tracking so agent runs stay inspectable and resumable.

It is also the primary workflow, not a companion layer for GStack or GSD. Those older tools helped inspire parts of the project, but ORCA is meant to replace that workflow with one clearer ORCA path.

It should also teach that path. A new user should be able to start learning orchestration inside ORCA-HVN itself instead of waiting for someone else to train them live.

Framework-wide rule:

- ORCA should reduce friction, not create more setup work

## What It Solves

Use ORCA-HVN when the hard part is not "make the model write code," but:

- turning vague work into a usable spec
- coordinating agents or handoffs without losing context
- keeping QA, review, approvals, and receipts tied to the same work item
- adapting to different harnesses and tool surfaces without pretending they are identical
- onboarding users into orchestration and agent-management habits without a human guide

## The Core Mental Model

ORCA is easiest to understand as five layers:

1. a work item and workflow path
2. feature-specific commands and skills
3. artifacts that preserve state, decisions, and evidence
4. runtime adaptation for the active harness
5. verification, review, and maintenance loops

## Start With One Workflow

Do this first:

1. [first-workflow.md](first-workflow.md)
2. run `orca-onboard`
3. run `orca-spec`
4. run `orca-plan`
5. run `orca-build`
6. run `orca-review`

If that path feels clear, then widen into the rest of the framework.

## Read In This Order

1. [intro.md](intro.md)
2. [intro-guide.md](intro-guide.md)
3. [first-workflow.md](first-workflow.md)
4. [quickstart.md](quickstart.md)
5. [choose-your-path.md](choose-your-path.md)
6. [feature-index.md](feature-index.md) when you want the broader map

## Best Next Page By Situation

- I just want the clearest starter path: [first-workflow.md](first-workflow.md)
- I just want to try it: [quickstart.md](quickstart.md)
- I want to understand the big picture: [intro.md](intro.md)
- I am moving off GStack or GSD: [guides/from-gstack-or-gsd-to-orca-hvn.md](guides/from-gstack-or-gsd-to-orca-hvn.md)
- I use a controller agent like Hermes: [guides/using-hvn-with-hermes.md](guides/using-hvn-with-hermes.md)
- I care about design quality and not looking AI-generated: [guides/visual-quality-guide.md](guides/visual-quality-guide.md)
- I need a feature map: [feature-index.md](feature-index.md)
- I need the right command: [command-index.md](command-index.md)
- I need to know what ORCA should trust first: [truth-hierarchy.md](truth-hierarchy.md)
