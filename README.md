# HVN Framework

HVN is Henry Van Ness's installable framework for agentic software development. It gives AI coding agents a practical operating system for turning unclear product ideas into reviewed, tested, shippable software.

HVN is spec-first, quality-focused, and subagent-aware. It is strongest where real projects usually fail: onboarding, scope discovery, written specifications, first-look QA, context control, review gates, and release discipline.

## Release Status

This repository is prepared as an initial public release candidate. The docs, command definitions, skills, templates, install scripts, validation scripts, and GitHub metadata are complete and internally cross-referenced. Local validation should be run after every change with `./scripts/validate-repo.sh`.

## Who It Is For

Use HVN when you want AI agents to build software with the same discipline expected from a serious engineering team:

- Founders turning product ideas into maintained repositories
- Engineers using agentic coding tools on production code
- Teams that need reproducible handoffs between agents
- Reviewers who want blind first-look QA before informed retesting
- Builders shipping web apps, iOS apps, tools, libraries, and internal systems

## Core Concepts

- **Spec-driven development:** work starts from an explicit spec, not a vague prompt.
- **Adaptive onboarding:** a subagent interviews the user until the product shape is clear enough to proceed.
- **Fresh-context subagents:** review and QA can be performed by agents that do not inherit hidden implementation assumptions.
- **Review gates:** design, code, security, and release checks happen before shipping.
- **Blind first-look QA:** a tester evaluates the app from exposed behavior only, preserving the experience of a real first user.
- **Layered retesting:** subsequent QA receives bounded context packets so fixes can be tested without contaminating the original blind pass.
- **MCP-aware QA:** HVN includes patterns for browser automation and iOS simulator MCP workflows.

## Quickstart

Clone the repo and run validation:

```sh
git clone https://github.com/henryvanness/hvn-framework.git
cd hvn-framework
./scripts/validate-repo.sh
```

Use HVN in repo mode by copying or referencing `HVN.md`, `commands/`, `skills/`, and `templates/` from this repository.

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

## How HVN Works

1. Run `hvn-onboard` to collect product intent through an adaptive interview.
2. Run `hvn-discover` and `hvn-research` when the codebase, market, or technical constraints need investigation.
3. Run `hvn-spec` to create the build contract.
4. Run `hvn-plan` to break the spec into verifiable implementation phases.
5. Run `hvn-build` with focused changes and verification after each phase.
6. Run `hvn-review`, `hvn-design`, and `hvn-security` before release.
7. Run `hvn-test-blind` for a zero-context first-look QA pass.
8. Run `hvn-test-briefed` and `hvn-test-regression` for layered retesting.
9. Run `hvn-ship` and `hvn-retro` to close the work cleanly.

## Commands And Skills

Commands in `commands/` are installable prompt definitions. They tell an agent when to start a workflow, what inputs to request, what artifacts to produce, and which skills to use.

Skills in `skills/` are reusable operating procedures. They define exact workflows for onboarding, discovery, specification, planning, implementation, review, blind QA, context briefing, iOS simulator QA, web QA, security, shipping, and retrospectives.

Templates in `templates/` are copy-ready artifacts used by both commands and skills.

## Blind QA And First-Look Testing

HVN treats first impression as evidence. A blind QA tester must infer the product from the UI or CLI behavior it can actually observe. The tester may not read hidden specs, implementation notes, source code, or issue threads unless the pass has been explicitly converted into a briefed pass.

This separation catches problems that informed builders often miss: unclear navigation, missing affordances, confusing empty states, broken visual hierarchy, and tasks that only make sense to someone who already knows the product.

## iOS Simulator And Web QA Support

HVN includes MCP-ready QA guidance for:

- iOS simulator testing with launch, interaction, accessibility inspection, screenshots, and reproducible reports
- Web/browser testing with first-look task attempts, accessibility-visible element checks, screenshots, console/network observations, and regression notes

Example MCP configuration files live in `mcp/`.

## Repository Structure

```text
commands/   Installable command definitions
docs/       Framework documentation and examples
examples/   Small sample artifact sets
install/    Local and global installation scripts
mcp/        Example MCP configuration snippets
scripts/    Validation and repository utility scripts
skills/     Reusable HVN skill definitions
templates/  Copy-ready workflow artifacts
```

## Contributing

Read `CONTRIBUTING.md` before opening a pull request. Changes should preserve HVN's core guarantees: clear artifacts, bounded context, explicit QA mode, and verifiable completion.

## License

HVN Framework is released under the MIT License. See `LICENSE`.
