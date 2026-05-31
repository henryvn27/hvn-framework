# hvn-goal-create

## Purpose

Generate a goal contract from an approved spec or bounded milestone.

## When To Use

Use after spec and planning when the next milestone is safe and verifiable enough for goal mode.

## Required Inputs

- Approved spec or milestone
- Completion condition
- Verification method

## Optional Inputs

- Host adapter
- Tool constraints
- Stop conditions
- Approval triggers

## Workflow

1. Read the spec or milestone.
2. Define objective, scope, out-of-scope boundaries, and verification.
3. Add stop conditions and approval triggers.
4. Check host support and fallback path.
5. Write the goal contract.

## Outputs And Artifacts

- `templates/goal-contract.md`
- Initial `templates/goal-status.md`

## Failure Cases

- If the milestone is too broad, split it first.
- If approval is missing for risky work, stop at approval.

## Related Commands And Skills

- Commands: `hvn-plan`, `hvn-goal-review`, `hvn-approve`
- Skills: `hvn-goal-mode`
