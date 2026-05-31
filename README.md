# HVN Framework

HVN is Henry Van Ness's installable framework for running software work with agents through a durable system of record. It is Linear-first by default: issues, projects, states, comments, handoffs, QA passes, review findings, and ship readiness live in Linear when the team uses Linear.

Teams can opt out of Linear. In opt-out mode, HVN keeps the same gates and artifacts but maps them to another source of truth such as GitHub Issues, project docs, a local `docs/hvn/` folder, or a different tracker. Linear remains the best-supported coordination path, not a hard dependency.

HVN is spec-driven, subagent-aware, and quality-focused. It is strongest where real agent work usually fails: unclear intake, weak specs, hidden handoffs, contaminated QA, missing review evidence, and premature done states.

The installed default behavior is documented in `HVN.defaults.md`. The shipped profile is `profiles/henry-van-ness.md`.

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
- **Most-specific skill routing:** HVN chooses the narrowest installed skill that fits the task before generic execution.
- **Opinionated default profile:** the Henry profile enables Linear-first management, premium design sensitivity, preserve-stack behavior, and full-output enforcement when requested.
- **Linear project as initiative:** related issues belong to a project, epic, or alternative initiative artifact.
- **Linear states as workflow gates:** state transitions represent HVN readiness gates.
- **Comments as handoff record:** specs, plans, QA reports, review findings, and ship checks are posted back to the work item.
- **Spec-driven development:** implementation follows a written contract.
- **Adaptive onboarding:** a subagent clarifies issue ambiguity before spec or build.
- **Fresh-context subagents:** review and QA can be performed by agents that do not inherit hidden implementation assumptions.
- **Blind first-look QA:** a tester evaluates the app from exposed behavior only.
- **Layered retesting:** later QA receives bounded context packets tied to the same issue.
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

- `HVN.defaults.md`
- `profiles/henry-van-ness.md`
- `docs/default-behavior.md`
- `docs/skill-routing.md`
- `docs/linear-defaults.md`
- `docs/linear-setup.md`
- `docs/linear-workflow.md`
- `docs/linear-agent-model.md`
- `docs/linear-states.md`
- `docs/linear-guidance.md`

You can also generate a local setup packet:

```sh
./scripts/linear-setup.sh --mode linear-first --target work/hvn-linear-setup.md
```

For opt-out setup, choose a system of record and map HVN issue comments to equivalent durable artifacts.

## Linear-First Workflow

1. Issue enters inbox or triage.
2. `hvn-linear-intake` or `hvn-onboard` clarifies ambiguity.
3. `hvn-spec` creates a structured spec from issue context.
4. `hvn-linear-plan-comment` posts the plan to the issue.
5. Human approves the plan when required.
6. `hvn-build` executes approved scope.
7. `hvn-review` posts findings.
8. `hvn-test-blind` runs first-look QA with minimal issue context.
9. `hvn-context-brief` creates a bounded second-pass packet.
10. `hvn-test-briefed` and `hvn-test-regression` retest.
11. `hvn-linear-ship-check` posts ship readiness.
12. Issue moves to done only with evidence.

Recommended state gates are documented in `docs/linear-states.md`.

## Commands And Skills

Commands in `commands/` are installable prompt definitions. Linear-specific commands include:

- `hvn-route`
- `hvn-linear-check`
- `hvn-linear-setup`
- `hvn-linear-intake`
- `hvn-linear-sync`
- `hvn-linear-plan-comment`
- `hvn-linear-qa-report`
- `hvn-linear-ship-check`
- `hvn-full-output`

Skills in `skills/` define reusable execution behavior. Linear-specific skills include:

- `hvn-router`
- `hvn-full-output`
- `hvn-linear-setup`
- `hvn-linear-core`
- `hvn-linear-triage`
- `hvn-linear-planner`
- `hvn-linear-executor`
- `hvn-linear-qa`
- `hvn-linear-release`

Templates in `templates/` include both full artifacts and Linear-ready comment formats.

## Blind QA In Linear

HVN treats first impression as evidence. In Linear-first mode, a blind QA agent should receive only:

- Issue ID
- Platform
- Launch instructions
- Optional one-sentence user mission

The blind QA agent must not receive the spec, code, implementation plan, design rationale, or hidden issue discussion. It posts findings back to the same issue. A context briefer then creates a minimal packet for a second-pass tester so the issue thread preserves the difference between blind and briefed outcomes.

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

## Configuration

Framework defaults live in `HVN.defaults.md`. Profiles live in `profiles/`. Users can replace the Henry profile with another profile later, but every profile should preserve the HVN guarantees: durable work record, routing decision, written artifacts, bounded context, verification, review, QA evidence, and done-state proof.

## Repository Structure

```text
commands/   Installable command definitions
docs/       Framework documentation and examples
examples/   Small sample artifact sets
install/    Local and global installation scripts
mcp/        Example MCP configuration snippets
scripts/    Validation and repository utility scripts
skills/     Reusable HVN skill definitions
templates/  Copy-ready artifacts and Linear comments
```

## Contributing

Read `CONTRIBUTING.md` before opening a pull request. Changes should preserve HVN's core guarantees: clear artifacts, bounded context, explicit QA mode, verifiable completion, and durable handoffs in Linear or the declared opt-out system of record.

## License

HVN Framework is released under the MIT License. See `LICENSE`.
