# hvn-question-flow

## Purpose

Run a focused interactive question flow and capture the answers into a reusable HVN artifact.

## When To Use

Use when a command needs progressive clarification instead of a static form:

- onboarding
- discovery clarification
- spec clarification
- Linear issue intake
- bug clarification
- research scoping
- QA briefing

## Required Inputs

- Current objective, issue, or task
- Mode
- Target artifact

## Optional Inputs

- Linear issue and project
- Existing run memory
- Existing intake, spec, plan, QA brief, or question-round artifact
- Maximum questions per round
- Host command context

## Interactive Behavior

This command uses an interactive question flow. It should ask one question by default, or a 2-3 question batch when the questions are short and independent.

It should not ask a giant form unless the user requests one.

## Workflow

1. Use `hvn-question-flow`.
2. Identify the mode and target artifact.
3. Read existing context, issue details, memory, and prior answers.
4. Ask the highest-leverage missing question or compact batch.
5. Wait for the user's answer.
6. Record the answer in a question-round artifact.
7. Reflect back what was learned when useful.
8. Continue only if another answer would materially change the next artifact.
9. Stop and synthesize when enough information exists.
10. Sync results to Linear or the opt-out record when active.

## Stop Conditions

Stop when:

- the next artifact can be produced
- remaining ambiguity can be documented as assumptions
- the next command is clear
- the user asks to pause
- a stakeholder answer is required

## Outputs And Artifacts

- `templates/question-round.md`
- `templates/onboarding-intake.md`
- `templates/clarification-summary.md`
- `templates/qa-brief-intake.md`
- `templates/linear-question-sync.md` when Linear-first mode is active or blocked
- Run memory update when relevant

## Failure Cases

- If the host does not provide a native popup, continue as a focused command conversation without claiming modal control.
- If the user does not answer, save the pending question and mark the flow waiting on answer.
- If existing context is contradictory, ask a correction question before synthesis.

## Related Commands And Skills

- Commands: `hvn-onboard`, `hvn-discover`, `hvn-spec`, `hvn-linear-intake`, `hvn-test-blind`, `hvn-test-briefed`
- Skills: `hvn-question-flow`, `hvn-run-memory`, `hvn-onboard`, `hvn-linear-triage`
