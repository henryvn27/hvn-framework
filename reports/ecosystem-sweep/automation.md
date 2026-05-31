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

## Outputs

- `reports/ecosystem-sweep/YYYY-MM-DD.md`
- `reports/ecosystem-sweep/latest.md`
- updated `reports/ecosystem-sweep/state.json`

## Guardrails

- do not edit HVN product code by default
- do not update dependencies by default
- do not create branches, commits, or pushes by default
- do not rewrite docs outside the sweep report area by default
- use official docs, release notes, changelogs, and upstream repos first

## Required Report Sections

- executive summary
- repo updates
- harness updates
- new opportunities for HVN
- suggested actions
- change log since last sweep
- sources
