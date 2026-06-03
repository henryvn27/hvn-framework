# Harness Detection

ORCA Framework should detect the current harness before recommending host-specific behavior.

## Detection Sources

- explicit user declaration
- system or developer environment context
- available tools and connectors
- known host-specific command patterns
- workspace metadata when reliable

## Confidence Levels

- `explicit`: the user or runtime explicitly declared the harness
- `high-confidence inferred`: environment signals strongly indicate one harness
- `low-confidence inferred`: signals suggest a harness but are incomplete
- `unknown`: no reliable harness identification is available

## Detection Rules

- Prefer explicit declarations over inference.
- Use high-confidence inference only when multiple signals align.
- Do not over-specialize behavior on low-confidence inference.
- Ask a concise clarifying question only when the choice changes the safe path materially.

## Unknown Harness Behavior

When detection is unknown:

- use generic host-neutral guidance
- prefer portable ORCA Framework artifacts
- avoid surfacing advanced host-specific commands as defaults
- tighten risky automation rather than loosening it
