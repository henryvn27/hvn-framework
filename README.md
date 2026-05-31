# ORCA-HVN

<img src="assets/orca.png" alt="ORCA-HVN logo" width="220" />

ORCA-HVN is a framework for running agent-assisted software work with durable workflow structure, host-aware execution paths, QA discipline, and inspectable artifacts. It is Linear-first by default, but it can map the same workflow to another system of record when needed.

## What It Is

Use ORCA-HVN when the hard part is not "generate code," but:

- turning vague work into a usable spec
- keeping agent runs reviewable and resumable
- coordinating controller and executor agents cleanly
- adapting to different harnesses and integration setups
- preserving QA, approvals, receipts, and follow-up artifacts around the same work

## Who It Is For

- engineers using Codex, Claude Code, Hermes, or similar agentic coding hosts
- teams that want workflow discipline around AI-assisted software delivery
- operators who need inspectable runs instead of opaque prompt sessions
- founders who need idea validation before a roadmap or build sprint
- maintainers working in legacy or under-documented repos

## What Makes It Different

ORCA-HVN is not only a prompt or command pack. It combines:

- onboarding and spec-driven execution
- goal mode and background mode for bounded long-running work
- controller and executor integration
- host-aware runtime adaptation and compatibility guidance
- checkpoints, approvals, receipts, lineage, replay, and restore
- blind QA, briefed QA, and regression capture
- paved-road workflows for common use cases
- a session-end improvement loop that turns real friction into framework backlog work

## Start Here

If you are new:

1. [docs/start-here.md](docs/start-here.md)
2. [docs/quickstart.md](docs/quickstart.md)
3. [docs/choose-your-path.md](docs/choose-your-path.md)
4. one guide such as [docs/guides/using-hvn-with-gstack.md](docs/guides/using-hvn-with-gstack.md)

## Where To Begin By Use Case

- I want the fastest setup: [docs/quickstart.md](docs/quickstart.md)
- I need the big picture: [docs/intro.md](docs/intro.md)
- I use gstack: [docs/guides/using-hvn-with-gstack.md](docs/guides/using-hvn-with-gstack.md)
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

Read:

- [docs/workflow.md](docs/workflow.md)
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
