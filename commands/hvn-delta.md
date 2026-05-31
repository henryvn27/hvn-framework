# hvn-delta

## Purpose

Compare blind first-look QA against lightly briefed second-pass QA.

## When To Use

Use after both blind QA and guided QA exist for the same issue or product surface.

## Required Inputs

- Blind QA report
- Briefed QA report
- Context brief

## Optional Inputs

- Linear issue ID
- Screenshots
- Accessibility notes
- User mission

## Linear Context

- Reads: blind QA comment, guided QA comment, context brief, issue scope, and linked artifacts
- Posts: delta report and ship recommendation
- Trigger: after guided QA, before ship readiness
- Human approval: required to waive blocking first-look issues

## Workflow

1. Compare blind and briefed task outcomes.
2. Identify confusion that disappeared with context.
3. Identify issues that remained.
4. Explain what the gap reveals about onboarding, copy, IA, hierarchy, or trust.
5. Recommend fix, follow-up, or ship decision.

## Outputs And Artifacts

- `templates/blind-to-briefed-delta.md`

## Failure Cases

- If either QA pass is missing, request the missing pass.
- If the blind pass was contaminated, do not call the comparison blind-to-briefed.

## Related Commands And Skills

- Commands: `hvn-test-blind`, `hvn-test-briefed`, `hvn-ship`
- Skills: `hvn-delta-report`, `hvn-context-brief`, `hvn-linear-qa`
