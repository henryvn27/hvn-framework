---
name: orca-install-help
description: Run ORCA installation as a step-by-step, beginner-safe workflow with verification, optional plugin routing, harness setup help, and concrete troubleshooting.
---

# ORCA Install Help

## Trigger

Use when a user needs to install ORCA, recover from a bad install, or decide what setup can be skipped.

## Rules

- explain prerequisites before commands
- use numbered steps
- verify each major stage
- keep optional plugins and harnesses out of the critical path unless needed
- prefer contextual help over giant concept dumps
- route failures to specific recovery steps

## Core Outputs

- install path choice
- exact commands
- verification checkpoints
- next step after success
- troubleshooting route if something fails

## Related Docs

- `docs/install.md`
- `docs/install-for-beginners.md`
- `docs/install-validation.md`
- `docs/install-troubleshooting.md`
