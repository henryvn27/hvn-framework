# Ecosystem Watch

When a finding moves from `Watch` or `Investigate soon` to `Adopt now`, update the existing watch entry in place, preserve its earlier sightings, and link the resulting draft issue back to that history.

The watchlist tracks the full research surface. Use [ecosystem-opportunities](ecosystem-opportunities.md) for the short maintainer list of actionable items.

## What We Track

- repos
- harnesses
- capability areas

## Capability Areas

Every sweep should explicitly watch:

- `/goal` or long-running objective mode
- pause, resume, continue, and clear lifecycle semantics
- checkpointing
- shared state and persistent memory
- run inspection and inspector features
- workflow metrics and cost tracking
- approval and human-in-the-loop patterns
- tool governance and MCP review
- onboarding UX improvements
- novice and expert workflow adaptation
- regression generation from QA
- benchmark and eval improvements

## Active Opportunities

For each active opportunity, keep:

- title
- short summary
- source links
- status
- adoption shape
- primary category
- cross-harness or host-specific status
- required HVN change
- UX impact
- first seen
- last confirmed
- prior sightings
- related issue if created

## Classifications

- `Adopt now`: open or link a draft issue and mirror the item in [ecosystem-opportunities](ecosystem-opportunities.md).
- `Investigate soon`: gather more evidence, host behavior, or implementation detail.
- `Watch`: keep the source on the radar without creating work yet.
- `Ignore for now`: record only if useful to avoid repeated rediscovery.

## Adoption Shapes

- native HVN feature candidate
- host-adapter opportunity
- docs/workflow guidance opportunity
- experimental pattern worth watching

### commands

No active items yet.

### memory

No active items yet.

### install

No active items yet.

### cross-harness

No active items yet.

### QA

No active items yet.

### workflow

No active items yet.

## Cross-Harness Capability Matrix

Track existence and confidence for:

| Capability | Codex CLI | Claude Code | Hermes Agent | OpenCode | Notes |
| --- | --- | --- | --- | --- | --- |
| `/goal` | unknown | unknown | unknown | unknown | Verify from official docs or local host behavior. |
| checkpointing | unknown | unknown | unknown | unknown | Track explicit pause or approval checkpoints. |
| pause/resume | unknown | unknown | unknown | unknown | Include continue and clear semantics when present. |
| persistent state | unknown | unknown | unknown | unknown | Distinguish host memory from HVN run memory and shared state. |
| approvals | unknown | unknown | unknown | unknown | Track human-in-the-loop and risk approval surfaces. |
| inspection | unknown | unknown | unknown | unknown | Track run, artifact, trace, and status inspection. |
| tool governance | unknown | unknown | unknown | unknown | Track MCP review, allowlists, and tool trust behavior. |
| QA support | unknown | unknown | unknown | unknown | Track regression generation, evals, and harness QA support. |

## Recently Adopted

No adopted items yet.

## Dormant / Not Worth It

No dormant items yet.

## Monitoring Notes

No monitoring notes yet.
