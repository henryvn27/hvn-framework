# ORCA-HVN Ecosystem Sweep Automation

- Automation id: `orca-ecosystem-sweep`
- Automation name: `ORCA-HVN Ecosystem Sweep`
- Schedule: every 48 hours
- Execution environment: local Codex cron automation
- Workspace: `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/ORCA-HVN`

## Purpose

Run a research-first strategic sweep for the ORCA-HVN ecosystem without changing product code by default. The sweep tracks execution-capability changes, setup-path changes for important external integrations, startup-stack integration drift across web and mobile ecosystems, a dedicated harness compatibility audit, top-level docs surfaces that should refresh as the framework changes, and design/copy quality signals that help ORCA-HVN avoid generic AI-looking output.

Primary research question:

> What new host or framework capabilities now exist that ORCA-HVN can exploit, wrap, adapt, or learn from?

Secondary research question:

> What new provider or host patterns reduce wasted tokens, retries, or context mass without harming output quality?

Tertiary research question:

> Which tools still deserve default recommendation for a specific ORCA-HVN use case, and which should move to neutral support only?

## Inputs

- `reports/ecosystem-sweep/tracked-sources.md`
- `reports/ecosystem-sweep/state.json`
- the prior dated sweep report when available
- the prior dated compatibility audit when available
- `docs/compatibility-matrix.md`
- `docs/harness-watch.md`
- `docs/ecosystem-watch.md`
- `docs/ecosystem-opportunities.md`
- `docs/README.md`
- `docs/start-here.md`
- `docs/feature-index.md`
- `docs/command-index.md`
- `docs/choose-your-path.md`
- `docs/whats-new.md`
- `docs/recent-doc-updates.md`
- `docs/doc-owners.md`
- `docs/visual-quality.md`
- `docs/human-voice.md`
- `docs/token-efficiency.md`
- `docs/integration-recommendation-policy.md`
- `docs/integration-use-case-detection.md`
- `docs/tool-fit-rules.md`
- `docs/recommend-vs-setup.md`
- `docs/recommendation-confidence.md`
- `docs/tool-choice-overrides.md`
- `docs/notebooklm-integration-modes.md`
- `docs/notebooklm-validation.md`
- `docs/graph-and-vault-support.md`
- `docs/optional-tooling-policy.md`
- `docs/minimum-friction-policy.md`
- `docs/graph-fit-rules.md`
- `docs/graph-analysis-output-modes.md`
- `docs/integration-priorities.md`
- `docs/choose-your-stack.md`
- `docs/web-stack-guide.md`
- `docs/mobile-stack-guide.md`
- `docs/saas-stack-guide.md`
- `integrations/README.md`
- `wiki/Home.md`
- `wiki/_Sidebar.md`
- `templates/ecosystem-adopt-issue.md`

## Outputs

- `reports/ecosystem-sweep/YYYY-MM-DD.md`
- `reports/ecosystem-sweep/latest.md`
- `reports/compatibility/YYYY-MM-DD.md`
- `reports/compatibility/latest.md`
- `docs/compatibility-matrix.md`
- `docs/harness-watch.md`
- `docs/ecosystem-watch.md`
- `docs/ecosystem-opportunities.md`
- `docs/visual-quality.md`
- `docs/human-voice.md`
- `docs/token-efficiency.md`
- `docs/integration-recommendation-policy.md`
- `docs/integration-use-case-detection.md`
- `docs/tool-fit-rules.md`
- `docs/recommend-vs-setup.md`
- `docs/recommendation-confidence.md`
- `docs/tool-choice-overrides.md`
- `docs/notebooklm-integration-modes.md`
- `docs/notebooklm-validation.md`
- `docs/graph-and-vault-support.md`
- `docs/optional-tooling-policy.md`
- `docs/minimum-friction-policy.md`
- `docs/graph-fit-rules.md`
- `docs/graph-analysis-output-modes.md`
- `docs/integration-priorities.md`
- `docs/choose-your-stack.md`
- `docs/web-stack-guide.md`
- `docs/mobile-stack-guide.md`
- `docs/saas-stack-guide.md`
- `templates/doc-refresh-note.md`
- `templates/wiki-update-note.md`
- `reports/ecosystem-sweep/draft-issues/*.md` when direct issue creation is unavailable
- updated `reports/ecosystem-sweep/state.json`

## Guardrails

- do not edit ORCA-HVN product code by default
- do not update dependencies by default
- do not create branches, commits, or pushes by default
- do not rewrite deep product reference docs by default
- docs automation may propose or update routing pages, freshness notes, wiki summaries, and change-discovery pages when the research clearly affects them
- docs automation may also refresh visual-quality and human-voice guidance when there is strong evidence of better non-generic design or UX-writing practice
- use official docs, release notes, changelogs, and upstream repos first
- create draft issues only for findings classified as `Adopt now`
- avoid duplicate draft issues when an equivalent item is already open or already tracked
- do not implement features during the research automation
- do not silently broaden the sweep beyond research, watch, opportunities, and draft issues
- do not overclaim parity across harnesses; mark confidence and host-specific limits

