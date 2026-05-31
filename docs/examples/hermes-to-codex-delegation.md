# Example Hermes To Codex Delegation

## Controller Decision

Hermes keeps project control but delegates bounded implementation to Codex.

## Delegation Brief Shape

- objective: implement one approved milestone slice
- linked artifacts: issue, spec, plan
- scope: one module and tests
- constraints: no dependency changes, no scope expansion
- verification: local tests and receipt
- stop conditions: approval trigger or ambiguous failing verification

## Return Path

Codex returns:

- what changed
- verification evidence
- artifacts produced
- unresolved risks

Hermes ingests the result and decides whether QA, approval, or another delegation pass is next.
