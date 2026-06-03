---
name: orca-controller-mode
description: Orient a controller agent to project state, choose a path, and keep delegation and ingestion coherent across harnesses.
---

# ORCA Framework Controller Mode

## What This Skill Is

A repository-first operating mode for controller agents that need to enter a project, understand current state quickly, and route work safely.

## Trigger

Use when an external controller agent is entering the repo, checking project state, deciding whether to delegate, or resuming a multi-harness workflow.

## Required Inputs

- repository state
- current work item or active artifact set when available

## Exact Workflow

1. Read `HVN-STATUS.md`.
2. Read the latest orientation, status, receipt, or inspection artifacts.
3. Identify the active phase, missing artifacts, blockers, and next likely move.
4. Decide whether to execute directly or delegate.
5. If delegating, produce a bounded delegation brief.
6. If receiving results, ingest them through the structured ingestion model.

## Expected Outputs

- orientation summary
- delegation decision
- next-step recommendation

## Quality Bar

A controller should leave the repo easier to understand than it found it.

## Common Failure Modes

- skipping orientation and acting on stale assumptions
- delegating without a bounded brief
- ingesting results without checking evidence
