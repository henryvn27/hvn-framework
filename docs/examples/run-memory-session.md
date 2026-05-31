# Run Memory Session

## Situation

A build agent finishes phase two of a web feature and a review agent will take over tomorrow.

## Memory Update

- Issue: `APP-248`
- Objective: add saved meeting brief templates.
- Approved scope: personal templates only; sharing excluded.
- Key decision: templates store section headings and prompt guidance, not generated briefs.
- Failed attempt: initial local-storage model was rejected because templates need account backup.
- Next step: review migration and empty state copy.
- Latest QA status: not ready for blind QA until staging build is linked.

## Why It Helps

The review agent can start from the current state without rereading the full issue thread.
