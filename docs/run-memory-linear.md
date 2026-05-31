# Run Memory And Linear

HVN is Linear-first by default. Run memory should therefore map to Linear whenever the team uses Linear, while still remaining usable when Linear is unavailable or the user opts out.

## Responsibility Split

| Location | Responsibility |
| --- | --- |
| Linear project | Product initiative, ownership, priority, and cross-issue grouping |
| Linear issue | Source of coordination, current state, comments, approvals, and done evidence |
| Run memory | Compact continuation state for the current issue or workstream |
| Linked artifacts | Specs, plans, PRs, screenshots, builds, QA reports, review findings, and release notes |

The Linear issue is the coordination authority. Run memory is the resumption authority.

## Required Mapping

Every non-trivial run memory should include:

- Linear project name or ID
- Linear issue key or URL
- product or repository
- current Linear state when known
- latest sync timestamp
- links to relevant comments or artifacts

If the user opts out of Linear, replace those fields with the chosen system of record and state that Linear is not being used for the run.

## Issue Comments Versus Memory

Use Linear comments for:

- approvals
- human-readable status updates
- review and QA reports
- ship readiness evidence
- references to linked artifacts

Use run memory for:

- the current compact state
- what the next agent needs to know
- failed attempts and why they matter
- unresolved blockers and ownership
- handoff summaries
- pointers to the exact comments that matter

Do not paste the full run memory into every Linear comment. Post a concise status update and link the memory artifact when possible.

## Sync Cadence

Sync Linear when:

- memory is initialized
- scope or approval changes
- a blocker appears or resolves
- a phase completes
- QA or review changes ship readiness
- ownership changes
- the run is archived

The sync can be a comment, linked artifact, project doc update, or issue description update depending on the team's Linear conventions.

## Blocked Linear Fallback

If Linear access is blocked:

1. Continue local work only when the user has not asked you to stop.
2. Store memory in `.hvn/memory/runs/`.
3. Create or update `templates/linear-memory-sync.md`.
4. Record the exact Linear project, issue, comment, state change, and artifact links to sync later.
5. Mention the blocker in final summaries and handoffs.

Do not pretend Linear was updated.

## Cross-Harness Linear Access

Different hosts expose Linear differently:

- Claude Code may use a connector or MCP server when configured.
- Codex CLI may use a connector, MCP server, supplied issue text, or manual sync.
- OpenCode may use a connector, MCP server, CLI, or worker-provided issue context.
- Hermes Agent may use configured tools or delegate issue-related work to another agent.

The run memory behavior is the same in every case: keep the Linear ID, current sync status, and pending comment or state change visible.

## Spec Status In Memory

When Linear is the system of record, run memory should track:

- linked spec comment or artifact
- active spec version
- spec-check decision
- approval source
- current milestone
- pending spec revision when requirements change

## Linear Sync Comment Shape

Keep issue comments short:

```text
Run memory update:

- Status: Build phase complete; review found two regression candidates.
- Decisions: Keep existing auth callback route; do not rewrite auth provider.
- Blockers: Linear auth blocked for agent, local memory used for now.
- Next step: Reviewer retests callback error state after patch.
- Memory artifact: .hvn/memory/runs/LIN-123__auth-callback.md
```

## Multi-Issue Workstreams

If one run spans multiple issues:

- keep one primary memory for the parent project or coordinating issue
- list child issues under linked artifacts
- record which issue owns each blocker or next step
- avoid duplicating separate issue memories unless agents truly work independently

## Summaries And Handoffs

Final summaries should include Linear identifiers when available:

- Linear project
- Linear issue
- memory path or link
- latest sync status
- next owner

If Linear is blocked, include the pending sync note path and the exact update to post.
