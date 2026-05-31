# Background Mode Guide

Use this guide when work continues asynchronously, through handoffs, or across multiple agents and sessions.

## When To Use Background Mode

- The work is too large for a single session
- Different agents will continue the same workstream
- Continuity matters more than speed

## How It Works

Background mode relies on durable artifacts and run memory.
It is not just "come back later and hope the chat still makes sense."

## Recommended Flow

1. Initialize run memory early.
2. Record phase progress and blockers after meaningful changes.
3. Keep the latest spec and plan linked in memory.
4. Use bounded context packets for QA and delegated work.

## Common Pitfalls

- Letting memory become a transcript dump
- Resuming from stale assumptions instead of the latest artifacts
- Failing to record what changed before handing off

## Read Next

- [../run-memory.md](../run-memory.md)
- [../run-memory-maintenance.md](../run-memory-maintenance.md)
- [../run-memory-handoffs.md](../run-memory-handoffs.md)
- [../examples/background-mode-user-path.md](../examples/background-mode-user-path.md)
