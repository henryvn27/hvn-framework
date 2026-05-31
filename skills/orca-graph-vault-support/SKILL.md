---
name: orca-graph-vault-support
description: Use optional vault and graph analysis only when it meaningfully improves understanding.
---

# ORCA Graph And Vault Support

## What This Skill Is

A low-friction support skill for vault inspection and optional graph-style analysis.

## Trigger

Use when:

- a user provides a vault
- a vault is large or fragmented
- project clusters, duplicates, or weak structure are hard to see
- the user explicitly asks for graph help or Graphify

## Do Not Trigger

Do not use when:

- the task is narrow and direct inspection is enough
- graph tooling would add more setup than value
- the user did not ask for deeper vault insight and there is weak evidence it would help

## Exact Workflow

1. Prefer direct answer or direct vault inspection first.
2. Check whether graph analysis would materially improve clarity.
3. If not, stay on the lighter path.
4. If yes, suggest graph analysis as optional or support the user's chosen graph tool.
5. Keep recommendation separate from setup-help.
6. Choose the lightest useful output mode.

## Quality Bar

Graph support should reduce friction, not add ceremony.

## Common Failure Modes

- recommending graph tooling because it is interesting rather than useful
- forcing setup before direct value appears
- replacing direct vault evidence with abstract graph claims
