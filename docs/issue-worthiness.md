# Issue Worthiness

Not every irritation deserves a framework issue.

ORCA-HVN should prompt the user only when the candidate is strong enough to justify durable backlog work.

## Worthy Candidates

An issue is usually warranted when the candidate is:

- real
- reusable
- actionable
- non-duplicate
- clearly about the ORCA-HVN framework
- supported by session evidence
- reinforced by repeated or high-confidence quality signals when relevant

## Weak Candidates

Do not create framework issues for:

- temporary user preference changes
- one-off operator mistakes
- vague dissatisfaction without a fixable target
- one weak "felt a little AI-ish" moment with no repeatable pattern
- already solved problems
- already tracked items with no meaningful new evidence

## Decision Rule

Before prompting the user, ORCA-HVN should be able to explain:

- what the framework problem is
- why it is reusable
- what area of the framework it affects
- what evidence came from the session
- what likely fix direction exists

If that cannot be stated clearly, do not push for an issue yet.

## How Quality Signals Affect Worthiness

- repeated high-confidence frustration tied to the same framework area makes the candidate stronger
- repeated generic-output signals with a concrete pattern can justify prompt, docs, runtime, or workflow changes
- wrong-direction signals after correction make routing or adaptation issues more likely
- low-confidence quality signals should usually stay internal, draft-only, or marked for recurrence watching
