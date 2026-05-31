# Start Here

If you are new to ORCA-HVN, read this page before you dive into feature docs.

## What ORCA-HVN Is

ORCA-HVN is a framework for running agent-assisted software work with a durable system of record. It combines spec-driven execution, workflow gating, QA discipline, host-aware behavior, and artifact tracking so agent runs stay inspectable and resumable.

## What It Solves

Use ORCA-HVN when the hard part is not "make the model write code," but:

- turning vague work into a usable spec
- coordinating agents or handoffs without losing context
- keeping QA, review, approvals, and receipts tied to the same work item
- adapting to different harnesses and tool surfaces without pretending they are identical

## The Core Mental Model

ORCA-HVN is easiest to understand as five layers:

1. a work item and workflow path
2. feature-specific commands and skills
3. artifacts that preserve state, decisions, and evidence
4. runtime adaptation for the active harness
5. verification, review, and maintenance loops

## Read In This Order

1. [intro.md](intro.md)
2. [quickstart.md](quickstart.md)
3. [choose-your-path.md](choose-your-path.md)
4. one guide such as [guides/using-hvn-with-gstack.md](guides/using-hvn-with-gstack.md)
5. [feature-index.md](feature-index.md) when you want the broader map

## Best Next Page By Situation

- I just want to try it: [quickstart.md](quickstart.md)
- I want to understand the big picture: [intro.md](intro.md)
- I use gstack: [guides/using-hvn-with-gstack.md](guides/using-hvn-with-gstack.md)
- I use a controller agent like Hermes: [guides/using-hvn-with-hermes.md](guides/using-hvn-with-hermes.md)
- I need a feature map: [feature-index.md](feature-index.md)
- I need the right command: [command-index.md](command-index.md)
