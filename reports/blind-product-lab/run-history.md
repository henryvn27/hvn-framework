# Blind Product Lab — Run History (Append-Only)

## 2026-05-31 (Run 1)

- What changed:
  - Created blind-product-lab tracking artifacts under `reports/blind-product-lab/`.
  - Selected product: ShipNotes.
  - Created product workspace: `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/ShipNotes`.
  - Added `reports/blind-product-lab/shipnotes/spec.md` and `reports/blind-product-lab/shipnotes/plan.md`.
  - Implemented ShipNotes MVP scaffold (Vite + React + TS + Tailwind v3 + URL-hash publish) and created initial git commit in the ShipNotes workspace.
  - Completed blind QA pass and captured screenshots under `reports/blind-product-lab/shipnotes/evidence/`.
- What was verified:
  - Repo state inspected; prior lab state confirmed absent.
  - ShipNotes: `npm run build` and `npm run lint` pass locally (2026-05-31).
  - Publish link round-trips content into `/p#...` public page locally.
- What was deployed:
  - ShipNotes Vercel URL: https://shipnotes-six.vercel.app
- What was blocked:
  - Linear connector requires reauthentication (401), so Linear-first project/issue updates were not possible.
- Next:
  - Restore Linear auth, then create the ShipNotes Linear project + issues and keep weekly progress tracked there.

## 2026-05-31 (Run 2)

- What changed:
  - ShipNotes: added onboarding improvements (“Use example”) and `.md` download export buttons.
  - ShipNotes: added `vercel.json` SPA rewrite guardrail.
  - ORCA-HVN: added `launch-packet.md` and a second blind QA report with new evidence screenshots.
- What was verified:
  - ShipNotes: `npm run build` and `npm run lint` pass locally (2026-05-31).
  - Blind QA evidence captured:
    - `reports/blind-product-lab/shipnotes/blind-qa-2026-05-31-run2.md`
    - `reports/blind-product-lab/shipnotes/evidence/shipnotes-*-2026-05-31-run2.png`
- What was deployed:
  - `vercel deploy --prod --yes` succeeded and re-aliased to https://shipnotes-six.vercel.app
- What was blocked:
  - Linear connector still requires reauthentication (401), so Linear-first project/issue updates remain blocked.
- Next:
  - Restore Linear auth and create the ShipNotes Linear project + a small set of issues (launch + monetization v2 + QA regression list).
  - Do a micro-launch (10 DMs + 1 public post) and measure whether users complete generate→copy/publish.

## 2026-05-31 (Run 3)

- What changed:
  - ShipNotes: added an editable summary field (shown on the public release page).
  - ShipNotes: added “Download HTML” export for the release page (fallback when publish URLs are too long).
  - ShipNotes: added “Copy command” helper for `git log --oneline --no-decorate -n 50`.
  - ORCA-HVN: added a draft micro-distribution plan:
    - `reports/blind-product-lab/shipnotes/distribution-plan.md`
- What was verified:
  - ShipNotes local gates (2026-05-31):
    - `npm run lint`
    - `npm run build`
  - Deployed app smoke evidence captured via headless Playwright:
    - `reports/blind-product-lab/shipnotes/evidence/shipnotes-home-2026-05-31-run3.png`
    - `reports/blind-product-lab/shipnotes/evidence/shipnotes-generated-2026-05-31-run3.png`
    - `reports/blind-product-lab/shipnotes/evidence/shipnotes-publish-section-2026-05-31-run3.png`
    - `reports/blind-product-lab/shipnotes/evidence/shipnotes-release-page-2026-05-31-run3.html`
- What was deployed:
  - `vercel deploy --prod --yes` succeeded and re-aliased to https://shipnotes-six.vercel.app
- What was blocked:
  - Linear connector still requires reauthentication (401), so Linear-first project/issue updates remain blocked.
