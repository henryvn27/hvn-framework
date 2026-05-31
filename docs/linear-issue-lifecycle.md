# Linear Issue Lifecycle

An ORCA-HVN issue is a durable thread of decisions, artifacts, and evidence. Linear is the default issue system; opt-out mode uses an equivalent durable work item.

## 1. Intake

The issue may start vague. The triage or onboard agent clarifies user, job, platform, success, constraints, and non-goals.

Output: intake comment or linked intake artifact.

## 2. Spec

The spec agent converts issue context into a structured spec. The spec can be pasted into the issue, posted as a comment, or linked as an artifact.

Output: spec comment and `Spec Ready` recommendation.

## 3. Plan

The planner posts phases, affected areas, verification, risks, and approval request.

Output: plan comment and explicit approval gate.

## 4. Build

The build agent implements approved scope and posts progress. Scope changes return to plan approval.

Output: implementation updates, branch or PR link, verification evidence.

## 5. Review

The review agent comments findings with severity and file or artifact references.

Output: review comment with decision.

## 6. QA

Blind QA runs before hidden context is disclosed. Guided QA and regression passes follow with bounded context.

Output: QA comments and evidence.

## 7. Ship

The release agent posts the ship checklist and recommends done only when required gates are complete.

Output: ship comment, release notes, known risks, follow-ups.

## 8. Retro

Large efforts should end with a retrospective comment or linked artifact.

Output: lessons and follow-up issues.
