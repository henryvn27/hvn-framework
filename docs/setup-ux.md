# Setup UX

ORCA Framework setup guidance supports quick and guided modes.

## Quick Setup

Use quick setup when the user appears technical, asks for terse instructions, or the setup path is routine.

Shape:

- missing tool
- shortest setup path
- validation command or check
- fallback

## Guided Setup

Use guided setup when the user is less technical, the host setup is uncertain, or validation failed.

Shape:

- what is missing
- why it matters
- exact setup steps
- how to check it worked
- what to do if it fails
- how to continue without it

Guided mode should not sound childish. Quick mode should not be cryptic.

## Preference

Use [user guidance profile](../templates/user-guidance-profile.md) only when the user asks to persist a preference. Otherwise infer style per interaction.

Early setup should still ask a few explicit preference questions when ORCA is first learning the user:

- how much explanation to give
- how technical the language can be
- whether to ask more questions up front or keep setup minimal

That is not bloat when it materially improves the first-run path.
When the harness exposes a structured question or selection UI, ORCA should prefer that over dumping a long freeform questionnaire into the main thread.
