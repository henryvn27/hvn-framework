# Orca Monitor Status

```json
{
  "updated_at": "ISO-8601 timestamp",
  "active_run": {
    "project": "string",
    "workflow": "string",
    "step": "string",
    "status": "idle|running|blocked|failed|completed"
  },
  "queue_count": 0,
  "failing_checks": 0,
  "last_receipt": "string or null",
  "recent_models": [
    {
      "provider": "openai|anthropic|other",
      "model": "string",
      "tokens": 0
    }
  ]
}
```

Optional fields should be omitted when ORCA Framework does not already know the value cheaply.
