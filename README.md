# ORCA-HVN

<img src="assets/orca.png" alt="ORCA-HVN logo" width="220" />

ORCA is an orchestration framework for agent-assisted software work.
It exists because the hard part of AI coding is usually not "can the model write code at all?" It is getting from vague work to a clear spec, keeping execution inspectable, coordinating handoffs cleanly, and making sure review and QA actually happen.

ORCA stands for **Orchestration, Research, Context, and Action**.
That matches the framework's job: orchestrate work across agents and stages, do the research needed to reduce ambiguity, preserve the right context, and turn that into real action.

This README is the front door for getting ORCA set up, running your first real workflow, and understanding why the framework exists without reading the whole repo first.

The polished docs site is intended to live on GitHub Pages:

- `https://henryvn27.github.io/orca-hvn/`

## What ORCA Is For

ORCA is built for work like:

- turning vague product or repo work into a usable spec
- breaking large projects into reviewable phases
- keeping build, review, QA, blockers, and next steps tied to the same work item
- orchestrating subagents without losing ownership, evidence, or merge discipline
- adapting the workflow to Codex and Claude Code without pretending they behave the same way
- helping a first-time user learn the workflow without making experienced users sit through beginner ceremony

ORCA is not mainly:

- a prompt library
- a generic AI wrapper
- a bag of unrelated commands
- a tutorial-only layer users should outgrow later

## Why I Built It

I built ORCA because agent-assisted software work kept breaking at the workflow layer.
The recurring failures were not just bad model output. They were vague starts, missing specs, skipped QA, weak handoffs, hidden approvals, and no durable record of what actually happened.

ORCA is the answer I wanted for that:

- one clear default path
- stronger setup and onboarding
- inspectable artifacts and receipts
- better subagent orchestration
- host-aware behavior for Codex and Claude Code
- a system that can teach a new user while still being useful once they become advanced

It is also meant to replace the older GSD or GStack-centered workflow for this repo, not sit beside it as another overlapping layer.

## First-Time Setup

If you are new, use this order:

1. decide your setup path
2. install ORCA
3. verify the install
4. run one real workflow

Start with:

- [docs/install-overview.md](docs/install-overview.md)
- [docs/first-run.md](docs/first-run.md)
- [docs/first-workflow.md](docs/first-workflow.md)
- Pages docs home: `https://henryvn27.github.io/orca-hvn/`

## Try ORCA In One Prompt

If you want one fast proof of value, use a `/goal` demo prompt instead of learning the whole framework first.

The idea:

- answer a few short questions
- let ORCA choose a customized product direction
- have ORCA push it through spec, plan, build, and review until it is actually done

The prompt should not be tied to one fixed product.
Two different users should be able to get different outputs.

Use this through `orca-demo` or run it directly as a `/goal` prompt:

```text
Run the most autonomous ORCA mode possible to create one customized, impressive, finishable product for me with very little input.

Start by asking only a few high-leverage questions:
- who I am
- what I am interested in
- what kind of output sounds exciting or useful
- whether I care more about monetization, utility, portfolio value, or novelty
- whether I prefer an iOS app, web app, tool, workflow, or business

Then:
1. Choose the strongest product direction based on my answers.
2. Make sure it is simple enough to finish and specific enough that different users would not all get the same result.
3. Use ORCA as the workflow:
   - `orca-onboard -> orca-spec -> orca-plan -> orca-build -> orca-review`
4. Keep advancing without redundant questions.
5. Treat the chosen output as a real deliverable, not a brainstorm.
6. Keep going until it is complete, verified, documented, and ready for me to inspect or try.

Execution rules:
- optimize for very little input from me
- prefer a smaller finished thing over a bigger half-built thing
- stop only for destructive actions, production credential changes, billing or account changes, DNS changes, or truly product-defining decisions
- if a decision is reversible and low-risk, make it and continue
- do not stop at idea generation if the result can be executed

Definition of done:
- the output direction is chosen and justified
- ORCA artifacts exist for the work
- the product or business output is built to a real inspectable state
- verification has been run where appropriate
- remaining blockers, if any, are explicit and concrete
```

If you want the ORCA-native route instead of pasting the whole prompt, use `orca-demo`.

### Setup Questions

Before install, ORCA should help answer:

1. Are you just trying ORCA, using it in one repo, or setting up your default multi-project environment?
2. Which harness do you want to use first?
3. Do you need GitHub or Linear on day one?
4. Do you want the safest guided path or the shortest technical path?
5. What is the first real task you want ORCA to help with after install?
6. Do you want ORCA to mostly just act, explain briefly, or be more guided?
7. How technical can ORCA be with wording and assumptions?
8. How involved do you want to be once work starts: every step, major checkpoints, or mostly only blockers and completion?
9. Should ORCA recommend `/goal` or background execution for safe bounded work, or ask every time first?
10. Do you want ORCA to ask more questions up front or keep the first pass minimal?

If you do not know some of these yet, that is fine. ORCA should default to the smallest safe path.

### Fastest Safe Setup

```sh
git clone https://github.com/henryvn27/orca-hvn.git
cd orca-hvn
./scripts/validate-repo.sh
./install/install.sh --mode local --target ./.orca-hvn
export PATH="$(pwd)/.orca-hvn/bin:$PATH"
./install/verify-install.sh --target ./.orca-hvn
./install/doctor.sh --target ./.orca-hvn
```

That gives you:

- a local ORCA install in `./.orca-hvn`
- runnable `orca` and `orca-*` commands
- install verification and a broader doctor pass

If you want a different entry path:

