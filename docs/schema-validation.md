# Schema Validation

Schema validation checks whether an artifact matches the declared portable shape. It improves consistency, but it does not replace judgment.

## What Can Be Validated

Portable validation is strongest for:

- required fields
- field types
- enums
- identifier presence
- top-level structure
- version declaration

Portable validation is weaker for:

- whether the artifact is useful
- whether evidence is strong enough
- whether assumptions are correct
- whether the chosen workflow was appropriate

## Validation Strictness

Use three practical outcomes:

- valid: shape matches the declared schema
- partially valid: useful artifact with structural gaps or version mismatch
- invalid: shape is too broken for reliable automated use

## Partial Validity

If an artifact is partially valid:

- record the gap
- preserve the artifact
- decide whether migration, manual cleanup, or fallback parsing is acceptable

Do not discard a meaningful artifact only because one optional field or version annotation is wrong.

## Human Review

Human review still matters when:

- a schema-valid artifact is operationally weak
- a mapping is lossy
- a migration changes semantics
- rollout or approval decisions depend on the artifact

## Command Layer

Use `orca-validate-schema` to:

- identify the claimed schema family and version
- check structural validity
- flag compatibility or migration concerns
- recommend human review when needed