- Next:
  - Restore Linear auth and create the ShipNotes Linear project + issues.
  - Run the DM micro-launch loop in `reports/blind-product-lab/shipnotes/distribution-plan.md` (do not send without Henry approval).

## 2026-05-31 (Run 4)

- What changed:
  - ShipNotes: added input diagnostics that show kept vs ignored lines and surface ignored merge/noise lines with reasons.
  - ORCA-HVN: refreshed blind product lab status to reflect the new hardening pass and current blockers.
- What was verified:
  - ShipNotes local gates (2026-05-31):
    - `npm run lint`
    - `npm run build`
  - Deployed app smoke evidence captured via headless Playwright:
    - `reports/blind-product-lab/shipnotes/evidence/shipnotes-home-2026-05-31-run4.png`
    - `reports/blind-product-lab/shipnotes/evidence/shipnotes-generated-2026-05-31-run4.png`
    - `reports/blind-product-lab/shipnotes/evidence/shipnotes-published-2026-05-31-run4.png`
- What was deployed:
  - `vercel deploy --prod --yes` succeeded and re-aliased to https://shipnotes-six.vercel.app
- What was blocked:
  - Linear connector still requires reauthentication (401), so Linear-first project/issue updates remain blocked.
  - DM/public launch loop still requires Henry approval, so live user-signal collection did not run.
- Next:
  - Restore Linear auth and create the ShipNotes Linear project + issues.
  - Get Henry approval for the micro-launch loop in `reports/blind-product-lab/shipnotes/distribution-plan.md`.

## 2026-05-31 (Run 5)

- What changed:
  - Approval gate for outreach was cleared.
  - Sent one controlled first-wave feedback email for ShipNotes to Trent Gegax (`trent.gegax@gramercyfund.com`) using the live production link.
  - ORCA-HVN blind product lab status was updated from “approval blocked” to “first-wave outreach started”.
- What was verified:
  - Gmail connector profile is available for `henryvanness3@gmail.com`.
  - Outbound send succeeded through Gmail and returned sent message id `19e8098be7b617b4`.
  - Reachable direct-contact surface in current harness appears thin; no clean 10-person recipient list was discoverable from the immediate accessible context.
- What was deployed:
  - No product deploy this run. Production app remains: https://shipnotes-six.vercel.app
- What was blocked:
  - Linear connector still requires reauthentication (401), so Linear-first project/issue updates remain blocked.
  - A full 10-person direct outreach loop cannot be executed blindly from current harness context because only one plausible direct technical contact was clearly available.
- Next:
  - Check for reply or usage feedback from Trent.
  - If more real recipients become available, widen the outreach loop.

## 2026-06-01 (Run 6)

- Path decision:
  - Continued ShipNotes (carry-forward new product) because it is already deployed and still has a credible path to first revenue; starting a new project would reset momentum without clearing the current blockers (Linear auth + outreach surface).

- What changed:
  - ShipNotes: added markdown export presets (Default / GitHub Release / Customer Update) and a preset selector in the composer.
  - ShipNotes: made input parsing analysis explicit (kept vs ignored lines + ignore reasons).
- What was verified:
  - ShipNotes local gates (2026-06-01):
    - `npm run lint`
    - `npm run build`
- What was deployed:
  - `vercel deploy --prod --yes` succeeded and re-aliased to https://shipnotes-six.vercel.app
- What was blocked:
  - Linear connector still requires reauthentication (401), so Linear-first project/issue updates remain blocked.
  - ShipNotes repo has no configured git remote, so push-based collaboration/CI is not currently possible.
- Next:
  - Restore Linear auth and create the ShipNotes Linear project + issues.
  - Add a git remote for ShipNotes (when ready) so weekly work can ship via PRs/CI.

## 2026-06-02 (Framework Policy Pivot)

