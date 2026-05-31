# Blind Product Lab — Friction Fixes (Append-Only)

Each entry should capture one high-leverage framework fix (or a small tightly related bundle) that reduces repeated friction in future blind product runs.

---

## 2026-05-31 — Codex Host Friction Kit (new framework project)

### Friction Observed

- `$CODEX_HOME` was unset, breaking automation paths that referenced `$CODEX_HOME/...`.
- Playwright was available globally (CLI), but Node could not resolve `import("playwright")` inside the repo.
- Several commands in iCloud/File Provider workspaces are at risk of hanging without bounded timeouts.
- Linear access remained blocked (`401: Reauthentication required`), forcing degraded mode.

### Evidence

From `reports/blind-product-lab/friction-log.md`:

- Entry 4 — `$CODEX_HOME` not set in this harness
- Entry 7 — Playwright screenshots required global node_modules wiring
- Entry 2 and Entry 6 — Linear-first workflow blocked by auth (repeat)

### New Project vs Existing-Gap

- Chosen: **new framework project**
- Why: This friction is host-shaped (Codex environment variance) and recurs across unrelated product repos. A small, reusable “friction kit” doc + preflight script reduces repeated rediscovery more than patching one-off run artifacts.

### Fix Chosen

Add a compact Codex-specific paved road for:

- Normalizing `CODEX_HOME` with a safe default.
- A standard bounded-command wrapper pattern (`perl -e 'alarm ...'`) to prevent hangs.
- `NODE_PATH` fixups for global Playwright module resolution when needed.
- Ignoring Playwright-MCP run artifacts (`.playwright-mcp/`) so git status stays readable.
- A minimal Linear 401 recovery pointer to `docs/linear-setup.md`.

### Files Changed

- `docs/hosts/codex-friction-kit.md`
- `docs/hosts/codex-cli.md`
- `scripts/codex-host-preflight.sh`
- `.gitignore`

### Verification Performed

- Local file/link sanity: ensured referenced paths exist in-repo.
- Ran repo markdown/link checks after changes (see terminal logs for `scripts/check-markdown.sh` / `scripts/check-links.sh`).

### Residual Risk

- `NODE_PATH` is a pragmatic compatibility lever; it should be used only when needed, and Playwright-MCP is preferred when available.
- Linear reauthentication still requires host-level action; the framework can only provide the paved road and degraded-mode fallback.

### Deferred / Next Likely Fix

- Tailwind v4 scaffold drift: collect 2+ independent product-run sightings before updating any templates or stack packs.
- Expand `orca-check-setup` guidance with a concrete Codex+Linear+GitHub preflight checklist if this friction repeats beyond the blind product lab.
