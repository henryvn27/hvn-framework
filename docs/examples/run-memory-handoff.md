# Run Memory Handoff Example

## Builder To Reviewer

```text
Sending role: Builder
Receiving role: Reviewer
Run ID: HVN-27__run-memory-system
Updated at: 2026-05-31T13:00:00-04:00

Completed:
- Expanded run memory model, lifecycle, and maintenance docs.
- Added init, read, update, and umbrella memory commands.
- Added Linear sync and handoff docs.
- Installer now creates `.hvn/memory/runs/archive`.
- Validation requires the new memory surface.

Decisions:
- Linear issue remains coordination authority.
- Run memory is the resumption authority.
- Blind QA must not receive run memory before the blind pass.

Known risks:
- Linear sync is pending because agent auth is blocked.
- Reviewer should verify command cross-links and installer smoke test.

Next step:
Review docs for consistency, run validation, and confirm install smoke test creates memory directories.
```
