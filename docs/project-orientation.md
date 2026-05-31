# Project Orientation

Project orientation is the fast-entry layer for a controller agent entering an ORCA-HVN repository.

## Purpose

Orientation should answer:

- where am I
- what is active
- what artifacts already exist
- what is missing
- what is blocked
- what should happen next

## Orientation Surface

Use:

- [HVN-STATUS.md](../HVN-STATUS.md) as the first quick-read file
- [templates/project-orientation.md](../templates/project-orientation.md) for a structured orientation artifact
- `orca-orient` when a current project snapshot should be produced or refreshed

If the user provides a vault or other live knowledge base for the project, treat that as a primary orientation input for workflow reality. Do not replace it with generic assumptions.

If the vault is large or fragmented, optional graph-style analysis may help a controller understand project clusters faster. Use it only when the added clarity justifies the extra step.
Orientation should start with the smallest useful pass. Do not make repository entry depend on optional tooling if direct inspection already answers the question.
If repo orientation confusion is recurring, ORCA-HVN may later offer one small context-engineering hint rather than a larger lecture.

## Good Orientation Shape

A good orientation artifact is:

- short enough to scan quickly
- structured enough for another agent to parse reliably
- explicit about missing information
- linked to deeper artifacts instead of repeating them

## Recommended Read Order

For a controller agent:

1. `HVN-STATUS.md`
2. runtime status or inspection artifact if present
3. current spec, plan, or goal contract
4. latest receipt or trace if the active run is mid-flight

## Relationship To Other Artifacts

Orientation does not replace:

- run memory
- shared state
- receipts
- traces
- approvals

It is the entry summary that points to them.

Optional knowledge surfaces such as NotebookLM can support orientation for research-heavy projects, but they do not replace the ORCA-HVN orientation artifact or the canonical project state.
