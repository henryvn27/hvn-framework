# orca-check-updates

## Purpose

Check whether an ORCA update exists and summarize its risk, channel, and compatibility impact.

## When To Use

Use when the user wants visibility before deciding whether to update.

## Required Inputs

- current version
- selected channel

## Optional Inputs

- update mode
- plugin state
- harness state
- integration state

## Workflow

1. Discover available update candidates.
2. Filter by channel compatibility.
3. Summarize release notes and impact.
4. State whether the update looks safe, blocked, or needs review.

## Outputs And Artifacts

- [templates/update-manifest.md](../templates/update-manifest.md)
- [templates/update-notice.md](../templates/update-notice.md)

## Related Commands And Skills

- Commands: `orca-update`, `orca-doctor`
- Skills: `orca-auto-update`
