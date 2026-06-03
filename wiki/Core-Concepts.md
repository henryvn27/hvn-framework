# Core Concepts

ORCA is built around a few durable objects. These are the pieces that keep long agent sessions from turning into loose chat.

| Concept | Meaning |
| --- | --- |
| Spec | The user-visible contract for what will be built and what is out of scope. |
| Plan | The execution sequence, verification path, and stop conditions. |
| Receipt | The compact record of what changed, what passed, what failed, and what is next. |
| Handoff | A structured packet from one mode, thread, or agent to another. |
| Runtime status | Current workflow state, blockers, failing checks, and active step. |
| Paved road | The preferred path ORCA should recommend when the project shape is clear. |

## Operating Modes

- Goal mode handles long-running autonomous work with explicit stop conditions.
- Background mode handles bounded unattended progress.
- Explanation mode answers questions without mutating the repo.
- Side sessions keep supporting conversations separate from execution.
- Controller mode coordinates subagents and merges results back deliberately.

For full definitions, use `docs/glossary.md`.
