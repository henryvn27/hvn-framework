# Sample Run Memory

This folder documents the canonical HVN local storage pattern. Installed projects should create memory under:

```text
.hvn/memory/
  runs/
    <workstream-id>__<short-slug>.md
    archive/
```

Example file names:

- `LIN-123__checkout-error-handling.md`
- `GH-42__oauth-callback.md`
- `LOCAL-2026-05-31__pricing-copy.md`

Use `templates/run-memory.md` for the file body and `templates/linear-memory-sync.md` when Linear updates must be posted later.
