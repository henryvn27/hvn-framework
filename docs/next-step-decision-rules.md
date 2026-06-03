# Next-Step Decision Rules

ORCA Framework chooses the next recommendation from the state of the current phase, risk, and verification evidence.

## Recommendation Choices

- proceed to next phase
- revise current phase
- ask for approval
- run QA
- split into milestones
- stop and clarify scope
- prepare for handoff

## Decision Order

1. If scope, intent, or success condition is unclear, stop and clarify scope.
2. If the next action is risky or expands scope, ask for approval.
3. If the phase artifact is incomplete, revise the current phase.
4. If implementation changed behavior, run review and QA.
5. If QA found durable behavior risk, create regression follow-up.
6. If the remaining work is too broad, split into milestones.
7. If ship evidence is complete, prepare for handoff or release.
8. Otherwise proceed to the next phase.

## Output Rule

State the chosen default first. Include only one alternate path unless the user asks for options.
