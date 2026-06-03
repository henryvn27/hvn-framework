---
name: orca-adaptive-guidance
description: Provide lightweight, skill-sensitive coaching without slowing down normal ORCA Framework execution.
---

# ORCA Adaptive Guidance

## What This Skill Is

A support layer for giving small, useful learning nudges when they help and staying quiet when they do not.

## Trigger

Use when:

- the user appears to need more scaffolding
- repeated clarification loops show a prompt or context pattern problem
- a short rewrite or suggestion would materially improve the next turn
- the user explicitly asks for more or less coaching

## Do Not Trigger

Do not use when:

- the user wants direct execution only
- the feedback would be obvious, nitpicky, or patronizing
- the task is too small to justify coaching
- the same guidance was just given

## Inputs

- current task
- inferred support level
- current learning-help mode
- recent learning signals

## Workflow

1. Check whether coaching should appear at all.
2. Infer beginner, intermediate, advanced, or expert support level from behavior.
3. Choose the lightest useful coaching shape.
4. Use one concrete nudge, rewrite, or skip note when helpful.
5. Suppress the coaching if it risks adding more friction than value.

## Quality Bar

The output must be supportive, concise, actionable, and non-condescending. It should help the user improve without making them feel graded.

## Related Docs

- `docs/adaptive-learning.md`
- `docs/user-skill-model.md`
- `docs/adaptive-expertise-levels.md`
- `docs/constructive-feedback-style.md`
- `docs/feedback-tone-check.md`
