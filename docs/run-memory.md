# Run Memory

Run memory is HVN's compact continuation record for one issue, workstream, or coordinated agent run. It is the primary artifact a fresh agent reads before resuming non-trivial work, because it records what changed, what is known now, and what should happen next without replaying the full conversation.

Run memory is not a transcript. It is a maintained operational state file.

## What Run Memory Solves

Agent runs fail when important context lives only in a chat window, tool output, hidden assumptions, or one agent's working memory. Run memory makes the recoverable state explicit:

- the issue or workstream identity
- current objective and approved scope
- decisions already made
- assumptions currently being used
- blockers and failed attempts
- links to durable artifacts
- the next useful action for the next owner

A good run memory lets a competent fresh agent resume in under two minutes.

## Boundary With Other Context

Run memory has a specific job. Keep these boundaries clear.

| Artifact | Primary job | Run memory relationship |
| --- | --- | --- |
| Working context | Temporary facts inside the current agent session | Promote only facts needed after the session ends |
| Run memory | Current operational state of the run | Points to specs, plans, comments, PRs, builds, and reports |
| Spec | Defines desired behavior, acceptance criteria, and non-goals | Summarize the approved scope and link the spec |
| Plan | Defines the intended implementation sequence | Summarize the active phase and link the plan |
| Linear issue | System of record for coordination, status, comments, and ownership | Tie memory to the issue whenever possible |
| Long-term profile or preference memory | Stable user, product, writing, design, or process preferences | Reference only preferences that affect this run |

Do not use run memory to store everything the agent knows. Store what would be expensive, risky, or annoying to rediscover.

## Storage Model

The canonical local storage pattern is:

```text
.hvn/memory/
  runs/
    <workstream-id>__<short-slug>.md
    archive/
```

Use a workstream ID tied to the system of record:

- Linear issue: `LIN-123__checkout-error-handling.md`
- Linear project: `LINPROJ-growth-site__hero-redesign.md`
- GitHub issue opt-out: `GH-42__oauth-callback.md`
- Local opt-out task: `LOCAL-2026-05-31__pricing-copy.md`

If the memory must live in Linear, GitHub, Notion, or another durable tracker, use the same field model and link the canonical comment, page, or artifact from the issue.

## Required Fields

Every run memory should include:

- Run ID
- Product or repo
- Linear project, or opt-out equivalent
- Linear issue, or opt-out equivalent
- Objective
- Approved scope
- Current status
- Owner or agent role
- Updated at
- Decisions
- Assumptions
- Blockers
- Failed attempts
- Open questions
- Linked artifacts
- Next steps

Use `Unknown` only when the field matters and cannot be determined yet. Unknowns should become open questions or blockers.

## Record Types

### Raw Episodic Records

Raw episodic records are short timestamped entries that preserve provenance:

```text
2026-05-31T14:05:00-04:00 - Builder - Ran install smoke test. Failed because verify script did not check memory directory. Updating installer and verify script.
```

Use raw records for:

- failed attempts
- tool results that explain a future choice
- user corrections
- state transitions
- handoff claims from another agent

### Durable Context

Durable context is the current condensed state derived from the episodic record:

```text
Current status: Installer now creates `.hvn/memory/runs/archive`; verification checks the memory directory.
Next steps: Run validation and install smoke test after command docs are updated.
```

Use durable context for the top of the file. It should stay readable after many updates.

## Lifecycle

### Create

Create run memory when work is non-trivial, multi-step, delegated, likely to span sessions, or tied to a Linear issue. Create it before implementation once the issue or objective is clear enough to name.

Creation steps:

1. Identify the system of record and workstream ID.
2. Choose the canonical storage location.
3. Fill required fields from the issue, spec, plan, or user request.
4. Record unknowns as open questions.
5. Add the first timestamped entry with source and owner.

### Read

Read run memory before:

- discovery
- spec work
- planning
- build work
- review
- briefed QA
- ship checks
- retrospectives
- handoffs
- resumed interactive question flows

Blind QA is the exception. Do not give run memory to a blind first-look tester.

### Update

Update run memory when something changes the next agent's behavior:

