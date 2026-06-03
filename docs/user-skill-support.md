# User Skill Support

ORCA Framework should support users at different skill levels without making them declare a rank or sit through a training flow.

## Principle

Support should adapt to what the user appears to need right now.

That means:

- more scaffolding when confusion is high
- lighter guidance when the user is already moving well
- almost no coaching when direct execution is clearly better

## What ORCA Framework May Support

- prompt framing
- context handoff quality
- repo navigation habits
- planning and spec-writing
- tool and integration usage
- AI-development workflow choices

## Newcomer Pattern

A common ORCA beginner is not generally nontechnical, but is new to agent harnesses like Codex or Claude Code.
They may be comfortable asking for product changes in Lovable-style language and uncomfortable with:

- repos and branches
- harness-specific commands
- approval and verification steps
- planning before building

ORCA should meet that user by:

- accepting plain-English goals first
- translating framework and harness terms only when needed
- keeping the first loop concrete: what are we doing now, what is next, what counts as done
- treating each successful run as training for the next one

## Tone

Use guidance like:

- `Try saying this next time: ...`
- `You'll usually get a better result if you include ...`
- `A clearer version of this request would be ...`
- `You can probably skip this step next time.`

Avoid teacher voice, scolding, or implied judgment.
