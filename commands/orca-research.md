# orca-research

## Purpose

Gather evidence for decisions that depend on external facts, current APIs, platform behavior, or domain knowledge.

## When To Use

Use when a claim may be stale, contested, high-stakes, or outside the repo.

If the user has provided a vault or live knowledge base for the question, treat that as the primary workflow evidence source before falling back to generic outside guidance.

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

1. Use `orca-research`.
2. Define the decision the research must support.
3. Check whether the user provided a vault or other live knowledge base that should outrank generic advice.
4. Consult primary or authoritative external sources when needed.
5. Mark any extrapolation clearly if the vault or local evidence is weak.
6. Summarize findings, confidence, citations, and implications.
7. Sync the conclusion to the work item.

## Outputs And Artifacts

- `templates/research-brief.md`

## Failure Cases

- If sources conflict, report the conflict and confidence level.
- If evidence is unavailable, document the uncertainty.
- If vault evidence is thin, say so explicitly before falling back to generic guidance.

## Related Commands And Skills

- Commands: `orca-spec`, `orca-plan`, `orca-linear-sync`
- Skills: `orca-research`, `orca-linear-core`
