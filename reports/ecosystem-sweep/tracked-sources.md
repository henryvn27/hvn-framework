# HVN Ecosystem Sweep Tracked Sources

This file defines the baseline source set for the recurring HVN ecosystem sweep.
Prefer official docs, release notes, changelogs, and upstream repositories.

## Harnesses

### Claude Code
- Docs: https://code.claude.com/docs/en/overview
- Commands: https://code.claude.com/docs/en/commands
- Changelog index: https://code.claude.com/docs/en/release-notes

### Codex CLI
- Repo: https://github.com/openai/codex
- Releases: https://github.com/openai/codex/releases
- Getting started: https://help.openai.com/en/articles/11096431

### OpenCode
- Site: https://opencode.live/
- Repo: https://github.com/opencode-ai/opencode
- Releases: https://github.com/opencode-ai/opencode/releases

### Hermes Agent
- Repo: https://github.com/NousResearch/hermes-agent
- Releases: https://github.com/NousResearch/hermes-agent/releases
- Org: https://github.com/nousresearch

## Related Repos And Frameworks

### Get Shit Done
- Repo: https://github.com/gsd-build/get-shit-done
- Releases: https://github.com/gsd-build/get-shit-done/releases
- Configuration docs: https://github.com/gsd-build/get-shit-done/blob/main/docs/CONFIGURATION.md

### GitHub Spec Kit
- Docs: https://github.github.com/spec-kit/index.html
- Repo: https://github.com/github/spec-kit
- AGENTS guidance: https://github.com/github/spec-kit/blob/main/AGENTS.md

## Watch Themes

- persistent goals and `/goal`-style flows
- pause, resume, continue, and clear lifecycle semantics
- checkpointing and human approval flows
- automation and scheduling
- memory and state retention
- shared state and durable coordination
- run inspection, observability, and inspector surfaces
- workflow metrics and cost tracking
- tool governance, MCP review, and tool trust
- skill packaging and portability
- onboarding and install ergonomics
- novice and expert workflow adaptation
- QA, verification, and simulator support
- regression generation from QA
- benchmark and eval improvements
- multi-agent orchestration
- command naming and adapter conventions
- host-native UX and terminal behavior

## Harness Update Questions

For each materially changed harness, answer:

- What new feature or behavior appeared?
- Does it affect execution, memory, inspection, safety, or usability?
- Can HVN exploit it directly, wrap it through a host adapter, or only learn from the pattern?
- Is the capability cross-harness or host-specific?
- What repo, docs, command, template, or workflow change would HVN need?
- Does it improve beginner UX, expert UX, or both?
- Is it worth building now?

## Recommendation Categories

- commands
- memory
- install
- cross-harness
- QA
- workflow

## Source Quality Rules

- Prefer official docs, repos, releases, changelogs, and implementation examples.
- Treat secondary articles and social posts as supplemental evidence only.
- Do not report unchanged background as new.
- Mark uncertain findings explicitly.
- List exact URLs reviewed in the dated report.
- Prefer direct evidence over third-party summaries when classifying `Adopt now`.
