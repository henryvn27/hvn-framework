# Example Approval Request

## Proposed Action

Upgrade the install script to add a new default behavior for global setup.

## Why Approval Is Needed

The change affects user-facing install behavior and could break existing adopters if the assumption is wrong.

## Scope

- `install/install.sh`
- `install/verify-install.sh`
- install docs

## Alternatives Considered

- ship a docs-only recommendation first
- keep the behavior behind a flag

## Verification And Rollback

Verify local and global install paths in CI. Roll back by reverting the install-script change if adoption reports problems.

## Decision Needed

- Approve only behind a flag
