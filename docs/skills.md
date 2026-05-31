# Skills

Skills are reusable operating procedures stored in `skills/*/SKILL.md`. They define trigger rules, inputs, workflow, outputs, quality bar, common failure modes, and relationships to other HVN skills.

## Linear Skills

- `hvn-router`
- `hvn-authenticity-preflight`
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
- Intake and discovery: `hvn-onboard`, `hvn-discover`, `hvn-research`
- Delivery: `hvn-spec`, `hvn-plan`, `hvn-build`
- Gates: `hvn-review`, `hvn-design`, `hvn-security`, `hvn-ship`
- QA: `hvn-blind-qa`, `hvn-context-brief`, `hvn-ios-sim-qa`, `hvn-web-qa`
- Learning: `hvn-retro`

## Skill Installation

Skills can be installed into agent clients that support skill directories, or read directly by agents using repo mode. Linear guidance can be installed separately into workspace, team, or project instructions.

## Routing Defaults

Use `hvn-router` before non-trivial or skill-sensitive work. It applies `HVN.defaults.md`, the active profile, Linear-first work management, preserve-stack behavior, authenticity preflight, and full-output mode when requested.

For high-visibility UI and polished writing, routing triggers `hvn-authenticity-preflight`.

## Run Memory Skill

`hvn-run-memory` is the continuity skill. It initializes, reads, updates, corrects, compresses, and hands off run memory. Use it across onboarding, discovery, spec, planning, build, review, briefed QA, ship, and retro. Do not use it as input to blind first-look QA.
