# Update Rollout Strategy

Updates should not jump instantly from unseen to universal.

## Rollout Stages

- internal or maintainer validation
- preview or beta exposure
- limited stable exposure
- broader stable exposure
- full stable promotion

## Stage Rules

- lower-risk channels first
- pause when regressions appear
- stop when verification or compatibility evidence weakens
- keep rollback ready at every stage

## Good Use Cases

- canary stable rollout
- beta-only preview of a new framework capability
- plugin-sensitive updates held back until compatibility is confirmed
