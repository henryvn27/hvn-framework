# When To Use Subagents

Subagents are useful only when there is a real boundary or leverage point.

## Good Reasons

Use subagents when there is:

- specialist knowledge boundary
- different tool or permission boundary
- reusable service-like capability
- parallelizable independent work
- a large task that would pollute the parent context
- maker-checker validation need
- long-running background work
- an isolated implementation or research branch

## Bad Reasons

Avoid subagents when:

- one agent can do the work cleanly
- the subtask is tiny
- the overhead outweighs the benefit
- the split would add latency or confusion without quality gains

## Rule

Do not create a separate agent for every subtask.

Prefer single-agent execution unless delegation clearly improves quality, speed, isolation, or reliability.
