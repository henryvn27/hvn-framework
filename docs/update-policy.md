# Update Policy

The update system exists to reduce maintenance burden without introducing surprise breakage.

## Policy Rules

- safe by default
- visible but not noisy
- channel-aware
- verify before apply
- rollback-ready before auto-apply
- respect pinned or manual installs
- respect local plugin, harness, and integration constraints

## What Can Be Automatic

Usually safe candidates for automation:

- update checks
- release note retrieval
- low-risk stable updates after verification, but only in modes that allow auto-apply

## What Should Stay Manual Or Prompted

- major update jumps
- channel changes
- updates with required migrations
- updates that risk plugin or harness breakage
- updates when local state is dirty or unsupported

## User Control

Users should be able to choose:

- channel
- update mode
- defer behavior
- whether auto-apply is allowed
- whether pinned or manual mode is enforced
