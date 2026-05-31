# Hermes Agent Workflow Example

## Scenario

Hermes Agent coordinates a feature while delegating implementation to a coding worker.

## Installed Shape

```text
.hermes/
  skills/hvn-plan/SKILL.md
  skills/hvn-run-memory/SKILL.md
  hvn/
```

## Flow

1. Hermes runs `hvn-onboard` or `hvn-spec` through HVN skills.
2. `hvn-question-flow` gathers missing product context.
3. `templates/spec.md` and `templates/plan.md` define the approved scope.
4. Hermes delegates bounded implementation context to a worker if configured.
5. Worker output is reviewed and merged back into run memory.
6. `hvn-review`, `hvn-test-blind`, and ship checks run with available tools.
7. Linear is updated or sync notes are prepared.

## Host-Specific Difference

Hermes orchestration is optional. HVN remains usable without Hermes-only worker features because the shared artifacts carry the workflow.
