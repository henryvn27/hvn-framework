# Pattern Selection

Use the simplest orchestration pattern that fits the problem.

## Selection Order

1. single agent
2. one worker with a parent
3. sequential pipeline
4. fan-out or maker-checker only when the split is justified
5. adaptive or long-running patterns only when simpler paths would fail

## Decision Inputs

- task complexity
- independence of branches
- context-pollution risk
- need for independent checking
- latency tolerance
- approval and risk profile
- harness support level
