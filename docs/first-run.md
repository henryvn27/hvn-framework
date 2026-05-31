# First Run

After installation, use this path to confirm HVN is active and start real work.

## 1. Verify

```sh
./install/verify-install.sh --target ./.hvn --host shared --smoke
```

For host installs, use the host target:

```sh
./install/verify-install.sh --target ./.claude/hvn --host claude --smoke
```

## 2. Open Help

Use the host command if available:

```text
hvn-help
```

Or open:

```text
commands/hvn-help.md
```

## 3. Start Non-Trivial Work

Use:

- `hvn-linear-intake` when starting from a Linear issue
- `hvn-onboard` when starting from a fuzzy idea
- `hvn-spec` after intake is clear
- `hvn-spec-check` before planning

## 4. Confirm Linear

If Linear is available, verify the agent can read and post issue comments. If not, use local sync notes.

## 5. Create Run Memory

For multi-step work:

```text
hvn-memory-init
```

Use `.hvn/memory/runs/` as the durable continuation record.

## 6. Know The Stop Rule

If the issue is vague, ask questions. If the spec is weak, run `hvn-spec-check`. If tools are missing, record the blocker instead of pretending the workflow ran.
