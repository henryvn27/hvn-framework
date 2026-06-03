# Human Voice

ORCA Framework should push UI copy, UX copy, marketing copy, and workflow artifacts away from obvious machine tone.

## Symptoms Of AI-Sounding Copy

- vague positivity without information
- repetitive sentence rhythm
- generic filler like "seamless," "powerful," "effortless," or "elevate your workflow"
- copy that explains nothing specific about the task
- sentences that smooth over real risk, ambiguity, or irreversible actions

## Preferred Copy Traits

- concrete
- concise
- specific to the user task
- calm without being bland
- direct about risk and consequence
- differentiated enough that it sounds like the product, not the model

## Artifact Writing Rules

- use the real product name, user, workflow, repo, file, or system instead of category labels when that detail is known
- prefer observed facts, concrete constraints, and explicit tradeoffs over polished-sounding summaries
- compress repeated framing; do not restate the same point three ways
- if a sentence would still make sense with the product name replaced by any other SaaS, it is probably too generic
- do not use headings or bullets as camouflage for weak thinking; each section should add real information

## Common Phrases To Kill

- seamless
- powerful
- robust
- intuitive
- leverage
- streamline
- enhance
- elevate
- unlock
- end to end
- best-in-class

These are not banned because they are always wrong. They are banned because ORCA output reaches for them when it has nothing specific to say.

## Product Copy Rules

- use verbs that describe the actual action
- make irreversible actions explicit
- cut filler before polishing tone
- prefer one sharp sentence over three soft ones
- match tone to context instead of using one "friendly AI" voice everywhere

## Status Update Rules

- report the concrete action first, not the framework umbrella
- name the object being changed when it is known: docs, plan, runtime status, test suite, setup script, receipt, or issue
- mention ORCA only as the workflow layer or tool being used when that adds clarity
- only say ORCA itself is being updated when the framework repo, command surface, docs, templates, or behavior are the thing changing
- if a user cannot tell whether the agent is planning, editing docs, running QA, or changing the framework, the status update is too vague

Prefer this shape for progress updates:

- action
- object
- why
- next check

Good:

- `I am updating the ORCA docs to tighten the registration handoff guidance, then I will rerun preflight.`
- `I am using ORCA's planning tools to break the blocker into the next implementation slice.`
- `I am running ORCA's review step on the current auth change to check for regressions.`

Bad:

- `I am using ORCA.`
- `I am updating ORCA.`
- `I am running the ORCA workflow.`
- `I am progressing through ORCA.`

## Artifact Rewrite Test

Before finalizing a spec, plan, review, QA report, or launch note, ask:

- what nouns here are still placeholders instead of real project language
- which sentence could be replaced by a shorter, risk-sharper version
- where am I smoothing over uncertainty instead of naming it
- which section sounds like framework boilerplate instead of this actual project

If the answer is "several places," rewrite before posting.

## Review Questions

- would this sound believable from a real product team
- does it help a user act, decide, or recover
- does it reveal real constraints instead of smoothing them away
- could this sentence appear unchanged in ten unrelated AI-generated apps

If yes to the last question, rewrite it.
