---
name: orca-attribution
description: Document upstream influence, provenance, wrapping relationships, and notice obligations with explicit categories and GitHub-visible records.
---

# ORCA-HVN Attribution

## What This Skill Is

A workflow for making upstream influence, integration scope, provenance, and notice obligations easy to understand.

## Trigger

Use when:

- a feature borrows ideas from an upstream project
- ORCA-HVN wraps or integrates a third-party service or tool
- a file or feature is materially adapted from an upstream source
- legal notices or third-party credits need cleanup

## Do Not Trigger

Do not use for generic gratitude alone. Use this when provenance and attribution clarity materially affect the repository.

## Required Inputs

- Feature area, file set, or repository slice being audited

## Optional Inputs

- Candidate upstream repos or writings
- Known licenses
- Known copied or adapted material

## Exact Workflow

1. Identify the upstream projects, hosts, services, manuals, or writings involved.
2. Classify each relationship precisely.
3. Distinguish interoperability from conceptual influence and from redistribution.
4. Update `UPSTREAM.md` as the canonical catalog.
5. Update `THIRD_PARTY_NOTICES.md` and `NOTICE` if notice handling changes.
6. Update feature docs or file-level provenance only where it adds real clarity.
7. Ensure README and contributor docs make the attribution layer easy to find.

## Expected Outputs

- updated upstream catalog
- clearer README attribution sections
- contributor guidance for future attribution maintenance
- cleaner notice separation

## Quality Bar

The output should name names, classify relationships clearly, and avoid both vagueness and legal theater.

## Common Failure Modes

- calling everything "inspired by"
- hiding wrappers behind soft wording
- mixing legal notices with casual acknowledgements
- claiming copied code without evidence
- claiming originality too broadly

## Relationship To Other ORCA-HVN Skills And Commands

Supports README, workflow, integration, licensing, and contributor-maintenance quality across the framework.
