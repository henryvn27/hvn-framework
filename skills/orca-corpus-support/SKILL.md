---
name: orca-corpus-support
description: Use optional persistent corpus support only when the user explicitly wants durable reusable vault grounding.
---

# ORCA Corpus Support

## What This Skill Is

A conservative operating procedure for persistent corpus and vault configuration.

## Trigger

Use when:

- the user wants a durable vault or corpus configured once and reused later
- a project needs explicit global versus project corpus rules
- read access and write-back access need to be separated clearly
- corpus path health or re-index state affects trust in the current result

## Do Not Trigger

Do not use when:

- ad hoc repo inspection is enough
- a direct vault read answers the current question without persistent setup
- the user did not ask for a durable corpus and there is no need to add more configuration

## Exact Workflow

1. Start from the default-off posture.
2. Ask for an explicit corpus path.
3. Split reference permission from write-back permission.
4. Keep write-back off unless the user explicitly opts in.
5. Determine whether the configuration is global, project-specific, or inheritable.
6. Apply precedence rules so project disable can override global enable.
7. If the path is missing or changed, fail closed and require re-indexing before claiming current corpus continuity.

## Quality Bar

Corpus support should make durable grounding safer and more inspectable, not more ambient or more magical.

## Common Failure Modes

- assuming a corpus path from vague user language
- treating reference permission as permission to write
- letting project settings silently widen beyond global policy
- hiding missing-path failures behind generic fallback advice
