# orca-replay

## Purpose

Replay a prior workflow case against newer prompts, policies, harnesses, or compatibility conditions.

## When To Use

Use to compare outcomes after ORCA Framework changes, harness updates, runtime policy changes, or compatibility shifts.

## Required Inputs

- source run or receipt

## Optional Inputs

- target harness
- changed policy or prompt
- runtime flags

## Workflow

1. Identify the source run and receipt.
2. Define what changed.
3. Re-run the comparable workflow path as safely as possible.
4. Record the outcome and differences.
5. State whether the change is acceptable.

## Outputs And Artifacts

- `templates/replay-case.md`

## Failure Cases

- If the original run cannot be reconstructed well enough, mark replay reliability as low.
- If external state changed materially, record the comparison limit.

## Related Commands And Skills

- Commands: `orca-restore`, `orca-status`, `orca-receipt`
