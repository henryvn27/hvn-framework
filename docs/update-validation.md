# Update Validation

After an update, ORCA should be able to say whether the framework still looks healthy.

## Validate After Update

- install integrity
- config integrity
- plugin compatibility
- harness compatibility
- first success path
- whether rollback is recommended

## Doctor Relationship

`orca-doctor` should be the main human-facing check surface after update.

It should summarize:

- core install state
- compatibility caveats
- plugin or harness breakage risk
- whether rollback or recovery is recommended
