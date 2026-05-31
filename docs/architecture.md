# Architecture

HVN is organized around a coordination record and four installable layers.

## Coordination Record

Linear is the default coordination record:

- Linear issue = unit of work
- Linear project = initiative or epic
- Linear state = workflow gate
- Linear comment = status update, spec, plan, QA report, review finding, or ship checklist
- Linear linked artifact = durable supporting evidence

If a user opts out of Linear, HVN requires a declared alternative record. The architecture remains the same; the storage target changes.

## Installable Layers

- `HVN.md` is the master operating manual.
- `HVN.defaults.md` defines shipped default behavior.
- `profiles/` contains opinionated presets such as the Henry Van Ness profile.
- `commands/` contains entry-point prompts for workflows and Linear comment operations.
- `skills/` contains reusable procedures that commands invoke.
- `templates/` contains durable artifacts and Linear-ready comment formats.

Docs explain the system, examples show finished flows, and scripts validate that the repository remains coherent.

## Why Commands And Skills Are Separate

Commands answer "what workflow should start now?" Skills answer "how should this behavior be performed?" A Linear issue state may trigger a command, and the command may invoke one or more skills.

Example:

- State `In QA` with label `blind-qa` triggers `hvn-test-blind`.
- `hvn-test-blind` invokes `hvn-blind-qa`, `hvn-web-qa` or `hvn-ios-sim-qa`, and `hvn-linear-qa`.

## Defaults Layer

The defaults layer keeps behavior consistent across commands and skills. `hvn-router` interprets the defaults for a task: Linear check, skill selection, preserve-stack posture, and full-output mode.

## Why Blind QA Is Separate

Blind QA is intentionally separated from informed QA because hidden knowledge changes the tester's behavior. Once a tester knows the intended flow, confusing UI may look obvious. HVN protects the first-look pass by limiting context to issue ID, platform, launch instructions, and optional one-sentence mission.

## Context Briefer

The context briefer creates bounded packets for retesting. It lists exactly what is included and withheld.

Layered QA:

- Blind pass for first impression
- Briefed pass for target behavior
- Informed pass for implementation-level verification

The briefer preserves first-look integrity by preparing context only after the blind report is saved to the issue or opt-out record.

## Linear Opt-Out Boundary

Linear is a default, not a trap. If the user opts out, the agent must ask where to store specs, plans, QA reports, review findings, and ship checks. Work should not proceed with private chat as the only durable record for non-trivial tasks.