- beginner install: [docs/install-for-beginners.md](docs/install-for-beginners.md)
- overwhelmed by Codex or Claude Code: [docs/guides/beginners-guide.md](docs/guides/beginners-guide.md)
- standard install: [docs/install.md](docs/install.md)
- technical install: [docs/install-for-technical-users.md](docs/install-for-technical-users.md)
- troubleshooting: [docs/install-troubleshooting.md](docs/install-troubleshooting.md)

## Core Features

These are the parts of ORCA that matter most:

- onboarding and spec-driven workflow
- milestone planning and phased execution
- subagent orchestration and worker handoffs
- review, QA, checkpoints, and approvals
- goal mode and background mode for bounded unattended work
- runtime adaptation for Codex and Claude Code
- official wrapped capability packs for Impeccable and Superpowers
- `orca-demo` for a low-input personalized showcase that turns into a real `/goal`
- adaptive guidance so a new user can improve without leaving the workflow

For the broader capability map, use [docs/feature-index.md](docs/feature-index.md).

## First Workflow

The default ORCA path is:

`orca-onboard -> orca-spec -> orca-plan -> orca-build -> orca-review`

What each step does:

- `orca-onboard`: clarify the work and capture the right setup and involvement preferences
- `orca-spec`: define goals, non-goals, requirements, and acceptance criteria
- `orca-plan`: break the work into milestone-sized phases
- `orca-build`: implement the approved phase
- `orca-review`: look for bugs, regressions, and obvious risks

This is both the teaching path and the real production path.
If you only learn one ORCA workflow at first, learn this one.

Read the walkthrough at [docs/first-workflow.md](docs/first-workflow.md).

## Orchestration Path

If the main job is coordinating agents instead of keeping all work in one thread, start with:

`orca-controller -> orca-orient -> orca-delegate -> orca-ingest -> orca-next`

That path is documented in [docs/agent-orchestration.md](docs/agent-orchestration.md).

## Codex And Claude Code

ORCA is currently focused on Codex and Claude Code.
It should use their native strengths when they help, but still preserve one stable ORCA workflow above host quirks.

## Official Capability Packs

ORCA officially includes two wrapped upstream capability packs:

- Impeccable for design-heavy frontend work
- Superpowers for execution-heavy coding workflow

These are part of the supported ORCA surface.
ORCA should route into them when they are the best fit, but it should not pretend they are homegrown ORCA features or maintain local forks of them.

Read:

- [docs/wrapped-capability-packs.md](docs/wrapped-capability-packs.md)
- [integrations/impeccable.md](integrations/impeccable.md)
- [integrations/superpowers.md](integrations/superpowers.md)

Good next docs:

- Codex host notes: [docs/hosts/codex-cli.md](docs/hosts/codex-cli.md)
- Claude Code host notes: [docs/hosts/claude-code.md](docs/hosts/claude-code.md)
- command routing: [docs/command-index.md](docs/command-index.md)
- choose your path: [docs/choose-your-path.md](docs/choose-your-path.md)

## About Henry

This repo is Henry's operating framework for how agent-assisted software work should actually run.
That includes setup, specs, orchestration, research, review, QA, release discipline, and continuous framework improvement.

The project bias is practical:

- reduce friction before adding capability
- keep the first path clear
- prefer inspectable work over clever hidden behavior
- keep ORCA useful for both first-time users and experienced operators

If you want the deeper model behind that, read [docs/intro.md](docs/intro.md), [docs/framework-differentiation.md](docs/framework-differentiation.md), and [docs/philosophy.md](docs/philosophy.md).

## Documentation Map

Use these next:

- Pages docs home: `https://henryvn27.github.io/orca-hvn/`
- first 10 minutes: [docs/first-10-minutes.md](docs/first-10-minutes.md)
- setup and first run: [docs/install-overview.md](docs/install-overview.md), [docs/first-run.md](docs/first-run.md), [docs/first-workflow.md](docs/first-workflow.md)
- one-prompt showcase: [commands/orca-demo.md](commands/orca-demo.md)
- docs home: [docs/README.md](docs/README.md)
- command map: [docs/command-index.md](docs/command-index.md)
- feature map: [docs/feature-index.md](docs/feature-index.md)
- overwhelmed beginner path: [docs/guides/beginners-guide.md](docs/guides/beginners-guide.md)
- orchestration path: [docs/agent-orchestration.md](docs/agent-orchestration.md)
- explanation and side-chat behavior: [docs/explanation-mode.md](docs/explanation-mode.md), [docs/side-sessions.md](docs/side-sessions.md)
- goal and background execution: [docs/guides/goal-mode-guide.md](docs/guides/goal-mode-guide.md), [docs/guides/background-mode-guide.md](docs/guides/background-mode-guide.md)
- proof and outcomes: [docs/proof.md](docs/proof.md)

## Inspiration And Upstreams

ORCA is informed by and interoperates with a number of upstream tools and ideas.
The important ones are:

- Codex CLI: [openai/codex](https://github.com/openai/codex)
- Claude Code: [Claude Code docs](https://code.claude.com/docs/en/overview)
- Linear: [linear.app](https://linear.app/)
- Spec Kit: [github/spec-kit](https://github.com/github/spec-kit)
- LLM Council: [karpathy/llm-council](https://github.com/karpathy/llm-council)
- Impeccable: [pbakaus/impeccable](https://github.com/pbakaus/impeccable)
- Superpowers: [obra/superpowers](https://github.com/obra/superpowers)

For the full attribution and relationship details, read [UPSTREAM.md](UPSTREAM.md) and [docs/attribution.md](docs/attribution.md).

## Contributing

Before changing the framework, run:

```sh
./scripts/validate-repo.sh
```

Then use:

- [CONTRIBUTING.md](CONTRIBUTING.md)
- [docs/contributing-docs.md](docs/contributing-docs.md)
- [docs/doc-owners.md](docs/doc-owners.md)

## License

- [LICENSE](LICENSE)
