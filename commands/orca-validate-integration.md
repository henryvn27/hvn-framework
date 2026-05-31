# orca-validate-integration

## Purpose

Validate whether an integration is reachable, authenticated, scoped, platform-appropriate, and usable from the current harness.

## When To Use

Use after setup or when a workflow fails because a service, SDK, deploy path, payments path, auth path, or connector may be unavailable or mismatched.

## Required Inputs

- Service name
- Harness or host
- Intended action

## Optional Inputs

- Target repo, issue, project, workspace, or team
- Required read/write scope
- Web or mobile target
- Adjacent integrations expected by the stack

## Workflow

1. Check whether the harness can use the selected integration method.
2. Test reachability without destructive writes.
3. Test authentication state.
4. Check required scope for the intended action.
5. Check whether the selected integration path matches the target platform.
6. Report exact failure mode and fallback.

## Outputs And Artifacts

- `templates/integration-health-report.md`
- Updated `templates/integration-status.md`

## Failure Cases

- If automated validation is unsafe or unavailable, provide manual validation.
- If only read access works, recommend read-only or manual-write fallback.
- If the integration choice is wrong for the platform, report the mismatch directly.

## Related Commands And Skills

- Commands: `orca-integration`, `orca-setup-integration`, `orca-check-setup`
- Skills: `orca-tool-setup`, `orca-integrations`