## Required Report Sections

Each dated report must use this structure:

```markdown
# ORCA-HVN Ecosystem Sweep - YYYY-MM-DD

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
- whether ORCA-HVN can exploit it directly
- evidence/source
- classification
- adoption shape
- primary category

## Harness compatibility updates
- link to the current compatibility audit report
- list major harness-level changes briefly
- cross-link to `docs/compatibility-matrix.md` and `docs/harness-watch.md`

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
- whether ORCA-HVN setup docs should change
- whether this creates a better default path
- whether this breaks or deprecates an old recommendation
- whether the recommendation is host-specific or broadly portable
- evidence/source
- classification
- primary category

## Stack integration changes
For tier 1 and tier 2 integrations, especially web and mobile defaults:
- what changed
- whether this affects web, mobile, backend, auth, payments, analytics, monitoring, or automation guidance
- whether ORCA-HVN's default stack recommendation should change
- whether the change is a first-class recommendation shift, a validation/diagnostics change, or a watch item
- evidence/source
- classification
- primary category

## Recommendations by category
Group under commands, memory, install, cross-harness, QA, and workflow.

Design and copy quality findings should usually land under `QA` or `workflow` unless they primarily affect command surfaces.

## Recommended next ORCA-HVN moves
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
- easier setup paths ORCA-HVN could recommend
- broken or deprecated setup paths ORCA-HVN should stop recommending
- official NotebookLM Enterprise API changes
- community NotebookLM MCP or browser-automation shifts
- Graphify release, maintenance, or setup changes
- Obsidian graph or backlink workflow changes that affect vault analysis
- harness-level compatibility shifts across Codex, Claude Code, Hermes Agent, OpenCode, Cursor, GitHub Copilot, and other tracked hosts
- capability parity gaps that matter to ORCA-HVN workflows
- documentation drift signals caused by new features, commands, host changes, or setup-path changes
- missing routing from the README, start-here docs, guide layer, or wiki homepage
- patterns that help ORCA-HVN outputs look more intentional, product-specific, and less obviously AI-generated
- domain-specific design or writing tools ORCA-HVN should coordinate with rather than clone
- prompt caching, token telemetry, and cache-retention changes
- task-budget, effort, or model-routing controls that can reduce wasted spend
- better long-context summarization or checkpoint patterns that reduce transcript replay
- host-level token visibility or usage reporting ORCA-HVN can expose honestly
- startup-stack shifts around Next.js, Vercel, Supabase, Expo, React Native, EAS, Stripe, RevenueCat, PostHog, Sentry, and related tier 1 integrations
- breaking or simplifying changes in mobile build, OTA update, native subscription, auth, or push-notification paths
- evidence that a default recommendation is no longer best-fit for a major use case
- evidence that a supported tool should stay neutral instead of recommended

## Harness Compatibility Audit Phase

Each scheduled run should also perform a dedicated compatibility audit:

1. identify tracked harnesses
2. audit current support for ORCA-HVN-relevant capabilities and integrations
3. update `docs/compatibility-matrix.md`
4. write `reports/compatibility/YYYY-MM-DD.md`
5. update `reports/compatibility/latest.md`
6. update `docs/harness-watch.md`
7. surface any material changes in the main ecosystem sweep

The compatibility audit should focus on "what works where," not just "what exists somewhere."

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

- `Adopt now`: ORCA-HVN should open a draft issue and plan a concrete framework change.
- `Investigate soon`: evidence is promising, but adoption shape, host support, or risk needs more research.
- `Watch`: relevant movement, but not actionable yet.
- `Ignore for now`: low leverage, stale, too host-specific, or outside ORCA-HVN scope.

Also classify the adoption shape:

- native ORCA-HVN feature candidate
- host-adapter opportunity
- docs/workflow guidance opportunity
- experimental pattern worth watching
- setup-path update
- compatibility update

## Analysis Rules

Do not stop at "feature exists." Each material finding must answer:

- Can ORCA-HVN actually use this?
- Is it host-specific or portable?
- What would ORCA-HVN need to change to benefit?
- Does it improve beginner UX, expert UX, or both?
- Is it worth building now?
- What confidence level does the evidence support?

For setup-path findings, also answer:

- How did setup change?
- Who is affected?
- Does ORCA-HVN documentation or workflow guidance need to change?
- Does the change improve the default setup path?
- Does the change break or deprecate an existing recommendation?
- Is the setup path host-specific or broadly portable?
- If NotebookLM is involved, is the finding about the official enterprise path or a community path?

For compatibility findings, also answer:

- What changed in the harness compatibility picture?
- Which harnesses gained, lost, or degraded support?
- Which ORCA-HVN workflows does the shift affect?
- Should the matrix, host adapters, workflow docs, or setup guidance change?
- Is this a durable compatibility shift or a narrow release caveat?

For design and copy quality findings, also answer:

- Does this reduce generic or obviously AI-looking output?
- Is the advice specific enough to guide real implementation reviews?
- Should ORCA-HVN update `orca-design`, `docs/visual-quality.md`, `docs/human-voice.md`, or a user-facing guide?
- Is this a broad workflow principle or a narrow style trend?

For token-efficiency findings, also answer:

- Does this reduce prompt mass, retry churn, or output bloat?
- Does it depend on a specific provider or does it generalize across hosts?
- Should ORCA-HVN update `docs/token-efficiency.md`, stage budgets, runtime guidance, or workflow accounting?
- Does the change improve quality-preserving efficiency, or does it mainly cut spend by degrading capability?

For startup-stack integration findings, also answer:

- Does this change the recommended default stack bundle?
- Is the change web-specific, mobile-specific, or broadly shared?
- Should ORCA-HVN update an integration pack, stack guide, validation rule, or paved road?
- Does the change introduce a new failure mode, setup shortcut, or better default?

For recommendation-policy findings, also answer:

- Does this tool still deserve recommendation for the specific use case?
- Is the evidence about fit, or only about popularity?
- Should ORCA-HVN recommend it, downgrade it to neutral support, or only help when user-chosen?

For graph and vault-tooling findings, also answer:

- Does graph analysis reduce enough friction to justify setup here?
- Is the lighter path already sufficient?
- Should ORCA-HVN recommend Graphify, support it only when user-chosen, or stay silent?

Avoid hype summaries, copied release notes, trivia, and findings without a recommended ORCA-HVN action.

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
- required ORCA-HVN change
- related issue
- next recommended action

Maintain [docs/harness-watch.md](../../docs/harness-watch.md) as the harness-level shift log.

Maintain the docs routing layer when the framework surface changes materially:

- [docs/README.md](../../docs/README.md)
- [docs/start-here.md](../../docs/start-here.md)
- [docs/feature-index.md](../../docs/feature-index.md)
- [docs/command-index.md](../../docs/command-index.md)
- [docs/choose-your-path.md](../../docs/choose-your-path.md)
- [docs/whats-new.md](../../docs/whats-new.md)
- [docs/recent-doc-updates.md](../../docs/recent-doc-updates.md)
- [docs/visual-quality.md](../../docs/visual-quality.md)
- [docs/human-voice.md](../../docs/human-voice.md)
- [wiki/Home.md](../../wiki/Home.md)
- [wiki/_Sidebar.md](../../wiki/_Sidebar.md)

When updates are needed but the automation should not rewrite the page directly, write:

- `templates/doc-refresh-note.md`
- `templates/wiki-update-note.md`

## Draft Issue Rule

If a finding is classified as `Adopt now`:

- create one draft issue unless a substantially similar open or already-tracked issue exists
- classify setup-path changes as `Adopt now` when they materially improve or break ORCA-HVN guidance and should be acted on now
- classify compatibility shifts as `Adopt now` when they materially improve or break ORCA-HVN guidance and should be acted on now
- if the finding was previously tracked as `Watch` or `Investigate soon`, update the existing watch entry instead of treating it as a totally new discovery
- include backlinks to the earlier sightings when opening the draft issue
- use `templates/ecosystem-adopt-issue.md`
- prefer direct issue creation when the environment supports it
- otherwise write a Markdown draft to `reports/ecosystem-sweep/draft-issues/`
- link the issue or draft from both `docs/ecosystem-watch.md` and `docs/ecosystem-opportunities.md`
- link compatibility-driven draft issues from `docs/harness-watch.md` as well

## Done Condition

A scheduled run is complete only when:

- the dated report is written
- `reports/ecosystem-sweep/latest.md` is updated
- `reports/compatibility/YYYY-MM-DD.md` is written
- `reports/compatibility/latest.md` is updated
- `docs/compatibility-matrix.md` is updated or explicitly confirmed unchanged
- `docs/harness-watch.md` is updated
- `docs/ecosystem-watch.md` is updated
- `docs/ecosystem-opportunities.md` is updated
- findings are grouped by commands, memory, install, cross-harness, QA, and workflow
- `Adopt now` findings have draft issues without duplication
- capability-to-ORCA-HVN mapping is explicit
- setup-path changes explain who is affected and whether ORCA-HVN guidance should change
- harness compatibility shifts explain what changed, which workflows are affected, and whether ORCA-HVN docs should change
- exact source URLs are listed
