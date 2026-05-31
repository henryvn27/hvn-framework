# Runtime Flags

Runtime flags are lightweight policy switches that shape adaptation-sensitive behavior.

## Default Flags

- `enable-goal-when-supported`
- `prefer-native-memory`
- `allow-host-specific-shortcuts`
- `require-approval-on-weak-tool-governance-hosts`
- `enable-mcp-setup-guidance`
- `strict-compatibility-mode`

## Rules

- Flags should be inspectable and explicit.
- User overrides may relax or tighten defaults when safe.
- Risk-sensitive flags should fail closed.
- Do not hide important behavior behind undocumented flags.

## Example

If `strict-compatibility-mode` is on, HVN should treat `partial` and `unclear` support more conservatively and avoid shortcut recommendations.
