# orca-integration

## Purpose

Route a user to the right ORCA Framework integration pack, stack guidance, setup path, and validation flow without recommending unrelated tools.

## When To Use

Use when the user knows the tool, service, or stack area they need, but not the ORCA Framework workflow around it, or when a best-fit recommendation may be needed.

## Required Inputs

- Tool, platform, or use case

## Optional Inputs

- Web or mobile target
- Active harness
- Existing stack choices
- Recommendation intent versus setup-help intent

## Workflow

1. Identify the integration category.
2. Detect whether the user needs recommendation mode or setup-help mode.
3. Route to the relevant pack.
4. Highlight platform-specific caveats.
5. Recommend only strong-fit adjacent integrations when the use case is clear.
6. Point to setup or validation next if needed.

## Outputs And Artifacts

- Relevant file under `integrations/`
- Optional stack recommendation only when the fit is strong

## Related Commands And Skills

- Commands: `orca-recommend-stack`, `orca-setup-integration`, `orca-validate-integration`, `orca-runtime`
- Skills: `orca-integrations`, `orca-integration-recommendation`
