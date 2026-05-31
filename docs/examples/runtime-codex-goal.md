# Runtime Example: Codex Goal Path

## Situation

The harness is detected as Codex with explicit or high-confidence evidence, and the next milestone is a good goal candidate.

## Route

- detected harness: Codex
- goal support: supported
- runtime choice: recommend `orca-goal`
- fallback: standard milestone loop if local `/goal` behavior is unavailable

## Why

Codex can use the reviewed goal path, so ORCA-HVN can surface it without pretending every harness can do the same.

The receipt for this run should capture that goal mode was chosen because the reviewed Codex profile supports it.
