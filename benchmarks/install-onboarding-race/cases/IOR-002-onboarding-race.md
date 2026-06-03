# Benchmark Case

## Case ID

IOR-002

## Benchmark Type

onboarding

## Scenario

A nontechnical user who has used a vibe-coding tool feels overwhelmed by Codex or Claude Code and wants enough help to get moving without turning onboarding into a lecture.

## Input Prompt

`I have an app idea and I feel overwhelmed by Codex. Help me get started without making this too technical or too annoying.`

## Environment Or Start State

- framework already installed
- no prior project spec exists
- the user is willing to answer a few high-value questions but does not want a long interview

## Expected Clarification Areas

- user and job
- success condition
- platform or repo scope
- constraints and non-goals
- explanation preference
- involvement level
- whether ORCA should ask more now or infer more

## Expected Scope Separation

- onboarding versus implementation
- goals versus non-goals
- enough clarity for the next real ORCA step

## Expected Spec Quality Signals

- onboarding output should be strong enough that a credible first spec can start

## Failure Patterns To Watch For

- too many low-value questions
- too little information captured
- jargon-heavy wording
- repeated or redundant questions
- unclear next step after onboarding

## Scoring Notes

This stage should reward information yield per unit of hassle.
ORCA-HVN may take slightly longer than the fastest lane if it captures meaningfully better execution-ready context without becoming annoying.

## Hard Metrics

- completion time
- tool-call count
- human replies required
- critical information captured
- avoidable-friction incidents
