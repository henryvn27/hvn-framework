# ORCA-HVN

<img src="assets/orca.png" alt="ORCA-HVN logo" width="220" />

ORCA-HVN is an orchestration framework for running agent-assisted software work with durable workflow structure, host-aware execution paths, QA discipline, and inspectable artifacts. It is Linear-first by default, but it can map the same workflow to another system of record when needed.

The name is intentional: ORCA-HVN is meant to be an orchestrator for agentic work, not just a pile of commands.

ORCA-HVN is the primary workflow here. It replaces the older GStack or GSD-centered way of working rather than sitting beside it. Those earlier tools helped shape some of the ideas behind this project, but the intended operating path is now ORCA-only.

It is also meant to be a place where people learn how to work with orchestration and agent-management systems without needing a human to teach them first. The goal is not "learn ORCA, then graduate to something else." The goal is that ORCA both teaches the workflow and remains a strong long-term workflow.

## What It Is

Use ORCA-HVN when the hard part is not "generate code," but:

- turning vague work into a usable spec
- keeping agent runs reviewable and resumable
- coordinating controller and executor agents cleanly
- adapting to different harnesses and integration setups
- preserving QA, approvals, receipts, and follow-up artifacts around the same work
- giving new users a guided way to learn orchestration instead of dropping them into an unstructured tool pile

## Who It Is For

- engineers using Codex, Claude Code, Hermes, or similar agentic coding hosts
- teams that want workflow discipline around AI-assisted software delivery
- operators who need inspectable runs instead of opaque prompt sessions
- founders who need idea validation before a roadmap or build sprint
- maintainers working in legacy or under-documented repos
- people who want ORCA to teach the workflow instead of relying on a teammate to explain every step

## What Makes It Different

ORCA-HVN is not only a prompt or command pack. It combines:

- onboarding and spec-driven execution
- guided first-use learning instead of only expert-first command surfaces
- goal mode and background mode for bounded long-running work
- controller and executor integration
- host-aware runtime adaptation and compatibility guidance
- integration packs for modern web, mobile, backend, auth, billing, analytics, automation, and business stacks
- restrained recommendation rules so supported tools are not automatically pushed as defaults
- checkpoints, approvals, receipts, lineage, replay, and restore
- blind QA, briefed QA, and regression capture
- paved-road workflows for common use cases
- a session-end improvement loop that turns real friction into framework backlog work
- quality-signal detection for frustration, generic output, wrong-direction behavior, and poor recovery

## Start Here

If you are new:

1. [docs/start-here.md](docs/start-here.md)
2. [docs/first-workflow.md](docs/first-workflow.md)
3. [docs/quickstart.md](docs/quickstart.md)
4. [docs/choose-your-path.md](docs/choose-your-path.md)

## Where To Begin By Use Case

- I want the default beginner path: [docs/first-workflow.md](docs/first-workflow.md)
- I want the fastest setup: [docs/quickstart.md](docs/quickstart.md)
- I need the big picture: [docs/intro.md](docs/intro.md)
- I am coming from GStack or GSD: [docs/guides/from-gstack-or-gsd-to-orca-hvn.md](docs/guides/from-gstack-or-gsd-to-orca-hvn.md)
- I use a controller like Hermes: [docs/guides/using-hvn-with-hermes.md](docs/guides/using-hvn-with-hermes.md)
- I need unattended progress: [docs/guides/background-mode-guide.md](docs/guides/background-mode-guide.md)
- I need a milestone contract: [docs/guides/goal-mode-guide.md](docs/guides/goal-mode-guide.md)
- I need startup ideation first: [docs/guides/business-ideation-guide.md](docs/guides/business-ideation-guide.md)
- I inherited a messy repo: [docs/legacy-modernization.md](docs/legacy-modernization.md)

## Documentation And Wiki

- docs home: [docs/README.md](docs/README.md)
- feature map: [docs/feature-index.md](docs/feature-index.md)
- command map: [docs/command-index.md](docs/command-index.md)
- glossary: [docs/glossary.md](docs/glossary.md)
- wiki home: [wiki/Home.md](wiki/Home.md)
- what changed: [docs/whats-new.md](docs/whats-new.md)

## Major Capability Buckets

- planning and onboarding
- runtime adaptation and host compatibility
- goal mode and background mode
- approvals, checkpoints, and tool governance
- receipts, lineage, replay, and restore
- blind QA, briefed QA, evals, and regression follow-up
- controller/executor coordination
- business ideation and legacy modernization

## Core Workflow

Typical path:

`onboard -> spec -> plan -> execute -> review -> QA -> receipt -> follow-up`

Beginner default:

`orca-onboard -> orca-spec -> orca-plan -> orca-build -> orca-review`

Read:

- [docs/workflow.md](docs/workflow.md)
- [docs/first-workflow.md](docs/first-workflow.md)
- [docs/linear-workflow.md](docs/linear-workflow.md)
- [docs/use-case-map.md](docs/use-case-map.md)

## Install

```sh
git clone https://github.com/henryvn27/orca-hvn.git
cd orca-hvn
./scripts/validate-repo.sh
```

Local install into the current project:

```sh
./install/install.sh --mode local --target ./.orca-hvn
./install/verify-install.sh --target ./.orca-hvn
```

Global install:

```sh
./install/install.sh --mode global
./install/doctor.sh
```

## Docs-As-Code Maintenance

ORCA-HVN treats docs as part of the framework surface, not as a separate afterthought.

Read:

- [docs/docs-automation.md](docs/docs-automation.md)
- [docs/wiki-maintenance.md](docs/wiki-maintenance.md)
- [docs/staleness-detection.md](docs/staleness-detection.md)
- [docs/contributing-docs.md](docs/contributing-docs.md)

## Contributing

Use:

```sh
./scripts/validate-repo.sh
```

Then read:

- [CONTRIBUTING.md](CONTRIBUTING.md)
- [docs/contributing-docs.md](docs/contributing-docs.md)
- [docs/doc-owners.md](docs/doc-owners.md)

## Attribution And Upstreams

ORCA-HVN does not pretend it invented every underlying idea.

Read:

- [UPSTREAM.md](UPSTREAM.md)
- [docs/attribution.md](docs/attribution.md)
- [docs/provenance.md](docs/provenance.md)
- [docs/wraps-vs-borrows.md](docs/wraps-vs-borrows.md)
- [docs/licenses.md](docs/licenses.md)
