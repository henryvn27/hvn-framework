# orca-ingest

## Purpose

Ingest a structured executor result back into ORCA-HVN.

## When To Use

Use after delegated work returns from Codex, Claude Code, another harness, or a human collaborator.

## Required Inputs

- delegation result

## Optional Inputs

- linked receipt
- linked trace
- required approval or QA context

## Workflow

1. Read the delegation result and linked evidence.
2. Confirm what changed and what artifacts were produced.
3. Record unresolved items, approval needs, and QA needs.
4. Emit the ingestion artifact and next-step recommendation.

## Outputs And Artifacts

- `templates/result-ingestion.md`

## Related Commands And Skills

- Commands: `orca-receipt`, `orca-lineage`, `orca-next`, `orca-approve`
- Skills: `orca-controller-mode`, `orca-delegation`
