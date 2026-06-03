# Human Checkpoints

ORCA Framework human checkpoints are explicit pause and decision points for risky, ambiguous, or high-consequence work. They exist so humans can inspect state, approve or reject a move, and let execution resume without losing context.

## Supported Actions

- pause
- inspect
- approve
- reject
- revise and resume

## When To Use Checkpoints

Use checkpoints for:

- scope expansion
- destructive edits
- dependency or install changes
- new or high-risk tool and MCP server use
- architecture pivots
- ambiguous verification outcomes
- ship readiness

## Practical Rule

Checkpoints should slow down risky work, not routine work. If the action is already covered by an approved plan and has low blast radius, do not manufacture unnecessary pauses.

## Checkpoint Flow

1. pause the workflow at a clear boundary
2. produce a checkpoint request
3. let the human inspect the relevant state and artifacts
4. record approve, reject, or revise-and-resume
5. resume from the updated state instead of restarting blindly

## Artifact Model

- [templates/checkpoint-request.md](../templates/checkpoint-request.md)
- [templates/checkpoint-decision.md](../templates/checkpoint-decision.md)

## Relationship To Approval Gates

Approval gates answer whether a risky action needs human approval.
Checkpoints define the practical pause, inspection, decision, and resume workflow around that approval.

Use approval gates to classify the risk.
Use checkpoints to operationalize the intervention.
