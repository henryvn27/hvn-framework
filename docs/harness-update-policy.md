# Harness Update Policy

ORCA updates should account for host and harness compatibility.

## Rules

- do not treat one harness as proof for all harnesses
- allow channel or mode restrictions when a harness path is less stable
- hold back defaults that would break a supported host path
- record harness impact in update candidates and release notes

## Good Default

Stable users should not receive a core update that assumes a harness capability still marked `unclear` or `partial` unless the update also preserves degraded behavior.
