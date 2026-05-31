# Linear States

HVN expects workflow gates, not exact state names. Teams can rename states, use different Linear workflows, or opt out of Linear entirely, but equivalent gates should exist.

## Recommended State Mapping

| HVN Gate | Example Linear State | Meaning |
| --- | --- | --- |
| Intake | Triage | Issue needs clarification, labels, or routing. |
| Spec intake | Ready for Spec | The issue is clear enough for a spec agent. |
| Spec complete | Spec Ready | Spec is posted and awaiting approval or planning. |
| Plan approval | Ready for Build | Plan is approved and build can begin. |
| Implementation | In Progress | Build agent is actively working. |
| Review | In Review | Diff or artifact is ready for review. |
| QA | In QA | Product surface is ready for blind or guided QA. |
| Release | Ready to Ship | Required gates passed and ship checklist is needed. |
| Complete | Done | Evidence is posted and no blocking work remains. |

## Labels

Useful labels:

- `needs-triage`
- `needs-spec`
- `needs-plan`
- `needs-approval`
- `agent-build`
- `review-required`
- `blind-qa`
- `guided-qa`
- `security-review`
- `ready-to-ship`

## State Transition Discipline

Agents may recommend state transitions. They should only perform transitions when workspace policy allows it and required evidence is posted. In opt-out mode, record gate transitions in the chosen system of record.
