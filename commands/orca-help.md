# orca-help

## Purpose

Show the ORCA-HVN workflow, available commands, Linear-first usage, opt-out mode, and recommended next command.

## When To Use

Use when a user asks what ORCA-HVN can do, how to start, or which command fits the current situation.

## Required Inputs

- Current project state or user goal

## Optional Inputs

- Linear issue ID or opt-out work item
- Existing artifacts
- Target platform
- Known blockers

## Linear Context

- Expects: issue ID, state, labels, and latest comments when Linear-first mode is active
- Reads: issue context, project context, labels, and linked artifacts
- Posts: optional guidance comment when requested
- Trigger: user asks for routing help or an agent receives an ambiguous delegation
- Human approval: not required

## Opt-Out Context

If the user does not want Linear, ask which record should hold ORCA-HVN artifacts.

## Workflow

1. Identify whether the user needs intake, discovery, spec, planning, build, review, QA, security, shipping, or retro.
2. Confirm Linear-first or opt-out mode.
3. If the user mainly wants to understand what is happening or why ORCA chose a path, route to `orca-explain`.
4. If the user only wants one quick side question answered without derailing the main thread, route to the host's lightest side-question path or `orca-btw` behavior.
4. Summarize the next two useful commands.
5. Explain what artifact or issue comment each command will produce.
6. Call out whether blind QA can still be preserved.

## Outputs And Artifacts

- Recommended command
- Reasoning for command choice
- Artifact or comment expectation

## Failure Cases

- If the goal is unclear, ask one clarifying question.
- If blind QA has already been contaminated, recommend briefed QA instead.

## Related Commands And Skills

- Commands: all ORCA-HVN commands, especially `orca-explain` for interactive rationale and `orca-btw` behavior for quick side questions
- Skills: `orca-core`, `orca-linear-core`