- scope changes
- plan approval changes
- a phase completes
- a blocker appears or resolves
- a failed attempt rules out an approach
- a decision is made
- review or QA finds something actionable
- a regression candidate is identified
- ship readiness changes
- ownership changes
- a question flow pauses, resumes, or finishes with answers that change scope

Each update should answer: what changed, why it matters, and what happens next.

### Prune

Prune details that are:

- already captured in linked specs, plans, PRs, or reports
- easily re-derived from the current code
- stale because a later decision replaced them
- copied from logs without adding operational meaning
- too detailed for a fresh agent's first two minutes

Do not remove user corrections, blocker history, failed attempts, or decision provenance unless they have been intentionally archived.

### Compress

Compress when the memory becomes hard to scan. Keep:

- current state
- active decisions
- unresolved blockers
- failed attempts still relevant to future work
- links to archived detail
- a brief changelog of major transitions

Move old episodic records into an archive section or separate archived memory file when the current workstream no longer needs them.

### Version

Use a small schema marker near the top:

```text
Memory schema: HVN-RUN-MEMORY-v1
```

If the field model changes, increment the schema and add a migration note explaining what changed. Do not silently rewrite old memory in a way that removes provenance.

### Timestamp

Use ISO-like timestamps with timezone when possible:

```text
2026-05-31T14:05:00-04:00
```

Every additive episodic entry needs a timestamp and owner or agent role. Top-level `Updated at` should reflect the last meaningful update.

## What To Store

Store:

- decisions and their source
- assumptions that affect implementation or testing
- approved scope and explicit non-scope
- blockers and current owner
- failed approaches and why they failed
- corrections from users, reviewers, QA, or maintainers
- links to specs, plans, PRs, screenshots, builds, logs, comments, and reports
- next steps with clear owner
- regression candidates and QA implications
- question-flow state when an intake or clarification is paused

## What Not To Store

Do not store:

- secrets, credentials, tokens, cookies, private keys, or personal sensitive data
- giant transcripts
- raw tool output unless a short excerpt is essential
- dependency lists that can be regenerated instantly
- facts visible from one obvious file read
- speculative preferences that belong in a profile only after confirmation
- implementation details that belong in a PR description or code comment
- blind QA contamination context

Link instead of pasting. Summarize instead of dumping.

## Corrections

Treat corrections as first-class memory events. If a user, reviewer, or QA agent corrects the run:

1. Add a timestamped correction entry.
2. Update durable context so the old wrong assumption is no longer active.
3. Preserve the old assumption only if it explains a failed attempt or risk.
4. Link the source when available.

Example:

```text
2026-05-31T15:20:00-04:00 - User correction - Linear is optional for this product. Do not block local work on Linear auth; record sync notes for later.
```

## Multi-Agent Ownership

Each entry should name the role responsible for it:

- Planner
- Builder
- Reviewer
- Blind QA
- Context briefer
- Briefed QA
- Release
- User

When handing off, the sending agent should summarize what changed during its run and name the receiving role's next decision.

## Linear Integration

In Linear-first mode, every non-trivial run memory should map to a Linear issue whenever possible. The issue remains the coordination record; run memory is the compact continuation record. See `docs/run-memory-linear.md`.

If Linear is blocked, keep local memory under `.hvn/memory/runs/` and record the exact Linear project, issue, comment, and link updates that should be synced later.

## Cross-Harness Portability

Run memory is intentionally file-based so Claude Code, Codex CLI, OpenCode, Hermes Agent, and manual reviewers can inspect the same state.

Host session memory can help within one conversation, but it is not the HVN continuation artifact. Use:

```text
.hvn/memory/runs/<workstream-id>__<short-slug>.md
```

for all hosts. Adapters may reference this file from host-specific command, skill, or worker contexts, but the file format should remain host-agnostic.

## Blind QA Rule

Blind first-look QA must not receive run memory. After blind QA completes, summarize the blind findings into run memory so later agents can compare blind and briefed outcomes without editing the original blind report.

## Quality Bar

A run memory is acceptable when:

- a fresh agent can state the objective, scope, status, blockers, and next step in under two minutes
- every active blocker has an owner or next action
- every important decision has either a source or a timestamped entry
- linked artifacts are more prominent than copied material
- stale details have been compressed or pruned
- Linear or opt-out mapping is clear
