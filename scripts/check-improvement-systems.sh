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
  benchmarks/onboarding-spec/README.md \
  benchmarks/onboarding-spec/cases/OBS-001.md \
  benchmarks/onboarding-spec/cases/OBS-002.md \
  benchmarks/onboarding-spec/cases/OBS-003.md \
  templates/benchmark-case.md \
  templates/benchmark-report.md \
  templates/workflow-metrics.md \
  templates/regression-task.md \
  templates/regression-candidate.md \
  commands/orca-benchmark.md \
  commands/orca-metrics.md \
  commands/orca-regression-task.md \
  skills/orca-benchmark/SKILL.md \
  skills/orca-accounting/SKILL.md \
  skills/orca-regression-task/SKILL.md \
  docs/examples/benchmark-run.md \
  docs/examples/onboarding-benchmark-case.md \
  docs/examples/spec-quality-comparison.md \
  docs/examples/workflow-metrics-report.md \
  docs/examples/workflow-cost-report.md \
  docs/examples/retry-burden-analysis.md \
  docs/examples/qa-to-regression.md \
  .github/workflows/benchmark-check.yml \
  .github/workflows/metrics-validation.yml
do
  [ -f "$file" ] || fail "missing improvement file: $file"
done

case_count="$(find benchmarks/onboarding-spec/cases -type f -name 'OBS-*.md' | wc -l | tr -d ' ')"
[ "$case_count" -ge 3 ] || fail "expected at least 3 onboarding-spec benchmark cases"

printf 'check-improvement-systems: ok\n'
