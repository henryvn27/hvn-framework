# Using ORCA-HVN With Hermes

## When To Use This Path

Use this guide when a Hermes-like controller agent is steering work while another harness executes bounded tasks.

## How It Works

Hermes-style use fits ORCA-HVN's controller and delegation layers well. The controller orients itself, delegates bounded work, then ingests results back into the shared artifact trail.

## Recommended Flow

1. `orca-controller`
2. `orca-orient`
3. `orca-delegate`
4. executor does bounded work
5. `orca-ingest`
6. `orca-status` or `orca-inspect`

## Common Pitfalls

- delegation without explicit scope or stop conditions
- treating controller summaries as a replacement for receipts
- skipping compatibility checks for the executor harness

## Read Next

- [runtime-adaptation-guide.md](runtime-adaptation-guide.md)
- [background-mode-guide.md](background-mode-guide.md)

