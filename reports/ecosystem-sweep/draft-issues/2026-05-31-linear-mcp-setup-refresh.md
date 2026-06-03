# Ecosystem Adopt Issue

## Title

Refresh ORCA-HVN Linear setup guidance around the official Linear MCP server

## Category

- install

## Adoption Shape

- setup-path update

## Finding Summary

Linear now documents an official remote MCP endpoint with Streamable HTTP (OAuth 2.1 dynamic client registration), explicit Codex CLI setup (including a required Codex experimental RMCP flag), and direct bearer-token authentication (`Authorization: Bearer <token>`) as a non-interactive option.

## Why It Matters To ORCA-HVN

ORCA-HVN is Linear-first. Its setup guidance should point users to the cleanest official path instead of generic MCP wording.

## Host Specificity

Cross-harness with concrete Codex, VS Code, Windsurf, Zed, and generic MCP-capable examples.

## Evidence And Sources

- https://linear.app/docs/mcp

## Proposed ORCA-HVN Impact

Update Linear setup examples, host guides, and degraded-mode wording so the default recommendation starts from the official endpoint and (for Codex) includes the exact `~/.codex/config.toml` feature flag required for remote MCP, plus a clear “non-interactive bearer token” path and the auth-cache reset tip (`rm -rf ~/.mcp-auth`) for common failures.

## UX Impact

Both. Beginner setup gets simpler; expert setup gets clearer auth and transport guidance.

## Recommended Next Step

Refresh ORCA-HVN Linear setup docs and examples, then verify the path in at least Codex and one generic MCP host.

## Confidence Level

High. This is official vendor documentation with concrete commands and auth guidance.

## Date Discovered

- 2026-05-31

## Earlier Sightings

- 2026-05-31 initial live ORCA-HVN ecosystem sweep

## Watch And Opportunity Links

- Watch entry: [docs/ecosystem-watch.md](../../../docs/ecosystem-watch.md)
- Opportunity entry: [docs/ecosystem-opportunities.md](../../../docs/ecosystem-opportunities.md)

## Related Report

[reports/ecosystem-sweep/2026-05-31.md](../2026-05-31.md)
