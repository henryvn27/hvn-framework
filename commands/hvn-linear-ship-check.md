# hvn-linear-ship-check

## Purpose

Post a ship-readiness checklist to Linear before an issue moves to done.

## When To Use

Use when an issue is in `Ready to Ship` or equivalent state.

## Required Inputs

- Linear issue ID
- Verification evidence
- Review and QA status

## Optional Inputs

- Release notes
- Rollback notes
- Follow-up issue links

## Linear Context

- Reads: issue thread, spec, plan, review comments, QA comments, linked PRs, release artifacts
- Posts: ship checklist, residual risks, done recommendation or blockers
- Trigger: `Ready to Ship`, `ready-to-ship`
- Human approval: required for release if team policy requires manual release ownership

## Workflow

1. Check required gates.
2. Confirm evidence is linked or summarized.
3. List known risks and rollback guidance.
4. Recommend `Done` only when evidence supports completion.

## Outputs And Artifacts

- Comment based on `templates/linear-ship-comment.md`

## Failure Cases

- If any required gate is missing, recommend the specific previous state.
- If release evidence is private or unavailable, mark the issue blocked.

## Related Commands And Skills

- Commands: `hvn-ship`, `hvn-retro`
- Skills: `hvn-linear-release`, `hvn-ship`
