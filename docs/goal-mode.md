# Goal Mode

HVN goal mode is a structured way to turn a bounded spec or milestone into a durable execution contract. It can use a host-native `/goal` feature when that host actually supports it, or fall back to ordinary HVN execution with explicit status artifacts when it does not.

Goal mode is not background autonomy. It is a contract for long-running, verifiable work.

## When To Use Goal Mode

Use goal mode when all of these are true:

- the task is non-trivial
- an approved spec or milestone exists
- scope boundaries are clear
- the completion condition is measurable
- verification is possible
- autonomous continuation has clear value
- safety level is acceptable

Good examples:

- migrate a bounded module until tests and call sites pass
- complete one approved milestone until acceptance criteria are verified
- work through a defined queue until it is empty and the summary is posted

## When Not To Use Goal Mode

Do not use goal mode for:

- ambiguous discovery
- vague "make this better" requests
- broad repo-wide improvement goals
- risky or destructive work without approval
- tasks with no meaningful verification path
- work that needs frequent product judgment after each small step

## Relationship To Specs And Milestones

The intended flow is:

1. idea
2. onboarding
3. spec
4. phase or milestone split
5. goal contract
6. execution
7. verification

The wrong flow is:

1. idea
2. `/goal`
3. uncontrolled execution

## Relationship To Harness-Native `/goal`

Some hosts provide a native `/goal` command. HVN should use native goal mode only after translating the work into a goal contract. The host command is the execution mechanism; the HVN contract defines scope, completion, verification, stop conditions, and approvals.

If native `/goal` is unavailable, use the same contract with normal HVN workflow artifacts:

- shared state
- run memory
- traces
- checkpoints
- status reports

## Lifecycle Concepts

- Active: goal is currently being pursued
- Paused: goal is stopped temporarily with resume context preserved
- Completed: verification condition was met
- Cleared: goal was intentionally removed before completion

Host commands may name these states differently. HVN tracks the conceptual lifecycle in [templates/goal-status.md](../templates/goal-status.md).

## Required Artifacts

- [templates/goal-contract.md](../templates/goal-contract.md)
- [templates/goal-status.md](../templates/goal-status.md)

## Memory And Trace Expectations

Run memory should capture durable goal state and steering notes. Traces should capture the goal contract link, lifecycle transitions, verification evidence, and stop reason.
