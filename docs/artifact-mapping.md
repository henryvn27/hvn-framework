# Artifact Mapping

Artifact mapping explains how ORCA Framework artifacts can be translated into other systems without pretending every concept maps perfectly.

## What Mapping Is For

Use mappings when ORCA Framework artifacts need to move into:

- harness-native formats
- issue trackers
- eval or reporting tools
- future runtime integrations

## Mapping Rules

- keep the source artifact identity
- preserve schema version
- record lossy transformations
- do not invent missing data to satisfy a target system
- prefer explicit field maps over prose guesses

## Typical Mapping Targets

### Harness-Native Formats

Examples:

- goal contract into a host-native goal request
- runtime status into a host diagnostics panel or local status command
- approval request into a harness-native approval prompt

### Issue Trackers

Examples:

- spec into an issue comment or linked document
- regression task into an issue or checklist item
- receipt into a work-item summary comment

### Eval And Report Tools

Examples:

- trace metadata into an eval runner
- receipt summary into a benchmark or rollout report
- QA finding into a regression candidate feed

## Mapping Reality

Some fields map cleanly:

- identifiers
- status
- timestamps
- links
- structured decision fields

Some fields do not:

- nuanced rationale
- freeform review notes
- host-specific caveats
- soft workflow interpretations

For those cases, keep a machine-readable core and preserve the richer Markdown artifact alongside it.

## Mapping Artifact

Use [templates/artifact-mapping.md](../templates/artifact-mapping.md) to describe:

- source artifact family and version
- target system
- field correspondence
- known lossy areas
- reviewer notes
