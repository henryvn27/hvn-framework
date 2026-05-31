# Example Legacy Risk Assessment

## System Or Area

Legacy account import job.

## Migration Risks

- job has hidden retry behavior
- CSV parsing accepts malformed historical files
- downstream reports depend on current normalization quirks

## Test Gaps

- no fixture coverage for malformed rows
- no integration test for retry behavior

## Risk-Based Recommendation

Add fixtures and characterization tests before replacing the parser.
