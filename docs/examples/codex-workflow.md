# Codex CLI Workflow Example

## Scenario

A Codex CLI user wants to produce a spec from a raw issue description.

## Installed Shape

```text
~/.codex/
  AGENTS.md
  skills/hvn-spec/SKILL.md
  hvn/
```

## Flow

1. Codex reads `AGENTS.md` guidance or the user invokes an HVN command by name.
2. The user asks:

   ```sh
   codex "Use HVN hvn-spec for this issue and write the spec artifact."
   ```

3. `hvn-question-flow` asks only missing clarification questions.
4. `templates/clarification-summary.md` records answers and assumptions.
5. `templates/spec.md` becomes the durable spec.
6. `.hvn/memory/runs/` records continuation state.
7. Linear sync is posted if tools exist, or prepared in a local sync artifact.

## Host-Specific Difference

Codex installations should not assume identical slash-command semantics across every Codex surface. HVN commands are logical workflows that can be invoked through prompts, skills, or configured command surfaces.
