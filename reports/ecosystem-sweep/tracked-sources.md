# HVN Ecosystem Sweep Tracked Sources

This file defines the baseline source set for the recurring HVN ecosystem sweep.
Prefer official docs, release notes, changelogs, and upstream repositories.

## Harnesses

### Claude Code
- Docs: https://code.claude.com/docs/en/overview
- Commands: https://code.claude.com/docs/en/commands
- MCP: https://code.claude.com/docs/en/mcp
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

## Integration Setup Sources

### GitHub
- GitHub MCP server: https://github.com/github/github-mcp-server
- GitHub CLI auth: https://cli.github.com/manual/gh_auth_status
- GitHub Copilot MCP docs: https://docs.github.com/en/copilot/how-tos/provide-context/use-mcp/extend-copilot-chat-with-mcp

### Linear
- Linear MCP: https://linear.app/docs/mcp
- Linear docs: https://linear.app/docs

### VS Code
- VS Code MCP servers: https://code.visualstudio.com/docs/copilot/chat/mcp-servers

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
- GitHub and Linear setup paths
- MCP-based setup flow changes
- official connector support changes
- host-specific install and config changes
- auth and permission pattern changes
- deprecated setup recommendations
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

## Integration Setup Questions

For each GitHub, Linear, MCP, connector, auth, permission, or host-specific setup change, answer:

- What changed in the setup path?
- Which hosts are affected?
- Which method changed: native connector, MCP, API token, plugin, CLI helper, or manual?
- Does this create a better default path HVN should recommend?
- Does this break or deprecate an old HVN recommendation?
- Does the change affect beginner setup, advanced setup, or both?
- Is the change host-specific or broadly portable?
- Should HVN docs, commands, templates, host adapters, or degraded-mode guidance change?

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
