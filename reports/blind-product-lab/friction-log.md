# Blind Product Lab — Friction Log (Append-Only)

Each entry should include: what happened, cause, workaround, and classification:
- ORCA framework issue
- Codex host issue
- External-tool issue
- Product-specific issue

---

## 2026-05-31

### Entry 1 — Automation bootstrap artifacts missing

- What happened: `reports/blind-product-lab/` did not exist on first run.
- Cause: This automation is new; no prior run artifacts.
- Workaround: Created `status.md`, `friction-log.md`, and `run-history.md` as the durable system of record.
- Classification: expected / setup

### Entry 2 — Linear-first workflow blocked by auth

- What happened: Attempting to list/create Linear projects returned `401: Reauthentication required`.
- Cause: Linear connector session is not authenticated in this harness.
- Workaround: Continue local work with ORCA artifacts and record exactly what should be created in Linear once access is restored.
- Classification: External-tool issue (Linear connector auth)

### Entry 3 — Tailwind v4 CLI mismatch during scaffold

- What happened: Installed `tailwindcss@4.x` and attempted `npx tailwindcss init -p`; `npx` failed (“could not determine executable to run”).
- Cause: Tailwind v4 packaging/CLI expectations differ from v3; “just run tailwind init” is no longer universally true.
- Workaround: Downgraded to `tailwindcss@3.4.17` to get a predictable CLI scaffold.
- Classification: External-tool issue (ecosystem drift) / ORCA docs gap if templates assume v3 forever

### Entry 4 — `$CODEX_HOME` not set in this harness

- What happened: Automation instructions referenced `$CODEX_HOME/.../memory.md`, but `CODEX_HOME` env var was empty in this session.
- Cause: Harness/environment variance (Codex app uses `~/.codex/...` but does not guarantee `$CODEX_HOME` is exported).
- Workaround: Located the automation directory under `/Users/developeraccount/.codex/automations/orca-hvn-blind-product-launch-lab/` and wrote memory there.
- Classification: Codex host issue (env consistency)

### Entry 5 — Vercel deploy failed on uppercase folder name

- What happened: First `vercel deploy --yes` failed with a 400 because the inferred project name from `ShipNotes` was not lowercase.
- Cause: Vercel project names must be lowercase; the CLI inferred from the directory name.
- Workaround: Re-ran deploy with an explicit lowercase name (`shipnotes`); CLI also warned the `--name` flag is deprecated while still working.
- Classification: External-tool issue (CLI defaults) / product setup friction

### Entry 6 — Linear still blocked (repeat)

- What happened: Linear `list_projects` still returns `401: Reauthentication required`.
- Cause: Linear connector session is unauthenticated in this harness.
- Workaround: Continue local work; keep a precise “to create in Linear” checklist in run artifacts.
- Classification: External-tool issue (Linear connector auth)

### Entry 7 — Playwright screenshots required global node_modules wiring

- What happened: `playwright` CLI exists, but `import('playwright')` failed in the repo because the package isn’t a dependency.
- Cause: Playwright is installed globally (CLI works), but Node resolution inside the repo doesn’t include global modules.
- Workaround: Add `/opt/homebrew/lib/node_modules` as a module root for the Node REPL, then run a small Playwright script to capture evidence.
- Classification: Codex host issue (tooling surface mismatch) / external-tool friction

### Entry 8 — `ls` flags got corrupted into a non-ASCII option

- What happened: A command used `ls -l…` with a non-ASCII flag character and macOS `ls` errored (`invalid option -- �`).
- Cause: Copy/paste / font rendering produced an invalid option character.
- Workaround: Re-run with plain `ls -la`.
- Classification: Codex host issue (text fidelity)

### Entry 9 — Heredoc env vars didn’t reach Node/Playwright script

- What happened: A headless Playwright QA script failed because `EVID_DIR` / `STAMP` were not visible inside Node.
- Cause: Shell variables set in the command were not exported into the Node process when using a heredoc.
- Workaround: Prefix environment variables directly on the `node <<'NODE'` invocation (e.g., `EVID_DIR=... STAMP=... node ...`).
- Classification: Codex host issue (shell/process environment ergonomics)
