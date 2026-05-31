# Harness Capability Profile

## Harness Name

Codex

## Detection Hints

- Codex app or Codex CLI environment
- Codex-specific tool availability

## Supported Capabilities

- goal support

## Partial Capabilities

- trace and inspector support
- MCP and tool support
- GitHub integration
- Linear integration
- setup validation support

## Unsupported Capabilities

- 

## Unclear Capabilities

- memory integration
- shared state and checkpointing beyond portable ORCA-HVN artifacts
- approval and governance patterns beyond ORCA-HVN policy
- multi-agent coordination support

## Preferred Commands And Workflows

- use `orca-goal` when `/goal` is supported and reviewed
- use `orca-check-setup` before external integration-heavy steps

## Fallback Rules

- use portable goal contracts if local `/goal` behavior is unavailable
- use manual or local artifact fallbacks for missing integrations

## Setup And Integration Caveats

- local capability varies by installed Codex environment

## Risk Notes

- do not assume external tool parity across Codex installations

## Last Reviewed

2026-05-30

## Evidence Links

- https://developers.openai.com/codex/cli/slash-commands
