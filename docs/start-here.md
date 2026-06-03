# Start Here

If you are new to ORCA, read this page before you dive into feature docs.

## What ORCA Is

ORCA is an orchestration framework for running agent-assisted software work with a durable system of record. The formal repository and framework name is ORCA Framework. It combines spec-driven execution, workflow gating, QA discipline, host-aware behavior, and artifact tracking so agent runs stay inspectable and resumable.

It is also the primary workflow, not a companion layer for GStack or GSD. Those older tools helped inspire parts of the project, but ORCA is meant to replace that workflow with one clearer ORCA path.

It should also teach that path. A new user should be able to start learning orchestration inside ORCA Framework itself instead of waiting for someone else to train them live.

Framework-wide rules:

- ORCA should reduce friction, not create more setup work
- ORCA should try the strongest safe path to resolution before escalating to the user

## What It Solves

Use ORCA Framework when the hard part is not "make the model write code," but:

- turning vague work into a usable spec
- coordinating agents or handoffs without losing context
- keeping QA, review, approvals, and receipts tied to the same work item
- adapting to different harnesses and tool surfaces without pretending they are identical
- onboarding users into orchestration and agent-management habits without a human guide
- owning the real ship, QA, and feedback-repair lanes instead of stopping at "code changed"

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
2. use `orca-onboard` as your first workflow step
3. use `orca-spec`
4. use `orca-plan`
5. use `orca-build`
6. use `orca-review`

Important:

- the install flow provides runnable `orca` and `orca-*` commands in the installed `bin/` directory
- in a host like Codex CLI, the shipped wrappers can launch Codex directly or print the exact ORCA prompt with `--print`
- if you prefer a different host-specific prompt layer, reuse `orca show <command>` or `orca run <command> --print`

If that path feels clear, then widen into the rest of the framework.

## Orchestration First Path

If the job is primarily controller or subagent orchestration, start with:

1. `orca-controller`
2. `orca-orient`
3. `orca-delegate`
4. `orca-ingest`
5. `orca-next`

This is the shortest ORCA path for multi-harness or parent-worker work.

## Read In This Order

1. [intro.md](intro.md)
2. [intro-guide.md](intro-guide.md)
3. [first-workflow.md](first-workflow.md)
4. [quickstart.md](quickstart.md)
5. [choose-your-path.md](choose-your-path.md)
6. [feature-index.md](feature-index.md) when you want the broader map

## Best Next Page By Situation

- I just want the clearest starter path: [first-workflow.md](first-workflow.md)
- I feel overwhelmed by Codex or Claude Code: [guides/beginners-guide.md](guides/beginners-guide.md)
- I need to install ORCA clearly: [install-overview.md](install-overview.md)
- I just want to try it fast: [quickstart.md](quickstart.md)
- I want to understand the big picture: [intro.md](intro.md)
- I am moving off GStack or GSD: [guides/from-gstack-or-gsd-to-orca-framework.md](guides/from-gstack-or-gsd-to-orca-framework.md)
- I want the controller/subagent path: [agent-orchestration.md](agent-orchestration.md)
- I care about design quality and not looking AI-generated: [guides/visual-quality-guide.md](guides/visual-quality-guide.md)
- I need a feature map: [feature-index.md](feature-index.md)
- I need the right command: [command-index.md](command-index.md)
- I want ORCA to explain what is happening: [explanation-mode.md](explanation-mode.md)
- I need to know what ORCA should trust first: [truth-hierarchy.md](truth-hierarchy.md)
