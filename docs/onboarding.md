# Onboarding

Onboarding turns an unclear request, issue, or project idea into enough context for a useful spec.

It should also act as a teaching surface. A good onboarding flow helps a user understand how ORCA-HVN works while it is gathering the information needed for the next step.
That teaching should feel like lightweight support, not correction.

## Output

Onboarding should produce:

- intake summary
- known constraints
- unresolved questions
- recommended workflow
- draft spec skeleton when useful
- enough clarity that the user does not need a teammate to explain what ORCA-HVN should do next

## Teaching Role

Onboarding is one of the main places where ORCA-HVN should reduce the need for manual training.

It should:

- ask only useful questions
- explain the current stage briefly
- make the next action obvious
- help the user build a correct mental model of the workflow
- use the user's actual notes, vault, and existing artifacts as the teaching context when available
- keep optional complexity hidden until the first useful path is clear

It should not:

- drown the user in framework jargon
- turn onboarding into a lecture
- require a human operator to translate the system for them
- replace strong vault evidence with generic best-practice filler
- surface a catalog of optional tools before the first useful outcome

## Exit Guidance

When onboarding completes, run `orca-next` unless the next action is already being executed. The default next move is usually `orca-spec`.

Next-step guidance should be brief:

- what was clarified
- whether any blocker remains
- the recommended next action
- what done means for the spec phase

Do not over-interview. If more questions would not materially improve the first spec, record assumptions and move forward.
If a small context or prompting hint would help the user next time, keep it to one calm concrete nudge.
