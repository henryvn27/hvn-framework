# Commands

ORCA-HVN commands are workflow command definitions stored as markdown in `commands/`.

The install flow also ships a runnable command layer:

- `bin/orca` for listing, showing, printing, or launching commands
- generated `bin/orca-*` shims for direct command names such as `orca-onboard`

Use them in one of three ways:

- run `orca show <command>` or `orca run <command> --print` to inspect the agent-ready prompt
- run `orca-<command>` directly when the installed `bin/` directory is on your `PATH`
- ask your agent or harness to follow a specific ORCA command if you prefer your own prompt layer

Each command has a consistent shape:

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
- `orca-install`
- `orca-doctor`
- `orca-check-updates`
- `orca-corpus`
- `orca-docs`
- `orca-background`
- `orca-keep-going`
- `orca-background-status`
- `orca-attribution`
- `orca-idea`
- `orca-demo`
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
- `orca-integration`
- `orca-impeccable`
- `orca-superpowers`
- `orca-recommend-stack`
- `orca-setup-integration`
- `orca-learning`
- `orca-feedback`
- `orca-btw`
- `orca-explain`
- `orca-context`
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
- `orca-ui-debug`
- `orca-web-qa`
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
- `orca-update`
- `orca-validate-schema`
- `orca-approve`
- `orca-review`
- `orca-design`
- `orca-ci`
- `orca-pr-feedback`
- `orca-test-blind`
- `orca-test-briefed`
- `orca-test-regression`
- `orca-screenshot`
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
When a user supplies a vault or live note system, treat it as the primary workflow evidence source for recommendation and research questions, and label any extrapolation clearly.
Use `orca-install` and `orca-doctor` when the main job is getting ORCA installed, validated, or recovered from a partial setup.
Use `orca-check-updates` when the user wants visibility before changing versions, and `orca-update` when the update path itself needs verification, deferral, apply, rollback, or recovery logic.
Use `orca-improve-framework` at the end of meaningful sessions when reusable ORCA-HVN friction or strong session-quality signals may deserve a framework issue or backlog entry.
Use the self-improvement docs and skill when deciding whether a signal belongs in the local instance loop or the framework loop.
Use `orca-integration` when the user needs stack routing, integration selection, or platform-aware tool guidance.
Use `orca-impeccable` when the user wants Impeccable to feel built into ORCA instead of operating as a separate design product, and prefer that path for design-heavy frontend work when Impeccable is the strongest fit.
Use `orca-superpowers` when the user wants Superpowers to feel built into ORCA instead of operating as a separate execution workflow, and prefer that path for execution-heavy coding workflow when Superpowers is the strongest fit.
Use `orca-recommend-stack` when the user wants a best-fit stack recommendation and the use case is clear enough to justify one.
Use `orca-setup-integration` when the user chose a stack component and now needs the shortest safe setup path.
Use `orca-docs` when a user needs a docs entry point, a doc refresh plan, or a docs routing answer after the framework surface changes.
Use `orca-corpus` when the user wants a reusable global or project corpus, separate reference versus write-back permissions, or a clear answer about corpus precedence and path health.
Use `orca-background` when unattended progress needs an explicit contract before the run starts.
Use `orca-keep-going` when the user wants bounded autonomous progress on the current task, milestone, or goal.
Use `orca-background-status` when the user needs the latest unattended-run state, blockers, or resume recommendation.
Use `orca-attribution` when upstream influence, wrapping relationships, provenance, or notice handling need to be documented clearly.
Use `orca-idea` when the user has a raw business or startup opportunity and needs a one-pager before product planning.
Use `orca-demo` when a first-time or evaluating user wants one low-input personalized ORCA showcase that turns into a real `/goal` prompt instead of a generic tutorial.
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
Use integration packs and stack guides when web, mobile, auth, billing, analytics, monitoring, or automation choices materially affect the recommended path.
Use `orca-runtime` and `orca-status` when harness capabilities or policy switches should change the recommended path or need inspection.
Use `orca-context` when the user is pointing at something recent or visible but has not named the actual artifact clearly.
Use `orca-controller` and `orca-orient` when an external controller agent needs a fast current-state view.
Use `orca-delegate` when another harness or collaborator should execute bounded work, and `orca-ingest` when structured results return.
Use the orchestration docs when deciding whether to stay single-agent, use supervisor-worker, fan out, or run maker-checker.
Use `orca-ui-debug` when one-pass QA is too weak and the work needs persistent stateful UI debugging.
Use `orca-web-qa` when a real browser should be driven from the terminal and the job is browser QA rather than a persistent debug loop.
Use `orca-screenshot` when OS-level or app-level visual capture is needed as evidence or fallback.
Use `orca-ci` when GitHub Actions or another inspectable CI lane is blocking progress and actionable failure snippets are needed.
Use `orca-pr-feedback` when merge progress is blocked by review comments or review threads that need structured triage.
Use `orca-schema` and `orca-validate-schema` when portable artifact structure, versioning, mapping, or schema validity matters.
Use `orca-legacy` when the target system is inherited, under-documented, fragile, or modernization-focused.
Use `orca-goal` commands only after spec and milestone planning produce a bounded, verifiable objective.
Use `orca-next` after major phase completion when a short default next action would help the user move forward.
Use `orca-learning` when the user wants more help, less help, or no adaptive coaching.
Use `orca-feedback` when the user wants a better request phrasing, context-engineering hint, or coaching suppression for the current task.
Use `orca-btw` when the user wants one quick side question answered without turning it into a new execution thread.
Use `orca-explain` when the user wants a dedicated "what is happening and why?" thread that stays interactive for follow-up questions without turning into execution.
