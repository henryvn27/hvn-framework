# Using ORCA-HVN With Codex

## When To Use This Path

Use this guide when Codex is the main execution harness.

## How It Works

Codex is usually the direct executor. ORCA-HVN adds routing, workflow structure, receipts, compatibility checks, and QA discipline around that execution.

## Recommended Flow

1. `orca-runtime`
2. `orca-onboard`
3. `orca-spec`
4. `orca-plan`
5. `orca-build`
6. `orca-review` and QA commands

## Common Pitfalls

- assuming every host-native feature exists in Codex
- skipping receipts and lineage because the code changed locally
- using background mode without a bounded contract

## Read Next

- [runtime-adaptation-guide.md](runtime-adaptation-guide.md)
- [goal-mode-guide.md](goal-mode-guide.md)

