# orca-validate-integration

## Purpose

Validate whether an external integration is reachable, authenticated, scoped, and usable from the current harness.

## When To Use

Use after setup or when a workflow fails because GitHub, Linear, MCP, or a connector may be unavailable.

## Required Inputs

- Service name
- Harness or host
- Intended action

## Optional Inputs

- Target repo, issue, project, workspace, or team
- Required read/write scope

## Workflow

1. Check whether the harness can use the selected integration method.
2. Test reachability without destructive writes.
3. Test authentication state.
4. Check required scope for the intended action.
5. Report exact failure mode and fallback.

## Outputs And Artifacts

- `templates/integration-health-report.md`
- Updated `templates/integration-status.md`

## Failure Cases

- If automated validation is unsafe or unavailable, provide manual validation.
- If only read access works, recommend read-only or manual-write fallback.

## Related Commands And Skills

- Commands: `orca-setup`, `orca-check-setup`
- Skills: `orca-tool-setup`
