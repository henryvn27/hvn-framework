# Orchestration Decision Policy

Before delegating, ORCA-HVN should ask:

- is the task complex enough to benefit from delegation
- is there a specialist agent with a clear boundary
- would delegation reduce parent context pollution
- can this be parallelized
- do we need independent checking
- what is the failure cost if the worker goes wrong
- would a simpler approach be better

## Default Rule

If unclear, prefer not delegating.
