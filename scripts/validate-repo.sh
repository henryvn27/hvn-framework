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
.github/workflows/evals.yml
.github/workflows/install-test.yml
.github/workflows/markdown-lint.yml
.github/workflows/validate-install.yml
.github/FUNDING.yml
docs/linear-workflow.md
docs/observability.md
docs/evals.md
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
mcp/linear.example.json
"

for file in $required_files; do
  [ -f "$file" ] || fail "missing required file: $file"
done

for dir in commands skills templates templates/contracts install scripts docs docs/examples mcp examples examples/evals; do
  [ -d "$dir" ] || fail "missing required directory: $dir"
done

command_count="$(find commands -type f -name 'hvn-*.md' | wc -l | tr -d ' ')"
skill_count="$(find skills -type f -name 'SKILL.md' | wc -l | tr -d ' ')"
template_count="$(find templates -type f -name '*.md' | wc -l | tr -d ' ')"

[ "$command_count" -ge 25 ] || fail "expected at least 25 command definitions"
[ "$skill_count" -ge 26 ] || fail "expected at least 26 skill definitions"
[ "$template_count" -ge 28 ] || fail "expected at least 28 templates"

for script in install/install.sh install/uninstall.sh install/doctor.sh install/verify-install.sh scripts/check-markdown.sh scripts/check-links.sh scripts/check-reliability.sh scripts/bootstrap-git.sh scripts/validate-repo.sh scripts/linear-setup.sh; do
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

printf 'validate-repo: ok\n'
