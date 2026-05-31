# Codex CLI Host Adapter

Codex CLI support should be verified from the installed CLI help, not from stale assumptions about flags or host behavior.

## ORCA-HVN Usage

In Codex CLI, ORCA workflow commands such as `orca-onboard` and `orca-build` are not built-in Codex subcommands.
Use the installed ORCA wrapper when possible so the local CLI invocation stays aligned with the actual `codex exec` surface.

Use native Codex commands when they exist.
Use ORCA command names as workflow guidance in the prompt when they do not.

Current ORCA-HVN baseline:

- treat native `/goal` support as part of the normal Codex path, not as a maybe-experimental edge
- use `codex doctor` when the user needs Codex environment diagnostics
- treat `/permissions` named profiles and `/status` remote details as real governance and inspection surfaces
- use `CODEX_NON_INTERACTIVE=1` for non-interactive install or setup automation when the environment requires it

Use native goal mode when:

- the local CLI supports `/goal`
- the ORCA-HVN goal contract is complete
- verification is observable
- approval gates are satisfied

Codex is also a strong executor harness for:

- implementation
- bounded repo research
- QA passes
- issue-focused work
- goal-mode execution when supported and approved

## Lifecycle

Codex goal behavior should still be treated as host-specific at the lifecycle-command level. When available, use the host's supported lifecycle commands for set, status, pause, resume, and clear. If local command help differs from these docs, follow the local installed version and record the difference in the goal status artifact.

## Non-Interactive Execution

Check `codex exec --help` before writing automation or docs that depend on specific flags.

For environment diagnostics or install triage, also check:

- `codex doctor`
- `/permissions`
- `/status`

At minimum, current Codex CLI help should be treated as authoritative for:

- `-m` / `--model`
- `-c` / `--config`
- `--sandbox`
- `-C` / `--cd`
- `--skip-git-repo-check`
- `-o` / `--output-last-message`

Do not assume flags such as `--full-auto` or older approval aliases exist unless the installed help shows them.

Example pattern:

```sh
orca-build --harness codex --target /path/to/workspace -- "Implement the approved plan"
```

Equivalent raw Codex pattern:

```sh
codex exec \
  --ignore-user-config \
  --skip-git-repo-check \
  -m gpt-5.4 \
  -c 'model_reasoning_effort="medium"' \
  --sandbox workspace-write \
  -C /path/to/workspace \
  "Follow ORCA-HVN as workflow guidance: orca-onboard, orca-spec, orca-plan, orca-build, then orca-review."
```

The ORCA wrapper uses `--ignore-user-config` intentionally so broken local skills or memory jobs do not pollute the ORCA user flow.

## Fallback

If `/goal` is unavailable or experimental behavior is not acceptable, use ORCA-HVN fallback:

- goal contract
- shared state
- run trace
- goal status artifact
- checkpoints for pause and resume

## Controller To Executor Path

When another harness is controlling the project:

- delegate Codex a bounded task, not open-ended project ownership
- include linked spec, milestone, or goal contract
- require verification and a structured return
- ingest Codex output back through receipt, lineage, and next-step artifacts

## External Tool Setup

Codex setup should be verified against the installed CLI and available connectors. Do not assume every Codex environment exposes the same external tools.

| Service | Preferred methods | Verification | Fallback |
| --- | --- | --- | --- |
| GitHub | connector when available, approved MCP, or `gh` CLI | check auth, repo reachability, and required read/write scope | local repo plus manual issue, PR, check, or release steps |
| Linear | connector when available, approved MCP, or manual context | read target issue or validate pasted issue context | pasted issue data plus local artifacts for manual posting |

Use `orca-check-setup` before blocking on GitHub or Linear. If setup is incomplete but the next phase is local, continue in degraded mode.

For Linear specifically, prefer the official remote MCP path documented by Linear. In Codex, that means enabling the RMCP feature flag in `~/.codex/config.toml` before assuming `codex mcp add` will work.

## Compatibility View

See [compatibility matrix](../compatibility-matrix.md) and [harness watch](../harness-watch.md) for the current conservative Codex compatibility view.

## Known Friction And Paved Roads

For recurring Codex-host friction seen in real blind product runs (missing `CODEX_HOME`, bounded-command patterns, Playwright module resolution), use:

- [Codex friction kit](codex-friction-kit.md)
- `scripts/codex-host-preflight.sh`

## Source

- https://developers.openai.com/codex/cli/slash-commands
