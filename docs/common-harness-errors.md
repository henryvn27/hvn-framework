# Common Harness Errors

## Harness Not Actually Installed

Signal:
ORCA docs are present, but the harness commands or UI are unavailable.

Fix:
install or open the harness first.

## Capability Assumption Mismatch

Signal:
the harness cannot do something ORCA can do elsewhere.

Fix:
use [compatibility-matrix.md](compatibility-matrix.md) and degrade gracefully.

## Wrong Verification Target

Signal:
the user validates ORCA itself but not the host they plan to use.

Fix:
run doctor with `--harness`.
