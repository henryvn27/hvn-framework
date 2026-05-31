# Corpus Global Inherit

Global settings:

```yaml
corpus:
  enabled: true
  path: /Users/example/KnowledgeVault
  reference_enabled: true
  writeback_enabled: false
  suggest_to_new_projects: true
```

Project settings:

```yaml
corpus:
  inherit_global: true
```

Result:

- the project may reference the configured corpus
- the project may not write back
- ORCA should describe this as inherited corpus reference only
