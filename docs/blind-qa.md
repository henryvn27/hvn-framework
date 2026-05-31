# Blind QA

Blind QA is a zero-context first-look test. The tester receives access to the product surface and may observe behavior, UI, accessibility tree, logs, screenshots, or simulator/browser state only when those tools are available.

## Rules

- Do not read the spec.
- Do not read implementation notes.
- Do not inspect source code.
- Do not use issue history or intended flows.
- Do not pretend to see visual information when only text is available.
- Record confusion as a product signal, not as tester failure.

## Output

Use `templates/blind-qa-report.md`. The report should include:

- Product inference
- First impression
- Attempted tasks
- Observed blockers
- Accessibility notes
- Evidence captured
- Confidence limits

After a blind report is written, it should remain unchanged. Briefed and regression passes get separate reports.
