# orca-doctor

## Purpose

Run or explain ORCA install validation and setup diagnosis.

## When To Use

Use during install, after install, or during troubleshooting when the user needs a concrete health check.

## Required Inputs

- target path or repo root

## Optional Inputs

- harness
- service list

## Workflow

1. Verify the base install.
2. Check core shell dependencies.
3. Check harness docs or routing if a harness is specified.
4. Check service-specific surfaces when requested.
5. Return pass, fail, or manual-follow-up status for each layer.

## Outputs And Artifacts

- [docs/install-validation.md](../docs/install-validation.md)
- [templates/install-validation-report.md](../templates/install-validation-report.md)

## Related Commands And Skills

- Commands: `orca-install`, `orca-check-setup`, `orca-validate-integration`
- Skills: `orca-install-help`, `orca-tool-setup`
