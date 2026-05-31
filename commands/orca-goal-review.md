# orca-goal-review

## Purpose

Review whether a goal contract is well-formed, safe, and verifiable.

## When To Use

Use before starting goal mode or when an active goal appears vague, risky, or stuck.

## Required Inputs

- Goal contract

## Optional Inputs

- Spec
- Plan or milestone
- Approval record
- Host adapter

## Workflow

1. Check objective, scope, out-of-scope boundaries, and completion condition.
2. Verify that evidence can prove completion.
3. Check safety, approval, and tool constraints.
4. Recommend accept, revise, pause, clear, or fallback.

## Outputs And Artifacts

- Goal review summary
- Updated `templates/goal-contract.md` or `templates/goal-status.md` when needed

## Failure Cases

- If the contract lacks verification, reject goal mode.
- If risk is unresolved, require approval or checkpoint.

## Related Commands And Skills

- Commands: `orca-goal-create`, `orca-approve`, `orca-checkpoint`
- Skills: `orca-goal-mode`
