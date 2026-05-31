---
name: orca-auto-update
description: Model ORCA updates as a controlled channel-aware system with verification, staged rollout, compatibility checks, and rollback readiness.
---

# ORCA Auto Update

## Goal

Keep ORCA current without unsafe surprise behavior.

## Rules

- check and apply are separate decisions
- channel and mode are separate controls
- verification comes before apply
- rollback is required before risky automation
- plugin, harness, and integration compatibility must be considered

## Outputs

- update candidate summary
- verification result
- apply or defer recommendation
- rollback or recovery path if needed
