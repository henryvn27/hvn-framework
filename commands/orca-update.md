# orca-update

## Purpose

Review, verify, and apply an ORCA update according to channel, mode, and compatibility policy.

## When To Use

Use when an update is available and the user wants to inspect, apply, defer, or recover from it.

## Required Inputs

- current version
- selected channel
- selected update mode

## Optional Inputs

- plugin state
- harness state
- integration state

## Workflow

1. Discover the update candidate.
2. Check channel and mode policy.
3. Verify trust, integrity, compatibility, and rollback readiness.
4. Decide whether to apply, prompt, defer, or block.
5. Route to rollback or recovery if needed.

## Outputs And Artifacts

- [templates/update-candidate.md](../templates/update-candidate.md)
- [templates/update-verification-report.md](../templates/update-verification-report.md)
- [templates/update-result.md](../templates/update-result.md)

## Related Commands And Skills

- Commands: `orca-check-updates`, `orca-doctor`
- Skills: `orca-auto-update`
