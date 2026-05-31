# OpenCode Workflow Example

## Scenario

OpenCode is used as the primary coding host for a small bug fix.

## Installed Shape

```text
.opencode/
  command/hvn-build.md
  command/hvn-test-blind.md
  skills/hvn-build/SKILL.md
  hvn/
```

## Flow

1. Invoke `hvn-linear-intake` or `hvn-onboard` from OpenCode.
2. If the issue is vague, `hvn-question-flow` asks one question and stores the answer.
3. `hvn-spec` and `hvn-plan` create shared artifacts.
4. `hvn-build` executes the fix.
5. `hvn-test-blind` runs if the host has the needed app or browser access.
6. Run memory stores what changed and what remains.
7. Linear is updated or a sync note is prepared.

## Host-Specific Difference

OpenCode command files live under `.opencode/command/`. OpenCode may also be used as a worker under another orchestrator, but HVN artifacts remain shared.
