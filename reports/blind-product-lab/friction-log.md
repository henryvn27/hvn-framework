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

## 2026-06-01

### Entry 10 — Cross-repo patching defaulted to the wrong workspace

- What happened: While adding ShipNotes code, an `apply_patch` call wrote a new file into the ORCA-HVN repo (`./src/...`) instead of the ShipNotes workspace.
- Cause: This automation operates across sibling repos, but patch tools default to the current workspace root unless absolute paths are used.
- Workaround: Use absolute file paths for any edits outside `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/ORCA-HVN` and sanity-check the target path before patching.
- Classification: Codex host issue (workspace scoping) / ORCA host guidance gap (multi-repo workflows)

### Entry 11 — ShipNotes has no git remote configured

- What happened: The ShipNotes workspace has no `git remote`, so changes can’t be pushed and CI/PR workflows can’t be used.
- Cause: The project was created as a local blind-lab workspace without a configured remote.
- Workaround: Add a remote once the repo is ready for collaboration/shipping, and keep weekly progress flowing through PRs/checks.
- Classification: Product/project-specific issue (version control plumbing)

## 2026-06-02

### Entry 12 — Cross-workspace copy command broke on quoted destination handling

- What happened: The first attempt to scaffold the new `bugbrief` workspace failed because a multi-file `cp` command with a quoted destination path resolved incorrectly and wrote “Not a directory”.
- Cause: Multi-repo work plus spaces in iCloud-backed paths makes long copy commands brittle.
- Workaround: Re-ran the setup using smaller commands with fully quoted absolute paths and one explicit destination per loop.
- Classification: Codex host issue (shell ergonomics) / ORCA host guidance gap (multi-workspace setup)

### Entry 13 — Node REPL browser QA reused stale bindings

- What happened: A follow-up Playwright QA script in `node_repl` failed with `Identifier 'chromium' has already been declared`.
- Cause: The persistent Node REPL keeps top-level bindings across calls, which is easy to forget when doing iterative browser QA.
- Workaround: Used fresh binding names inside a block-scoped script and continued without resetting the whole kernel.
- Classification: Codex host issue (persistent REPL ergonomics)

### Entry 14 — Browser evidence extraction failed on a brittle textarea index assumption

- What happened: The first evidence-capture script pulled the actual-behavior textarea instead of the share-link textarea, then failed navigation with “Cannot navigate to invalid URL”.
- Cause: The QA harness relied on a guessed element index instead of first checking the rendered textarea order.
- Workaround: Ran a small inspection pass to enumerate textareas, then targeted the correct field and completed the screenshots.
- Classification: Codex host issue (browser automation brittleness) / project-specific QA scripting issue
