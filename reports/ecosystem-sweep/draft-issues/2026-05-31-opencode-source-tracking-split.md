# Ecosystem Adopt Issue

## Title

Split ORCA Framework OpenCode tracking between active docs/runtime behavior and the archived legacy repo

## Category

- cross-harness

## Adoption Shape

- docs/workflow guidance opportunity

## Finding Summary

ORCA Framework currently tracks OpenCode through active docs at `dev.opencode.ai` while also relying on an archived `opencode-ai/opencode` repo as a release source.

## Why It Matters To ORCA Framework

That mixed source-of-truth makes it too easy to overstate compatibility, freshness, or recommendation confidence.

## Host Specificity

OpenCode-specific with cross-harness reporting implications.

## Evidence And Sources

- https://dev.opencode.ai/docs/cli/
- https://dev.opencode.ai/docs/config
- https://dev.opencode.ai/docs/mcp-servers/
- https://github.com/opencode-ai/opencode/releases

## Proposed ORCA Framework Impact

Split future OpenCode source tracking into active runtime/docs behavior versus archived legacy repo history, and update compatibility language accordingly.

## UX Impact

Both. Maintainers get cleaner evidence; users get fewer misleading parity claims.

## Recommended Next Step

Adjust ORCA Framework's tracked-source and compatibility guidance so OpenCode reporting cites the active docs first and uses the archived repo only as historical context.

## Confidence Level

High. The archive status is explicit and the active docs surface is clearly separate.

## Date Discovered

- 2026-05-31

## Earlier Sightings

- 2026-05-31 initial live ORCA Framework ecosystem sweep

## Watch And Opportunity Links

- Watch entry: [docs/ecosystem-watch.md](../../../docs/ecosystem-watch.md)
- Opportunity entry: [docs/ecosystem-opportunities.md](../../../docs/ecosystem-opportunities.md)

## Related Report

[reports/ecosystem-sweep/2026-05-31.md](../2026-05-31.md)
