# Spec To Plan Example

## Spec Requirement

```text
Each at-risk account must show at least one risk reason.
```

## Milestone Plan

```text
Milestone 1: Data mapping
Requirements covered: risk reasons from usage, invoice, and support signals.
Tasks:
- inspect existing account data loader
- add risk reason mapping
- preserve current table shape
Verification:
- unit test risk reason mapper
- sample account shows expected reason

Milestone 2: UI display
Requirements covered: visible risk reasons in dashboard table.
Tasks:
- add risk reason column
- add empty state
Verification:
- dashboard renders risk reasons
- empty state renders when no accounts are at risk
```

## Rule

Each milestone maps back to a spec requirement. Work that does not map must be justified or removed.
