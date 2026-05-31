# Example Benchmark Run

## Benchmark Run

- Date: 2026-05-30
- Workflow version: HVN reliability layer v2
- Compared against: HVN reliability layer v1
- Reviewer: framework maintainer

## Case Results

| Case ID | Pass/Fail | Rubric Summary | Notes |
| --- | --- | --- | --- |
| OBS-001 | Pass | Better ambiguity detection, similar edge-case quality | Non-goals were clearer |
| OBS-002 | Pass | Stronger constraint capture | Privacy and escalation surfaced early |
| OBS-003 | Partial | Better scope discipline, weak reproduction questions | Needs stronger bug triage prompts |

## Aggregate Signals

- ambiguity detection: improved
- question quality: improved
- constraint capture: improved
- edge-case awareness: mixed
- scope discipline: improved
- acceptance criteria quality: improved
- verification readiness: mixed
- overall spec usability: improved

## Regression Or Improvement Notes

- the newer workflow asks better scope-bounding questions
- bug-report scenarios still need stronger reproduction discipline

## Comparison Guidance

The newer workflow looks better overall, but the improvement is stronger on fuzzy feature prompts than vague bug prompts.
