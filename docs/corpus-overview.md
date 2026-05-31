# Corpus Overview

ORCA can use a persistent corpus as an optional long-lived knowledge source.

A corpus is a configured folder path that ORCA may reference across sessions and, when allowed, across projects. This is useful when the user has a stable vault, research directory, or project knowledge base that should not need to be reintroduced every time.

This feature is intentionally conservative:

- it is off by default
- reference access and write-back access are separate
- write-back is off by default
- project settings can disable a globally enabled corpus
- missing paths should fail closed instead of silently falling back to guessed context

## What A Corpus Is For

Use a corpus when ORCA should repeatedly ground itself in the same durable source, such as:

- an Obsidian vault
- a research corpus
- a project-doc folder
- a structured notes directory
- a long-lived product or operating archive

## What It Is Not For

A corpus is not:

- mandatory before ORCA can do normal work
- a replacement for repo inspection when the repo is the stronger source of truth
- blanket permission to rewrite notes or docs
- a reason to surface graph or vault tooling by default

## Relationship To Vault Support

Ad hoc vault support is lightweight and session-shaped.

Persistent corpus support is the durable configuration layer above that. It lets the user say: this folder is an approved recurring source of truth, here is what ORCA may read, and here is what ORCA may never write.

## Core Safety Model

ORCA should treat corpus access as a permissioned capability, not as ambient context.

Default posture:

- no corpus unless configured
- no reference unless enabled
- no write-back unless separately enabled
- no destructive edits
- no silent inheritance when project settings explicitly opt out

## Related Docs

- [corpus-setup.md](corpus-setup.md)
- [corpus-settings.md](corpus-settings.md)
- [corpus-writeback.md](corpus-writeback.md)
- [corpus-privacy.md](corpus-privacy.md)
- [corpus-precedence.md](corpus-precedence.md)
- [graph-and-vault-support.md](graph-and-vault-support.md)
