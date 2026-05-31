# Intro To HVN

HVN is a framework for running software work with agents through a durable system of record.
It gives teams a consistent way to move from idea to shipped change without relying on fragile chat context.

## The Core Idea

HVN treats agent work as an operational workflow, not a sequence of isolated prompts.
That means:

- each meaningful task has a durable work item
- ambiguous requests are clarified before implementation
- non-trivial work gets a written spec
- planning, build, review, QA, and shipping all verify against that spec
- run memory preserves continuity between agents
- host-specific behavior is adapted without rewriting the shared workflow

## Who It Is For

HVN is for teams and builders who want:

- better intake than "just start coding"
- cross-harness consistency across Claude Code, Codex, OpenCode, and Hermes
- stronger QA boundaries, especially blind first-look testing
- durable artifacts instead of hidden chat history
- the option to use Linear by default or opt out to another system of record

## What Makes It Different

- Interview-first intake instead of immediate implementation
- Specs as execution contracts instead of informal prompt drift
- Run memory for resumable work
- Blind-to-briefed QA separation
- Host adapters that preserve one shared operating model

## Read Next

- [start-here.md](start-here.md)
- [quickstart.md](quickstart.md)
- [choose-your-path.md](choose-your-path.md)
- [concept-map.md](concept-map.md)
