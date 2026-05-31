---
name: hvn-question-flow
description: Run focused interactive question rounds for HVN onboarding, clarification, Linear intake, research scoping, and QA briefing.
---

# HVN Question Flow

## Purpose

Collect missing context through progressive, targeted question rounds and convert the answers into structured HVN artifacts. This skill creates popup-style behavior when invoked through host command interfaces without claiming control over the host's native UI rendering.

## Triggers

Use this skill when:

- a command starts an interactive intake or clarification flow
- the user invokes onboarding, discovery, spec clarification, Linear intake, or QA briefing
- ambiguity affects scope, user value, risk, acceptance criteria, testing, or next command selection
- a partially completed intake needs to resume
- a Linear issue is too vague to plan or build from
- a QA briefer needs platform, launch instructions, target flow, or allowed context

## Non-Triggers

Do not use this skill when:

- the user explicitly asks for no questions and enough information exists to proceed safely
- the next step is obvious and low risk
- the task is a pure execution step with an approved spec and plan
- blind QA is already in progress and extra hidden context would contaminate it
- the question would only satisfy curiosity and not change the next artifact
- the host UI does not support native popups and the agent would need to pretend it does

## Required Inputs

- Current objective or issue
- Mode: onboarding, feature clarification, bug clarification, research scoping, QA briefing, or Linear intake
- Available context from the user request, issue, run memory, or artifact
- Intended output artifact

## Optional Inputs

- Linear issue and project
- Existing run memory
- Prior question-round artifact
- Existing intake, discovery, spec, plan, QA brief, or issue comments
- Host command context
- Maximum questions per round

## Workflow

### 1. Establish Mode And Output

Choose the mode and target artifact:

- onboarding -> `templates/onboarding-intake.md`
- feature or bug clarification -> `templates/clarification-summary.md`
- research scoping -> `templates/clarification-summary.md`
- QA briefing -> `templates/qa-brief-intake.md`
- Linear intake -> `templates/linear-question-sync.md` plus issue comment
- generic round -> `templates/question-round.md`

### 2. Read Existing Context

Read the issue, artifact, and run memory when available. Extract answers already known. Do not re-ask questions that are already answered unless they are stale, contradictory, or too vague to use.

### 3. Identify The Highest-Leverage Gap

Find ambiguity that would change the next artifact:

- user or actor
- desired behavior
- target surface
- acceptance signal
- platform or environment
- non-goals
- risk or constraint
- approval requirement
- test context

### 4. Ask A Focused Round

Ask one question by default. Ask a 2-3 question batch only when questions are independent and short.

Good question shape:

```text
Who is the primary user, and what should they be able to do after this change?
```

Avoid giant questionnaires and speculative questions.

### 5. Wait For The Answer

Do not proceed to synthesize the final artifact until the user answers or the flow is explicitly paused. If the host has a user-input primitive, use it. Otherwise ask in chat and stop.

### 6. Reflect And Update

After an answer:

- record the question and answer
- infer constraints cautiously
- update unresolved questions
- update run memory when the flow is non-trivial or resumable
- reflect back only what matters

### 7. Decide Continue Or Stop

Continue only when the next answer would materially change the output. Stop when enough information exists to produce the artifact with clear assumptions.

### 8. Emit Artifact

Create or update the target artifact with:

- current objective
- questions asked
- answers received
- inferred constraints
- unresolved questions
- ready-for-next-step decision
- recommended next command

### 9. Sync

In Linear-first mode, sync the result to the issue as a concise comment or update. If Linear is blocked, prepare `templates/linear-question-sync.md` and record the pending sync in run memory.

## Stop Conditions

Stop asking when:

- the next artifact can be produced
- the remaining unknowns can be recorded as assumptions
- the next command is clear
- the user pauses or stops the flow
- the answer requires another stakeholder
- continued questioning would not change scope, risk, acceptance, or test setup

## Expected Outputs

- Question-round artifact
- Onboarding intake artifact
- Clarification summary
- QA brief intake
- Linear question sync comment or pending sync note
- Run memory update when relevant
- Recommended next HVN command

## Failure Modes

- Asking a giant survey instead of progressive rounds.
- Re-asking information already present in the issue or memory.
- Continuing after enough signal exists.
- Treating assumptions as confirmed answers.
- Failing to capture partial progress before pausing.
- Feeding hidden context into blind QA.
- Pretending HVN controls host-native modal rendering.
- Producing an artifact without recording unresolved questions.

## Mode Guidance

### Onboarding Mode

Ask about user, problem, target surface, constraints, and success signal. Stop once a first useful spec can be drafted.

### Feature Clarification Mode

Ask only questions needed to define behavior, scope, acceptance, and non-goals.

### Bug Clarification Mode

Collect reproduction, observed result, expected result, environment, frequency, and impact.

### Research Scoping Mode

Clarify the decision the research supports, acceptable sources, freshness requirements, and output format.

### QA Briefing Mode

Collect platform, launch instructions, target flow, allowed context, device or viewport, and evidence expectations. For blind QA, keep allowed context minimal and do not disclose run memory, spec, plan, or implementation notes.
