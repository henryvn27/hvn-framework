# Commands

Commands are installable prompt definitions stored in `commands/`. Each command has a consistent shape:

- Purpose
- When to use
- Required inputs
- Optional inputs
- Linear context or opt-out equivalent
- Workflow
- Outputs and artifacts
- Failure cases
- Related commands and skills

## Linear Commands

- `orca-linear-setup`
- `orca-linear-intake`
- `orca-linear-sync`
- `orca-linear-plan-comment`
- `orca-linear-qa-report`
- `orca-linear-ship-check`

These commands read from and post back to Linear issues when Linear-first mode is active. In opt-out mode, they can be adapted to the chosen system of record.

## Core Commands

- `orca-help`
- `orca-docs`
- `orca-background`
- `orca-keep-going`
- `orca-background-status`
- `orca-attribution`
- `orca-idea`
- `orca-evaluate-idea`
- `orca-plan-idea`
- `orca-validate-idea`
- `orca-onboard`
- `orca-discover`
- `orca-legacy`
- `orca-research`
- `orca-setup`
- `orca-check-setup`
- `orca-validate-integration`
- `orca-runtime`
- `orca-status`
- `orca-controller`
- `orca-orient`
- `orca-schema`
- `orca-spec`
- `orca-plan`
- `orca-next`
- `orca-goal`
- `orca-goal-create`
- `orca-goal-status`
- `orca-goal-review`
- `orca-delegate`
- `orca-build`
- `orca-trace`
- `orca-receipt`
- `orca-lineage`
- `orca-state`
- `orca-metrics`
- `orca-ingest`
- `orca-checkpoint`
- `orca-inspect`
- `orca-benchmark`
- `orca-eval`
- `orca-improve-framework`
- `orca-replay`
- `orca-restore`
- `orca-validate-schema`
- `orca-approve`
- `orca-review`
- `orca-design`
- `orca-test-blind`
- `orca-test-briefed`
- `orca-test-regression`
- `orca-regression-task`
- `orca-security`
- `orca-security-check`
- `orca-tool-review`
- `orca-mcp-review`
- `orca-ship`
- `orca-retro`

## Command Triggering

Linear state, labels, comments, and agent delegation should trigger command selection. Example:

- `needs-spec` triggers `orca-spec`.
- `Spec Ready` triggers `orca-linear-plan-comment`.
- `Ready for Build` triggers `orca-build` after `orca-approve` when approval is required.
- `In QA` plus `blind-qa` triggers `orca-test-blind`.
- `Ready to Ship` triggers `orca-linear-ship-check`.

Use `orca-trace` and `orca-eval` when the workflow itself needs review, not just the product artifact.
Use `orca-improve-framework` at the end of meaningful sessions when reusable ORCA-HVN friction or strong session-quality signals may deserve a framework issue or backlog entry.
Use `orca-docs` when a user needs a docs entry point, a doc refresh plan, or a docs routing answer after the framework surface changes.
Use `orca-background` when unattended progress needs an explicit contract before the run starts.
Use `orca-keep-going` when the user wants bounded autonomous progress on the current task, milestone, or goal.
Use `orca-background-status` when the user needs the latest unattended-run state, blockers, or resume recommendation.
Use `orca-attribution` when upstream influence, wrapping relationships, provenance, or notice handling need to be documented clearly.
Use `orca-idea` when the user has a raw business or startup opportunity and needs a one-pager before product planning.
Use `orca-evaluate-idea` when the user wants candid pressure testing across founder, problem, market, competition, and evidence lenses.
Use `orca-plan-idea` when a surviving idea needs an opportunity memo, decision, and bridge to later spec work.
Use `orca-validate-idea` when the next question should become a concrete experiment instead of another brainstorm.
Use `orca-receipt` after meaningful runs that should be reviewable without reading the full trace.
Use `orca-lineage` when artifacts need provenance, supersession, or downstream dependency clarity.
Use `orca-metrics` when elapsed time, retries, or optional usage signals matter, and `orca-benchmark` when onboarding/spec quality should be compared over time.
Use `orca-replay` and `orca-restore` when runtime changes, harness updates, or failed runs need comparison or recovery.
Use `orca-state`, `orca-checkpoint`, and `orca-inspect` when multiple roles need a shared current view or when a run must pause and resume safely.
Use `orca-tool-review` and `orca-mcp-review` before introducing new tools, expanding MCP access, or making high-risk external calls.
Use `orca-setup`, `orca-check-setup`, and `orca-validate-integration` when GitHub, Linear, MCP, connectors, or CLI helpers are needed for the workflow.
Use `orca-runtime` and `orca-status` when harness capabilities or policy switches should change the recommended path or need inspection.
Use `orca-controller` and `orca-orient` when an external controller agent needs a fast current-state view.
Use `orca-delegate` when another harness or collaborator should execute bounded work, and `orca-ingest` when structured results return.
Use `orca-schema` and `orca-validate-schema` when portable artifact structure, versioning, mapping, or schema validity matters.
Use `orca-legacy` when the target system is inherited, under-documented, fragile, or modernization-focused.
Use `orca-goal` commands only after spec and milestone planning produce a bounded, verifiable objective.
Use `orca-next` after major phase completion when a short default next action would help the user move forward.
