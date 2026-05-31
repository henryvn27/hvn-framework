# Session Improvement Loop

The session improvement loop is ORCA-HVN's built-in way to learn from real usage friction.

At the end of a meaningful session, ORCA-HVN should briefly review the work and ask a narrow question:

> Did this session expose a reusable ORCA-HVN framework problem that should become backlog work?

If the answer is yes, ORCA-HVN should turn that friction into a structured improvement note, check whether it is worth an issue, look for overlap, and ask the user before drafting or submitting a GitHub issue to the ORCA-HVN repository.
One of the main review questions is whether ORCA-HVN reduced drag or added it.

## Purpose

Use the loop to catch:

- framework gaps
- rough edges
- missing commands or templates
- confusing docs
- runtime mismatches
- repeated manual workarounds
- weak automation
- host-specific friction that should change the framework
- avoidable setup work or option sprawl
- session-quality signals that indicate low trust, generic output, repeated wrong direction, or poor failure handling

## What It Is Not

This loop is not:

- a complaint collector
- a mandatory long retrospective after every tiny task
- permission to open external issues automatically
- a way to mix product bugs with framework improvement work

## When It Runs

Run the loop at the end of:

- a meaningful implementation session
- a QA-heavy session
- a blocked or confusing session
- a background run that exposed friction
- a review, replay, or restore session that showed framework weaknesses

Skip or stay quiet when:

- the session was trivial
- the friction was clearly one-off
- the issue is already known and no new evidence was added
- the candidate is really a project-specific problem rather than a framework problem

## Loop Stages

1. Brief session review
2. Quality-signal triage
3. Improvement candidate capture
4. Issue-worthiness check
5. Duplicate and overlap check
6. Human approval prompt
7. Draft issue or submit issue
8. Record candidate or link in the improvement backlog

## Human Approval Rule

No external issue submission should happen without explicit user approval.

Allowed actions:

- skip
- draft only
- submit now
- merge into an existing issue
- remind later

## Core Artifacts

- [session-review.md](session-review.md)
- [session-quality-signals.md](session-quality-signals.md)
- [session-quality-rubric.md](session-quality-rubric.md)
- [issue-worthiness.md](issue-worthiness.md)
- [improvement-deduping.md](improvement-deduping.md)
- [human-approval-for-issues.md](human-approval-for-issues.md)
- [framework-issue-format.md](framework-issue-format.md)
- [improvement-backlog.md](improvement-backlog.md)
