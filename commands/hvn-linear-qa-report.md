# hvn-linear-qa-report

## Purpose

Post blind, guided, or regression QA results into a Linear issue.

## When To Use

Use after browser, iOS simulator, CLI, or manual QA.

## Required Inputs

- Linear issue ID
- QA mode
- QA findings

## Optional Inputs

- Screenshots
- Logs
- Accessibility observations
- Build or URL

## Linear Context

- Reads: issue ID, platform, launch instructions, QA labels, context packet when briefed
- Posts: QA report, evidence, blockers, recommended next state
- Trigger: `In QA`, `blind-qa`, `guided-qa`, `regression`
- Human approval: not required to post findings; required to waive blocking findings

## Workflow

1. Confirm QA mode and context boundaries.
2. Format findings for the issue thread.
3. Include evidence and confidence limits.
4. Recommend next pass, fix, or ship gate.

## Outputs And Artifacts

- Comment based on `templates/linear-blind-qa-comment.md` or `templates/linear-guided-qa-comment.md`

## Failure Cases

- If the tester received contaminated context, do not label the pass blind.
- If launch fails, post the blocker as the QA result.

## Related Commands And Skills

- Commands: `hvn-test-blind`, `hvn-test-briefed`, `hvn-test-regression`
- Skills: `hvn-linear-qa`, `hvn-blind-qa`, `hvn-context-brief`
