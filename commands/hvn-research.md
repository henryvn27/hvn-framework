# hvn-research

## Purpose

Gather evidence for decisions that depend on external facts, current APIs, platform behavior, or domain knowledge.

## When To Use

Use when a claim may be stale, contested, high-stakes, or outside the repo.

## Required Inputs

- Research question

## Optional Inputs

- Linear issue ID or opt-out work item
- Preferred sources
- Recency requirement
- Decision deadline

## Linear Context

- Expects: issue context, decision to support, constraints, and linked artifacts
- Reads: the uncertainty blocking spec, plan, security, or implementation
- Posts: research brief summary, citations, confidence, implication for next gate
- Trigger: `needs-research`, security-sensitive uncertainty, current API dependency
- Human approval: not required to research; required if findings change approved scope

## Opt-Out Context

Attach or summarize the research brief in the chosen record.

## Workflow

1. Use `hvn-research`.
2. Define the decision the research must support.
3. Consult primary or authoritative sources when possible.
4. Summarize findings, confidence, citations, and implications.
5. Sync the conclusion to the work item.

## Outputs And Artifacts

- `templates/research-brief.md`

## Failure Cases

- If sources conflict, report the conflict and confidence level.
- If evidence is unavailable, document the uncertainty.

## Related Commands And Skills

- Commands: `hvn-spec`, `hvn-plan`, `hvn-linear-sync`
- Skills: `hvn-research`, `hvn-linear-core`
