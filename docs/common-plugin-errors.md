# Common Plugin Errors

## Plugin Installed Too Early

Signal:
the user adds plugin complexity before core ORCA install works.

Fix:
remove the plugin from the immediate path and finish core install first.

## Wrong Host

Signal:
the plugin instructions assume a different harness.

Fix:
switch to the correct host-specific setup path.

## Auth Looks Like Install Failure

Signal:
plugin exists, but the real problem is sign-in or missing permissions.

Fix:
verify auth separately before changing install state.
