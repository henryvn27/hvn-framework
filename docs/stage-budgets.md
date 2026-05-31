# Stage Budgets

Stage budgets define different operational limits for different phases of work.

## Purpose

ORCA-HVN should not treat planning, implementation, QA, and unattended background progress as one undifferentiated pool.

## Suggested Dimensions

- wall-clock time
- step or iteration count
- retry count
- optional token or cost estimate when available
- optional cache-hit or cache-read signals when available
- risk level

## Default Bias By Stage

- onboarding: moderate read budget, low rewrite budget, end with a compact orientation artifact
- spec creation: allow enough reasoning to produce a clear contract, but avoid repeated full-context restatement
- milestone planning: prefer concise milestone and goal artifacts over sprawling plan narration
- implementation: stricter retry and output growth limits; spend tokens on execution, not status prose
- QA: allow evidence gathering, but cap repeated re-analysis of the same failure
- regression follow-up: stay narrow and scenario-specific
- review: prioritize diffs, findings, and receipts over full transcript replay
- goal execution: require milestone-sized contracts, explicit retry ceilings, and receipt emission at pause points

## Soft Cap Behavior

At soft cap, ORCA-HVN should usually:

- warn in status or receipt artifacts
- summarize the current state
- tighten scope
- downgrade to smaller context slices
- prefer receipts, shared-state summaries, or targeted excerpts over raw history replay

## Hard Cap Behavior

At hard cap, ORCA-HVN should usually:

- stop the current stage
- emit a receipt or metrics artifact
- recommend continue, revise, split, or escalate
- avoid one more broad retry unless a specific new input changed the situation

## Background Connection

Background mode should use stage-specific budgets:

- planning can usually tolerate more read-only iterations
- implementation should have stricter write and retry limits
- QA prep should bias toward artifact generation and evidence gathering
- goal-oriented background runs should stay milestone-sized and stop at contract boundaries
- long unattended runs should favor cached or stable prompt prefixes instead of reshaping context every cycle

## Budget Rule

If a stage budget is exhausted, the run should stop and emit a receipt instead of continuing optimistically.
