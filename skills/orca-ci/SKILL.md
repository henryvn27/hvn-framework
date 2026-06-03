---
name: orca-ci
description: Triage failing CI checks, extract actionable failure context, and route to the right fix path.
---

# ORCA Framework CI

## What This Skill Is

A bounded CI triage workflow focused on actionable failure extraction before implementation begins.

## Trigger

Use when a PR, branch, or release lane is blocked by failing CI.

## Do Not Trigger

Do not use when checks are healthy or when the provider cannot be inspected from the current environment and only a link can be given.

## Required Inputs

- PR, branch, or check context

## Optional Inputs

- CI provider
- linked work item

## Exact Workflow

1. Confirm the provider and auth surface.
2. Use bounded GitHub commands only.
   - set `GH_PROMPT_DISABLED=1`
   - set `GIT_TERMINAL_PROMPT=0`
   - use the repo timeout policy instead of watch mode
3. Resolve the relevant PR or branch.
4. Inspect failing checks with `scripts/inspect_pr_checks.py` when GitHub Actions is the provider.
5. Gather actionable failure snippets when available.
6. Separate code failures from infra or still-running failures.
7. Propose a fix path before changing code.

## Expected Outputs

- CI triage summary
- failure snippet set
- recommended next action
- machine-readable JSON triage when automation or a parent agent needs structured output

## Quality Bar

The triage should help a maintainer fix the problem without manually spelunking the provider UI first.

## Common Failure Modes

- trying to implement fixes before the actual failure is understood
- treating in-progress checks as final
- over-claiming visibility into providers the current tool surface cannot inspect
- running unbounded `gh` commands that hang on auth or network prompts

## Relationship To Other ORCA Framework Skills And Commands

Pairs with `orca-delegation`, `orca-review`, and `orca-ship`.
