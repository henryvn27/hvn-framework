# Corpus Setup

Set up corpus support only when the user wants a stable reusable knowledge source.

## Setup Flow

When enabling corpus support, ORCA should ask for exactly the configuration needed to keep behavior inspectable:

1. corpus folder path
2. whether ORCA may reference that corpus
3. whether ORCA may write back to that corpus
4. which write-back kinds are allowed if write-back is enabled
5. whether the configuration is global only or should be suggested to new projects

## Required Decisions

### Folder Path

The user must provide a concrete folder path. ORCA should not guess a corpus path from vague statements.

### Reference Permission

Reference permission controls whether ORCA may read and ground itself in the configured corpus.

### Write-Back Permission

Write-back permission is separate and stays off unless the user explicitly opts in.

### Allowed Write-Back Kinds

If write-back is enabled, the policy should say what ORCA may write. Examples:

- append-only notes
- generated summaries
- link maps or indexes
- status receipts
- never overwrite source notes

### Scope

The user should choose one of these setup scopes:

- global only
- global and suggested to new projects
- project-specific only

## Setup Rules

- If the path does not exist, do not enable corpus access.
- If reference is off, write-back must also stay off.
- If global write-back is off, project write-back cannot bypass it.
- If a project explicitly disables corpus use, that project setting wins.

## Setup Outputs

A complete setup should produce:

- global corpus settings when global scope is chosen
- project corpus settings when project scope is chosen
- a clear access summary
- a reminder when re-indexing is needed after a path change

## Related Docs

- [corpus-settings.md](corpus-settings.md)
- [corpus-writeback.md](corpus-writeback.md)
- [corpus-precedence.md](corpus-precedence.md)
