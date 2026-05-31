# Context Passing

ORCA-HVN should pass only the context a subagent actually needs.

## Required Packet Fields

- task
- scope
- inputs
- relevant background
- constraints
- expected output schema
- stop conditions
- escalation rules
- approval requirement

## Rules

- do not dump the whole parent thread into every worker
- preserve goals, constraints, and success criteria
- keep packets compact and explicit
- prefer linked artifacts over repeated prose when possible
