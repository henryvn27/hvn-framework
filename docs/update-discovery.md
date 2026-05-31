# Update Discovery

Update discovery should be explicit and inspectable.

## What Discovery Should Produce

- current version
- available version
- selected channel
- release notes summary
- compatibility notes
- plugin impact
- harness impact
- migration requirement
- rollback support status

## Discovery Inputs

- local installed version
- selected update channel
- trusted release source
- compatibility policy
- local plugin, harness, and integration state

## Discovery Output

Use:

- [templates/update-manifest.md](../templates/update-manifest.md)
- [templates/update-candidate.md](../templates/update-candidate.md)

## Decision Rule

An update candidate is not ready to apply just because it exists.

Discovery only says:

- what is available
- whether it looks compatible enough to continue to verification
