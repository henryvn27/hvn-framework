# Graph And Vault Support

ORCA Framework can use a vault such as an Obsidian vault as an optional knowledge source when it is available.

Graph tooling is a possible enhancement on top of that, not a prerequisite.

Persistent corpus support is a separate optional layer for users who want a stable configured folder path reused across sessions or projects.

## Core Rule

Use the lightest helpful level first:

1. direct answer from current context
2. existing repo or work artifacts
3. vault inspection if a vault is already available
4. configured corpus reference if persistent corpus support is explicitly enabled
5. graph-based analysis if it materially improves clarity
6. Graphify or similar setup help only when the user asks or the benefit is clearly worth it

## What Vault Support Is Good For

- understanding project clusters across notes
- identifying repeated workflows or repeated friction
- finding duplicate or overlapping docs
- onboarding an agent to a large personal or project knowledge base
- surfacing recurring tools, stacks, and unfinished systems

## What Graph Support Is Good For

- seeing note clusters that are hard to infer from one-by-one reading
- spotting orphan notes, weakly connected areas, or missing hubs
- finding duplicate themes under different names
- generating map-style outputs for navigation, wiki cleanup, or onboarding

## What Persistent Corpus Support Is Good For

- reusing a known approved folder path across sessions
- keeping project-level opt-out available even when a global corpus exists
- separating reference permission from write-back permission
- making path health and re-index state inspectable instead of implicit

## What It Is Not For

- mandatory setup before basic ORCA work can begin
- generic recommendation just because graph tooling exists
- replacing direct reading when the current task is narrow and obvious
- granting silent write access to a durable vault

## Relationship To Truth Hierarchy

If a vault exists, treat it as a primary source of workflow truth.

Graph tooling may help reveal structure inside that source of truth, but it does not outrank the vault itself.

A configured corpus may make that source reusable, but it still stays inside the explicit reference and write-back policy.
