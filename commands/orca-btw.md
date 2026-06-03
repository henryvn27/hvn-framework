# orca-btw

## Purpose

Ask one quick side question without derailing the main execution thread.

## When To Use

Use when the user wants a short "by the way" answer about the current work and does not need a full interactive explanation session.

## Required Inputs

- Short side question tied to the current work

## Optional Inputs

- Current harness
- Current task or artifact reference

## Workflow

1. Detect whether the active harness exposes a real quick side-question primitive.
2. If it does, use that lightest native path.
3. If it does not, answer as a clearly framed non-mutating side question.
4. If the question grows into a back-and-forth or needs tool-backed reasoning, switch to `orca-explain`.

## Behavior Rules

- Prefer ephemeral side-question surfaces when the host clearly supports them.
- Do not mutate the repo from `orca-btw`.
- Do not pretend a host has a `/btw` equivalent when it does not.
- If the answer requires files, tools, or extended reasoning, escalate to `orca-explain` or another durable side session.

## Outputs And Artifacts

- one short side answer
- optional handoff to `orca-explain`

## Failure Cases

- If the host has no side-question primitive, fall back to framed inline behavior.
- If the question is no longer quick, stop and route to `orca-explain`.

## Related Commands And Skills

- Commands: `orca-explain`, `orca-help`, `orca-status`
- Skills: `orca-adaptive-guidance`, `orca-runtime-adaptation`
