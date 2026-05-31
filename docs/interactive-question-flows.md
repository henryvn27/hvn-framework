# Interactive Question Flows

Interactive question flows are HVN's command-driven pattern for gathering missing context through short, focused clarification rounds. They are designed for host environments that expose slash commands, command palettes, chat commands, or similar command UI entry points.

HVN does not control the host application's native modal, popup, or palette rendering. The framework defines the interaction behavior, command structure, artifacts, and stop conditions. The host app decides whether the user sees a popup, command palette panel, chat prompt, sidebar, or another UI shell.

## What A Question Flow Is

A question flow is a guided clarification dialog that:

- starts from a command such as `/hvn:onboard`, `/hvn:discover`, `/hvn:spec`, `/hvn:linear-intake`, or `/hvn:blind-qa-brief`
- asks one high-leverage question or a compact batch
- waits for the user's answer
- summarizes what was learned when useful
- decides whether another question would materially improve the next artifact
- stops when enough information exists
- writes a structured artifact or issue update

The experience should feel deliberate and lightweight, not like a giant survey form.

## Why Not Static Forms

Static forms ask every possible question upfront. HVN question flows ask only the next useful question.

| Static form | HVN question flow |
| --- | --- |
| Large fixed questionnaire | Progressive rounds |
| Same fields for every task | Questions selected from current ambiguity |
| User must complete the whole form | Flow stops when enough signal exists |
| Hard to resume without rereading | Saved rounds and run memory enable resume |
| Good for predictable data entry | Good for unclear product, spec, QA, and issue intake |

Use static templates for final artifacts. Use question flows to gather the context needed to fill them.

## Host Command Interfaces

Supported host patterns include:

- slash commands
- command palettes
- agent command files
- chat commands
- issue delegation commands
- automation-triggered command prompts

The host can render these differently. HVN should present itself consistently:

1. Short introductory line.
2. One question or a 2-3 question batch.
3. Wait for the answer.
4. Briefly reflect back important answers when useful.
5. Ask the next best question or stop.
6. Emit the output artifact.

Do not claim that HVN created a host-native modal unless the host actually did.

## One Question Versus Small Batches

Ask one question when:

- the answer determines the next question
- the user is likely to need thought
- the question involves priority, scope, risk, or approval
- the flow is in a command-palette or popup-like interface with limited space
- interruption and resume are likely

Ask a 2-3 question batch when:

- questions are independent
- answers are short
- the user already has the context loaded
- the flow needs a small set of objective facts such as platform, repo, and target user

Avoid larger batches unless the user explicitly requests a form.

## Enough Information Rule

Stop asking when the next artifact can be produced with clear assumptions and known unresolved questions.

Enough information usually means:

- objective is clear
- user or actor is identified
- target surface or repo is known
- success criteria are testable enough for the next step
- risky assumptions are either answered or recorded
- non-goals or boundaries are clear enough
- next command can proceed without inventing scope

Do not continue questioning just because more details could be nice. Ask only when the answer would change the next useful artifact.

## Pause And Resume

Question flows are interruption-friendly. A flow can pause when:

- the user does not answer
- the user says to come back later
- Linear or another system of record is unavailable
- the next answer requires another stakeholder
- the agent needs to inspect repo context before asking more

To resume:

1. Read the latest question-round artifact.
2. Read run memory when available.
3. Identify answered questions and inferred constraints.
4. Do not re-ask answered questions unless the answer is stale or contradictory.
5. Ask the next highest-leverage unresolved question.

Store partial state in `templates/question-round.md`, `templates/clarification-summary.md`, or run memory.

## Answer Capture

Answers should be captured into structured artifacts:

- onboarding answers -> `templates/onboarding-intake.md`
- clarification answers -> `templates/clarification-summary.md`
- QA briefing answers -> `templates/qa-brief-intake.md`
- Linear issue answers -> `templates/linear-question-sync.md`
- memory state -> `templates/run-memory.md`

Each artifact should distinguish:

- direct answers
- inferred constraints
- assumptions
- unresolved questions
- ready-for-next-step decision

## Modes

### Onboarding Mode

Goal: understand a product, feature, or project enough to create an intake summary and first spec skeleton.

Typical questions:

- Who is this for?
- What problem should this solve first?
- What should be explicitly out of scope?
- What surface or repo is involved?

### Feature Clarification Mode

Goal: reduce ambiguity before spec or planning.

Typical questions:

- What user behavior should change?
- What existing flow should be preserved?
- What acceptance signal proves this works?

### Bug Clarification Mode

Goal: capture reproduction and expected behavior.

Typical questions:

- What did you do?
- What happened?
- What should have happened?
- Where can it be reproduced?

### Research Scoping Mode

Goal: define what evidence is needed and how it will be used.

Typical questions:

- What decision will this research support?
- What sources are acceptable?
- What would change the plan?

### QA Briefing Mode

Goal: gather the minimum allowed test context.

Typical questions:

- What platform or build should be tested?
- What launch instructions are allowed?
- Is this blind QA, briefed QA, simulator QA, or browser QA?
- What context may the tester receive?

## UX Principle

HVN should feel like a guided clarification dialog, not a giant interrogation form. The best flow is calm, short, and purposeful:

- ask less
- ask better
- reflect only what matters
- stop as soon as the next artifact can be created

## Quality Bar

A good question flow:

- asks no redundant questions
- avoids facts already present in the issue, memory, or artifact
- makes unanswered risk visible
- records answers in a reusable artifact
- supports pause and resume
- does not overclaim host UI control
- ends with a concrete next command or artifact
