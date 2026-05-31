# Context Isolation

Context isolation is one of the main reasons to use subagents well.

## Why It Matters

Without isolation:

- parent context gets polluted
- unrelated reasoning leaks across tasks
- worker outputs become harder to compare

## Rule

Subagents should receive a curated slice of context and return a compressed result.

The parent should keep the full workflow picture. Workers should keep the smallest slice that still lets them succeed.
