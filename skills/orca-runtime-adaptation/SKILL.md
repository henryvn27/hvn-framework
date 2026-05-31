---
name: orca-runtime-adaptation
description: Detect the current harness, apply capability-driven routing, and choose safe fallbacks using reviewed compatibility knowledge.
---

# ORCA-HVN Runtime Adaptation

## What This Skill Is

A runtime decision skill that chooses the safest and most useful harness-specific path without assuming parity across hosts.

## Trigger

Use when a command, workflow step, setup recommendation, or next-step recommendation depends on harness capabilities.

## Inputs

- current task or phase
- detected or inferred harness
- compatibility matrix
- harness capability profile
- active runtime policy

## Workflow

1. Detect or infer the harness.
2. Record detection confidence.
3. Read the matching harness capability profile.
4. Route the workflow by supported, partial, unsupported, or unclear capabilities.
5. Apply runtime flags and user overrides.
6. Choose the safest fallback when support is partial or unclear.
7. Record the decision in runtime status when it affects behavior materially.

## Quality Bar

Behavior must be capability-based, conservative, inspectable, and overrideable. Unsupported features should not be recommended as defaults.

## Failure Cases

- If the harness is unknown, use the generic safe path.
- If compatibility is unclear, prefer degraded mode over a strong claim.
- If risk is high and governance is weak, tighten approvals.
