# Integration Validation

Validation should answer whether the integration is configured, usable, and appropriate for the platform.

## What To Validate

- required environment variables exist
- credentials or auth path exist
- the selected setup path matches web or mobile reality
- the active harness can support the chosen method
- adjacent integrations are present when the stack assumes them

## Example Checks

- Expo app with no EAS project or profile
- mobile digital subscriptions using a web-only billing recommendation
- Vercel project with missing env sync or project linkage
- Supabase setup with no auth or storage decisions documented
- analytics SDK installed with no event plan
- OneSignal configured without the required platform credentials

Use [integration-diagnostics.md](integration-diagnostics.md) with [templates/integration-validation.md](../templates/integration-validation.md).
