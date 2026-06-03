# Ecosystem Adopt Issue

## Title

Refresh ORCA Framework Codex guidance for default goal support and newer governance surfaces

## Category

- workflow

## Adoption Shape

- host-adapter opportunity

## Finding Summary

Codex moved beyond the original `0.133.0` goal-mode shift; current releases (latest `0.135.0`) keep goals enabled by default and add stronger `codex doctor` diagnostics, named permission profiles in `/permissions`, non-interactive install (`CODEX_NON_INTERACTIVE=1`), and more stable remote/resume behavior.

## Why It Matters To ORCA Framework

ORCA Framework still describes Codex `/goal` as possibly experimental and keeps a weaker baseline than the current host now warrants.

## Host Specificity

Codex-specific.

## Evidence And Sources

- https://github.com/openai/codex/releases

## Proposed ORCA Framework Impact

Refresh Codex host docs, compatibility guidance, and examples so goal-mode guidance is version-aware but no longer framed as a maybe-experimental path by default.

## UX Impact

Both. Users get clearer guidance about when native Codex goal mode is safe to surface.

## Recommended Next Step

Update Codex host adapter docs, compatibility notes, and runtime examples to reflect the `0.135.0` baseline (goal mode + governance + doctor + permissions), and remove “experimental” framing for `/goal` in default guidance.

## Confidence Level

High. This is directly documented in the official Codex release notes.

## Date Discovered

- 2026-05-31

## Earlier Sightings

- 2026-05-31 initial live ORCA Framework ecosystem sweep
- 2026-05-31 same-day refresh: updated to `0.135.0` release details

## Watch And Opportunity Links

- Watch entry: [docs/ecosystem-watch.md](../../../docs/ecosystem-watch.md)
- Opportunity entry: [docs/ecosystem-opportunities.md](../../../docs/ecosystem-opportunities.md)

## Related Report

[reports/ecosystem-sweep/2026-05-31.md](../2026-05-31.md)
