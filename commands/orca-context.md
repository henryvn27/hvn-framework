# orca-context

## Purpose

Resolve ambiguous user references by identifying the real target artifact, app, document, or screen context before deeper work begins.

## When To Use

Use when the user refers to something vague such as "that doc," "the thing I had open," or "the error I just saw," and the context is likely present in local artifacts, the active screen, or recent workflow state.

## Required Inputs

- ambiguous reference or current context question

## Optional Inputs

- current harness
- recent artifacts
- screen or history tooling when available

## Workflow

1. Check the strongest textual or repo-local context first.
2. If screen/history tooling is available, verify freshness first and use it only to identify the likely target.
3. Upgrade from visual hints to the actual file, app, issue, or connector source as quickly as possible.
4. State freshness and confidence clearly.
5. Route into the correct next ORCA command once the target is identified.

## Outputs And Artifacts

- resolved target
- confidence and evidence note
- recommended next command

## Failure Cases

- If the target cannot be identified reliably, say what evidence is missing.
- Do not solve the entire task from screenshot or OCR evidence when a stronger source exists.

## Related Commands And Skills

- Commands: `orca-discover`, `orca-explain`, `orca-help`
- Skills: `orca-controller-mode`, `orca-runtime-adaptation`
