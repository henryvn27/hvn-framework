# Attribution

ORCA-HVN uses attribution as an engineering and documentation discipline, not just a legal afterthought.

## Why Attribution Matters

Clear attribution helps users and contributors understand:

- what ORCA-HVN is original in
- what ideas were shaped by upstream projects or writings
- what ORCA-HVN wraps or integrates directly
- what is adapted versus merely referenced
- what licenses and notices matter

This improves intellectual honesty, community respect, maintainability, and license hygiene.

## Canonical Records

Use these files in order:

- [UPSTREAM.md](../UPSTREAM.md): canonical catalog of upstream projects and relationships
- [docs/provenance.md](provenance.md): how to describe feature-level and file-level provenance
- [docs/wraps-vs-borrows.md](wraps-vs-borrows.md): plain-English explanation of direct wrapping versus conceptual borrowing
- [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md): third-party notice and redistribution record
- [NOTICE](../NOTICE): short root-level notice summary for GitHub visitors and downstream redistributors
- [ACKNOWLEDGEMENTS.md](../ACKNOWLEDGEMENTS.md): warm, human credit for influential projects and writings

## Relationship Categories

ORCA-HVN distinguishes these categories:

- `inspiration`: an upstream project or essay shaped the mindset or framing, but ORCA-HVN does not claim direct adaptation
- `concept adapted from`: ORCA-HVN reworks a concept or structure into its own framework
- `workflow influenced by`: ORCA-HVN borrows a general workflow pattern or sequencing idea
- `direct wrapper or integration`: ORCA-HVN intentionally provides a layer around a real external tool, host, or service
- `redistributed component`: ORCA-HVN ships third-party code, templates, snippets, or bundled assets that create notice obligations
- `documentation or reference influence`: ORCA-HVN cites or follows public docs, manuals, or guides that shaped a feature area
- `compatibility target`: ORCA-HVN supports or documents a host or ecosystem without claiming direct code reuse

## Interpretation Rules

- `inspiration` does not imply copied code.
- `concept adapted from` means ORCA-HVN is not claiming full originality in the shape of the idea.
- `direct wrapper or integration` means users should assume the external tool or service is part of the real workflow surface.
- `redistributed component` requires the strictest license and notice review.
- `compatibility target` means ORCA-HVN is designed to work with the external system, not that the external system shaped ORCA-HVN conceptually.

## Originality Rules

ORCA-HVN should describe itself honestly:

- original in the way it combines its artifact system, gate model, QA philosophy, rollout discipline, and cross-harness coordination
- not original in the broad idea of spec-driven software workflows, host integrations, or customer-discovery thinking
- often a structured layer around existing services such as Linear, GitHub, or agent hosts

## Maintenance Rule

When a feature adds a meaningful upstream influence, direct wrapper, or redistributed component, update:

1. [UPSTREAM.md](../UPSTREAM.md)
2. [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md) when notices or license preservation matter
3. [docs/provenance.md](provenance.md) or nearby feature docs when a specific feature needs explanation
