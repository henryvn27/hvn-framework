# Provenance

Provenance explains where a feature, workflow, template, or file came from and how ORCA Framework changed it.

## Purpose

Use provenance notes to answer:

- what upstream source influenced this feature
- whether ORCA Framework copied, adapted, wrapped, or only referenced it
- what major changes ORCA Framework made
- whether any license or notice obligations follow from that relationship

## What Needs Provenance

Add provenance where it is materially useful:

- features that are conceptually adapted from a known upstream workflow
- wrappers and direct integrations around external repos, services, or hosts
- redistributed files, snippets, or bundled third-party components
- feature areas shaped heavily by specific public manuals or essays

Do not add meaningless boilerplate to every file.

## Recommended Shape

When provenance matters, document:

- source project or source material
- source path or feature area when relevant
- relationship type
- what ORCA Framework changed
- related ORCA Framework files
- license or notice obligations

## Good Places To Record It

- [UPSTREAM.md](../UPSTREAM.md) for canonical upstream records
- nearby feature docs when the relationship matters to users
- [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md) when redistribution or preserved notices matter
- brief file comments only when a specific file is materially adapted

## Deliberate Non-Claims

Do not claim:

- copied code when none was copied
- original invention when ORCA Framework is mostly reformatting or combining known patterns
- legal conclusions the repo cannot support

## Current Repository Rule

As of this audit, ORCA Framework should treat most upstream relationships as one of:

- conceptual influence
- workflow influence
- compatibility target
- direct integration layer

Any future bundled third-party code should trigger a stricter provenance pass and a notice update.
