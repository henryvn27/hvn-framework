# Ecosystem Watch

When a finding moves from `Watch` or `Investigate soon` to `Adopt now`, update the existing watch entry in place, preserve its earlier sightings, and link the resulting draft issue back to that history.

The watchlist tracks the full research surface. Use [ecosystem-opportunities](ecosystem-opportunities.md) for the short maintainer list of actionable items.
Use [harness-watch](harness-watch.md) for harness-level compatibility shifts.

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
- modern startup stack defaults across web, mobile, auth, billing, analytics, and monitoring
- whether current defaults still look like best-fit recommendations rather than popularity-driven suggestions
- whether ORCA-HVN is accumulating setup burden or option sprawl in places that should stay simpler
- approval and human-in-the-loop patterns
- tool governance and MCP review
- GitHub integration setup paths
- Linear integration setup paths
- MCP-based setup flows
- connector support changes
- host-specific install and config steps
- auth and permission pattern changes
- deprecated setup patterns
- NotebookLM Enterprise API and setup changes
- NotebookLM community MCP or browser-automation shifts
- Graphify maintenance and setup changes
- Obsidian graph and backlink workflow changes that affect vault analysis
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
- setup method when relevant
- affected hosts when relevant
- currently recommended setup path when relevant
- unstable or deprecated setup path when relevant
- required ORCA-HVN change
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

- native ORCA-HVN feature candidate
- host-adapter opportunity
- docs/workflow guidance opportunity
- experimental pattern worth watching
- setup-path update

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
| persistent state | unknown | unknown | unknown | unknown | Distinguish host memory from ORCA-HVN run memory and shared state. |
| approvals | unknown | unknown | unknown | unknown | Track human-in-the-loop and risk approval surfaces. |
| inspection | unknown | unknown | unknown | unknown | Track run, artifact, trace, and status inspection. |
| tool governance | unknown | unknown | unknown | unknown | Track MCP review, allowlists, and tool trust behavior. |
| QA support | unknown | unknown | unknown | unknown | Track regression generation, evals, and harness QA support. |

## Integration Setup Watch

Track currently recommended setup paths and caveats. Update this table during each sweep when official docs, host behavior, or connector support changes.

| Service | Codex CLI | Claude Code | Hermes Agent | OpenCode | VS Code | Generic fallback |
| --- | --- | --- | --- | --- | --- | --- |
| GitHub | connector, approved MCP, `gh`, or manual; verify locally | MCP or configured connector when available; manual fallback | verify host docs before recommending connector parity | unknown; verify local docs | Copilot connector, MCP, `gh`, or manual | `gh`, approved MCP, token, or manual |
| Linear | connector, approved MCP, or manual; verify locally | MCP path when approved; manual fallback | verify host docs before recommending connector parity | unknown; verify local docs | MCP, approved token path, or manual | approved MCP, token, or manual |
| NotebookLM | community MCP or browser path unless enterprise setup is confirmed | community MCP or browser path unless enterprise setup is confirmed | verify host and browser automation support before recommending | unknown; verify local docs | browser automation or enterprise web path, depending on host setup | enterprise path, Google Cloud APIs, or user-managed MCP/browser tooling |
| Graphify | optional local install or shell invocation; never required | optional local install or shell invocation; never required | verify host shell and file access support first | unknown; verify local docs | optional local install if the user wants graph analysis | direct vault inspection first, Graphify only as optional enhancement |

## Setup Path Risks

Use this section for unstable, broken, or deprecated setup guidance.

- No active setup-path risks yet.

## Setup Simplification Opportunities

Use this section for easier setup paths ORCA-HVN may want to adopt.

- No active setup simplification opportunities yet.

## Host-Specific Caveats

- Do not assume MCP setup, connector auth, or write permissions transfer across hosts.
- Treat official connector changes as host-specific until evidence shows portability.
- If a setup path changes from local server to remote MCP, verify auth and permission implications before recommending it.
- Do not blur NotebookLM Enterprise APIs with community automation. Track them as separate setup paths.
- Do not let graph tooling drift into mandatory setup. Keep it explicitly optional.
- Do not widen the default surface just because a tool or host capability exists.

## Recently Adopted

No adopted items yet.

## Dormant / Not Worth It

No dormant items yet.

## Monitoring Notes

No monitoring notes yet.
