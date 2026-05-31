# Hermes Agent Host Guide

This guide describes the conservative HVN integration model for Hermes Agent.

## Supported HVN Layers

- Portable `SKILL.md` skills
- Shared docs and templates
- File-based run memory
- Linear-first workflow when tools or connectors are configured
- Worker orchestration when Hermes is configured for it

## Install Locations

Recommended project layout:

```text
.hermes/
  skills/
  hvn/
```

Recommended user layout:

```text
~/.hermes/
  skills/
  hvn/
```

Run:

```sh
./install/install-hermes.sh --mode local
./install/verify-install.sh --target ./.hermes/hvn --host hermes
```

## Command Behavior

HVN commands are available as shared prompt files under the installed `hvn/commands/` directory. Hermes support should prefer skill invocation or orchestration prompts unless the local Hermes setup provides a command file mechanism.

## Skill Discovery

Hermes can use `SKILL.md`-compatible skills. HVN installs portable skills under the Hermes skill directory and keeps host-specific orchestration notes in `adapters/hermes/`.

## Orchestration

Hermes may orchestrate broader workflows, including delegating coding work to OpenCode-style workers when configured. HVN should remain independent of Hermes-only orchestration:

- keep specs, plans, run memory, and QA artifacts in shared formats
- pass only the required context to delegated workers
- record worker outputs back into run memory and the system of record
- avoid making a Hermes-only worker path required for core HVN behavior

## Question Flows

Question flows can run as skill-guided clarification rounds. Hermes owns any visible UI or orchestration shell.

## Run Memory

Use file-based memory:

```text
.hvn/memory/runs/<workstream-id>__<short-slug>.md
```

This keeps continuation portable even when Hermes coordinates multiple workers.

## Linear-First Workflow

Use direct Linear access when configured. If not configured, prepare sync notes and include Linear IDs in handoffs.

## QA Workflows

Hermes QA support depends on configured tools or delegated workers. Blind QA rules still apply: do not give hidden spec, plan, run memory, or implementation context to a blind tester.

## Caveats

- Do not assume every Hermes installation has OpenCode workers.
- Do not assume native command files unless the local Hermes configuration provides them.
- Keep HVN artifacts host-agnostic so other agents can resume work.
