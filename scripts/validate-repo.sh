#!/usr/bin/env sh
set -eu

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$root"

fail() {
  printf 'validate-repo: %s\n' "$1" >&2
  exit 1
}

required_files="
README.md
LICENSE
CHANGELOG.md
CONTRIBUTING.md
CODE_OF_CONDUCT.md
SECURITY.md
ROADMAP.md
INSTALL.md
HVN.md
.gitignore
.editorconfig
.gitattributes
.github/ISSUE_TEMPLATE/bug-report.yml
.github/ISSUE_TEMPLATE/feature-request.yml
.github/ISSUE_TEMPLATE/config.yml
.github/PULL_REQUEST_TEMPLATE.md
.github/workflows/ci.yml
.github/workflows/benchmark-check.yml
.github/workflows/evals.yml
.github/workflows/install-test.yml
.github/workflows/markdown-lint.yml
.github/workflows/metrics-validation.yml
.github/workflows/validate-install.yml
.github/FUNDING.yml
docs/linear-workflow.md
docs/observability.md
docs/evals.md
docs/benchmark-pack.md
docs/workflow-accounting.md
docs/qa-to-regression.md
docs/benchmark-reporting.md
docs/shared-state.md
docs/human-checkpoints.md
docs/inspector.md
docs/version-control.md
docs/approval-gates.md
docs/artifact-contracts.md
docs/security-guardrails.md
docs/prompt-injection.md
docs/ci-quality.md
docs/run-memory.md
docs/spec-driven-workflow.md
docs/linear-setup.md
docs/linear-agent-model.md
docs/linear-states.md
docs/linear-issue-lifecycle.md
docs/linear-guidance.md
docs/examples/linear-setup-session.md
docs/examples/linear-feature-flow.md
docs/examples/linear-blind-qa-flow.md
docs/examples/trace-for-feature-run.md
docs/examples/eval-report.md
docs/examples/approval-request.md
docs/examples/prompt-injection-handling.md
docs/examples/artifact-contract-usage.md
docs/examples/benchmark-run.md
docs/examples/onboarding-benchmark-case.md
docs/examples/spec-quality-comparison.md
docs/examples/workflow-metrics-report.md
docs/examples/workflow-cost-report.md
docs/examples/retry-burden-analysis.md
docs/examples/qa-to-regression.md
docs/examples/shared-state-handoff.md
docs/examples/checkpoint-before-risky-change.md
docs/examples/run-inspection.md
docs/examples/pause-and-resume.md
docs/examples/versioned-iteration.md
benchmarks/onboarding-spec/README.md
mcp/linear.example.json
"

for file in $required_files; do
  [ -f "$file" ] || fail "missing required file: $file"
done

for dir in commands skills templates templates/contracts install scripts docs docs/examples mcp examples examples/evals benchmarks benchmarks/onboarding-spec benchmarks/onboarding-spec/cases; do
  [ -d "$dir" ] || fail "missing required directory: $dir"
done

command_count="$(find commands -type f -name 'hvn-*.md' | wc -l | tr -d ' ')"
skill_count="$(find skills -type f -name 'SKILL.md' | wc -l | tr -d ' ')"
template_count="$(find templates -type f -name '*.md' | wc -l | tr -d ' ')"

[ "$command_count" -ge 31 ] || fail "expected at least 31 command definitions"
[ "$skill_count" -ge 31 ] || fail "expected at least 31 skill definitions"
[ "$template_count" -ge 37 ] || fail "expected at least 37 templates"

for script in install/install.sh install/uninstall.sh install/doctor.sh install/verify-install.sh scripts/check-markdown.sh scripts/check-links.sh scripts/check-reliability.sh scripts/check-improvement-systems.sh scripts/bootstrap-git.sh scripts/validate-repo.sh scripts/linear-setup.sh; do
  [ -f "$script" ] || fail "missing script: $script"
  [ -x "$script" ] || fail "script is not executable: $script"
  sh -n "$script" || fail "script syntax failed: $script"
done

if grep -RIn --exclude='validate-repo.sh' 'TODO\|FIXME\|rest of code\|similar to above\|for brevity' README.md HVN.md INSTALL.md docs commands skills templates install scripts mcp examples .github 2>/dev/null; then
  fail "placeholder or banned phrase detected"
fi

./scripts/check-markdown.sh
./scripts/check-links.sh
./scripts/check-reliability.sh
./scripts/check-improvement-systems.sh

printf 'validate-repo: ok\n'
