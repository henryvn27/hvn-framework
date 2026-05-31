---
name: hvn-full-output
description: Enforce complete deliverables when the user asks for exhaustive output, full files, or no omissions.
---

# HVN Full Output

## What This Skill Is

A strict output-completeness mode for HVN work.

## Trigger

Use when the user asks for complete files, exhaustive deliverables, full output, no omissions, or says not to abbreviate.

## Do Not Trigger

Do not use for ordinary summaries, small answers, or when brevity is explicitly requested.

## Required Inputs

- User request
- Deliverable list

## Optional Inputs

- Linear issue
- Output sequencing constraints
- Verification requirements

## Exact Workflow

1. Parse the request and count deliverables.
2. Write the complete deliverable list.
3. Produce each deliverable fully.
4. Avoid placeholder omissions, skipped middle sections, or abbreviated repeated content.
5. If splitting is unavoidable, stop only at a clean boundary and state the exact next section.
6. Cross-check requested deliverables before completion.
7. Record completion status in Linear or the opt-out record for non-trivial work.

## Expected Outputs

- Complete requested artifacts
- Deliverable completion checklist
- Linear or opt-out sync note when applicable

## Quality Bar

Partial output is a failed output unless an external blocker is documented.

## Common Failure Modes

- Replacing requested content with descriptions.
- Summarizing remaining files.
- Leaving placeholder text.
- Forgetting to sync completion status.

## Relationship To Other HVN Skills And Commands

Usually activated by `hvn-router` or `hvn-full-output`; compatible with all build and documentation skills.
