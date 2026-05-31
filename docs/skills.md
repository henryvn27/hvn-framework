# Skills

Skills are reusable operating procedures stored in `skills/*/SKILL.md`. They define trigger rules, inputs, workflow, outputs, quality bar, common failure modes, and relationships to other HVN skills.

## Linear Skills

- `hvn-linear-setup`
- `hvn-linear-core`
- `hvn-linear-triage`
- `hvn-linear-planner`
- `hvn-linear-executor`
- `hvn-linear-qa`
- `hvn-linear-release`

These skills coordinate issue-native work in Linear. If the user opts out of Linear, use the same behaviors against the chosen system of record.

## Core Skill Groups

- Core governance: `hvn-core`
- Intake and discovery: `hvn-onboard`, `hvn-discover`, `hvn-research`
- Delivery: `hvn-spec`, `hvn-plan`, `hvn-build`
- Reliability: `hvn-observability`, `hvn-eval`, `hvn-approval-gate`, `hvn-benchmark`, `hvn-accounting`, `hvn-regression-task`, `hvn-shared-state`, `hvn-checkpoint`, `hvn-tool-governance`
- Gates: `hvn-review`, `hvn-design`, `hvn-security`, `hvn-ship`
- QA: `hvn-blind-qa`, `hvn-context-brief`, `hvn-ios-sim-qa`, `hvn-web-qa`
- Learning: `hvn-retro`

## Skill Installation

Skills can be installed into agent clients that support skill directories, or read directly by agents using repo mode. Linear guidance can be installed separately into workspace, team, or project instructions.

Reliability skills should be treated as cross-cutting helpers:

- `hvn-observability` for traces
- `hvn-eval` for trajectory scoring
- `hvn-approval-gate` for risky-action control
- `hvn-benchmark` for onboarding/spec comparisons
- `hvn-accounting` for workflow timing and retry signals
- `hvn-regression-task` for preserving high-value findings as regression work
- `hvn-shared-state` for current multi-role coordination
- `hvn-checkpoint` for explicit pause, inspect, approve, reject, and resume flows
- `hvn-tool-governance` for external tool and MCP server trust decisions