- What changed:
  - Retired the blind product lab carry-forward model.
  - Added a hard completion contract under `reports/blind-product-lab/completion-contract.md`.
  - Rewrote the recurring blind-product automation so each run must choose a fresh new product and finish it to a defined 100 percent bar in the same run.
  - Updated `reports/blind-product-lab/status.md` so future runs inherit the new completion-first mode instead of ShipNotes as the active product.
- What was verified:
  - Prompt and artifact files updated locally.
  - Repo markdown/link checks will validate the documentation changes.
- What was blocked:
  - Linear connector still requires reauthentication (401), so no Linear project/issue updates were possible for this policy change.
- Why this matters:
  - The biggest behavioral failure was allowing partial progress to masquerade as momentum across runs.
  - The new rule forces scope compression or product switching until a small complete result is actually shipped.
- Next:
  - On the next blind-product run, choose a new product and satisfy the full completion contract instead of extending ShipNotes.

## 2026-06-02 (Run 7)

- Path decision:
  - Chose a fresh new product instead of an existing-project gap.
  - Reason: the current lab policy explicitly prefers a new product every run, and no existing gap beat that strongly enough to justify overriding the rule.

- What changed:
  - Ran a blind ideation subagent with minimal mission-only context and selected BugBrief over ReviewReply and ShipNotes Pro Pack.
  - Created product workspace: `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/bugbrief`.
  - Added BugBrief product artifacts:
    - `reports/blind-product-lab/bugbrief/spec.md`
    - `reports/blind-product-lab/bugbrief/plan.md`
    - `reports/blind-product-lab/bugbrief/blind-qa-2026-06-02.md`
    - `reports/blind-product-lab/bugbrief/launch-packet.md`
  - Implemented BugBrief MVP:
    - paste raw QA notes
    - generate structured bug brief
    - edit summary / steps / expected / actual / notes
    - copy or download markdown
    - share a public brief page rendered from the URL hash
  - Added parser cleanup so observed-environment and regression-context lines land in notes instead of actual behavior.
  - Added product README and local git repo in the BugBrief workspace.

- What was verified:
  - BugBrief local gates (2026-06-02):
    - `npm run lint`
    - `npm run build`
  - Local blind QA evidence captured:
    - `reports/blind-product-lab/bugbrief/evidence/bugbrief-home-2026-06-02.png`
    - `reports/blind-product-lab/bugbrief/evidence/bugbrief-generated-2026-06-02.png`
    - `reports/blind-product-lab/bugbrief/evidence/bugbrief-published-2026-06-02.png`
    - `reports/blind-product-lab/bugbrief/evidence/bugbrief-share-url-2026-06-02.txt`
  - Production smoke evidence captured:
    - `reports/blind-product-lab/bugbrief/evidence/bugbrief-prod-2026-06-02.png`

- What was deployed:
  - `vercel deploy --prod --yes` succeeded.
  - Production URL: https://bugbrief.vercel.app
  - Inspect URL: https://vercel.com/csdeveloperagent-1367s-projects/bugbrief/8siYLStwpA6TE7D3w3jh7zYwoBKt

- What revenue assumptions were made:
  - The initial free wedge is “cleaner bug handoff without a tracker.”
  - The first paid expansion path is saved history, branded exports, team templates, and tracker handoff.
  - Agencies and QA contractors are more plausible early buyers than solo hobby developers.

- What was blocked:
  - Linear connector still requires reauthentication (401), so the BugBrief project and issues could not be created in the system of record.
  - The workspace has no git remote yet, so push/CI follow-through is not available.

- Why this run counts as complete:
  - A fresh product was chosen and built inside the run.
  - A dedicated workspace exists.
  - Spec, plan, launch packet, and QA artifacts exist.
  - The core loop works locally and on a live production URL.
  - Verification and blind QA evidence were captured.

- Next:
  - Restore Linear auth and create the BugBrief project/issues from the local backlog.
  - Decide whether future blind-lab runs should deepen BugBrief’s paid wedge or remain strict fresh-product runs.
