---
name: orca-model-council
description: Run a five-subagent council with independent first opinions, anonymized peer critique, and a final chair synthesis.
---

# ORCA Model Council

## What This Skill Is

A reusable ORCA Framework deliberation pattern adapted from the LLM Council idea: multiple subagents answer independently, review each other anonymously, and a parent chair synthesizes the final judgment.

This is for hard judgment calls, not routine execution.

## Trigger

Use when the user wants:

- serious brainstorming instead of one-shot ideation
- a better product or business idea
- feature evaluation before implementation
- market or wedge evaluation
- a multi-angle written judgment with explicit disagreement

## Do Not Trigger

Do not use when:

- the task is already a straightforward implementation job
- one clear research or planning pass is enough
- the extra orchestration would add more ceremony than insight
- the user needs a quick answer, not a council

## Council Shape

Default council size: 5 subagents plus 1 parent chair.

The parent talks to the user.
The five workers do not.

Use role diversity, not model-brand theater.
When native subagents are unavailable, preserve the same council structure as sequential pseudo-subagents with isolated context packets.

## Default Deliberation Stages

### Stage 1: First Opinions

Spin up 5 subagents in parallel when possible.
Each one receives:

- the same core question
- the same constraints
- the same artifact goal
- its own role framing

Each subagent returns:

- initial answer
- strongest supporting reasoning
- biggest uncertainty
- provisional recommendation

### Stage 2: Anonymous Peer Review

Anonymize the stage-1 outputs as Response A-E.

Each subagent reviews the other responses, not its own.
Require each reviewer to rank the responses and explain:

- which response best matches the actual decision
- which response is overconfident
- which response sees the biggest hidden risk
- what idea from another response should survive into the final synthesis

### Stage 3: Chair Synthesis

The parent chair reads:

- all first opinions
- all peer critiques
- the aggregate ranking
- repeated disagreement patterns

Then produces:

- final synthesis
- direct recommendation
- main reasons
- strongest objections
- confidence level
- next action

## Output Contract

Use:

- `templates/council-brief.md`
- `templates/council-opinion.md`
- `templates/council-synthesis.md`

The final output must preserve disagreement instead of flattening it into fake consensus.

## Quality Bar

The council should produce a better decision, not just more words.
A good council output makes tradeoffs, uncertainty, and the next action clearer than a single-agent answer would.

## Common Failure Modes

- five workers saying the same thing in different words
- using role labels that do not change reasoning
- skipping anonymous critique and jumping straight to a summary
- hiding disagreement in a bland final synthesis
- treating average opinion as automatically correct

## Relationship To Other ORCA Framework Skills And Commands

Works with `orca-agent-orchestration`, `orca-business-ideation`, `orca-research`, `orca-plan-idea`, and `orca-evaluate-idea`.
