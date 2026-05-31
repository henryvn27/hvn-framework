# Start Here

This page is the best first stop if you are new to HVN.

## What HVN Is

HVN is a framework for running product and engineering work with agents in a structured way.
It gives you a shared workflow, reusable commands and skills, durable artifacts, and host adapters so the same working model can travel across Claude Code, Codex CLI, OpenCode, and Hermes Agent.

## What Problem It Solves

HVN is designed for the failures that show up in real agent work:

- vague requests that become vague code
- missing specs and unclear acceptance criteria
- inconsistent handoffs between agents
- hidden assumptions in QA
- weak routing through a large tool surface
- no durable record of why something changed

## The Short Reading Order

1. Read [intro.md](intro.md) for the mental model.
2. Read [quickstart.md](quickstart.md) for the shortest path to first value.
3. Use [choose-your-path.md](choose-your-path.md) to pick the guide that fits your situation.
4. Use [feature-index.md](feature-index.md) and [command-index.md](command-index.md) when you need exact routing.

## Start Paths

- I want to try HVN locally:
  - [quickstart.md](quickstart.md)
  - [../INSTALL.md](../INSTALL.md)
- I use Codex:
  - [guides/using-hvn-with-codex.md](guides/using-hvn-with-codex.md)
- I use Hermes:
  - [guides/using-hvn-with-hermes.md](guides/using-hvn-with-hermes.md)
- I want the workflow model first:
  - [workflow.md](workflow.md)
  - [architecture.md](architecture.md)
- I am contributing to HVN:
  - [contributing-docs.md](contributing-docs.md)
  - [doc-owners.md](doc-owners.md)

## A Good First Session

The simplest useful first session is:

1. Install HVN for your current host or as a shared local install.
2. Run a small, non-trivial task through `hvn-help`, `hvn-onboard`, or `hvn-spec`.
3. Read the resulting artifacts and compare the workflow to your current agent habits.

That gives you first value without requiring a full team rollout.
