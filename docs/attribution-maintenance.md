# Attribution Maintenance

Attribution should evolve with the framework instead of being rebuilt in large cleanup passes.

## When To Update Attribution

Update attribution when a change introduces:

- a new upstream repo or project
- a new conceptual dependency
- a new wrapper or integration
- a new redistributed third-party file or snippet
- a new notice or license-preservation obligation

## Minimum Update Set

For meaningful new upstream relationships:

1. add or update an entry in [UPSTREAM.md](../UPSTREAM.md)
2. update [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md) if notices or redistributed components are involved
3. update nearby feature docs if users need the provenance to understand the feature
4. add [templates/attribution-check.md](../templates/attribution-check.md) content to the implementation or PR summary

## Contributor Questions

Before merging, answer:

- Did this change borrow a concept from a named upstream project?
- Did this change wrap or integrate a third-party tool or service?
- Did this change copy or adapt any file, snippet, or template?
- Did this change add a new license or notice obligation?
- Can a GitHub visitor tell what happened without reading commit history?

## Maintenance Bias

- prefer specific names over general categories
- prefer direct links over vague references
- prefer "not redistributed" over silence when that distinction matters
- prefer conservative claims when provenance is uncertain
