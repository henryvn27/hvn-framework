# Schema Versioning

Portable artifacts need explicit versions so maintainers can validate, compare, and migrate them safely.

## Version Identifier

Each schema should declare:

- schema family
- schema version

Example:

- family: `spec`
- version: `1.0.0`

## Versioning Rules

Use semantic-style versioning for schema files:

- major: breaking field or meaning changes
- minor: additive backward-compatible fields
- patch: clarifications or constraints that do not change intended meaning materially

## Compatibility Expectations

Practical expectations:

- patch changes should not require artifact rewrites
- minor changes should allow older artifacts to remain readable and usually valid
- major changes may require explicit migration notes

Backward compatibility is a goal, not a false promise. If a meaning changes, say so directly.

## Deprecation Rules

When deprecating a schema:

- keep the old version documented
- mark the preferred replacement
- record the migration path
- do not silently reinterpret old fields

## Migration Notes

Use [templates/schema-migration-note.md](../templates/schema-migration-note.md) when:

- introducing a breaking version
- renaming a field with operational impact
- splitting one artifact family into multiple schema families
- changing required-versus-optional expectations in a meaningful way

## Repository Layout

- `schema/versions/v1/` for current major-version schemas
- future majors can live in `schema/versions/v2/`
- examples should state the schema version they target

## Human Review Still Matters

Version validity does not guarantee semantic correctness.

An artifact can be:

- schema-valid but operationally weak
- schema-invalid but still partially useful for migration

That is why validation guidance and human review both exist.
