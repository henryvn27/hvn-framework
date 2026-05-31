# ORCA-HVN

<img src="assets/orca.png" alt="ORCA-HVN logo" width="220" />

ORCA is an orchestration framework for running agent-assisted software work with a clear workflow, durable artifacts, and host-aware execution paths. The formal repository and framework name is ORCA-HVN.

ORCA is grounded in recurring real work, not in a generic AI-framework story: shipping iOS/macOS apps and web projects, turning research into staged decisions, tracking blockers and release follow-up, and coordinating agents without losing state.

ORCA exists for the part that usually breaks first in AI-assisted development: turning vague work into a reliable process that can be reviewed, resumed, and improved over time.

## What ORCA Helps With

Use ORCA when you need more than "ask a model to do something":

- turn a vague request into a clear work item
- write a usable spec before implementation
- plan and run multi-step work without losing context
- keep review, QA, approvals, blockers, and follow-up tied to the same effort
- turn research and notes into staged, promotable work instead of a pile of unprocessed context
- reuse an approved corpus or vault across sessions without making it ambient or writeable by default
- try the strongest safe path to resolution before falling back to user escalation
- adapt the workflow to different hosts, tools, and integrations without pretending they are identical
- onboard new users into a practical agent workflow without requiring a teammate to teach them live

## What It Is Grounded In

The project’s center of gravity is visible in the operating context it was built around:

- release and delivery work for real apps, including TestFlight, App Review, and deployment follow-up
- research capture that gets staged, promoted, or parked based on actual lane relevance
- explicit blocker tracking, next actions, and stale-work cleanup instead of vague backlog drift
- mixed repo, vault, and runtime environments where the source of truth is rarely just one chat thread

That is why ORCA leans so hard on artifacts, receipts, review surfaces, and routing instead of just prompts.

## Who It Is For

- engineers using agentic coding tools like Codex, Claude Code, Hermes, or similar hosts
- operators who want inspectable runs instead of opaque prompt sessions
- teams that want repeatable workflow structure around AI-assisted software delivery
- contributors working in real product repos, legacy systems, release queues, or mixed human-agent environments
- curious newcomers who want one guided path into orchestration instead of a giant command catalog

## Core Capabilities

ORCA is broad, but its center of gravity is consistent:

- Intake and planning: onboarding, discovery, spec-driven execution, milestone planning, and guided next steps
- Execution and coordination: build flow, goal mode, background mode, delegation, and shared state
- Inspection and safety: approvals, checkpoints, receipts, lineage, replay, restore, and review surfaces
- Runtime and compatibility: host-aware behavior, install and setup guidance, integration routing, corpus and vault reuse, and compatibility docs
- QA and improvement: blind QA, briefed QA, adaptive help, and framework improvement loops

Most supporting systems in the repo exist to reinforce those five areas, not replace them.

## Quickstart

If you are new, do not start by reading every feature doc.

1. Read [docs/start-here.md](docs/start-here.md).
2. Read [docs/install-overview.md](docs/install-overview.md) if you need setup help.
3. Follow [docs/first-workflow.md](docs/first-workflow.md).

Fast install path:

```sh
git clone https://github.com/henryvn27/orca-hvn.git
cd orca-hvn
./install/install.sh --mode local --target ./.orca-hvn
./install/verify-install.sh --target ./.orca-hvn
./install/doctor.sh --target ./.orca-hvn
```

If you want more handholding:

- beginner install path: [docs/install-for-beginners.md](docs/install-for-beginners.md)
- technical install path: [docs/install-for-technical-users.md](docs/install-for-technical-users.md)
- troubleshooting: [docs/install-troubleshooting.md](docs/install-troubleshooting.md)

## First Workflow

The default ORCA path is:

`orca-onboard -> orca-spec -> orca-plan -> orca-build -> orca-review`

This is the best first real workflow because it teaches the framework while still being a production path, not a toy tutorial.

Read:

- [docs/first-workflow.md](docs/first-workflow.md)
- [docs/workflow.md](docs/workflow.md)
- [docs/use-case-map.md](docs/use-case-map.md)

## Documentation Map

Use the top-level docs as routing, not as one giant manual:

- Start here: [docs/start-here.md](docs/start-here.md)
- Docs home: [docs/README.md](docs/README.md)
- Install and setup: [docs/install.md](docs/install.md)
- Feature map: [docs/feature-index.md](docs/feature-index.md)
- Command map: [docs/command-index.md](docs/command-index.md)
- Beginner and common paths: [docs/choose-your-path.md](docs/choose-your-path.md)
- Glossary: [docs/glossary.md](docs/glossary.md)
- Contribution and maintenance: [CONTRIBUTING.md](CONTRIBUTING.md)

## Common Next Paths

- I need install help: [docs/install-overview.md](docs/install-overview.md)
- I want the shortest starter path: [docs/first-workflow.md](docs/first-workflow.md)
- I want the big-picture model: [docs/intro.md](docs/intro.md)
- I want to configure a reusable vault or corpus: [docs/corpus-overview.md](docs/corpus-overview.md)
- I use a controller agent like Hermes: [docs/guides/using-hvn-with-hermes.md](docs/guides/using-hvn-with-hermes.md)
- I inherited a messy repo: [docs/legacy-modernization.md](docs/legacy-modernization.md)
- I want startup or idea-first work: [docs/guides/business-ideation-guide.md](docs/guides/business-ideation-guide.md)
- I want the full docs map: [docs/README.md](docs/README.md)

## Advanced Areas

These are important, but they are not the README’s center:

- orchestration patterns and controller or worker coordination
- integrations, plugins, and harness-specific setup
- self-improvement and session-quality signals
- update channels, rollback, and release safety
- persistent corpus support, vault reuse, or graph-assisted knowledge workflows

Those all have dedicated docs under [docs/README.md](docs/README.md).

## Contributing And Development

Before opening a PR or changing the framework, run:

```sh
./scripts/validate-repo.sh
```

Then read:

- [CONTRIBUTING.md](CONTRIBUTING.md)
- [docs/contributing-docs.md](docs/contributing-docs.md)
- [docs/doc-owners.md](docs/doc-owners.md)

## License And Attribution

- license: [LICENSE](LICENSE)
- upstreams and inspirations: [UPSTREAM.md](UPSTREAM.md)
- provenance and attribution: [docs/attribution.md](docs/attribution.md)
