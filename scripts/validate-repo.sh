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
HVN.defaults.md
.gitignore
.editorconfig
.gitattributes
.github/ISSUE_TEMPLATE/bug-report.yml
.github/ISSUE_TEMPLATE/feature-request.yml
.github/ISSUE_TEMPLATE/config.yml
.github/PULL_REQUEST_TEMPLATE.md
.github/workflows/ci.yml
.github/workflows/markdown-lint.yml
.github/workflows/validate-install.yml
.github/FUNDING.yml
core/README.md
adapters/claude/README.md
adapters/codex/README.md
adapters/codex/AGENTS.md
adapters/opencode/README.md
adapters/hermes/README.md
commands/hvn-question-flow.md
commands/hvn-onboard.md
commands/hvn-discover.md
commands/hvn-spec.md
commands/hvn-linear-intake.md
commands/hvn-help.md
commands/hvn-blind-qa-brief.md
docs/linear-workflow.md
docs/cross-harness-architecture.md
docs/compatibility-matrix.md
docs/command-mapping.md
docs/portable-skills.md
docs/linear-setup.md
docs/default-behavior.md
docs/skill-routing.md
docs/linear-defaults.md
docs/anti-generic-calibration.md
docs/anti-ai-writing.md
docs/anti-ai-design.md
docs/run-memory.md
docs/run-memory-linear.md
docs/run-memory-handoffs.md
docs/run-memory-maintenance.md
docs/blind-to-briefed-delta.md
docs/aesthetic-profiles.md
docs/linear-issue-health.md
docs/regression-packs.md
docs/linear-agent-model.md
docs/linear-states.md
docs/linear-issue-lifecycle.md
docs/linear-guidance.md
docs/interactive-question-flows.md
docs/host-ui-guidance.md
docs/hosts/claude-code.md
docs/hosts/codex-cli.md
docs/hosts/opencode.md
docs/hosts/hermes-agent.md
docs/examples/linear-setup-session.md
docs/examples/linear-feature-flow.md
docs/examples/linear-blind-qa-flow.md
docs/examples/routing-premium-frontend.md
docs/examples/routing-existing-project.md
docs/examples/full-output.md
docs/examples/linear-blocked.md
docs/examples/anti-generic-writing.md
docs/examples/anti-generic-ui.md
docs/examples/authenticity-ui-copy.md
docs/examples/authenticity-blind-qa.md
docs/examples/run-memory-session.md
docs/examples/run-memory-init.md
docs/examples/run-memory-update.md
docs/examples/run-memory-resume.md
docs/examples/run-memory-linear-sync.md
docs/examples/run-memory-handoff.md
docs/examples/blind-to-briefed-delta.md
docs/examples/aesthetic-profile-usage.md
docs/examples/linear-health-check.md
docs/examples/regression-pack-creation.md
docs/examples/question-flow-resume.md
docs/examples/onboarding-question-rounds.md
docs/examples/linear-question-intake.md
docs/examples/qa-brief-question-flow.md
docs/examples/claude-workflow.md
docs/examples/codex-workflow.md
docs/examples/opencode-workflow.md
docs/examples/hermes-workflow.md
docs/examples/cross-harness-handoff.md
mcp/linear.example.json
examples/sample-run-memory/README.md
skills/hvn-question-flow/SKILL.md
templates/question-round.md
templates/onboarding-intake.md
templates/clarification-summary.md
templates/qa-brief-intake.md
templates/linear-question-sync.md
profiles/henry-van-ness.md
profiles/henry-defaults.md
profiles/editorial.md
profiles/brutalist.md
profiles/warm-product.md
profiles/systems-dashboard.md
"

for file in $required_files; do
  [ -f "$file" ] || fail "missing required file: $file"
done

for dir in commands skills templates install scripts docs mcp examples profiles core adapters; do
  [ -d "$dir" ] || fail "missing required directory: $dir"
done

command_count="$(find commands -type f -name 'hvn-*.md' | wc -l | tr -d ' ')"
skill_count="$(find skills -type f -name 'SKILL.md' | wc -l | tr -d ' ')"
template_count="$(find templates -type f -name '*.md' | wc -l | tr -d ' ')"

[ "$command_count" -ge 37 ] || fail "expected at least 37 command definitions"
[ "$skill_count" -ge 32 ] || fail "expected at least 32 skill definitions"
[ "$template_count" -ge 32 ] || fail "expected at least 32 templates"

for script in install/install.sh install/install-claude.sh install/install-codex.sh install/install-opencode.sh install/install-hermes.sh install/detect-host.sh install/uninstall.sh install/doctor.sh install/verify-install.sh scripts/check-markdown.sh scripts/check-links.sh scripts/bootstrap-git.sh scripts/validate-repo.sh scripts/linear-setup.sh; do
  [ -f "$script" ] || fail "missing script: $script"
  [ -x "$script" ] || fail "script is not executable: $script"
  sh -n "$script" || fail "script syntax failed: $script"
done

if grep -RIn --exclude='validate-repo.sh' 'TODO\|FIXME\|rest of code\|similar to above\|for brevity' README.md HVN.md INSTALL.md docs commands skills templates install scripts mcp examples .github 2>/dev/null; then
  fail "placeholder or banned phrase detected"
fi

./scripts/check-markdown.sh
./scripts/check-links.sh

printf 'validate-repo: ok\n'
