# Shared State

HVN shared state is the durable coordination layer for cooperating agents working on the same run or work item. It exists so planner, builder, reviewer, QA, and coordinator roles can read the same current operating picture without re-deriving it or trampling each other.

## Purpose

Use shared state for information that multiple roles need during active execution, such as:

- current phase
- assigned role ownership
- latest approved scope summary
- active blockers
- pending questions
- artifact pointers
- checkpoint status

## Shared State Versus Run Memory Versus Traces

These three layers serve different jobs:

- Shared state: the current working coordination surface for an active run or work item
- Run memory: durable facts, decisions, and lessons worth reusing later
- Traces: what happened during a specific run or phase

Shared state answers "what is the current agreed working state?".
Run memory answers "what should future runs remember?".
Traces answer "what actually happened in this run?".

## What Belongs In Shared State

Good shared-state entries include:

- active phase and next expected phase
- role ownership for current tasks
- currently approved scope boundaries
- active checkpoint requests or decisions
- current blockers and dependencies
- artifact links needed by multiple roles

## What Does Not Belong In Shared State

Do not use shared state for:

- full execution transcripts
- durable product facts better stored as run memory
- one-off shell noise
- private notes that cannot be inspected by cooperating roles
- conflicting private task lists for the same active phase

## Ownership And Update Rules

Use simple ownership rules:

- coordinator or planner owns phase, scope, and assignment summaries
- builder owns implementation progress notes during build
- reviewer owns review-status notes
- QA owns QA-status notes
- humans own final checkpoint decisions

Roles may append status observations, but should not silently overwrite another role's owned fields without recording why.

## Conflict Resolution

When shared-state entries conflict:

1. prefer the most recent explicitly sourced update
2. preserve the conflicting note instead of deleting it blindly
3. escalate via checkpoint if the conflict changes scope, approval, or ship confidence

## Read And Write Expectations By Role

- Planner: reads prior state, writes scope summary, phase plan, open questions
- Builder: reads scope and checkpoints, writes implementation progress and blockers
- Reviewer: reads spec, state, and trace summaries, writes findings status
- QA: reads allowed context and state, writes QA status and reproduced blockers
- Coordinator: reads everything, writes phase transitions, assignment summaries, and resume notes

## Format

Use [templates/shared-state.md](../templates/shared-state.md) as the default file-based model.
