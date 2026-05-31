# Loop Guards

ORCA-HVN background mode must stop before it turns into a self-repeating system.

## Hard Limits

Every background run needs:

- a wall-clock limit
- a step or iteration limit
- a clear final state

When the limit is reached, the run must stop and emit a receipt.

## Circuit Breakers

Stop and exit when:

- the same tool fails repeatedly for the same reason
- the same error pattern appears across multiple steps
- no meaningful progress metric changes across several iterations
- the same blocked permission is encountered again after it has already been recorded

## Stall Signals

Treat these as stall indicators:

- the plan is rewritten without new evidence
- the same proposed next step appears repeatedly
- file scope does not change and no new artifacts are produced
- retries increase while receipts or diffs stay flat

## Required Response To A Guard Trigger

When a loop guard triggers:

1. stop the run
2. summarize what repeated
3. state what evidence is missing
4. propose one different approach or mark the run as `needs-human` or `stalled`

Do not keep going just because time remains.
