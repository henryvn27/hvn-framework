---
name: hvn-docs-system
description: Maintain HVN's layered documentation, routing pages, wiki summaries, and docs automation loop.
---

# HVN Docs System

## What This Skill Is

A maintenance and information-architecture skill for keeping HVN understandable as the framework grows.

## Trigger

Use for documentation architecture, newcomer onboarding docs, wiki work, routing indexes, contributor docs, or docs freshness automation.

## Do Not Trigger

Do not use for a small typo fix that does not affect routing, understanding, or documentation structure.

## Required Inputs

- Documentation request or changed feature surface

## Optional Inputs

- Related issue or opt-out record
- Existing docs gaps
- Changed commands, skills, hosts, or workflows

## Exact Workflow

1. Identify the reader affected: newcomer, returning contributor, host-specific user, or maintainer.
2. Decide the correct layer:
   - intro
   - quickstart
   - concepts
   - guides
   - indexes
   - reference
   - wiki
   - contributor maintenance
3. Prefer updating existing canonical docs over creating duplicate detail pages.
4. Update routing surfaces when the top-level experience changes.
5. Keep the wiki shorter than the docs tree and link deeper where precision matters.
6. Update freshness, ownership, and contributor docs when maintenance expectations change.
7. Run docs validation and routing checks.
8. Record a concise refresh note for Linear or the opt-out record if the work is non-trivial.

## Expected Outputs

- Updated docs pages
- Updated wiki routes when relevant
- Updated ownership or maintenance metadata when relevant
- Validation results

## Quality Bar

A new user should be able to understand what HVN is, where to start, and where to go next without reading deep reference docs first.

## Common Failure Modes

- Creating more markdown without improving routing
- Duplicating canonical detail in the wiki
- Adding a feature doc without updating indexes
- Updating deep docs but leaving newcomer pages stale

## Relationship To Other HVN Skills And Commands

Works with `hvn-router`, `hvn-full-output`, `hvn-research`, and `hvn-docs`.
