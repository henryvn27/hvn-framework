# hvn-test-briefed

## Purpose

Run QA with a bounded context packet after blind QA is complete or unavailable.

## When To Use

Use for targeted retesting, acceptance criteria checks, and guided product walkthroughs.

## Required Inputs

- Product surface
- Context packet

## Optional Inputs

- Blind QA report
- Known fixes
- Acceptance criteria

## Workflow

1. Use `hvn-context-brief` to confirm included and withheld context.
2. Use platform QA skill when relevant.
3. Test target flows.
4. Record pass, fail, blocked, and uncertain results.

## Outputs And Artifacts

- `templates/guided-qa-report.md`

## Failure Cases

- If no context packet exists, create one before testing.
- If the packet includes implementation detail unnecessarily, narrow it.

## Related Commands And Skills

- Commands: `hvn-test-regression`, `hvn-ship`
- Skills: `hvn-context-brief`, `hvn-web-qa`, `hvn-ios-sim-qa`
