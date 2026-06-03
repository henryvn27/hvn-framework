---
name: orca-install-help
description: Run ORCA installation as a step-by-step, beginner-safe workflow with verification, optional plugin routing, harness setup help, and concrete troubleshooting.
---

# ORCA Install Help

## Trigger

Use when a user needs to install ORCA, recover from a bad install, or decide what setup can be skipped.

## Rules

- ask a short setup interview before giving commands when the path is not already obvious
- prefer a harness-native structured question or selection tool for that interview when the host exposes one
- explain prerequisites before commands
- use numbered steps
- verify each major stage
- keep optional plugins and harnesses out of the critical path unless needed
- prefer contextual help over giant concept dumps
- route failures to specific recovery steps

## Core Outputs

- setup interview summary
- install path choice
- exact commands
- verification checkpoints
- next step after success
- troubleshooting route if something fails

## Setup Interview Focus

Prefer a small question set that materially changes the install path:

1. Is this a first try, one-repo install, or durable cross-project setup?
2. Which harness matters first?
3. Which services are needed now versus later?
4. Does the user want beginner, standard, or technical guidance?
5. Is the goal "prove ORCA works today" or "build my default environment"?
6. How much explanation does the user want during setup and early ORCA use?
7. Should ORCA be terse, brief-but-explanatory, or more guided by default?
8. Are any of those preferences durable?

If the harness offers a structured multi-question UI, use it instead of scattering the setup interview across many plain text prompts.

## Related Docs

- `docs/install.md`
- `docs/install-for-beginners.md`
- `docs/install-validation.md`
- `docs/install-troubleshooting.md`
