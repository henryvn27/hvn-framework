# Example Schema Migration

## Change

Move the hypothetical `receipt_status` field from a freeform note into the required `result_status` field in `execution_receipt` `2.0.0`.

## Migration Note

- artifact family: execution_receipt
- from version: 1.0.0
- to version: 2.0.0
- breaking: yes

## Guidance

- copy the prior receipt status into `result_status`
- leave the old payload intact for history
- record the change in a schema migration note rather than silently rewriting history
