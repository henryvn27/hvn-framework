# Harness Troubleshooting

Harness failures usually come from one of four layers:

- the harness is not installed
- auth is missing
- the host cannot expose the needed tool surface
- ORCA is assuming capabilities the harness does not actually provide

## Check In Order

1. Does the harness itself work before ORCA is involved?
2. Are you following the correct host guide?
3. Is the problem a missing capability or a bad assumption?
4. Can you continue with degraded mode?

## Related Docs

- [common-harness-errors.md](common-harness-errors.md)
- [compatibility-matrix.md](compatibility-matrix.md)
- [degraded-mode.md](degraded-mode.md)
