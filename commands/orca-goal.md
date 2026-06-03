# orca-goal

## Purpose

Decide whether work should use ORCA-HVN goal mode and route to contract creation, review, status, or fallback execution.

## When To Use

Use for non-trivial, bounded, verifiable work that may benefit from durable continuation.

## Required Inputs

- Task, spec, milestone, or work item

## Optional Inputs

- Host environment
- Approval status
- Verification method

## Workflow

1. Use `orca-goal-mode`.
2. Check whether the work has a spec or bounded milestone.
3. Verify completion and safety conditions.
4. Prefer native `/goal` on Codex and Claude Code when the host supports it and the contract is complete.
5. Otherwise recommend fallback goal workflow or no goal.

## Outputs And Artifacts

- Goal recommendation
- `templates/goal-contract.md` when appropriate

## Failure Cases

- If scope is vague, return to onboarding or spec.
- If verification is missing, do not create a goal.

## Related Commands And Skills

- Commands: `orca-goal-create`, `orca-goal-review`, `orca-goal-status`
- Skills: `orca-goal-mode`
