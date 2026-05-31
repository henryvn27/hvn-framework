# Corpus Precedence

Corpus support uses explicit precedence so global convenience does not override project safety.

## Precedence Order

1. project explicit disable
2. project explicit narrowing rules
3. project explicit path override within allowed policy
4. global corpus settings
5. framework defaults

## Practical Rules

### Project OFF Overrides Global ON

If a project sets corpus support off, that project should not read from the global corpus even when the global corpus is enabled.

### Global OFF Blocks Project Read

If the global corpus feature is disabled and the project only inherits global settings, corpus reference stays off.

### Global Write-Back OFF Blocks Project Write-Back

A project should not be able to turn write-back on if the global policy keeps write-back off.

### Project Narrowing Is Allowed

A project may narrow access relative to the global policy. Examples:

- use reference only and disable write-back
- allow only summaries, not append-only notes
- use a smaller project-specific sub-path

### Project Widening Is Not Allowed By Default

A project should not silently widen beyond global permissions. If global write-back is off, the project cannot opt itself into write-back.

## Missing Path Rule

If the effective corpus path is missing:

- corpus reference is unavailable
- corpus write-back is unavailable
- ORCA should report the path failure rather than substituting generic assumptions

## Re-Index Rule

If the effective path changes, prior corpus index state should be treated as stale until refreshed.

## Related Docs

- [corpus-settings.md](corpus-settings.md)
- [corpus-writeback.md](corpus-writeback.md)
- [examples/corpus-project-disabled.md](examples/corpus-project-disabled.md)
