# Example Background Blocked Permission

## Situation

The run needed GitHub write access to open a draft issue, but no approved token or connector path was available.

## Final State

`blocked-on-permission`

## Note

The run wrote the draft issue text locally, recorded the exact missing permission, and stopped instead of retrying the same external call.
