# Corpus Re-Index After Path Change

Old settings:

```yaml
corpus:
  enabled: true
  path: /Users/example/OldVault
  reference_enabled: true
  writeback_enabled: false
  last_indexed_at: 2026-05-30T21:00:00Z
```

New settings:

```yaml
corpus:
  enabled: true
  path: /Users/example/NewVault
  reference_enabled: true
  writeback_enabled: false
  last_indexed_at: null
```

Expected ORCA behavior:

- treat prior index state as stale
- require re-indexing before describing corpus-backed continuity as current
- avoid mixing old-path assumptions with the new configured path
