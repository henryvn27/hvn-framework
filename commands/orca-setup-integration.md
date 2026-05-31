# orca-setup-integration

## Purpose

Guide setup for a specific integration pack, including credential expectations, platform caveats, and fallback paths.

## When To Use

Use when the user chose a stack component and now needs the shortest safe setup path.

## Required Inputs

- Integration name

## Optional Inputs

- Web or mobile target
- Harness or host
- Existing project shape

## Workflow

1. Open the integration pack.
2. Determine whether the setup is required now or optional.
3. Check platform-specific requirements.
4. Route to validation once setup is complete.
5. Record fallback if direct setup is unavailable.

## Outputs And Artifacts

- `templates/integration-checklist.md`
- Updated integration status or health note when relevant

## Related Commands And Skills

- Commands: `orca-integration`, `orca-validate-integration`, `orca-setup`
- Skills: `orca-integrations`, `orca-tool-setup`
