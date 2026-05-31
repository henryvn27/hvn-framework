# Run Memory Update Example

## Situation

The builder finished command docs and discovered the installer does not create `.hvn/memory/`.

## Command

```text
hvn-memory-update
```

## Update

```text
Updated at: 2026-05-31T11:05:00-04:00

Current status: Core memory docs, template, skill, and commands are drafted. Installer still needs to create `.hvn/memory/runs/archive`, and validation should require the new command/docs surface.

Failed attempts:
- None.

Next steps:
1. Patch install scripts.
2. Patch validation required files and minimum counts.
3. Run validation and install smoke tests.
```

## Episodic Entry

```text
2026-05-31T11:05:00-04:00 - Builder - Command surface added. Installer gap found: install script copies framework files but does not create the canonical memory directory. Updating installer and verify script next.
```
