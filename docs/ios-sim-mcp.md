# iOS Simulator MCP QA

HVN can use an iOS simulator MCP server when available. The framework does not require a specific server implementation, but the QA workflow assumes the agent can build or launch the app, interact with simulator UI, inspect accessibility-visible elements, and capture screenshots or logs when supported.

## Cross-Harness Tooling

iOS simulator support is external-tool-dependent in every host. Claude Code, Codex CLI, OpenCode, and Hermes Agent can only run this workflow when the relevant simulator, build, and automation tools are configured.

If simulator tooling is unavailable, HVN should:

- record the missing tool or access
- preserve the QA brief
- avoid claiming simulator evidence
- route to manual QA or a host with simulator access

## Linear Coordination

In Linear-first mode, the issue should provide:

- Issue ID
- App or scheme launch instructions
- Simulator target when relevant
- Optional one-sentence user mission for blind QA

The blind tester should not receive the spec, code, implementation plan, design rationale, or PR discussion. It posts findings back to the issue using `templates/linear-blind-qa-comment.md`.

## Blind Pass

During a blind pass, the tester may only use what the app exposes. The tester should infer the product, identify primary actions, try plausible flows, and document where the app fails to communicate intent.

## Briefed Pass

During a briefed pass, the tester receives a context packet from `hvn-context-brief`. The packet should list included goals, withheld implementation details, target fixes, and known constraints.

## Report

Use `templates/blind-qa-report.md` for blind iOS passes and `templates/guided-qa-report.md` for briefed passes. In Linear-first mode, post concise versions with the Linear QA comment templates. Include simulator model, OS version, app build source, interactions attempted, screenshots captured, accessibility observations, and reproduction steps.
