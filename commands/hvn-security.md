# hvn-security

## Purpose

Review security-relevant behavior, data handling, permissions, dependencies, and unsafe agent instructions.

## When To Use

Use for auth, payments, personal data, external calls, install scripts, CI, generated code execution, or public release.

## Required Inputs

- Changed files or target system

## Optional Inputs

- Threat model
- Dependency list
- Deployment environment

## Workflow

1. Use `hvn-security`.
2. Identify assets, trust boundaries, inputs, outputs, and dangerous operations.
3. Inspect implementation and docs for unsafe claims.
4. Produce findings with severity and mitigation.

## Outputs And Artifacts

- Security section in `templates/review-report.md`
- Release blocker list when needed

## Failure Cases

- If environment details are missing, record assumptions.
- If a vulnerability is likely, recommend private disclosure handling.

## Related Commands And Skills

- Commands: `hvn-review`, `hvn-ship`
- Skills: `hvn-security`
