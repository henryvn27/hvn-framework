---
name: orca-docs-system
description: Maintain ORCA Framework's layered docs system, wiki routing, start-here flow, and doc refresh signals without creating orphaned doc sprawl.
---

# ORCA Framework Docs System

## Trigger

Use when a user asks for:

- where to start
- documentation structure
- wiki or guide creation
- doc refresh after a feature change
- stale-doc detection or docs maintenance

## Core Rules

1. Start with routing, not volume.
2. Prefer one clear summary page over several overlapping summaries.
3. Keep README, start-here pages, indexes, and wiki homepage aligned.
4. Treat docs changes as part of the feature, not as a later cleanup.
5. When a new concept appears, update glossary, indexes, and the most relevant guide before adding more reference prose.

## Expected Workflow

1. Identify the audience: new user, active user, contributor, or maintainer.
2. Identify the layer: intro, quickstart, concept, guide, command, feature, workflow, wiki, or contributor docs.
3. Update routing surfaces first.
4. Update deeper reference pages only where needed.
5. Record refresh signals when something remains likely stale.

## Quality Bar

The docs system should make ORCA Framework easier to enter and easier to navigate after feature growth.

## Common Failure Modes

- adding pages without updating routing
- duplicating the same explanation across README, docs, and wiki
- leaving new commands out of indexes
- letting wiki pages become a stale mirror

