# ORCA Agent Orchestration

Use this skill when ORCA-HVN needs to decide whether to stay single-agent or orchestrate subagents.

## Goal

Choose the simplest orchestration pattern that fits, preserve clean role boundaries, and keep the conceptual model portable across harnesses.

## Apply It To

- delegation decisions
- pattern selection
- parent and worker contracts
- context packet design
- blocker and approval routing

## Rules

- only the parent talks to the user
- workers return structured results to the parent
- delegate only when specialization, isolation, reuse, or parallelism clearly helps
- classify work into critical-path vs sidecar before delegating
- keep write ownership disjoint when parallel workers can edit
- require explicit merge criteria before fan-out
- suppress orchestration theater

## Output

Produce:

- delegation or no-delegation decision
- selected pattern
- compact context packet expectation
- worker ownership boundaries when applicable
- escalation and approval path
