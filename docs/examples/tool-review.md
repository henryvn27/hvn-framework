# Example Tool Review

## Tool

GitHub CLI

## Purpose

Inspect repository state, pull requests, and CI status.

## Trust Status

Allowed with constraints.

## Constraints

- use bounded commands
- disable prompts when checking status
- avoid destructive repo operations unless explicitly approved
- do not print tokens or credential state

## Audit Expectations

Traces should record the command class, target repo or PR, and whether the command timed out or failed due to auth.
