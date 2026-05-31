# GitHub Issue Integration

The session improvement loop should prefer draftable, inspectable issue artifacts first.

## Default Flow

1. Capture candidate locally
2. Check worthiness and overlap
3. Ask the user
4. If approved, draft the GitHub issue body
5. Submit only when the user chose submit

## When GitHub Access Is Unavailable

If GitHub integration is unavailable:

- write the draft issue locally
- link related candidates or duplicates
- state what should be submitted once GitHub access is restored

## Repository Target

Framework-improvement issues from this loop target the ORCA-HVN repository, not the user project being worked on.

## Quality Rule

The issue should be ready for an agent worker to pick up without needing to reconstruct the session from scratch.
