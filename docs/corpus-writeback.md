# Corpus Write-Back

Corpus write-back is optional and off by default.

Reference access alone does not imply write permission.

## Default Rule

Do not write into the configured corpus unless the user explicitly enabled write-back.

## Recommended Write-Back Posture

Prefer non-destructive write patterns:

- append-only notes
- generated summaries in a known generated area
- index receipts or map artifacts
- change proposals that still require confirmation before source-note edits

Avoid by default:

- overwriting source notes
- bulk note rewrites
- destructive folder reorganizations
- silent edits that are hard to audit later

## Write-Back Modes

Suggested mode names:

- `append_only_notes`
- `summaries`
- `status_receipts`
- `index_receipts`
- `link_suggestions`
- `proposed_edits_only`

If a mode is not allowed, ORCA should not improvise a nearby write action.

## Confirmation Rules

Even when write-back is enabled globally, ORCA should still be conservative when a write is high impact.

Examples of actions that should still require confirmation:

- overwriting an existing note
- changing folder structure
- rewriting a hand-maintained note rather than appending a generated companion note
- writing outside the configured corpus path

## Missing Or Changed Path Behavior

If the path is missing, moved, or no longer mounted:

- fail closed
- do not write
- report the path failure clearly
- keep the corpus disabled for active use until the path is fixed

If the path changes:

- treat prior index state as stale
- require re-indexing before claiming corpus-backed continuity

## Related Docs

- [corpus-privacy.md](corpus-privacy.md)
- [corpus-precedence.md](corpus-precedence.md)
- [examples/corpus-writeback-confirm.md](examples/corpus-writeback-confirm.md)
