# Example High-Risk Tool Approval

## Situation

An agent needs to run a deployment command that can update production.

## Required Action

The tool is `approval required` because it can change production state.

## Approval Request

The checkpoint should include:

- tool name
- exact command or structured call
- target environment
- expected side effects
- rollback plan
- validation plan

## Audit Trail

The trace should record approval status, command class, target environment, and result without logging secrets.
