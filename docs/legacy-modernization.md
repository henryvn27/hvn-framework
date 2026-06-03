# Legacy Modernization

ORCA Framework legacy modernization is a cautious workflow for inherited, messy, older, or under-documented systems. The goal is staged understanding and safe change, not one-shot rewrites.

## Purpose

Use the legacy modernization workflow to:

- reverse-engineer old codebases
- extract business logic
- build AI-digestible context
- identify dependency and call chains
- create modernization specs
- plan safe incremental change
- use tests, specs, and regression tasks as the migration safety net

## Staged Workflow

1. Repo archaeology and reverse engineering
2. Enrichment and documentation
3. Dependency and call-chain mapping
4. Business logic hotspot identification
5. Risk analysis
6. Modernization spec creation
7. Phased migration planning
8. Verification and regression protection

## Operating Rules

- Read and map before rewriting.
- Extract observed behavior before changing it.
- Treat missing documentation as a risk, not as permission to guess.
- Preserve business rules even when the surrounding implementation is obsolete.
- Prefer small modernization slices with clear rollback.
- Use tests and regression tasks to protect behavior before migration.

## Core Artifacts

- [templates/legacy-audit.md](../templates/legacy-audit.md)
- [templates/legacy-risk-report.md](../templates/legacy-risk-report.md)
- [templates/modernization-spec.md](../templates/modernization-spec.md)

## Relationship To ORCA Framework

Legacy modernization extends the normal ORCA Framework lifecycle:

- `orca-discover` inspects the system
- `orca-legacy` performs deeper archaeology and risk analysis
- `orca-spec` or `orca-legacy` creates the modernization spec
- `orca-plan` phases the migration
- `orca-regression-task` preserves critical behavior
- QA and review validate each small slice

## Modernization Slice Guidance

A good first slice is:

- important enough to matter
- small enough to validate
- isolated enough to roll back
- covered by tests, regression tasks, or manually reproducible behavior

Avoid starting with broad rewrites, sweeping dependency upgrades, or architecture pivots unless the existing system is already blocked and the risks are documented.
