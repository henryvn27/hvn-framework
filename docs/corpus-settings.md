# Corpus Settings

ORCA corpus support uses both global and project-level settings.

The model is intentionally explicit so access rules are inspectable and failures are predictable.

## Global Settings

Suggested global shape:

```yaml
corpus:
  enabled: false
  path: null
  reference_enabled: false
  writeback_enabled: false
  writeback_modes: []
  indexing_enabled: true
  last_indexed_at: null
  include_patterns: []
  exclude_patterns: []
  suggest_to_new_projects: false
```

### Global Field Meanings

- `enabled`: master switch for persistent corpus support
- `path`: canonical configured folder path
- `reference_enabled`: whether ORCA may read the corpus
- `writeback_enabled`: whether ORCA may write into the corpus at all
- `writeback_modes`: allowed write-back categories such as `append_only_notes`, `summaries`, or `index_receipts`
- `indexing_enabled`: whether ORCA may maintain a reusable view of the corpus structure
- `last_indexed_at`: last successful index timestamp if tracking exists
- `include_patterns`: optional narrowing rules
- `exclude_patterns`: optional exclusion rules
- `suggest_to_new_projects`: whether new projects should inherit the corpus as an available suggestion instead of requiring manual setup each time

## Project Settings

Suggested project shape:

```yaml
corpus:
  inherit_global: true
  enabled: null
  reference_enabled: null
  writeback_enabled: null
  writeback_modes: []
  local_path_override: null
  disable_reason: null
```

### Project Field Meanings

- `inherit_global`: whether the project starts from global corpus settings
- `enabled`: explicit project override for corpus use
- `reference_enabled`: explicit project override for read/reference access
- `writeback_enabled`: explicit project override for write-back access within global limits
- `writeback_modes`: narrower project-level write-back allowance
- `local_path_override`: project-specific path override when a different corpus is required
- `disable_reason`: optional note explaining why the project turns corpus support off

## Default State

Disabled by default means all of these hold until the user opts in:

- `enabled: false`
- `reference_enabled: false`
- `writeback_enabled: false`
- no path-based reference behavior
- no write-back behavior

## Recommended Config Logic

- Enabling corpus support without a valid path should fail closed.
- Enabling write-back without reference access should be rejected.
- Project settings may narrow access but should not widen access beyond global policy.
- Changing the configured path should mark the previous index stale and require re-indexing before corpus-derived confidence is treated as current.

## Related Docs

- [corpus-setup.md](corpus-setup.md)
- [corpus-precedence.md](corpus-precedence.md)
- [corpus-writeback.md](corpus-writeback.md)
