# Claude Code Workflow Example

## Scenario

A Claude Code user wants to clarify and implement a checkout error-handling issue.

## Installed Shape

```text
.claude/
  commands/hvn-onboard.md
  commands/hvn-spec.md
  skills/hvn-question-flow/SKILL.md
  skills/hvn-run-memory/SKILL.md
  hvn/
```

## Flow

1. Invoke `hvn-onboard` or ask Claude to use HVN onboarding.
2. `hvn-question-flow` asks one focused question about the unclear checkout behavior.
3. Answers are captured in `templates/onboarding-intake.md`.
4. Run memory is created at `.hvn/memory/runs/CHK-12__checkout-errors.md`.
5. `hvn-spec` produces the spec.
6. `hvn-plan` creates the implementation plan.
7. `hvn-build` makes scoped changes.
8. `hvn-review` and `hvn-test-blind` produce review and QA artifacts.
9. Linear is updated directly if available, or sync notes are prepared.

## Host-Specific Difference

Claude Code can discover `.claude/skills/` and `.claude/commands/` when configured. HVN does not claim control over Claude's UI shell.
