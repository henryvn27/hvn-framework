# Repo Archaeology

Repo archaeology is the discovery-heavy part of legacy modernization. It turns an inherited codebase into structured context before anyone tries to modernize it.

## Goals

- identify major modules
- extract key flows
- map dependencies
- isolate business rules
- find undocumented assumptions
- identify dead code or historical clutter carefully

## Process

1. Inventory entry points, scripts, services, packages, and docs.
2. Identify major modules and ownership boundaries.
3. Trace key user or system flows from entry point to persistence or output.
4. Map dependency and call chains around the target area.
5. Extract business rules and data assumptions.
6. Identify fragile areas and missing tests.
7. Record unknowns without filling them in by guesswork.

## Dead Code Caution

Do not delete suspected dead code based only on shallow search. Legacy systems often contain scheduled jobs, reflection, config-driven entry points, or customer-specific paths that are not obvious.

Before recommending removal, look for:

- runtime references
- configuration references
- cron or scheduler hooks
- migration or backfill usage
- feature flags
- historical support paths

## Output

Use [templates/legacy-audit.md](../templates/legacy-audit.md) and [templates/legacy-risk-report.md](../templates/legacy-risk-report.md).
