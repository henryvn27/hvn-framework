# ORCA Framework Ecosystem Sweep

Latest report: [2026-06-02](2026-06-02.md)

Highest-leverage changes since the 2026-05-31 sweep:

- `Adopt now` / `workflow`: Codex `0.136.0` (June 1, 2026) adds archive/unarchive commands, richer app-server MCP status, `codex app-server --stdio`, remote `CODEX_API_KEY` registration for approved OpenAI hosts, and more command-safety hardening. ORCA Framework's Codex host guidance now trails the real lifecycle surface.
- `Investigate soon` / `workflow`: Claude Code `2.1.160` (June 2, 2026) adds prompts before writing shell-startup and build-tool config files that can grant code execution, plus a fix for restored `claude agents` sessions dropping chat history. This strengthens the case for a portable ORCA lifecycle/safety layer, but the behavior is still Claude-specific.
- `Investigate soon` / `install`: Impeccable's official surfaces now mix `/impeccable teach` and `/impeccable init`, while recent releases changed Codex subagent delivery and self-update behavior. ORCA's wrapper guidance should stay version-aware instead of hardcoding one brittle onramp story.

Local run notes:

- Linear remains blocked in this workspace: the connector still returns `401: "Server returned 401: 'Reauthentication required'"`.
- No new local draft issues were created. Existing draft issues still cover the current `Adopt now` docs work.
