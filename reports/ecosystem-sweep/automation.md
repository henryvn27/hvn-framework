# HVN Ecosystem Sweep Automation

- Automation id: `hvn-ecosystem-sweep`
- Automation name: `HVN Ecosystem Sweep`
- Schedule: every 48 hours
- Execution environment: local Codex cron automation
- Workspace: `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/HVN-Framework`

## Purpose

Run a research-first strategic sweep for the HVN ecosystem without changing product code by default.

## Inputs

- `reports/ecosystem-sweep/tracked-sources.md`
- `reports/ecosystem-sweep/state.json`
- the prior dated sweep report when available
- `docs/ecosystem-watch.md`
- `templates/ecosystem-adopt-issue.md`

## Outputs

- `reports/ecosystem-sweep/YYYY-MM-DD.md`
- `reports/ecosystem-sweep/latest.md`
- `docs/ecosystem-watch.md`
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

## Required Report Sections

- executive summary
- repo updates
- harness updates
- recommendations by category
- suggested actions
- change log since last sweep
- sources

## Recommendation Categories

Every recommendation should be grouped under exactly one primary category:

- commands
- memory
- install
- cross-harness
- QA
- workflow

## Draft Issue Rule

If a finding is classified as `Adopt now`:

- create one draft issue unless a substantially similar open or already-tracked issue exists
- if the finding was previously tracked as `Watch` or `Investigate soon`, update the existing watch entry instead of treating it as a totally new discovery
- include backlinks to the earlier sightings when opening the draft issue
- use `templates/ecosystem-adopt-issue.md`
- prefer direct issue creation when the environment supports it
- otherwise write a Markdown draft to `reports/ecosystem-sweep/draft-issues/`
