# Host UI Guidance

HVN supports popup-style interactive behavior through command design, not through direct control of host-native UI rendering.

This document explains how HVN commands should present themselves when a host app exposes slash commands, command palettes, chat commands, issue delegation, or automation-triggered command interfaces.

## Honest Boundary

HVN provides:

- command prompts
- question sequencing
- stop conditions
- artifact templates
- resume behavior
- Linear and run memory sync guidance

The host application provides:

- modal rendering
- popup placement
- keyboard shortcuts
- command palette visuals
- notification behavior
- answer input controls

Agents must not claim HVN opened a native modal unless the host actually provides that UI.

## Popup-Style Behavior

When a host command invokes an HVN question flow, the agent should behave like a focused intake panel:

1. Introduce the flow in one short line.
2. Ask the first question only, or a compact 2-3 question batch.
3. Wait for the user's answer.
4. Briefly acknowledge only information that changes the flow.
5. Ask the next best question.
6. Stop when enough information exists.
7. Emit the structured artifact.

## Opening Line

Use a short opening line:

```text
I’ll collect only the missing context needed for the next spec. First question: who is the primary user?
```

Avoid long explanations before the first question.

## Question Rounds

Default round size:

- one question for ambiguous scope, risk, priority, or approval
- two or three questions for independent factual details
- no larger batch unless the user requests a form

Each round should fit comfortably in a compact command UI.

## Response Handling

After each answer:

- update the question-round artifact or memory state
- infer constraints only when reasonable
- avoid re-asking answered questions
- state the next question or stop decision

Reflection should be brief:

```text
Got it: web checkout, guest users, error handling only. Next question: what failure state should be most visible to the user?
```

## Stop Conditions

Stop when:

- the next artifact can be produced
- remaining unknowns can be documented as assumptions
- additional answers would not change the next command
- the user asks to pause
- a stakeholder answer is required

When stopping, say what artifact will be produced.

## Completion Summary

At completion, emit:

- what was learned
- assumptions
- unresolved questions
- ready-for-next-step decision
- artifact path or Linear update target
- recommended next command

## Host-Specific Adaptation

Different hosts can map the same HVN behavior differently:

- slash command: first question appears as the next agent message
- command palette: first question appears in the command result panel
- issue delegation: first question is posted as an issue comment
- automation: first question becomes a pending user-input request

The framework text should stay portable and avoid hardcoding one host's UI mechanics.
