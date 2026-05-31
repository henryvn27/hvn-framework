# Corpus Project Disabled

Global settings:

```yaml
corpus:
  enabled: true
  path: /Users/example/KnowledgeVault
  reference_enabled: true
  writeback_enabled: false
```

Project settings:

```yaml
corpus:
  inherit_global: true
  enabled: false
  disable_reason: keep this client repo isolated from the shared vault
```

Result:

- project OFF overrides global ON
- ORCA should not read from the global corpus in this project
- ORCA should report the explicit project disable if corpus access is requested
