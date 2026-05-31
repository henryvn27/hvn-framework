# HVN Framework

HVN is Henry Van Ness's installable framework for running software work with agents through a durable system of record. It is Linear-first by default: issues, projects, states, comments, handoffs, QA passes, review findings, and ship readiness live in Linear when the team uses Linear.

Teams can opt out of Linear. In opt-out mode, HVN keeps the same gates and artifacts but maps them to another source of truth such as GitHub Issues, project docs, a local `docs/hvn/` folder, or a different tracker. Linear remains the best-supported coordination path, not a hard dependency.

HVN is spec-driven, subagent-aware, and quality-focused. It is strongest where real agent work usually fails: unclear intake, weak specs, hidden handoffs, contaminated QA, missing review evidence, premature done states, unsafe execution without clear approval or traceability, and workflows that cannot compare their own quality over time.

## Release Status

This repository is prepared as a public release candidate for a Linear-first HVN workflow. The docs, command definitions, skills, templates, install scripts, validation scripts, and GitHub metadata are complete and internally cross-referenced. Local validation should be run after every change with `./scripts/validate-repo.sh`.

## Who It Is For

Use HVN when you want AI agents to build software with engineering discipline:

- Teams using Linear as the coordination layer for product and engineering work
- Founders turning vague product ideas into maintained repositories
- Engineers using agentic coding tools on production code
- Reviewers who want blind first-look QA before informed retesting
- Teams that need reproducible handoffs between agents
- Builders who want the option to map HVN gates to another tracker

## Core Concepts

- **Linear issue as unit of work:** each meaningful task should have an issue or opt-out equivalent.
- **Linear project as initiative:** related issues belong to a project, epic, or alternative initiative artifact.
- **Linear states as workflow gates:** state transitions represent HVN readiness gates.
- **Comments as handoff record:** specs, plans, QA reports, review findings, and ship checks are posted back to the work item.
- **Spec-driven development:** implementation follows a written contract.
- **Typed artifact contracts:** core artifacts have required fields and a clear good-enough bar.
- **Adaptive onboarding:** a subagent clarifies issue ambiguity before spec or build.
- **Run traces:** meaningful runs can be inspected after the fact.
- **Trajectory evals:** workflows are judged on how they behaved, not just the final answer.
- **Benchmark packs:** onboarding and spec quality can be compared across versions.
- **Workflow accounting:** time, retries, and optional cost signals can be tracked per run.
- **Shared state:** cooperating roles can share the same current run context.
- **Approval gates:** risky actions pause for explicit approval.
- **Human checkpoints:** pause, inspect, approve, reject, and resume are explicit workflow moves.
- **Inspector artifacts:** runs can be reviewed without a custom UI.
- **Tool governance:** external tools and MCP servers have explicit trust levels, registry entries, and audit expectations.
- **Legacy modernization:** inherited systems are handled through archaeology, enrichment, risk analysis, and staged migration.
- **Goal mode:** bounded, verifiable milestones can use host-native `/goal` when supported, with a safe fallback when not.
- **Fresh-context subagents:** review and QA can be performed by agents that do not inherit hidden implementation assumptions.
- **Blind first-look QA:** a tester evaluates the app from exposed behavior only.
- **Layered retesting:** later QA receives bounded context packets tied to the same issue.
- **Regression-task generation:** strong QA findings can become reusable regression work.
- **Security guardrails:** external content is treated as untrusted until confirmed.
- **Opt-out mode:** the same artifacts can be stored outside Linear when the user chooses another system of record.

## Quickstart

Clone the repo and run validation:

```sh
git clone https://github.com/henryvn27/hvn-framework.git
cd hvn-framework
./scripts/validate-repo.sh
```

Install locally into the current project:

```sh
./install/install.sh --mode local --target ./.hvn
./install/verify-install.sh --target ./.hvn
```

Install globally for your user:

```sh
./install/install.sh --mode global
./install/doctor.sh
```

For Linear-first setup, read:

- `docs/linear-setup.md`
- `docs/linear-workflow.md`
- `docs/linear-agent-model.md`
- `docs/linear-states.md`
- `docs/linear-guidance.md`
- `docs/observability.md`
- `docs/evals.md`
- `docs/approval-gates.md`
- `docs/artifact-contracts.md`
- `docs/security-guardrails.md`
- `docs/prompt-injection.md`
- `docs/benchmark-pack.md`
- `docs/workflow-accounting.md`
- `docs/qa-to-regression.md`
- `docs/shared-state.md`
- `docs/human-checkpoints.md`
- `docs/inspector.md`
- `docs/tool-trust.md`
- `docs/mcp-governance.md`
- `docs/tool-registry.md`
- `docs/tool-safety-rules.md`
- `docs/mcp-review-workflow.md`
- `docs/legacy-modernization.md`
- `docs/repo-archaeology.md`
- `docs/goal-mode.md`
- `docs/goal-safety.md`
- `docs/goal-recommendation-rules.md`
- `docs/compatibility-matrix.md`
- `docs/command-mapping.md`
- `docs/version-control.md`

You can also generate a local setup packet:

```sh
./scripts/linear-setup.sh --mode linear-first --target work/hvn-linear-setup.md
```

For opt-out setup, choose a system of record and map HVN issue comments to equivalent durable artifacts.

## Linear-First Workflow

1. Issue enters inbox or triage.
2. `hvn-linear-intake` or `hvn-onboard` clarifies ambiguity.
3. `hvn-legacy` runs when the target is inherited, under-documented, or fragile.
4. `hvn-spec` creates a structured spec from issue context or modernization audit.
5. `hvn-linear-plan-comment` posts the plan to the issue.
6. `hvn-approve` records approval when scope or risk requires it.
7. `hvn-goal` recommends goal mode only for bounded, verifiable milestones.
8. `hvn-build` executes approved scope or the goal contract.
9. `hvn-trace` records what happened when the run is meaningful or risky.
10. `hvn-state` keeps shared coordination context current across roles.
11. `hvn-metrics` records time, retries, and optional usage signals.
12. `hvn-review` posts findings.
13. `hvn-test-blind` runs first-look QA with minimal issue context.
14. `hvn-context-brief` creates a bounded second-pass packet.
15. `hvn-test-briefed` and `hvn-test-regression` retest.
16. `hvn-regression-task` promotes high-value findings into reusable regression work.
17. `hvn-checkpoint` pauses risky or ambiguous work for human inspection and decision.
18. `hvn-inspect` produces a resumable view of run identity, state, approvals, and blockers.
19. `hvn-tool-review` or `hvn-mcp-review` governs new or risky external tools.
20. `hvn-benchmark` compares onboarding and spec quality across versions when workflow quality is under review.
21. `hvn-eval` scores trajectory quality when validating HVN behavior or release confidence.
22. `hvn-linear-ship-check` posts ship readiness.
23. Issue moves to done only with evidence.

Recommended state gates are documented in `docs/linear-states.md`.

## Commands And Skills

Commands in `commands/` are installable prompt definitions. Linear-specific commands include:

- `hvn-linear-setup`
- `hvn-linear-intake`
- `hvn-linear-sync`
- `hvn-linear-plan-comment`
- `hvn-linear-qa-report`
- `hvn-linear-ship-check`

Skills in `skills/` define reusable execution behavior. Linear-specific skills include:

- `hvn-linear-setup`
- `hvn-linear-core`
- `hvn-linear-triage`
- `hvn-linear-planner`
- `hvn-linear-executor`
- `hvn-linear-qa`
- `hvn-linear-release`

Templates in `templates/` include both full artifacts and Linear-ready comment formats.

The reliability layer adds:

- trace artifacts in `templates/run-trace.md`
- eval artifacts in `templates/eval-case.md` and `templates/eval-report.md`
- benchmark artifacts in `benchmarks/onboarding-spec/` and `templates/benchmark-*.md`
- workflow metrics artifacts in `templates/workflow-metrics.md`
- shared-state and checkpoint artifacts in `templates/shared-state.md`, `templates/checkpoint-*.md`, and `templates/run-inspection.md`
- approval requests in `templates/approval-request.md`
- tool and MCP governance templates in `templates/tool-registry-entry.md`, `templates/mcp-server-entry.md`, and `templates/mcp-review.md`
- legacy modernization artifacts in `templates/legacy-audit.md`, `templates/legacy-risk-report.md`, and `templates/modernization-spec.md`
- goal artifacts in `templates/goal-contract.md` and `templates/goal-status.md`
- regression candidates and tasks in `templates/regression-candidate.md` and `templates/regression-task.md`
- typed contracts in `templates/contracts/`

## Blind QA In Linear

HVN treats first impression as evidence. In Linear-first mode, a blind QA agent should receive only:

- Issue ID
- Platform
- Launch instructions
- Optional one-sentence user mission

The blind QA agent must not receive the spec, code, implementation plan, design rationale, or hidden issue discussion. It posts findings back to the same issue. A context briefer then creates a minimal packet for a second-pass tester so the issue thread preserves the difference between blind and briefed outcomes.

The second-pass packet should follow the QA brief contract in `templates/contracts/qa-brief-contract.md`.

## iOS Simulator And Web QA Support

HVN includes MCP-ready QA guidance for:

- iOS simulator testing with launch, interaction, accessibility inspection, screenshots, and reproducible Linear comments
- Web/browser testing with first-look task attempts, accessibility-visible element checks, screenshots, console/network observations, and regression notes

Example MCP configuration files live in `mcp/`.

## Linear Setup Help

HVN includes setup support for Linear:

- `docs/linear-setup.md` walks through scope, states, labels, guidance, permissions, smoke tests, and opt-out rules.
- `commands/hvn-linear-setup.md` defines the agent workflow for configuring or validating Linear.
- `skills/hvn-linear-setup/SKILL.md` gives agents the exact setup procedure.
- `templates/linear-setup-checklist.md` records setup decisions.
- `scripts/linear-setup.sh` generates a local setup packet without handling credentials.

## Opt-Out Mode

If the user does not want Linear, ask what should be the system of record. Then map:

- Linear issue to a GitHub issue, local task file, project doc, or tracker item
- Linear project to an epic, milestone, folder, or roadmap doc
- Linear state to a documented workflow gate
- Linear comment to a durable note, PR comment, issue comment, or artifact file
- Linear linked artifact to a local file path or URL

Do not force Linear when the user opts out.

## Reliability Layer

HVN now treats reliability as part of the core framework:

- onboarding, discovery, and spec create durable context
- run memory preserves durable facts and decisions
- traces record what happened during meaningful runs
- shared state keeps the current multi-role picture aligned
- workflow metrics show how long runs took and where retries accumulated
- evals judge the full trajectory
- benchmark packs compare onboarding and spec quality over time
- QA findings can become reusable regression tasks
- approval gates control risky work
- checkpoints enable pause, inspect, approve, reject, and resume flows
- inspector artifacts make paused or blocked runs auditable
- tool and MCP governance makes external execution trust explicit
- legacy modernization emphasizes archaeology, business logic extraction, and staged migration
- goal mode turns bounded specs or milestones into durable, verifiable execution contracts
- contracts keep artifacts consistent
- security and prompt-injection guardrails keep external context from hijacking execution

## Version Control And Iteration

Framework changes should land as clear iterations with reviewable commits, validation evidence, and changelog updates. See `docs/version-control.md` and `templates/iteration-log.md`.

## Repository Structure

```text
commands/   Installable command definitions
docs/       Framework documentation and examples
examples/   Small sample artifact sets
install/    Local and global installation scripts
mcp/        Example MCP configuration snippets
registry/   Tool and MCP server trust registry
scripts/    Validation and repository utility scripts
skills/     Reusable HVN skill definitions
templates/  Copy-ready artifacts and Linear comments
```

## Contributing

Read `CONTRIBUTING.md` before opening a pull request. Changes should preserve HVN's core guarantees: clear artifacts, bounded context, explicit QA mode, verifiable completion, and durable handoffs in Linear or the declared opt-out system of record.

## License

HVN Framework is released under the MIT License. See `LICENSE`.
