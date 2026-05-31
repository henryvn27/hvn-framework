# Quickstart

This guide gets a new user from clone to first useful workflow with minimal reading.

## 1. Install

For a deterministic shared local install:

```sh
./install/install.sh --host shared --mode local --yes
./install/verify-install.sh --target ./.hvn --host shared --smoke
```

If you want host-native placement, use the host-specific install examples from [examples/install-local-vs-global.md](examples/install-local-vs-global.md).

## 2. Read The Minimum

Read these in order:

1. [intro.md](intro.md)
2. [start-here.md](start-here.md)
3. [choose-your-path.md](choose-your-path.md)

## 3. Run A First Workflow

Choose one:

- Want routing help: `hvn-help`
- Have a fuzzy request: `hvn-onboard`
- Need a spec from a clear request: `hvn-spec`
- Need to decide whether a feature belongs in scope: `hvn-question-flow`

## 4. Learn The Durable Artifacts

HVN becomes useful when you understand what it preserves:

- work item in Linear or an opt-out record
- spec
- plan
- run memory
- QA findings
- review findings

Read [workflow.md](workflow.md) if you want the lifecycle after the first run.

## 5. Pick Your Path

- Codex: [guides/using-hvn-with-codex.md](guides/using-hvn-with-codex.md)
- Hermes: [guides/using-hvn-with-hermes.md](guides/using-hvn-with-hermes.md)
- Goal-driven project work: [guides/goal-mode-guide.md](guides/goal-mode-guide.md)
- Background or delegated work: [guides/background-mode-guide.md](guides/background-mode-guide.md)
- Startup ideation: [guides/business-ideation-guide.md](guides/business-ideation-guide.md)
