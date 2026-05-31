# Corpus Missing Path

Global settings:

```yaml
corpus:
  enabled: true
  path: /Volumes/Archive/ResearchVault
  reference_enabled: true
  writeback_enabled: false
```

Observed condition:

- the configured path is missing or not mounted

Expected ORCA behavior:

- fail closed
- do not read from the corpus
- do not write to the corpus
- report the missing path directly instead of pretending the corpus is still available
