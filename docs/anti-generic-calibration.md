# Authenticity Preflight

Authenticity preflight is HVN's short calibration pass for high-visibility UI, visual design, frontend presentation, product copy, and polished writing.

The purpose is not to evade detection tools. The purpose is to avoid work that feels templated, vague, over-smoothed, or obviously generated. HVN optimizes for specificity, originality, taste, credible voice, and stronger first impressions.

## When It Runs

Run authenticity preflight before execution when a task involves:

- Meaningful UI or frontend presentation
- Landing pages, dashboards, mobile UI, marketing pages, or redesigns
- UX copy, product copy, brand-sensitive writing, docs, README work, essays, outreach, or thought pieces
- Any output where tone, credibility, originality, or polish matter

If a task includes both UI and copy, run both design and writing calibration.

## What It Produces

The preflight is intentionally short. It produces:

- Generic patterns to avoid
- Medium-specific direction
- Audience and trust context
- Concrete vocabulary, examples, references, or constraints
- Review criteria for spotting generic output later

Use `templates/design-calibration.md`, `templates/writing-calibration.md`, and `templates/authenticity-review.md`.

## Linear Integration

In Linear-first mode, calibration findings should be posted to the issue before execution or included in the plan comment. Review comments should reference whether the final output matched the calibration.

If Linear is blocked, record the calibration note locally and include the exact comment that should be synced later.

## Interaction With Routing

`hvn-router` triggers authenticity preflight when task signals match design-heavy or writing-heavy work. It then routes to the most specific installed design, frontend, writing, brand, image-to-code, or full-output skill available.

Authenticity preflight does not replace domain skills. It sharpens them.

## Aesthetic Profiles

Authenticity preflight should read the active aesthetic profile before calibrating. Profiles keep visual tone, writing voice, typography, motion, and anti-pattern decisions consistent across issues.
