# orca-linear-setup

## Purpose

Help a user configure Linear for ORCA-HVN work: states, labels, guidance, permissions, agent access, smoke-test issue, and opt-out rules.

## When To Use

Use when a team is adopting ORCA-HVN with Linear, creating a new Linear project, adding agents to an existing Linear workspace, or diagnosing whether Linear is ready for ORCA-HVN.

## Required Inputs

- Linear workspace, team, or project target
- User preference for Linear-first or opt-out mode

## Optional Inputs

- Existing state names
- Existing labels
- Agent connector or MCP availability
- Permission policy for state and label changes
- Repository or product name

## Linear Context

- Expects: team or project name, available states, labels, permissions, and guidance locations when accessible
- Reads: workspace or project configuration, existing workflow gates, labels, and setup issue if present
- Posts: setup checklist, guidance recommendation, smoke-test result, and unresolved setup blockers
- Trigger: new ORCA-HVN adoption, new project setup, `orca-hvn` install, or `needs-linear-setup`
- Human approval: required before changing workspace-wide states, labels, permissions, or guidance

## Opt-Out Context

If the user opts out of Linear, use this command to choose and document the alternative system of record. The output should map ORCA-HVN gates to that system.

## Workflow

1. Confirm whether the user wants Linear-first mode or opt-out mode.
2. Identify setup scope: workspace, team, or project.
3. Map existing states to ORCA-HVN gates or recommend missing gates.
4. Map existing labels to ORCA-HVN routing and risk labels or recommend additions.
5. Prepare agent guidance from `docs/linear-guidance.md`.
6. Decide whether agents may change states and labels or only recommend changes.
7. Create or recommend a smoke-test issue.
8. Verify the agent can read issues and post comments when tools are available.
9. Record setup status with `templates/linear-setup-checklist.md`.

## Outputs And Artifacts

- `templates/linear-setup-checklist.md`
- Linear setup comment or setup issue update
- Recommended state mapping
- Recommended label set
- Agent permission policy
- Opt-out mapping when applicable

## Failure Cases

- If Linear authentication is unavailable, produce manual setup instructions and do not claim verification.
- If states cannot be changed, document the mapping to existing states.
- If agents cannot post comments, block ORCA-HVN Linear-first rollout until comment access is fixed.
- If the user opts out, do not continue configuring Linear unless requested.

## Related Commands And Skills

- Commands: `orca-linear-intake`, `orca-linear-sync`, `orca-help`
- Skills: `orca-linear-setup`, `orca-linear-core`, `orca-core`
