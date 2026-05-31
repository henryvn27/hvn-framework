# Example Legacy Modernization Plan

## Goal

Modernize the invoice generation flow without changing billing behavior.

## First Slice

Add characterization tests for pricing and discount behavior, then isolate pricing rules behind a small interface.

## Verification

- existing invoice smoke test
- new characterization tests for discount stacking
- regression task for grace-period billing

## Out Of Scope

- replacing the ORM
- changing notification delivery
- broad billing UI changes
