# hvn-help

## Purpose

Show the HVN workflow, available commands, Linear-first usage, opt-out mode, and recommended next command.

## When To Use

Use when a user asks what HVN can do, how to start, or which command fits the current situation.

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

If the user does not want Linear, ask which record should hold HVN artifacts.

## Workflow

1. Identify whether the user needs memory, question flow, intake, discovery, spec, planning, build, review, QA, security, shipping, or retro.
2. Confirm Linear-first or opt-out mode.
3. If work is non-trivial, recommend `hvn-memory-init`, `hvn-memory-read`, or `hvn-memory-update` at the correct point.
4. If ambiguity is blocking the next artifact, recommend `hvn-question-flow` or an interactive command such as `hvn-onboard`, `hvn-spec`, or `hvn-linear-intake`.
5. Summarize the next two useful commands.
6. Explain what artifact or issue comment each command will produce.
7. Call out whether blind QA can still be preserved.

## Interactive Question Flow

- Uses interactive flow: conditional
- Default round size: one routing question
- Collects: desired HVN mode, system of record, target artifact, whether blind QA must be preserved
- Stop condition: the next command is clear
- Final artifact: command recommendation, or `templates/question-round.md` if the user pauses before routing is resolved

## Outputs And Artifacts

- Recommended command
- Reasoning for command choice
- Artifact or comment expectation

## Failure Cases

- If the goal is unclear, ask one clarifying question.
- If blind QA has already been contaminated, recommend briefed QA instead.

## Related Commands And Skills

- Commands: all HVN commands
- Skills: `hvn-core`, `hvn-question-flow`, `hvn-linear-core`, `hvn-run-memory`
