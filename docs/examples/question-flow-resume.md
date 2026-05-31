# Question Flow Resume Example

## Situation

An onboarding flow paused after the user answered the first round. A fresh agent resumes the next day.

## Existing State

```text
Flow ID: HVN-42__mobile-checkout-onboarding
Mode: onboarding
Last question asked: Who is the primary user and what should they be able to do?
Answer: Guest mobile shoppers should be able to recover from payment errors without losing cart contents.
Do not re-ask: primary user, target flow, core problem.
Waiting on: success signal and non-goals.
```

## Resume Behavior

The agent reads the question-round artifact and run memory, then asks only the next useful question:

```text
Got it: guest mobile checkout recovery is the core flow. What would count as success for the first version: fewer abandoned carts, clearer error messaging, preserved cart state, or something else?
```

## Output

The resumed flow updates:

- `templates/question-round.md`
- `templates/onboarding-intake.md`
- run memory current status

## Stop Decision

The flow stops once success signal, scope, and non-goals are clear enough to create the first spec.
