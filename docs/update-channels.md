# Update Channels

Channels determine how quickly a user receives ORCA changes and how much risk they accept.

## Stable

- audience: most users
- frequency: normal release cadence
- risk: lowest
- auto-apply: allowed only for verified low-risk updates in a permissive mode
- rollback expectation: strong

## Beta

- audience: users who want earlier access
- frequency: more frequent than stable
- risk: moderate
- auto-apply: usually prompt-first, not silent
- rollback expectation: required

## Dev Or Nightly

- audience: maintainers, testers, contributors
- frequency: highest
- risk: highest
- auto-apply: never the default
- rollback expectation: mandatory and frequently used

## Pinned Or Manual

- audience: users who need strong local control
- frequency: none unless manually chosen
- risk: chosen deliberately
- auto-apply: no
- rollback expectation: depends on the update the user chose

## Default

The default should be `stable` with a prompt-first mode.
