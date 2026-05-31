# Onboarding

Onboarding turns an unclear request, issue, or project idea into enough context for a useful spec.

It should also act as a teaching surface. A good onboarding flow helps a user understand how ORCA-HVN works while it is gathering the information needed for the next step.

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

It should not:

- drown the user in framework jargon
- turn onboarding into a lecture
- require a human operator to translate the system for them

## Exit Guidance

When onboarding completes, run `orca-next` unless the next action is already being executed. The default next move is usually `orca-spec`.

Next-step guidance should be brief:

- what was clarified
- whether any blocker remains
- the recommended next action
- what done means for the spec phase

Do not over-interview. If more questions would not materially improve the first spec, record assumptions and move forward.
