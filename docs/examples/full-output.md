# Routing Example: Full Output

## Request

Generate every command definition and do not abbreviate.

## HVN Routing

1. Non-trivial work: use Linear.
2. Output requirement: exhaustive.
3. Routing decision: enable `hvn-full-output`.
4. Deliverable control: count requested files before generation.
5. Verification: cross-check every requested file exists.

## Behavior

HVN must not replace repeated content with a description. If the output must be split, it stops at a clean boundary and records the exact next section.
