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

---

## 2026-06-01 — Vercel Deploy Guardrails (new framework project)

### Friction Observed

- Vercel deploy can fail when the CLI infers a project name from an uppercase directory name (Vercel requires lowercase slugs).
- Multi-repo blind product runs make it easy to accidentally patch files into the wrong workspace when using relative paths.

### Evidence

From `reports/blind-product-lab/friction-log.md`:

- Entry 5 — Vercel deploy failed on uppercase folder name
- Entry 10 — Cross-repo patching defaulted to the wrong workspace

### New Project vs Existing-Gap

- Chosen: **new framework project**
- Why: There was no deploy-focused paved road under `docs/` yet, and this deploy/name friction is cross-product. Adding a small “deploy guardrails” artifact set is higher leverage than patching one-off product notes.

### Fix Chosen

- Add a minimal Vercel deploy guardrails doc:
  - Separate display name (TitleCase) from deploy slug (lowercase).
  - Prefer creating workspaces using the slug so Vercel’s inferred project name is valid.
  - Preferred recovery path: `vercel link` + `vercel deploy --prod --yes` (treat `--name` as emergency-only if the CLI warns it is deprecated).
  - Provide a small `vercel.json` SPA rewrite template for client-side routed apps.
- Add a small cross-workspace safety section to the Codex Host Friction Kit.

### Files Changed

- `docs/deploy/vercel-guardrails.md`
- `templates/vercel-static-spa/vercel.json`
- `docs/web-stack-guide.md`
- `docs/integration-diagnostics.md`
- `docs/hosts/codex-friction-kit.md`
- `.gitignore`

### Verification Performed

- `scripts/check-markdown.sh`
- `scripts/check-links.sh`

### Residual Risk

- Vercel CLI behavior can drift; the guardrails doc intentionally uses a conservative, interactive `vercel link` recovery path instead of relying on potentially-deprecated flags.

### Deferred / Next Likely Fix

- Linear connector auth is still blocked (401). Once restored, create:
  - Linear project: “ORCA-HVN Blind Product Lab (Framework)”
  - Issue: “Add degraded-mode Linear shadow log + later sync script”
