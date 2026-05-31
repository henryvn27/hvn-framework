# Skills

Skills are reusable operating procedures stored in `skills/*/SKILL.md`. They define trigger rules, inputs, workflow, outputs, quality bar, common failure modes, and relationships to other HVN skills.

## Skill Groups

- Core governance: `hvn-core`
- Intake and discovery: `hvn-onboard`, `hvn-discover`, `hvn-research`
- Delivery: `hvn-spec`, `hvn-plan`, `hvn-build`
- Gates: `hvn-review`, `hvn-design`, `hvn-security`, `hvn-ship`
- QA: `hvn-blind-qa`, `hvn-context-brief`, `hvn-ios-sim-qa`, `hvn-web-qa`
- Learning: `hvn-retro`

Skills are written so they can be installed into agent clients that support skill directories, or read directly by agents using repo mode.
