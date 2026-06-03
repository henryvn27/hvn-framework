# orca-validate-schema

## Purpose

Check whether a portable ORCA Framework artifact matches its declared schema family and version.

## When To Use

Use when:

- validating a schema-backed artifact
- checking migration readiness
- inspecting partially valid artifacts before mapping or automation

## Required Inputs

- artifact family
- schema version
- artifact payload

## Optional Inputs

- source Markdown artifact
- mapping target

## Workflow

1. Use `orca-portability`.
2. Identify the declared schema family and version.
3. Check required fields and structure.
4. Classify the result as valid, partially valid, or invalid.
5. Recommend migration or human review when needed.

## Outputs And Artifacts

- validation result summary
- optional `templates/schema-migration-note.md` if a version jump is involved

## Failure Cases

- If the schema version is unknown, stop and surface the mismatch.
- If the artifact is partially valid, preserve it and record the structural gaps.

## Related Commands And Skills

- Commands: `orca-schema`
- Skills: `orca-portability`
