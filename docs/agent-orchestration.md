# Agent Orchestration

ORCA-HVN treats agent orchestration as a portable operating model.

The model should survive harness changes, feature differences, and vendor syntax differences.

## Core Questions

Orchestration means answering:

- who runs next
- what context they get
- what result they must return
- what happens if they fail, stall, or need approval
- who communicates with the user

## Core Principles

- orchestrate by capability, not by harness
- parent agent owns user communication
- subagents are workers, not direct responders
- delegate only when specialization, isolation, reuse, or parallelism clearly helps
- isolated context beats giant shared context
- explicit handoffs beat implicit magic
- observability and approvals matter as much as delegation
- use the simplest orchestration pattern that fits the job

## Scope

ORCA-HVN orchestration covers:

- delegation decisions
- parent and subagent role boundaries
- context passing
- blocker and escalation handling
- approvals
- result compression and ingestion
- harness mapping

Read next:

- [harness-agnostic-orchestration.md](harness-agnostic-orchestration.md)
- [parent-agent-vs-subagent.md](parent-agent-vs-subagent.md)
- [orchestration-patterns.md](orchestration-patterns.md)
