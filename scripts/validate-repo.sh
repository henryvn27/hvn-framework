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
docs/tool-trust.md
docs/mcp-governance.md
docs/tool-registry.md
docs/tool-safety-rules.md
docs/mcp-review-workflow.md
docs/external-tool-setup.md
docs/integrations-overview.md
docs/setup-validation.md
docs/degraded-mode.md
docs/setup-ux.md
docs/runtime-adaptation.md
docs/harness-capability-profiles.md
docs/harness-detection.md
docs/feature-routing.md
docs/runtime-flags.md
docs/runtime-fallbacks.md
docs/runtime-degraded-mode.md
docs/runtime-status.md
docs/integrations/github.md
docs/integrations/linear.md
docs/legacy-modernization.md
docs/repo-archaeology.md
docs/onboarding.md
docs/next-step-guidance.md
docs/guidance-tone.md
docs/experience-adaptation.md
docs/phase-exit-rules.md
docs/next-step-decision-rules.md
docs/goal-mode.md
docs/goal-safety.md
docs/goal-recommendation-rules.md
docs/milestone-planning.md
docs/harness-compatibility.md
docs/harness-watch.md
docs/compatibility-matrix.md
docs/command-mapping.md
docs/ecosystem-watch.md
docs/ecosystem-opportunities.md
docs/hosts/codex-cli.md
docs/hosts/claude-code.md
docs/hosts/hermes-agent.md
docs/hosts/vscode.md
docs/hosts/generic.md
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
docs/examples/tool-review.md
docs/examples/mcp-server-review.md
docs/examples/high-risk-tool-approval.md
docs/examples/github-setup.md
docs/examples/linear-setup.md
docs/examples/setup-github-codex.md
docs/examples/setup-linear-claude-code.md
docs/examples/setup-fallback-manual.md
docs/examples/integration-health-check.md
docs/examples/optional-tool-not-required.md
docs/examples/runtime-codex-goal.md
docs/examples/runtime-claude-manual-fallback.md
docs/examples/runtime-no-linear.md
docs/examples/runtime-unknown-harness.md
docs/examples/runtime-strict-compatibility.md
docs/examples/legacy-repo-audit.md
docs/examples/legacy-modernization-plan.md
docs/examples/business-logic-extraction.md
docs/examples/legacy-to-spec.md
docs/examples/legacy-risk-assessment.md
docs/examples/next-step-beginner.md
docs/examples/next-step-advanced.md
docs/examples/post-spec-guidance.md
docs/examples/post-qa-guidance.md
docs/examples/post-implementation-guidance.md
docs/examples/when-guidance-stays-quiet.md
docs/examples/goal-from-spec.md
docs/examples/goal-for-milestone.md
docs/examples/goal-review.md
docs/examples/goal-status-handoff.md
docs/examples/bad-goal-vs-good-goal.md
benchmarks/onboarding-spec/README.md
registry/tools/README.md
registry/mcp-servers/README.md
registry/harnesses/README.md
registry/harnesses/codex.md
registry/harnesses/claude-code.md
registry/harnesses/hermes-agent.md
registry/harnesses/opencode.md
registry/harnesses/cursor.md
registry/harnesses/github-copilot.md
registry/harnesses/generic.md
reports/ecosystem-sweep/automation.md
reports/ecosystem-sweep/tracked-sources.md
reports/ecosystem-sweep/latest.md
reports/ecosystem-sweep/state.json
reports/ecosystem-sweep/draft-issues/README.md
reports/compatibility/latest.md
reports/compatibility/2026-05-30.md
mcp/linear.example.json
"

for file in $required_files; do
  [ -f "$file" ] || fail "missing required file: $file"
done

for dir in commands skills templates templates/contracts install scripts docs docs/examples docs/hosts docs/integrations mcp examples examples/evals benchmarks benchmarks/onboarding-spec benchmarks/onboarding-spec/cases registry registry/tools registry/mcp-servers registry/harnesses reports reports/ecosystem-sweep reports/ecosystem-sweep/draft-issues reports/compatibility; do
  [ -d "$dir" ] || fail "missing required directory: $dir"
done

command_count="$(find commands -type f -name 'hvn-*.md' | wc -l | tr -d ' ')"
skill_count="$(find skills -type f -name 'SKILL.md' | wc -l | tr -d ' ')"
template_count="$(find templates -type f -name '*.md' | wc -l | tr -d ' ')"

[ "$command_count" -ge 44 ] || fail "expected at least 44 command definitions"
[ "$skill_count" -ge 37 ] || fail "expected at least 37 skill definitions"
[ "$template_count" -ge 66 ] || fail "expected at least 66 templates"

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
