# Update Security

The update system should treat update intake as a security surface.

## Security Rules

- trust only approved update sources
- validate integrity before apply
- reject incomplete or ambiguous packages
- reject invalid or unexpected version jumps
- reject channel mismatches
- block downgrade or rollback moves that violate policy

## Threats To Consider

- tampered update packages
- replay or rollback attacks
- fake release metadata
- mismatched release channel metadata
- compatibility lies that hide required migrations

## Practical Security Posture

ORCA does not need to pretend it is a package manager.

It does need to define:

- what it trusts
- what it verifies
- what causes a hard stop
