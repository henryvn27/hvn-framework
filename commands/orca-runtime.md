# orca-runtime

## Purpose

Apply harness-aware runtime adaptation for the current task or workflow step.

## When To Use

Use when the best execution path depends on the current harness, compatibility profile, or runtime policy.

## Required Inputs

- current task or phase

## Optional Inputs

- explicit harness
- user override
- strict compatibility preference

## Workflow

1. Use `orca-runtime-adaptation`.
2. Detect the harness and confidence level.
3. Read the matching capability profile.
4. Route to the best supported path.
5. Fall back safely when support is partial or unclear.

## Outputs And Artifacts

- runtime route
- runtime status when useful

## Failure Cases

- If the harness is unknown, use the generic safe path.
- If support is unclear, do not recommend unsupported features.

## Related Commands And Skills

- Commands: `orca-status`, `orca-next`, `orca-setup`, `orca-goal`
- Skills: `orca-runtime-adaptation`
