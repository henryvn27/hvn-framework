# Run Memory Maintenance

Run memory should stay small, accurate, and operational. Maintenance prevents it from becoming a transcript, stale plan, or dumping ground.

## Maintenance Triggers

Maintain memory when:

- the file becomes hard to scan
- a workstream crosses major phases
- issue ownership changes
- scope is revised
- blocked work resumes after a gap
- a release ships
- a run is abandoned or archived
- two memories conflict

## Compression

Compress old episodic entries into a current summary when they no longer need line-by-line detail.

Keep:

- current objective
- active approved scope
- current status
- live blockers
- unresolved questions
- still-relevant failed attempts
- active decisions
- next steps
- links to archived detail

Move old detail into:

```text
.hvn/memory/runs/archive/
```

or an archive section at the bottom of the same memory file.

## Pruning

Prune:

- raw logs copied without interpretation
- long transcripts
- facts obvious from linked files
- outdated implementation notes
- duplicated spec or plan text
- stale questions that were answered and no longer matter

Do not prune:

- user corrections
- active blockers
- failed attempts that prevent repeated work
- decision provenance
- security or privacy warnings
- Linear sync failures that are still unresolved

## Corrections

Corrections need provenance. When replacing a wrong fact:

1. Add a correction entry to the episodic log.
2. Update the durable current state.
3. Mark the previous fact as superseded if it still matters.
4. Link the correction source when available.

Never silently rewrite memory in a way that makes a past decision look unsupported.

## Archive Criteria

Archive a run when:

- the issue is done and evidence is linked
- the workstream is canceled
- ownership moves to a different issue or project
- the memory only matters as historical context

Archived memory should keep:

- final status
- final artifact links
- unresolved follow-ups, if any
- release or rollback notes
- retrospective notes

## Runaway Bloat Checks

Before adding more text, ask:

- Can this be linked instead?
- Is this already in the spec, plan, PR, QA report, or Linear comment?
- Will a fresh agent need this in the first two minutes?
- Is this a current fact or just historical detail?
- Does this belong in a long-term profile instead?

If the answer is no, compress or omit it.

## Version Maintenance

Keep the schema marker visible:

```text
Memory schema: HVN-RUN-MEMORY-v1
```

When changing schemas, add a migration note:

```text
2026-05-31T16:00:00-04:00 - Maintainer - Migrated memory from v1 to v2 by adding explicit QA context fields. No decision history removed.
```

## Health Check

A maintained memory should answer:

- What is this run?
- What is approved?
- What is done?
- What is blocked?
- What failed already?
- What should happen next?
- Where are the durable artifacts?
- Who owns the next step?
