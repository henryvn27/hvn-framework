# Skills

Skills are reusable operating procedures stored in `skills/*/SKILL.md`. They define trigger rules, inputs, workflow, outputs, quality bar, common failure modes, and relationships to other ORCA-HVN skills.

## Linear Skills

- `orca-linear-setup`
- `orca-linear-core`
- `orca-linear-triage`
- `orca-linear-planner`
- `orca-linear-executor`
- `orca-linear-qa`
- `orca-linear-release`

These skills coordinate issue-native work in Linear. If the user opts out of Linear, use the same behaviors against the chosen system of record.

## Core Skill Groups

- Core governance: `orca-core`
- Intake and discovery: `orca-onboard`, `orca-discover`, `orca-legacy`, `orca-research`, `orca-controller-mode`, `orca-business-ideation`, `orca-attribution`, `orca-background-mode`, `orca-docs-system`, `orca-integrations`, `orca-integration-recommendation`
- Delivery: `orca-spec`, `orca-plan`, `orca-goal-mode`, `orca-build`
- Reliability: `orca-observability`, `orca-eval`, `orca-approval-gate`, `orca-benchmark`, `orca-accounting`, `orca-portability`, `orca-regression-task`, `orca-shared-state`, `orca-checkpoint`, `orca-tool-governance`, `orca-tool-setup`, `orca-runtime-adaptation`, `orca-receipts`, `orca-next-step`, `orca-delegation`
- Gates: `orca-review`, `orca-design`, `orca-security`, `orca-ship`
- QA: `orca-blind-qa`, `orca-context-brief`, `orca-ios-sim-qa`, `orca-web-qa`
- Learning: `orca-retro`, `orca-session-improvement`

## Skill Installation

Skills can be installed into agent clients that support skill directories, or read directly by agents using repo mode. Linear guidance can be installed separately into workspace, team, or project instructions.

Reliability skills should be treated as cross-cutting helpers:

- `orca-observability` for traces
- `orca-eval` for trajectory scoring
- `orca-approval-gate` for risky-action control
- `orca-benchmark` for onboarding/spec comparisons
- `orca-accounting` for workflow timing and retry signals
- `orca-business-ideation` for idea framing, venture-style evaluation, opportunity memos, and validation planning
- `orca-background-mode` for bounded unattended progress with explicit loop guards, permissions handling, and final states
- `orca-docs-system` for docs routing, start-here guidance, wiki maintenance, and stale-doc refresh planning
- `orca-attribution` for upstream credit, provenance classification, wrapper clarity, and notice maintenance
- `orca-portability` for schema definition, validation, versioning, and artifact mapping
- `orca-controller-mode` for repository-first orientation, routing, and multi-harness coherence
- `orca-regression-task` for preserving high-value findings as regression work
- `orca-shared-state` for current multi-role coordination
- `orca-checkpoint` for explicit pause, inspect, approve, reject, and resume flows
- `orca-tool-governance` for external tool and MCP server trust decisions
- `orca-tool-setup` for harness-aware GitHub, Linear, connector, MCP, CLI, and fallback setup
- `orca-runtime-adaptation` for capability-based routing, policy switches, and safe degraded behavior by harness
- `orca-receipts` for compact execution summaries that support review, replay, and restore decisions
- `orca-legacy` for repo archaeology, business logic extraction, and staged modernization planning
- `orca-goal-mode` for converting bounded specs or milestones into durable goal contracts
- `orca-next-step` for concise, adaptive phase-exit guidance
- `orca-delegation` for bounded controller-to-executor briefs and structured returns
- `orca-session-improvement` for turning real session friction and quality-signal evidence into deduplicated, human-approved framework backlog work
- `orca-integrations` for routing modern startup stacks across web, mobile, auth, payments, analytics, automation, and business systems
- `orca-integration-recommendation` for restrained, best-fit stack recommendations and respectful setup-only support for user-chosen tools
