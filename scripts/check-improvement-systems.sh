#!/usr/bin/env sh
set -eu

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$root"

fail() {
  printf 'check-improvement-systems: %s\n' "$1" >&2
  exit 1
}

for file in \
  docs/benchmark-pack.md \
  docs/workflow-accounting.md \
  docs/qa-to-regression.md \
  docs/benchmark-reporting.md \
  docs/self-improvement.md \
  docs/instance-improvement-loop.md \
  docs/framework-improvement-loop.md \
  docs/feedback-loop-mechanics.md \
  docs/improvement-promotion-policy.md \
  docs/improvement-status-model.md \
  docs/install.md \
  docs/install-overview.md \
  docs/install-troubleshooting.md \
  docs/install-validation.md \
  docs/auto-updates.md \
  docs/update-policy.md \
  docs/update-validation.md \
  docs/docs-automation.md \
  docs/wiki-maintenance.md \
  docs/staleness-detection.md \
  benchmarks/onboarding-spec/README.md \
  benchmarks/onboarding-spec/cases/OBS-001.md \
  benchmarks/onboarding-spec/cases/OBS-002.md \
  benchmarks/onboarding-spec/cases/OBS-003.md \
  templates/benchmark-case.md \
  templates/benchmark-report.md \
  templates/workflow-metrics.md \
  templates/regression-task.md \
  templates/regression-candidate.md \
  templates/doc-refresh-note.md \
  templates/wiki-update-note.md \
  templates/feedback-loop-record.md \
  templates/improvement-rubric.md \
  templates/improvement-status-entry.md \
  templates/install-validation-report.md \
  templates/update-verification-report.md \
  templates/update-result.md \
  commands/orca-benchmark.md \
  commands/orca-metrics.md \
  commands/orca-regression-task.md \
  commands/orca-docs.md \
  commands/orca-install.md \
  commands/orca-doctor.md \
  commands/orca-check-updates.md \
  commands/orca-update.md \
  skills/orca-benchmark/SKILL.md \
  skills/orca-accounting/SKILL.md \
  skills/orca-regression-task/SKILL.md \
  skills/orca-docs-system/SKILL.md \
  skills/orca-self-improvement/SKILL.md \
  skills/orca-install-help/SKILL.md \
  skills/orca-auto-update/SKILL.md \
  docs/examples/benchmark-run.md \
  docs/examples/onboarding-benchmark-case.md \
  docs/examples/spec-quality-comparison.md \
  docs/examples/workflow-metrics-report.md \
  docs/examples/workflow-cost-report.md \
  docs/examples/retry-burden-analysis.md \
  docs/examples/local-instance-learning.md \
  docs/examples/framework-improvement-promotion.md \
  docs/examples/beginner-install.md \
  docs/examples/install-failure-recovery.md \
  docs/examples/stable-auto-update.md \
  docs/examples/rollback-after-failed-update.md \
  docs/examples/qa-to-regression.md \
  .github/workflows/benchmark-check.yml \
  .github/workflows/metrics-validation.yml
do
  [ -f "$file" ] || fail "missing improvement file: $file"
done

case_count="$(find benchmarks/onboarding-spec/cases -type f -name 'OBS-*.md' | wc -l | tr -d ' ')"
[ "$case_count" -ge 3 ] || fail "expected at least 3 onboarding-spec benchmark cases"

printf 'check-improvement-systems: ok\n'
