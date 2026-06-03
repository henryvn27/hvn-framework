# Orca Monitor Status Export

ORCA Framework can emit a tiny local JSON snapshot for Orca Monitor or similar local menu-bar surfaces. This file is workflow context only. It is not billing truth, account truth, quota truth, or a replacement for Codex/OpenAI usage reporting.

## File Location

Default per-project export:

```text
$HOME/.orca-framework/projects/orca-monitor/status.json
```

Optional global fallback:

```text
$HOME/.orca-framework/state/orca-monitor.json
```

Use the per-project file as the primary watch target. The global fallback exists only for tools that want one stable path before they know which project is active.

## Snapshot Shape

Fields stay small and stable. ORCA should omit optional fields when it does not already know the value cheaply.

```json
{
  "updated_at": "2026-06-03T08:00:00Z",
  "active_run": {
    "project": "ORCA Framework",
    "workflow": "orca-build",
    "step": "implementation",
    "status": "running"
  },
  "queue_count": 0,
  "failing_checks": 0,
  "last_receipt": "receipts/2026-06-03-build.md",
  "recent_models": [
    {
      "provider": "openai",
      "model": "gpt-5",
      "tokens": 1200
    }
  ]
}
```

Allowed `active_run.status` values:

- `idle`
- `running`
- `blocked`
- `failed`
- `completed`

## Write Points

Write the snapshot whenever ORCA's material workflow state changes:

- `orca-state`: after shared state is created or updated
- `orca-status`: after runtime status is refreshed
- `orca-goal`, `orca-goal-create`, `orca-goal-status`, `orca-goal-review`: after goal lifecycle changes
- `orca-background` and `orca-keep-going`: on start, blocker, completion, and final receipt
- `orca-checkpoint`: when a checkpoint opens, resolves, or blocks execution
- `orca-receipt`: after writing a receipt
- `orca-ci`, `orca-review`, `orca-test-*`, and `orca-web-qa`: when failing checks or blocking findings materially change

If no run is active, write a valid idle snapshot instead of deleting the file.

## Source Of Truth

Orca Monitor should not parse ORCA internals directly. ORCA writes this export from current workflow state such as:

- runtime status
- shared state
- goal status
- background run receipt
- execution receipt
- workflow metrics

If a field is not present in those sources and was not passed by the active transition, omit it rather than inventing it.

## Atomic Writes

Writers must:

1. create the parent directory
2. write JSON to a temp file in the same directory
3. flush and fsync the temp file
4. atomically replace `status.json`

This keeps Orca Monitor from reading partial JSON.

## Local-Only Boundary

This export must stay independent from hosted services. Do not include:

- secrets
- full logs
- transcripts
- billing, quota, or account claims
- verbose execution traces
- large model histories

Orca Monitor can treat this file as secondary workflow context beside its own usage sources.
