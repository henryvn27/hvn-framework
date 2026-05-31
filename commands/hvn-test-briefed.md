# hvn-test-briefed

## Purpose

Run QA with a bounded context packet after blind QA is complete or unavailable.

## When To Use

Use for targeted retesting, acceptance criteria checks, and guided product walkthroughs.

## Required Inputs

- Product surface
- Context packet

## Optional Inputs

- Linear issue ID or opt-out work item
- Blind QA report
- Known fixes
- Acceptance criteria

## Linear Context

- Expects: issue ID, first-pass report, context packet, platform, launch instructions
- Reads: disclosed context only for briefed pass
- Posts: guided QA findings, difference from blind pass, evidence, recommended next state
- Trigger: `guided-qa`, `In QA`, after blind QA comment
- Human approval: required to waive blocking guided QA findings

## Opt-Out Context

Write the context packet and guided QA result to the selected record.

## Workflow

1. Use `hvn-context-brief` to confirm included and withheld context.
2. Use platform QA skill when relevant.
3. Test target flows.
4. Record pass, fail, blocked, and uncertain results.
5. Surface differences from blind QA.

## Outputs And Artifacts

- `templates/guided-qa-report.md`
- `templates/contracts/qa-brief-contract.md`
- `templates/linear-guided-qa-comment.md` when Linear-first mode is active

## Failure Cases

- If no context packet exists, create one before testing.
- If the packet includes implementation detail unnecessarily, narrow it.

## Related Commands And Skills

- Commands: `hvn-linear-qa-report`, `hvn-test-regression`, `hvn-ship`
- Skills: `hvn-context-brief`, `hvn-linear-qa`, `hvn-web-qa`, `hvn-ios-sim-qa`
