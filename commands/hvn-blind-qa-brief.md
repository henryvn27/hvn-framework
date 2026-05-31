# hvn-blind-qa-brief

## Purpose

Collect the minimum allowed context needed to brief a QA tester while preserving blind QA integrity.

## When To Use

Use before:

- blind QA
- briefed QA
- iOS simulator QA
- web or browser QA
- regression retesting where test context is unclear

## Required Inputs

- Product surface or work item
- Intended QA mode

## Optional Inputs

- Linear issue or opt-out work item
- App URL, build, executable, or simulator target
- Device, simulator, or viewport
- One-sentence user mission
- Allowed context boundaries

## Linear Context

- Expects: issue ID, platform, launch instructions, QA mode, and allowed context
- Reads: only the context permitted for preparing the brief
- Posts: QA brief, waiting-on-answer state, or blocker comment
- Trigger: `In QA`, `blind-qa`, `needs-qa-brief`
- Human approval: required to disclose extra context during blind QA

## Opt-Out Context

Write the QA brief intake to the selected artifact location and link it from the work item.

## Interactive Question Flow

- Uses interactive flow: yes
- Default round size: one question
- Collects: platform, launch target, target flow, allowed context, evidence expectations, device or viewport
- Stop condition: the tester can start with the correct context boundary
- Final artifact: `templates/qa-brief-intake.md`

## Workflow

1. Use `hvn-question-flow` in QA briefing mode.
2. Determine whether this is blind QA, briefed QA, simulator QA, browser QA, or regression QA.
3. Ask the minimum question needed to define platform and launch target.
4. Ask what context the tester is allowed to receive.
5. Stop once the tester can start without hidden ambiguity.
6. Produce `templates/qa-brief-intake.md`.
7. If Linear is active, post or link the QA brief.
8. If Linear is blocked, prepare `templates/linear-question-sync.md`.

## Outputs And Artifacts

- `templates/qa-brief-intake.md`
- `templates/question-round.md` when the flow is paused
- `templates/linear-question-sync.md` when Linear sync is needed

## Failure Cases

- If blind QA has already been contaminated, mark the pass as briefed QA.
- If launch instructions are missing, record waiting-on-answer state.
- If allowed context is unclear, ask before creating the tester packet.

## Related Commands And Skills

- Commands: `hvn-question-flow`, `hvn-test-blind`, `hvn-test-briefed`, `hvn-test-regression`
- Skills: `hvn-question-flow`, `hvn-blind-qa`, `hvn-context-brief`, `hvn-ios-sim-qa`, `hvn-web-qa`
