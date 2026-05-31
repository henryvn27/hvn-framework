# Install ORCA

This is the canonical install guide.

If you are not sure which version of these instructions to follow, use this page.

## Before You Start

Read:

1. [install-prerequisites.md](install-prerequisites.md)
2. [install-paths.md](install-paths.md)

If you want more handholding, switch to [install-for-beginners.md](install-for-beginners.md).
If you want the shorter version, switch to [install-for-technical-users.md](install-for-technical-users.md).

## 1. Confirm What You Need

Purpose:
Choose the smallest install that matches your actual use case.

Do this:

1. Decide whether you just want to try ORCA, use it in one project, or install it globally.
2. Decide whether you need GitHub, Linear, a harness, or optional plugins right now.
3. Keep optional setup out of the critical path unless you already know you need it.

Expected result:
You know which install path you are following.

Verify:
You can answer these questions:

- Am I doing a repo install, local project install, or global install?
- Do I need a harness right now?
- Do I need GitHub or Linear right now?

If this fails:
Read [install-paths.md](install-paths.md) and [harness-chooser.md](harness-chooser.md).

## 2. Install Prerequisites

Purpose:
Make sure the base tools are present before you run ORCA commands.

Do this:

1. Install git if it is missing.
2. Make sure you have a POSIX shell if you are using macOS or Linux.
3. Make sure you can run local shell scripts.

Examples:

```sh
git --version
sh --version || true
```

Expected result:
The machine can run git and shell commands.

Verify:

```sh
git --version
```

If this fails:
Use [install-troubleshooting.md](install-troubleshooting.md) and [common-install-errors.md](common-install-errors.md).

## 3. Get ORCA

Purpose:
Get a clean copy of the framework before you try to install or validate it.

Do this:

```sh
git clone https://github.com/henryvn27/orca-hvn.git
cd orca-hvn
```

Expected result:
You are inside the ORCA repository folder.

Verify:

```sh
pwd
test -f ORCA-HVN.md && echo "repo looks right"
```

If this fails:
Check network access, repo permissions, and whether git is installed.

## 4. Choose Install Mode

Purpose:
Install only what you need.

Decision:

- If you want ORCA available only inside this project, use local install.
- If you want ORCA in a reusable user-level folder, use global install.
- If you only want to inspect or contribute to the repo, stay in repo mode.

Examples:

Local install:

```sh
./install/install.sh --mode local --target ./.orca-hvn
```

Global install:

```sh
./install/install.sh --mode global
```

Expected result:
ORCA files are copied into the target location.

Verify:

```sh
./install/verify-install.sh --target ./.orca-hvn
```

If you used global install, replace `./.orca-hvn` with `$HOME/.orca-hvn`.

If this fails:
Use [install-validation.md](install-validation.md) and [reset-and-retry.md](reset-and-retry.md).

## 5. Validate Core Install

Purpose:
Catch broken installs before you add integrations or harnesses.

Do this:

Repo validation:

```sh
./scripts/validate-repo.sh
```

Installed target validation:

```sh
./install/verify-install.sh --target ./.orca-hvn
```

Broader doctor check:

```sh
./install/doctor.sh --target ./.orca-hvn
```

If you used global install, replace `./.orca-hvn` with `$HOME/.orca-hvn`.

Expected result:
All checks report success.

Verify:
You see `validate-repo: ok`, `install verified`, or `doctor: ok`.

If this fails:
Go to [install-troubleshooting.md](install-troubleshooting.md).

## 6. Connect Core Services If Needed

Purpose:
Only connect services that the next real workflow needs.

Core services:

- GitHub when you need PRs, issues, or checks
- Linear when you need ORCA's default system of record

Do this:

1. Read [external-tool-setup.md](external-tool-setup.md).
2. Use [linear-setup.md](linear-setup.md) if you need Linear now.
3. Use [plugin-installation.md](plugin-installation.md) only if a plugin is actually required.

Expected result:
Needed services are either connected or intentionally skipped.

Verify:
Use [install-validation.md](install-validation.md) and `./install/doctor.sh --services github,linear`.

If this fails:
Use [plugin-troubleshooting.md](plugin-troubleshooting.md) or [install-troubleshooting.md](install-troubleshooting.md).

## 7. Add a Harness If Needed

Purpose:
Connect ORCA to the actual agent surface you plan to use.

Do this:

1. Read [harness-chooser.md](harness-chooser.md).
2. Follow [harness-installation.md](harness-installation.md).
3. Use [harness-setup.md](harness-setup.md) for host-specific steps.

Expected result:
You know which harness you are using and how ORCA maps to it.

Verify:

```sh
./install/doctor.sh --harness codex
```

Replace `codex` with the harness you chose.

If this fails:
Use [harness-troubleshooting.md](harness-troubleshooting.md).

## 8. Run a First Success Check

Purpose:
Prove the install works end to end.

Do this:

1. Read [first-run.md](first-run.md).
2. Run the first success flow in [first-success-check.md](first-success-check.md).

Expected result:
You complete one small ORCA workflow without guessing what to do next.

Verify:
Use [templates/first-run-validation.md](../templates/first-run-validation.md).

If this fails:
Use [install-troubleshooting.md](install-troubleshooting.md) and [reset-and-retry.md](reset-and-retry.md).

## 9. Know What To Do Next

After install, most users should continue with one of these:

- [first-workflow.md](first-workflow.md)
- [start-here.md](start-here.md)
- [choose-your-path.md](choose-your-path.md)

Do not widen into optional plugins, advanced harness setup, or extra integrations unless your next real task requires them.
