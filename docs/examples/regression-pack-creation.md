# Regression Pack Creation

## Source

Blind QA found that export was not discoverable after generating a meeting brief.

## Regression Pack

- Platform: web
- Steps: generate a brief, edit one section, find export, copy final brief.
- Expected: export or copy action is visible and keyboard reachable.
- Actual: action was hidden below secondary controls.
- Risk: medium, because core task completion depends on export.
- Future retest: run after any changes to composer layout or output actions.

## Use Before Ship

Any future change to the brief composer should rerun this pack before done.
