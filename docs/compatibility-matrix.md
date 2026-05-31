# Compatibility Matrix

This matrix records host-level support conservatively. Do not assume parity across hosts.

| Host | Native goal mode | HVN stance |
| --- | --- | --- |
| Codex CLI | Supported where `/goal` is available in the installed CLI version | Use host-native goal mode when the local CLI exposes it and the HVN goal contract is complete |
| Claude Code | Supported in documented versions with `/goal` | Use host-native goal mode after checking version and workspace trust requirements |
| Hermes Agent | Support must be verified in the installed host | Use HVN fallback unless the local Hermes docs or command help confirm compatible goal behavior |
| Other hosts | Unknown | Use fallback workflow until support is documented |

## Fallback

When native goal mode is missing or uncertain, use:

- [templates/goal-contract.md](../templates/goal-contract.md)
- [templates/goal-status.md](../templates/goal-status.md)
- shared state
- traces
- checkpoints
- run memory
