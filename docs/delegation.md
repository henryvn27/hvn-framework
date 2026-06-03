# Delegation

Delegation lets a controller route bounded work to another harness or collaborator without losing ORCA-HVN structure.

## When To Delegate

A controller should delegate when:

- another harness is better at the task
- direct execution would blur controller and executor responsibilities
- the task can be bounded clearly
- the return path can be inspected and ingested

Good delegation targets include:

- implementation
- focused repo research
- QA passes
- review tasks
- bounded goal-mode execution
- CI failure triage
- PR feedback handling
- browser-debug side branches

## Good Delegation Brief

A good delegation brief includes:

- task objective
- named ownership boundary
- linked issue, spec, milestone, or goal
- in-scope work
- out-of-scope work
- constraints
- required artifacts
- verification requirements
- stop conditions
- escalation rules
- required return format

Use [templates/delegation-brief.md](../templates/delegation-brief.md).

## Executor Expectations

The executor should:

- stay within scope
- produce evidence
- report what changed
- call out unresolved risk
- stop when approval or ambiguity is reached
- avoid claiming ownership outside the assigned slice

## Return Shape

Use [templates/delegation-result.md](../templates/delegation-result.md) for the structured return.

The return should make it easy for the controller to decide:

- ingest and continue
- request approval
- send to QA
- revise the plan
- reopen the delegation with narrower scope
