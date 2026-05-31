# Graph And Vault Support

ORCA-HVN can use a vault such as an Obsidian vault as an optional knowledge source when it is available.

Graph tooling is a possible enhancement on top of that, not a prerequisite.

## Core Rule

Use the lightest helpful level first:

1. direct answer from current context
2. existing repo or work artifacts
3. vault inspection if a vault is already available
4. graph-based analysis if it materially improves clarity
5. Graphify or similar setup help only when the user asks or the benefit is clearly worth it

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

## What It Is Not For

- mandatory setup before basic ORCA work can begin
- generic recommendation just because graph tooling exists
- replacing direct reading when the current task is narrow and obvious

## Relationship To Truth Hierarchy

If a vault exists, treat it as a primary source of workflow truth.

Graph tooling may help reveal structure inside that source of truth, but it does not outrank the vault itself.
