# Example Artifact Mapping

## Source

- Artifact family: spec
- Schema version: 1.0.0
- Human-readable source: `docs/spec.md`

## Target

- Target system: Linear
- Target artifact type: issue comment plus linked document

## Mapping Shape

- `goal` -> comment summary heading
- `requirements` -> linked document checklist
- `acceptance_criteria` -> issue comment verification section
- `open_questions` -> issue comment follow-up section

## Known Losses

- long-form rationale may stay only in the Markdown artifact
- some tracker fields may not preserve ORCA-HVN schema identity directly
