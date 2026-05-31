---
name: hvn-security
description: Review security-relevant behavior, install scripts, CI, data handling, and unsafe agent instructions.
---

# HVN Security

## What This Skill Is

A security review workflow for HVN projects and framework changes.

## Trigger

Use for auth, secrets, payments, personal data, installers, CI, external execution, and public releases.

## Do Not Trigger

Do not use as a replacement for product QA or general code review.

## Required Inputs

- Changed files or target workflow

## Optional Inputs

- Threat model
- Deployment environment
- Dependency list

## Exact Workflow

1. Identify assets and trust boundaries.
2. Inspect inputs, outputs, permissions, dependencies, and destructive operations.
3. Check docs and prompts for unsafe instructions.
4. Produce findings with severity, impact, and mitigation.

## Expected Outputs

- Security section in `templates/review-report.md`

## Quality Bar

Reports must distinguish confirmed issues from theoretical risks.

## Common Failure Modes

- Ignoring installer and CI risk.
- Publishing vulnerability details prematurely.
- Treating all risks as equal severity.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-ship` and release readiness.
