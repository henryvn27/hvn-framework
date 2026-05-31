# Auto Updates

ORCA should stay current without behaving recklessly.

The update system is a controlled maintenance layer for checking, validating, applying, and recovering ORCA updates.

## What The System Does

It should be able to:

- check for updates automatically or manually
- distinguish between channels
- verify an update before apply
- apply safe updates in the right mode
- pause when local risk is too high
- preserve rollback options
- show update status clearly

## What It Should Not Do

It should not:

- blindly pull latest
- auto-apply unverified changes
- break local plugins, harnesses, or integrations by surprise
- turn update checks into noisy interruptions

## Core Parts

- [update-policy.md](update-policy.md)
- [update-channels.md](update-channels.md)
- [update-modes.md](update-modes.md)
- [update-discovery.md](update-discovery.md)
- [update-verification.md](update-verification.md)
- [update-security.md](update-security.md)
- [update-rollback.md](update-rollback.md)
- [update-recovery.md](update-recovery.md)
- [update-rollout-strategy.md](update-rollout-strategy.md)
- [update-ux.md](update-ux.md)
- [update-validation.md](update-validation.md)

## Default Shape

Default behavior should be conservative:

- stable channel
- auto-check enabled
- prompt before apply
- rollback-ready before any auto-apply path

Users can choose more or less automation, but the default should be beginner-safe.
