# ORCA-HVN

![ORCA-HVN logo](assets/orca-hvn-logo.svg)

ORCA-HVN is Henry Van Ness's installable framework for running software work with agents through a durable system of record. It is Linear-first by default: issues, projects, states, comments, handoffs, QA passes, review findings, and ship readiness live in Linear when the team uses Linear.

Teams can opt out of Linear. In opt-out mode, ORCA-HVN keeps the same gates and artifacts but maps them to another source of truth such as GitHub Issues, project docs, a local `docs/orca-hvn/` folder, or a different tracker. Linear remains the best-supported coordination path, not a hard dependency.

ORCA-HVN is spec-driven, subagent-aware, and quality-focused. It is strongest where real agent work usually fails: unclear intake, weak specs, hidden handoffs, contaminated QA, missing review evidence, premature done states, unsafe execution without clear approval or traceability, and workflows that cannot compare their own quality over time.

It is also designed to work cleanly when one agent controls the project and another executes bounded work. A Hermes-like controller and a Codex-like executor should be able to share the same artifact trail without losing state or ownership.

It also supports a dedicated business-ideation lane for startup opportunities. ORCA-HVN can structure a rough idea, evaluate it through founder, market, problem, competition, and evidence lenses, produce an opportunity memo, and recommend the next validation step before product-spec work begins.

## Release Status

This repository is prepared as a public release candidate for a Linear-first ORCA-HVN workflow. The docs, command definitions, skills, templates, install scripts, validation scripts, and GitHub metadata are complete and internally cross-referenced. Local validation should be run after every change with `./scripts/validate-repo.sh`.

## Who It Is For

Use ORCA-HVN when you want AI agents to build software with engineering discipline:

- Teams using Linear as the coordination layer for product and engineering work
- Founders turning vague product ideas into maintained repositories
- Engineers using agentic coding tools on production code
- Reviewers who want blind first-look QA before informed retesting
- Teams that need reproducible handoffs between agents
- Builders who want the option to map ORCA-HVN gates to another tracker
- Founders and operators who want idea evaluation before roadmap or build planning

## Core Concepts

- **Linear issue as unit of work:** each meaningful task should have an issue or opt-out equivalent.
- **Idea one-pagers before specs:** rough opportunities should be compressed and challenged before they inherit delivery complexity.
- **Linear project as initiative:** related issues belong to a project, epic, or alternative initiative artifact.
- **Linear states as workflow gates:** state transitions represent ORCA-HVN readiness gates.
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
- **External tool setup:** GitHub, Linear, connectors, MCP, CLI helpers, and manual fallbacks are handled through harness-aware setup checks.
- **Runtime adaptation:** ORCA-HVN chooses the safest reviewed execution path for the active harness instead of assuming feature parity.
- **Controller orientation:** external controller agents can enter the repo through a concise status and orientation surface.
- **Delegation and ingestion:** controller agents can delegate bounded work and re-ingest structured results back into the framework.
- **Execution receipts:** meaningful runs produce compact, reviewable summaries of actions, verification, approvals, and remaining risk.
- **Artifact lineage:** upstream and downstream workflow artifacts can be linked explicitly.
- **Replay and restore:** prior runs can be compared or recovered without pretending workflows are perfectly deterministic.
- **Legacy modernization:** inherited systems are handled through archaeology, enrichment, risk analysis, and staged migration.
- **Business ideation:** startup ideas can be evaluated, researched, classified, and validated before they become product work.
- **Goal mode:** bounded, verifiable milestones can use host-native `/goal` when supported, with a safe fallback when not.
- **Next-step guidance:** major phase exits produce concise, adaptive guidance for what to do next.
- **Fresh-context subagents:** review and QA can be performed by agents that do not inherit hidden implementation assumptions.
- **Blind first-look QA:** a tester evaluates the app from exposed behavior only.
- **Layered retesting:** later QA receives bounded context packets tied to the same issue.
- **Regression-task generation:** strong QA findings can become reusable regression work.
- **Security guardrails:** external content is treated as untrusted until confirmed.
- **Opt-out mode:** the same artifacts can be stored outside Linear when the user chooses another system of record.

## Quickstart

Clone the repo and run validation:

```sh
git clone https://github.com/henryvn27/orca-hvn.git
cd orca-hvn
./scripts/validate-repo.sh
```

Install locally into the current project:

