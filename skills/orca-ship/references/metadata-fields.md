# App Store And TestFlight Metadata Fields

## App Store Metadata

- `name`: customer-facing App Store name.
- `subtitle`: short positioning line, 30 characters max.
- `description`: full App Store description. Use truthful product behavior, not generic claims.
- `keywords`: comma-separated, 100 characters max.
- `promotional_text`: short mutable text shown above description.
- `release_notes`: per-version notes. Fastlane skips this for the first version.
- `privacy_url`: live privacy page.
- `support_url`: live support page.
- `marketing_url`: product/landing/dashboard URL.
- `primary_category`, `secondary_category`: use current constants such as `BUSINESS`, `PRODUCTIVITY`.
- `copyright`: company/legal copyright.

## TestFlight Metadata

- `localized_app_info.description`: beta app description shown to testers.
- `localized_app_info.feedback_email`: email for tester feedback.
- `localized_app_info.marketing_url`: product URL.
- `localized_app_info.privacy_policy_url`: privacy URL.
- `localized_build_info.whats_new`: “What to Test” for the current build.
- `beta_app_review_info.contact_first_name`, `contact_last_name`, `contact_email`, `contact_phone`: Apple reviewer contact.
- `beta_app_review_info.demo_account_required`: true only if a fixed review account is ready.
- `beta_app_review_info.notes`: specific review/test notes.

## Public TestFlight Links

Public links belong to external tester groups, not directly to an app.

Process:

1. Create or find external beta group.
2. Associate the intended build with the group.
3. Enable `publicLinkEnabled`.
4. Optionally set `publicLinkLimitEnabled` and `publicLinkLimit`.
5. Read back `publicLink`.
6. Document the URL and limit in `RELEASE.md`.

Important: External public testing may require Beta App Review. If the link exists but testers cannot join, check build beta review status.

## Brockington Trace Example

```text
name: Brockington Trace
subtitle: Artifact workflow tracking
keywords: archaeology,artifact,field lab,cataloging,custody,barcode,workflow,trace
privacy_url: https://brockington-trace.vercel.app/privacy
support_url: https://brockington-trace.vercel.app/support
marketing_url: https://brockington-trace.vercel.app
group: Brockington
tester: Sally Brockington <sbrockington@gmail.com>
```

