# orca-integration

## Purpose

Route a user to the right ORCA-HVN integration pack, stack guidance, setup path, and validation flow.

## When To Use

Use when the user knows the tool, service, or stack area they need, but not the ORCA-HVN workflow around it.

## Required Inputs

- Tool, platform, or use case

## Optional Inputs

- Web or mobile target
- Active harness
- Existing stack choices

## Workflow

1. Identify the integration category.
2. Route to the relevant pack.
3. Highlight platform-specific caveats.
4. Recommend adjacent integrations and the default paved road when useful.
5. Point to setup or validation next if needed.

## Outputs And Artifacts

- Relevant file under `integrations/`
- Optional stack recommendation

## Related Commands And Skills

- Commands: `orca-setup-integration`, `orca-validate-integration`, `orca-runtime`
- Skills: `orca-integrations`
