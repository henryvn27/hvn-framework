# Result Ingestion

Result ingestion is how a controller takes executor output and brings it back into ORCA Framework without losing structure.

## Purpose

Ingestion should answer:

- what was done
- what evidence exists
- what changed
- what artifacts were produced
- what remains unresolved
- what the next recommended action is

## Ingestion Rules

- do not reduce the result to "executor did some stuff"
- preserve links to evidence
- record missing evidence explicitly
- decide whether approvals, QA, or further delegation are now needed

## Artifact Shape

Use [templates/result-ingestion.md](../templates/result-ingestion.md).

## Ingestion Outcomes

Common outcomes:

- accepted and moved to next phase
- accepted but blocked on approval
- accepted but queued for QA
- partially accepted with follow-up needed
- rejected because scope or evidence was insufficient

## Relationship To Receipts And Lineage

Ingestion should update:

- receipt awareness
- lineage links
- next-step recommendation

A good ingestion pass leaves the repository in a clearer state than before the delegation happened.
