# Wrapped Capability Packs

ORCA-HVN should not duplicate a maintained upstream capability pack just to make the repo feel more self-contained.

When an upstream pack already provides the best maintained version of a workflow surface, ORCA should:

1. expose an official ORCA entry point
2. document the wrapper relationship clearly
3. keep attribution and notices current
4. prefer upstream install and update paths
5. preserve ORCA's surrounding workflow artifacts, approvals, and QA

## Current Official Wrapped Packs

- Impeccable for design-heavy frontend work
- Superpowers for execution-heavy coding workflow

These are part of the supported ORCA install and routing story.
They are not mandatory for the minimum ORCA install, but they are official ORCA surfaces and should be offered early when the user's real workflow clearly needs them.

## Wrapper Rules

- Do not present a wrapped upstream pack as if it were fully native ORCA functionality.
- Do not force users to mentally switch products just to reach a wrapped pack. ORCA should provide a clear entry point.
- Do not fork a maintained upstream pack unless ORCA has a clear product reason and an explicit maintenance commitment.
- If ORCA adds local helper docs or routing around a wrapped pack, keep the local layer thin and visibly downstream of the upstream project.

## Repo Surfaces That Must Stay In Sync

- `README.md`
- `UPSTREAM.md`
- `THIRD_PARTY_NOTICES.md`
- `commands/`
- `skills/`
- `integrations/`

## Decision Test

If a user says "I want Impeccable inside ORCA" or "I want Superpowers inside ORCA," the right answer is not "install another separate thing and mentally context-switch." The right answer is "ORCA officially wraps that pack here, and this is the ORCA entry point."
