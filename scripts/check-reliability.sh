#!/usr/bin/env sh
set -eu

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$root"

fail() {
  printf 'check-reliability: %s\n' "$1" >&2
  exit 1
}

for file in \
  docs/observability.md \
  docs/evals.md \
  docs/approval-gates.md \
  docs/artifact-contracts.md \
  docs/security-guardrails.md \
  docs/prompt-injection.md \
  docs/ci-quality.md \
  docs/run-memory.md \
  docs/spec-driven-workflow.md \
  docs/benchmark-pack.md \
  docs/workflow-accounting.md \
  docs/qa-to-regression.md \
  docs/shared-state.md \
  docs/human-checkpoints.md \
  docs/inspector.md \
  docs/tool-trust.md \
  docs/mcp-governance.md \
  docs/tool-registry.md \
  docs/tool-safety-rules.md \
  docs/mcp-review-workflow.md \
  docs/legacy-modernization.md \
  docs/repo-archaeology.md \
  templates/run-trace.md \
  templates/shared-state.md \
  templates/checkpoint-request.md \
  templates/checkpoint-decision.md \
  templates/run-inspection.md \
  templates/eval-case.md \
  templates/eval-report.md \
  templates/approval-request.md \
  templates/workflow-metrics.md \
  templates/regression-candidate.md \
  templates/regression-task.md \
  templates/benchmark-case.md \
  templates/benchmark-report.md \
  templates/tool-registry-entry.md \
  templates/mcp-server-entry.md \
  templates/mcp-review.md \
  templates/legacy-audit.md \
  templates/legacy-risk-report.md \
  templates/modernization-spec.md \
  templates/contracts/spec-contract.md \
  templates/contracts/run-memory-contract.md \
  templates/contracts/qa-brief-contract.md \
  templates/contracts/regression-pack-contract.md \
  templates/contracts/trace-contract.md \
  templates/contracts/eval-contract.md \
  commands/hvn-trace.md \
  commands/hvn-eval.md \
  commands/hvn-approve.md \
  commands/hvn-security-check.md \
  commands/hvn-benchmark.md \
  commands/hvn-metrics.md \
  commands/hvn-regression-task.md \
  commands/hvn-state.md \
  commands/hvn-checkpoint.md \
  commands/hvn-inspect.md \
  commands/hvn-tool-review.md \
  commands/hvn-mcp-review.md \
  commands/hvn-legacy.md \
  skills/hvn-observability/SKILL.md \
  skills/hvn-eval/SKILL.md \
  skills/hvn-approval-gate/SKILL.md \
  skills/hvn-benchmark/SKILL.md \
  skills/hvn-accounting/SKILL.md \
  skills/hvn-regression-task/SKILL.md \
  skills/hvn-shared-state/SKILL.md \
  skills/hvn-checkpoint/SKILL.md \
  skills/hvn-tool-governance/SKILL.md \
  skills/hvn-legacy/SKILL.md \
  docs/examples/trace-for-feature-run.md \
  docs/examples/eval-report.md \
  docs/examples/approval-request.md \
  docs/examples/prompt-injection-handling.md \
  docs/examples/artifact-contract-usage.md \
  docs/examples/benchmark-run.md \
  docs/examples/workflow-metrics-report.md \
  docs/examples/qa-to-regression.md \
  docs/examples/shared-state-handoff.md \
  docs/examples/checkpoint-before-risky-change.md \
  docs/examples/run-inspection.md \
  docs/examples/pause-and-resume.md \
  docs/examples/tool-review.md \
  docs/examples/mcp-server-review.md \
  docs/examples/high-risk-tool-approval.md \
  docs/examples/legacy-repo-audit.md \
  docs/examples/legacy-modernization-plan.md \
  docs/examples/business-logic-extraction.md \
  docs/examples/legacy-to-spec.md \
  docs/examples/legacy-risk-assessment.md \
  registry/tools/README.md \
  registry/mcp-servers/README.md \
  examples/evals/starter-set.md
do
  [ -f "$file" ] || fail "missing reliability file: $file"
done

case_count="$(grep -Ec '^[0-9]+\.' examples/evals/starter-set.md | tr -d ' ')"
[ "$case_count" -ge 10 ] || fail "starter eval set must contain at least 10 cases"

printf 'check-reliability: ok\n'
