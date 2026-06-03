# Spec

## Goal

Define the user or system outcome in the language of the actual product.

## Background

Summarize only the relevant context from intake, discovery, and research. Cut setup-story filler.

## Users And Scenarios

List target users and the scenarios this work must support. Name real moments, not generic personas.

## Requirements

List functional requirements using concrete nouns, behaviors, and constraints.

## Non-Goals

List explicitly excluded work so the spec does not sound bigger or softer than it is.

## Edge Cases

List important empty, error, permission, device, data, and recovery cases.
For async user-facing work, include the loading state and whether the interface needs skeleton frames to hold the expected layout.

## Acceptance Criteria

List testable criteria that define done. Each one should be observable without interpretation.
If the feature waits on async data, include what the user sees before data arrives and how the loading state resolves.

## Assumptions

List assumptions and how they can be validated.

## Open Questions

List unresolved questions and the decision they block.

## Anti-Generic Check

- Replace category language with product-specific language where possible.
- Remove any sentence that sounds polished but non-testable.
- Cut filler adjectives unless they carry a real constraint.
