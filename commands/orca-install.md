# orca-install

## Purpose

Guide a user through ORCA installation in the smallest correct path for their current situation.

## When To Use

Use when a user is trying to install ORCA, verify it, recover from a broken setup, or decide between beginner, standard, and technical install paths.

## Required Inputs

- target install goal
- current operating system

## Optional Inputs

- harness choice
- service needs
- plugin needs
- preferred path: beginner, standard, or technical

## Workflow

1. Confirm prerequisites.
2. Choose the correct install path.
3. Give exact commands in order.
4. Verify each major stage.
5. Route optional plugins and harnesses only when needed.
6. Route failures to the specific troubleshooting page.

## Outputs And Artifacts

- [docs/install.md](../docs/install.md)
- [templates/install-checklist.md](../templates/install-checklist.md)
- [templates/preflight-check.md](../templates/preflight-check.md)

## Related Commands And Skills

- Commands: `orca-doctor`, `orca-setup`, `orca-check-setup`
- Skills: `orca-install-help`, `orca-tool-setup`
