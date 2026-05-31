# hvn-help

## Purpose

Show the HVN workflow, available commands, required artifacts, and recommended next command.

## When To Use

Use when a user asks what HVN can do, how to start, or which command fits the current situation.

## Required Inputs

- Current project state or user goal

## Optional Inputs

- Existing artifacts
- Target platform
- Known blockers

## Workflow

1. Identify whether the user needs onboarding, discovery, spec, planning, build, review, QA, security, shipping, or retro.
2. Summarize the next two useful commands.
3. Explain what artifact each command will produce.
4. Call out whether blind QA can still be preserved.

## Outputs And Artifacts

- Recommended command
- Reasoning for command choice
- Artifact expectation

## Failure Cases

- If the goal is unclear, ask one clarifying question.
- If blind QA has already been contaminated, recommend briefed QA instead.

## Related Commands And Skills

- Commands: all HVN commands
- Skills: `hvn-core`
