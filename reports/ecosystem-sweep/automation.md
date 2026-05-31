# HVN Ecosystem Sweep Automation

- Automation id: `hvn-ecosystem-sweep`
- Automation name: `HVN Ecosystem Sweep`
- Schedule: every 48 hours
- Execution environment: local Codex cron automation
- Workspace: `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/HVN-Framework`

## Purpose

Run a research-first strategic sweep for the HVN ecosystem without changing product code by default. The sweep tracks both execution-capability changes and setup-path changes for important external integrations.

Primary research question:

> What new host or framework capabilities now exist that HVN can exploit, wrap, adapt, or learn from?

## Inputs

- `reports/ecosystem-sweep/tracked-sources.md`
- `reports/ecosystem-sweep/state.json`
- the prior dated sweep report when available
- `docs/ecosystem-watch.md`
- `docs/ecosystem-opportunities.md`
- `templates/ecosystem-adopt-issue.md`

## Outputs

- `reports/ecosystem-sweep/YYYY-MM-DD.md`
- `reports/ecosystem-sweep/latest.md`
- `docs/ecosystem-watch.md`
- `docs/ecosystem-opportunities.md`
- `reports/ecosystem-sweep/draft-issues/*.md` when direct issue creation is unavailable
- updated `reports/ecosystem-sweep/state.json`

## Guardrails

- do not edit HVN product code by default
- do not update dependencies by default
- do not create branches, commits, or pushes by default
- do not rewrite docs outside the sweep and watch artifacts by default
- use official docs, release notes, changelogs, and upstream repos first
- create draft issues only for findings classified as `Adopt now`
- avoid duplicate draft issues when an equivalent item is already open or already tracked
- do not implement features during the research automation
- do not silently broaden the sweep beyond research, watch, opportunities, and draft issues
- do not overclaim parity across harnesses; mark confidence and host-specific limits

## Required Report Sections

Each dated report must use this structure:

```markdown
# HVN Ecosystem Sweep - YYYY-MM-DD

## Executive summary
- important changes
- biggest new opportunities
- categories most affected

## Repo updates
Standard per-repo update section.

## Harness updates
Cover Codex CLI, Claude Code, Hermes Agent, OpenCode, and other materially relevant hosts. For each harness include:
- new feature or behavior
- affected surface: execution, memory, inspection, safety, or usability
- whether HVN can exploit it directly
- evidence/source
- classification
- adoption shape
- primary category

## Cross-harness capability matrix
Track whether these appear to exist and at what confidence:
- /goal
- checkpointing
- pause/resume
- persistent state
- approvals
- inspection
- tool governance
- QA support

## Integration setup changes
For GitHub, Linear, and any other materially relevant service:
- what changed
- affected hosts
- setup method affected: native connector, MCP, API token, plugin, CLI helper, or manual
- whether HVN setup docs should change
- whether this creates a better default path
- whether this breaks or deprecates an old recommendation
- whether the recommendation is host-specific or broadly portable
- evidence/source
- classification
- primary category

## Recommendations by category
Group under commands, memory, install, cross-harness, QA, and workflow.

## Recommended next HVN moves
- build now
- research next
- wait for more evidence

## Change log since last sweep
- new
- upgraded in importance
- downgraded
- unchanged but still relevant

## Sources
- exact URLs reviewed
```

`reports/ecosystem-sweep/latest.md` should point to the newest dated report and summarize only the highest-leverage changes.

## Capability Areas To Watch

Every sweep should actively look for workflow-enabling execution features:

- `/goal` or long-running objective mode
- pause, resume, continue, and clear lifecycle semantics
- shared state and checkpointing support
- memory improvements
- approval and human-in-the-loop patterns
- observability, run inspection, and inspector features
- workflow metrics and cost tracking
- tool governance and MCP safety patterns
- onboarding UX improvements
- novice and expert workflow adaptation
- regression generation from QA
- benchmark and eval improvements
- GitHub integration paths
- Linear integration paths
- MCP-based setup flows
- official connector support changes
- host-specific install or config steps
- auth and permission pattern changes
- easier setup paths HVN could recommend
- broken or deprecated setup paths HVN should stop recommending

## Recommendation Categories

Every recommendation should be grouped under exactly one primary category:

- commands
- memory
- install
- cross-harness
- QA
- workflow

## Classification Model

Classify each finding:

- `Adopt now`: HVN should open a draft issue and plan a concrete framework change.
- `Investigate soon`: evidence is promising, but adoption shape, host support, or risk needs more research.
- `Watch`: relevant movement, but not actionable yet.
- `Ignore for now`: low leverage, stale, too host-specific, or outside HVN scope.

Also classify the adoption shape:

- native HVN feature candidate
- host-adapter opportunity
- docs/workflow guidance opportunity
- experimental pattern worth watching
- setup-path update

## Analysis Rules

Do not stop at "feature exists." Each material finding must answer:

- Can HVN actually use this?
- Is it host-specific or portable?
- What would HVN need to change to benefit?
- Does it improve beginner UX, expert UX, or both?
- Is it worth building now?
- What confidence level does the evidence support?

For setup-path findings, also answer:

- How did setup change?
- Who is affected?
- Does HVN documentation or workflow guidance need to change?
- Does the change improve the default setup path?
- Does the change break or deprecate an existing recommendation?
- Is the setup path host-specific or broadly portable?

Avoid hype summaries, copied release notes, trivia, and findings without a recommended HVN action.

## Living Documents

Maintain [docs/ecosystem-watch.md](../../docs/ecosystem-watch.md) as the full watchlist.

Maintain [docs/ecosystem-opportunities.md](../../docs/ecosystem-opportunities.md) as the short maintainer list of actionable opportunities. Each opportunity should include:

- capability
- source harness or repo
- evidence
- category
- adoption shape
- cross-harness or host-specific status
- setup method when relevant
- affected hosts when relevant
- required HVN change
- related issue
- next recommended action

## Draft Issue Rule

If a finding is classified as `Adopt now`:

- create one draft issue unless a substantially similar open or already-tracked issue exists
- classify setup-path changes as `Adopt now` when they materially improve or break HVN guidance and should be acted on now
- if the finding was previously tracked as `Watch` or `Investigate soon`, update the existing watch entry instead of treating it as a totally new discovery
- include backlinks to the earlier sightings when opening the draft issue
- use `templates/ecosystem-adopt-issue.md`
- prefer direct issue creation when the environment supports it
- otherwise write a Markdown draft to `reports/ecosystem-sweep/draft-issues/`
- link the issue or draft from both `docs/ecosystem-watch.md` and `docs/ecosystem-opportunities.md`

## Done Condition

A scheduled run is complete only when:

- the dated report is written
- `reports/ecosystem-sweep/latest.md` is updated
- `docs/ecosystem-watch.md` is updated
- `docs/ecosystem-opportunities.md` is updated
- findings are grouped by commands, memory, install, cross-harness, QA, and workflow
- `Adopt now` findings have draft issues without duplication
- capability-to-HVN mapping is explicit
- setup-path changes explain who is affected and whether HVN guidance should change
- exact source URLs are listed
