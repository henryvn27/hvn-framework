# Run Memory

Run memory is the compact state record for one issue or workstream. It helps a fresh-context agent continue without rereading every comment, artifact, and tool log.

## Purpose

Run memory preserves the facts that are expensive to rediscover:

- Issue or project identity
- Current objective
- Approved scope
- Key decisions
- Assumptions
- Known risks
- Blocked questions
- Failed attempts
- Open next steps
- Linked artifacts
- Latest QA and review status

## How It Differs From Specs And Plans

A spec defines what should be true. A plan defines how work should proceed. Run memory records what has happened and what a new agent needs to know now.

Run memory should not replace the Linear issue, spec, plan, or review report. It is a concise continuation artifact.

## When To Update

Update run memory when:

- Onboarding clarifies scope.
- Spec or plan approval changes direction.
- Implementation completes a phase.
- A failed attempt changes the next approach.
- Review or QA finds a blocker.
- A blocker is resolved.
- Ship readiness changes.

## What Not To Store

Do not store secrets, credentials, private personal data, raw logs with sensitive content, or large transcripts. Link durable artifacts instead of pasting everything.

## Linear Integration

In Linear-first mode, run memory can be posted as a comment, linked artifact, or maintained in a project doc. Every memory update should reference the issue ID and latest gate.

If Linear is blocked, maintain `templates/run-memory.md` locally and record the exact comment or link to sync later.

## Fresh-Context Subagents

Before dispatching a fresh subagent, provide the run memory plus only the context needed for that role. Blind QA remains an exception: do not include run memory in blind first-look passes.
