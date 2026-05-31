# Example Legacy To Spec

## Legacy Finding

The existing search module mixes query parsing, authorization filtering, and result ranking in one service.

## Modernization Spec Summary

Split query parsing into a separately tested unit while preserving authorization and ranking behavior.

## Acceptance Criteria

- existing search results remain equivalent for covered fixtures
- authorization filters continue to run before ranking
- query parsing has direct unit coverage

## Safety Net

- characterization tests for current query examples
- regression task for private result filtering
