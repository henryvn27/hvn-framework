# orca-status

## Purpose

Summarize current runtime adaptation state.

## When To Use

Use when the user or maintainer needs to understand why ORCA Framework is taking a certain path.

## Required Inputs

- current harness or environment context

## Optional Inputs

- current task
- active overrides

## Workflow

1. Detect the harness and confidence.
2. Read the capability profile.
3. Identify controller and executor roles if known.
4. List enabled, disabled, and degraded features.
5. List active policy switches, delegation recommendation, and missing integrations.
6. Report latest receipt, latest background run state, related artifacts, replay availability, and restore points when available.
7. If a short narrative progress line is emitted, name the concrete action and object first, such as updating docs, running QA, or using ORCA's planning tools. Avoid vague lines like `using ORCA` or `updating ORCA` unless the framework itself is being changed.
8. Report important caveats.
9. If the user wants rationale, blocker interpretation, or interactive follow-up questions, route to `orca-explain`.
10. If the user only needs a quick one-off clarification, use the lightest available side-question path instead of turning status into a long thread.

## Outputs And Artifacts

- `templates/runtime-status.md`
- latest receipt or linked receipt
- latest background run receipt when relevant

## Failure Cases

- If the harness is unknown, report the generic safe path.
- If compatibility is unclear, say so directly.

## Related Commands And Skills

- Commands: `orca-runtime`, `orca-check-setup`, `orca-orient`, `orca-background-status`, `orca-explain`
- Skills: `orca-runtime-adaptation`
