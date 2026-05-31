# Portable Artifacts

Portable artifacts make ORCA-HVN outputs easier to validate, transform, compare, and map into other runtimes or tools.

## Why Portability Matters

Portability helps when:

- the same workflow runs across multiple harnesses
- a team wants to move artifacts into another tracker or runtime
- external tooling needs a stable machine-readable shape
- maintainers want versioned comparisons across ORCA-HVN releases

Portability does not require ORCA-HVN to standardize the whole industry. It requires explicit shapes, versioning, and mapping rules for the artifacts ORCA-HVN already depends on.

## What Becomes Portable First

Start with high-value artifacts that already have strong contracts:

- onboarding summary
- spec
- milestone plan
- goal contract
- run memory
- run trace
- execution receipt
- QA finding
- regression task
- approval request
- runtime status

These artifacts already carry meaningful workflow state. Making them schema-addressable is more useful than trying to standardize every note or comment first.

## Human Docs And Schemas Coexist

ORCA-HVN keeps both:

- human-readable Markdown artifacts for review, judgment, and handoff
- portable schemas for structure, validation, and mapping

The schema layer should extend the docs, not replace them.

Use Markdown for:

- prose judgment
- rationale
- examples
- nuanced review notes

Use schemas for:

- required fields
- data shape
- version identifiers
- structured exchange

## Source Of Truth

The portable layer lives in:

- [schema/README.md](../schema/README.md)
- `schema/versions/`
- `schema/examples/`

Human guidance for how to use it lives in:

- [docs/schema-versioning.md](schema-versioning.md)
- [docs/artifact-mapping.md](artifact-mapping.md)
- [docs/schema-validation.md](schema-validation.md)
- [docs/open-agent-spec-direction.md](open-agent-spec-direction.md)

## Versioning Model

Each portable artifact should declare:

- schema family
- schema version
- compatibility notes when relevant

See [docs/schema-versioning.md](schema-versioning.md).

## Portability Boundary

ORCA-HVN does not claim universal compatibility. The portable layer is meant to make principled mapping easier in practice.

Good portability means:

- another system can understand the artifact shape
- field meanings are explicit
- lossy mappings are documented
- version drift is visible

Bad portability means:

- vague claims of future interoperability
- pretending every tool can round-trip every ORCA-HVN concept
- freezing the framework around speculative consensus
