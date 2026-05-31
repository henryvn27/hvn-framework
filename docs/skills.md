# Skills

Skills are reusable operating procedures stored in `skills/*/SKILL.md`. They define trigger rules, inputs, workflow, outputs, quality bar, common failure modes, and relationships to other HVN skills.

## Linear Skills

- `hvn-router`
- `hvn-authenticity-preflight`
- `hvn-question-flow`
- `hvn-run-memory`
- `hvn-delta-report`
- `hvn-aesthetic-profile`
- `hvn-linear-health`
- `hvn-regression-pack`
- `hvn-full-output`
- `hvn-linear-setup`
- `hvn-linear-core`
- `hvn-linear-triage`
- `hvn-linear-planner`
- `hvn-linear-executor`
- `hvn-linear-qa`
- `hvn-linear-release`

These skills coordinate issue-native work in Linear. If the user opts out of Linear, use the same behaviors against the chosen system of record.

## Core Skill Groups

- Core governance: `hvn-core`
- Intake and discovery: `hvn-question-flow`, `hvn-onboard`, `hvn-discover`, `hvn-research`
- Delivery: `hvn-spec`, `hvn-plan`, `hvn-build`
- Debugging: `hvn-debug`
- Gates: `hvn-review`, `hvn-design`, `hvn-security`, `hvn-ship`
- QA: `hvn-blind-qa`, `hvn-context-brief`, `hvn-ios-sim-qa`, `hvn-web-qa`
- Learning: `hvn-retro`

## Skill Installation

Skills can be installed into agent clients that support skill directories, or read directly by agents using repo mode. Linear guidance can be installed separately into workspace, team, or project instructions.

For cross-harness guidance, see `docs/portable-skills.md`.

## Routing Defaults

Use `hvn-router` before non-trivial or skill-sensitive work. It applies `HVN.defaults.md`, the active profile, Linear-first work management, preserve-stack behavior, authenticity preflight, and full-output mode when requested.

For high-visibility UI and polished writing, routing triggers `hvn-authenticity-preflight`.

## Run Memory Skill

`hvn-run-memory` is the continuity skill. It initializes, reads, updates, corrects, compresses, and hands off run memory. Use it across onboarding, discovery, spec, planning, build, review, briefed QA, ship, and retro. Do not use it as input to blind first-look QA.

## Question Flow Skill

`hvn-question-flow` is the interactive clarification skill. It asks one focused question or a compact 2-3 question batch, waits for the answer, records what was learned, and stops once enough information exists for the next artifact. Use it for onboarding, feature clarification, bug clarification, research scoping, Linear intake, and QA briefing.

## Spec-Driven Skills

`hvn-onboard` interviews until the problem is clear enough for spec creation. `hvn-spec` creates the execution contract. `hvn-plan` derives milestone phases from the spec. `hvn-build`, `hvn-review`, `hvn-web-qa`, and `hvn-debug` should read the latest approved spec and record deviations instead of expanding scope silently.
