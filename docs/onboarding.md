# Onboarding

Onboarding turns an unclear request, issue, or project idea into enough context for a useful spec.

It should also act as a teaching surface. A good onboarding flow helps a user understand how ORCA Framework works while it is gathering the information needed for the next step.
That teaching should feel like lightweight support, not correction.

## Output

Onboarding should produce:

- intake summary
- known constraints
- unresolved questions
- recommended workflow
- draft spec skeleton when useful
- enough clarity that the user does not need a teammate to explain what ORCA Framework should do next

## Teaching Role

Onboarding is one of the main places where ORCA Framework should reduce the need for manual training.

It should:

- ask only useful questions
- start with a stronger first-pass interview when user, success, or scope are still unclear
- capture interaction preferences early enough that the rest of onboarding feels right for this user
- use structured harness question tools when available instead of turning every intake into a wall of text
- explain the current stage briefly
- make the next action obvious
- help the user build a correct mental model of the workflow
- use the user's actual notes, vault, and existing artifacts as the teaching context when available
- keep optional complexity hidden until the first useful path is clear
- resolve as much ambiguity as possible through inspection and strong working assumptions before asking the user to decide

It should not:

- drown the user in framework jargon
- turn onboarding into a lecture
- require a human operator to translate the system for them
- replace strong vault evidence with generic best-practice filler
- surface a catalog of optional tools before the first useful outcome
- rely on a README that is overloaded with subsystem detail instead of routing the user to the right next document
- escalate early when the next useful move could be made safely from existing evidence

## Exit Guidance

When onboarding completes, run `orca-next` unless the next action is already being executed. The default next move is usually `orca-spec`.

Next-step guidance should be brief:

- what was clarified
- whether any blocker remains
- the recommended next action
- what done means for the spec phase

Do not over-interview. If more questions would not materially improve the first spec, record assumptions and move forward.
If a small context or prompting hint would help the user next time, keep it to one calm concrete nudge.

## Default First-Pass Interview

When onboarding begins from a vague request, the first pass should usually cover:

- who the user is
- what job they are trying to finish
- what success looks like
- what platform or repo is in scope
- what constraints or deadlines matter
- what data or integrations matter
- what could go wrong
- what is out of scope
- how much explanation the user wants
- how involved the user wants to be during execution
- whether ORCA should stop at each step, major checkpoints, or mostly only at blockers and completion
- whether ORCA should proactively use goal mode or background mode for safe unattended work
- how technical ORCA can be
- whether ORCA should ask more questions now or make stronger assumptions and move
- whether any preference should be remembered beyond this run

This should feel more like a focused operator interview than a generic questionnaire.
