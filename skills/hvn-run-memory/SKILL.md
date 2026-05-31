---
name: hvn-run-memory
description: Initialize, read, update, compress, and hand off compact run memory for HVN workstreams.
---

# HVN Run Memory

## Purpose

Maintain the compact continuation record for one issue, project workstream, or coordinated agent run. Run memory lets a fresh agent resume without inheriting a full chat transcript or guessing which facts are still active.

## Triggers

Use this skill when:

- non-trivial work starts
- a Linear issue or opt-out work item is created or selected
- a workstream crosses sessions or agents
- discovery changes scope or risk
- spec or plan approval changes direction
- implementation completes a meaningful phase
- a failed attempt changes the next approach
- review or QA finds an actionable issue
- a blocker appears or resolves
- ownership changes between planner, builder, reviewer, QA, or release roles
- ship readiness or rollback guidance changes
- a retrospective needs durable lessons from a run

## Non-Triggers

Do not use this skill for:

- trivial one-step requests with no durable workstream
- blind first-look QA input packets
- copying large transcripts into a memory file
- storing secrets, credentials, tokens, or private personal data
- replacing the spec, plan, Linear issue, or long-term profile memory

Blind QA output can update run memory after the blind pass is complete.

## Inputs

Required:

- workstream identity or task description
- product or repository name
- current objective
- current status
- owner or agent role

Preferred:

- Linear project ID or name
- Linear issue ID
- opt-out system of record if Linear is not used
- approved scope and approval source
- latest spec and plan links
- current branch, PR, build, screenshots, logs, or deploy links
- review, QA, regression, or ship artifacts
- known blockers, failed attempts, and open questions

## Outputs

Produce one or more of:

- initialized run memory using `templates/run-memory.md`
- concise memory update
- read summary for a resuming agent
- handoff summary for another role
- Linear sync note using `templates/linear-memory-sync.md`
- compression or archive note

## Workflow

### 1. Locate Or Create Memory

Prefer the canonical local path:

```text
.hvn/memory/runs/<workstream-id>__<short-slug>.md
```

In Linear-first mode, tie the memory to a Linear issue whenever possible. In opt-out mode, tie it to the declared tracker, GitHub issue, project doc, or local artifact.

If no memory exists and the work is non-trivial, initialize one before implementation.

### 2. Read For Active State

Extract:

- objective
- approved scope
- current status
- active decisions
- live assumptions
- unresolved blockers
- failed attempts still relevant
- open questions
- linked artifacts
- next steps

Ignore stale or archived entries unless they explain current risk.

### 3. Update Durable Context

Revise top-level state so the file remains immediately useful. Update `Updated at`, status, blockers, open questions, linked artifacts, and next steps.

Keep the durable summary concise. Prefer links over pasted source material.

### 4. Add Episodic Entries When Provenance Matters

Add timestamped records for:

- user corrections
- decisions
- failed attempts
- blocker changes
- handoffs
- QA or review findings
- sync failures

Each entry should include timestamp, owner or role, what changed, why it matters, and the operational implication.

### 5. Handle Corrections

When a user or reviewer corrects memory:

1. Mark the correction in the episodic log.
2. Update durable context so the corrected fact is active.
3. Keep the previous mistaken assumption only if it explains a decision, failed attempt, or risk.
4. Link the correction source when possible.

### 6. Support Multi-Agent Ownership

Every handoff should identify:

- sending role
- receiving role
- work completed
- decisions made
- blockers and failed attempts
- artifacts to read
- exact next step

When merging two memories, preserve both provenance logs, then write a single durable summary that resolves conflicts explicitly.

### 7. Compress Or Prune

Compress when the file becomes hard to scan. Keep current state and unresolved risk. Move old episodic detail into an archive section or archive file when it is no longer needed for active execution.

Prune facts that are easily re-derived, duplicated in linked artifacts, or superseded. Do not prune active blockers, corrections, decision provenance, or security-sensitive warnings without replacing them with a clear summary.

### 8. Sync With Linear

When Linear is available, add or update a concise issue comment that points to the canonical memory and summarizes the latest state. When Linear is blocked, create a local sync note listing the exact project, issue, comment content, and artifact links to post later.

## Quality Bar

The memory is good when:

- a fresh agent can resume in under two minutes
- the next step is concrete and owned
- current state is not buried below old logs
- decisions have timestamp, owner, or source
- blockers state what is needed to unblock
- failed attempts explain why the next agent should avoid repeating them
- blind QA has not been contaminated
- no secrets or raw transcript dumps are present

## Failure Modes

- Memory becomes a giant transcript.
- The spec or plan is duplicated instead of linked.
- The file is updated additively but the top-level current status stays stale.
- Failed attempts are omitted, causing repeated work.
- User corrections are overwritten without provenance.
- Linear comments and memory diverge with no sync note.
- Blind QA receives hidden implementation context.
- Multiple agents update separate memories without a merge or handoff.

## Related Commands

- `hvn-memory`
- `hvn-memory-init`
- `hvn-memory-read`
- `hvn-memory-update`
- `hvn-linear-sync`
- `hvn-context-brief`
- `hvn-delta`
- `hvn-regression`
