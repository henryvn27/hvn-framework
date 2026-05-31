# Web QA

HVN web QA uses browser automation or manual browser inspection to evaluate a web product from the user's point of view. In Linear-first mode, QA results are posted to the issue. In opt-out mode, results are written to the chosen record.

## Cross-Harness Tooling

Web QA is portable as a workflow, not as a guaranteed tool. Each host may provide browser access differently:

- native browser automation
- MCP browser server
- Playwright or another local runner
- delegated worker
- manual browser inspection

Record which tool was actually used. If no browser access is available, produce a QA brief and state that execution is pending.

## First-Look Pass

A blind browser tester should receive only the issue ID, URL or launch command, platform constraints, and optional one-sentence mission. The tester should:

- Open the provided URL.
- Describe what the product appears to be.
- Identify the primary action without reading hidden docs.
- Attempt realistic tasks.
- Inspect visible errors, loading states, responsiveness, keyboard navigation, and accessibility-visible labels.
- Record screenshots or DOM observations if tools allow.
- Post findings through `templates/linear-blind-qa-comment.md` or `templates/blind-qa-report.md`.

## Later Passes

Briefed and regression passes may use context packets, acceptance criteria, and issue links. They should still report exact steps and observed evidence.

## Linear Posting

A web QA comment should include:

- URL or build tested
- Browser and viewport
- Context received
- Steps attempted
- Console or network observations when available
- Screenshots or statement that screenshots were unavailable
- Recommended next state