```sh
./install/install.sh --mode local --target ./.orca-hvn
./install/verify-install.sh --target ./.orca-hvn
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
- `docs/business-ideation.md`
- `docs/idea-one-pagers.md`
- `docs/idea-evaluation-lenses.md`
- `docs/idea-research.md`
- `docs/idea-validation.md`
- `docs/opportunity-memos.md`
- `docs/idea-feedback-style.md`
- `docs/business-ideation-ux.md`
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
- `docs/external-tool-setup.md`
- `docs/integrations-overview.md`
- `docs/setup-validation.md`
- `docs/degraded-mode.md`
- `docs/setup-ux.md`
- `docs/runtime-adaptation.md`
- `docs/harness-capability-profiles.md`
- `docs/harness-detection.md`
- `docs/feature-routing.md`
- `docs/runtime-flags.md`
- `docs/runtime-fallbacks.md`
- `docs/runtime-degraded-mode.md`
- `docs/runtime-status.md`
- `docs/controller-agent-integration.md`
- `docs/project-orientation.md`
- `docs/delegation.md`
- `docs/result-ingestion.md`
- `docs/controller-executor-compatibility.md`
- `docs/execution-receipts.md`
- `docs/artifact-lineage.md`
- `docs/replay-restore.md`
- `docs/legacy-modernization.md`
- `docs/repo-archaeology.md`
- `docs/next-step-guidance.md`
- `docs/guidance-tone.md`
- `docs/experience-adaptation.md`
- `docs/phase-exit-rules.md`
- `docs/goal-mode.md`
- `docs/goal-safety.md`
- `docs/goal-recommendation-rules.md`
- `docs/compatibility-matrix.md`
- `docs/command-mapping.md`
- `docs/version-control.md`

You can also generate a local setup packet:

```sh
./scripts/linear-setup.sh --mode linear-first --target work/orca-linear-setup.md
```

For opt-out setup, choose a system of record and map ORCA-HVN issue comments to equivalent durable artifacts.

## Linear-First Workflow

1. Issue enters inbox or triage.
2. `orca-idea` or `orca-evaluate-idea` runs first when the work is still an opportunity rather than a product contract.
3. `orca-plan-idea` or `orca-validate-idea` turns a surviving idea into an opportunity memo and next experiment.
4. `orca-linear-intake` or `orca-onboard` clarifies ambiguity.
5. `orca-check-setup` identifies required GitHub, Linear, MCP, connector, or CLI dependencies when needed.
6. `orca-runtime` chooses the safest reviewed harness-specific path.
7. `orca-legacy` runs when the target is inherited, under-documented, or fragile.
8. `orca-spec` creates a structured spec from issue context, validation output, or modernization audit.
9. `orca-linear-plan-comment` posts the plan to the issue.
10. `orca-controller` or `orca-orient` gives a controller agent a fast entry into current project state.
11. `orca-approve` records approval when scope or risk requires it.
12. `orca-goal` recommends goal mode only for bounded, verifiable milestones.
13. `orca-delegate` creates a bounded executor brief when another harness should do the work.
14. `orca-build` executes approved scope or the goal contract.
15. `orca-trace` records what happened when the run is meaningful or risky.
16. `orca-receipt` summarizes the run compactly.
17. `orca-lineage` links the new artifact to the workflow chain.
18. `orca-state` keeps shared coordination context current across roles.
19. `orca-metrics` records time, retries, and optional usage signals.
20. `orca-ingest` brings delegated results back into ORCA-HVN in a structured way.
21. `orca-review` posts findings.
22. `orca-test-blind` runs first-look QA with minimal issue context.
23. `orca-context-brief` creates a bounded second-pass packet.
24. `orca-test-briefed` and `orca-test-regression` retest.
25. `orca-regression-task` promotes high-value findings into reusable regression work.
26. `orca-checkpoint` pauses risky or ambiguous work for human inspection and decision.
27. `orca-inspect` produces a resumable view of run identity, state, approvals, and blockers.
28. `orca-tool-review` or `orca-mcp-review` governs new or risky external tools.
29. `orca-benchmark` compares onboarding and spec quality across versions when workflow quality is under review.
30. `orca-eval` scores trajectory quality when validating ORCA-HVN behavior or release confidence.
31. `orca-replay` or `orca-restore` compares or recovers workflow behavior when needed.
32. `orca-linear-ship-check` posts ship readiness.
33. `orca-status` explains current runtime routing when needed.
34. Issue moves to done only with evidence.

Recommended state gates are documented in `docs/linear-states.md`.

## Commands And Skills

Commands in `commands/` are installable prompt definitions. Linear-specific commands include:

- `orca-linear-setup`
- `orca-linear-intake`
- `orca-linear-sync`
- `orca-linear-plan-comment`
- `orca-linear-qa-report`
- `orca-linear-ship-check`

Business-ideation commands include:

- `orca-idea`
- `orca-evaluate-idea`
- `orca-plan-idea`
- `orca-validate-idea`

Skills in `skills/` define reusable execution behavior. Linear-specific skills include:

- `orca-linear-setup`
- `orca-linear-core`
- `orca-linear-triage`
- `orca-linear-planner`
- `orca-linear-executor`
- `orca-linear-qa`
- `orca-linear-release`

Business-ideation skills include:

- `orca-business-ideation`

Templates in `templates/` include both full artifacts and Linear-ready comment formats.

The reliability layer adds:

- trace artifacts in `templates/run-trace.md`
- receipt artifacts in `templates/execution-receipt.md`
- lineage artifacts in `templates/artifact-lineage.md`
- eval artifacts in `templates/eval-case.md` and `templates/eval-report.md`
- benchmark artifacts in `benchmarks/onboarding-spec/` and `templates/benchmark-*.md`
- workflow metrics artifacts in `templates/workflow-metrics.md`
- idea artifacts in `templates/idea-*.md`, `templates/opportunity-memo.md`, `templates/validation-plan.md`, and related research templates
- shared-state and checkpoint artifacts in `templates/shared-state.md`, `templates/checkpoint-*.md`, and `templates/run-inspection.md`
- approval requests in `templates/approval-request.md`
- tool and MCP governance templates in `templates/tool-registry-entry.md`, `templates/mcp-server-entry.md`, and `templates/mcp-review.md`
- setup templates in `templates/tool-requirements.md`, `templates/integration-status.md`, `templates/integration-health-report.md`, and `templates/*setup*guidance*.md`
- replay and restore templates in `templates/replay-case.md` and `templates/runtime-status.md`
- legacy modernization artifacts in `templates/legacy-audit.md`, `templates/legacy-risk-report.md`, and `templates/modernization-spec.md`
- goal artifacts in `templates/goal-contract.md` and `templates/goal-status.md`
- next-step artifacts in `templates/next-step-*.md` and `templates/user-guidance-profile.md`
- regression candidates and tasks in `templates/regression-candidate.md` and `templates/regression-task.md`
- typed contracts in `templates/contracts/`

## Blind QA In Linear

ORCA-HVN treats first impression as evidence. In Linear-first mode, a blind QA agent should receive only:

- Issue ID
- Platform
- Launch instructions
- Optional one-sentence user mission

The blind QA agent must not receive the spec, code, implementation plan, design rationale, or hidden issue discussion. It posts findings back to the same issue. A context briefer then creates a minimal packet for a second-pass tester so the issue thread preserves the difference between blind and briefed outcomes.

The second-pass packet should follow the QA brief contract in `templates/contracts/qa-brief-contract.md`.

## iOS Simulator And Web QA Support

ORCA-HVN includes MCP-ready QA guidance for:

- iOS simulator testing with launch, interaction, accessibility inspection, screenshots, and reproducible Linear comments
- Web/browser testing with first-look task attempts, accessibility-visible element checks, screenshots, console/network observations, and regression notes

Example MCP configuration files live in `mcp/`.

## Linear Setup Help

ORCA-HVN includes setup support for Linear:

- `docs/linear-setup.md` walks through scope, states, labels, guidance, permissions, smoke tests, and opt-out rules.
- `commands/orca-linear-setup.md` defines the agent workflow for configuring or validating Linear.
- `skills/orca-linear-setup/SKILL.md` gives agents the exact setup procedure.
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

ORCA-HVN now treats reliability as part of the core framework:

- onboarding, discovery, and spec create durable context
- idea one-pagers, scorecards, memos, and validation plans create a durable upstream decision record
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
skills/     Reusable ORCA-HVN skill definitions
templates/  Copy-ready artifacts and Linear comments
```

## Contributing

Read `CONTRIBUTING.md` before opening a pull request. Changes should preserve ORCA-HVN's core guarantees: clear artifacts, bounded context, explicit QA mode, verifiable completion, and durable handoffs in Linear or the declared opt-out system of record.

## License

ORCA-HVN is released under the MIT License. See `LICENSE`.
