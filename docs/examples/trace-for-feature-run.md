# Example Trace For Feature Run

## Run Identity

- Run ID: `trace-2026-05-30-feature-qa`
- Session ID: `local-thread-42`
- Harness: Codex
- Start time: 2026-05-30T14:05:00Z
- End time: 2026-05-30T14:31:00Z
- Elapsed time: 26m

## Work Identity

- Work item: `ORCA-118`
- Project: `ORCA Framework`
- Agent role: builder
- Command or skill: `orca-build`

## Context Read

- Durable artifacts: spec, plan comment, approval request, prior blind QA report
- External sources: none

## Major Steps

1. Read approved spec and plan.
2. Updated a docs command and template pair.
3. Ran repository validation and link checks.
4. Fixed one broken reference in the QA docs.

## Decisions

- Did not expand scope into install behavior because approval only covered docs and templates.
- Stopped after validation passed and ship evidence was sufficient for review.

## Retries And Failures

- First validation failed on a broken local link.
- Second validation passed after the docs fix.

## Stop Reason

- Approved scope complete and validation green.
