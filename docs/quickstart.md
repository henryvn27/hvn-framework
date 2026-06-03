# Quickstart

This is the fastest safe path from zero to a working ORCA install.

If you want more explanation, go to [install-for-beginners.md](install-for-beginners.md).
If you want the full canonical version, go to [install.md](install.md).

## 1. Clone The Repo

```sh
git clone https://github.com/henryvn27/orca-hvn.git
cd orca-hvn
```

Expected result:
You are inside the ORCA repo.

## 2. Validate The Repo

```sh
./scripts/validate-repo.sh
```

Expected result:
`validate-repo: ok`

## 3. Install ORCA Locally

```sh
./install/install.sh --mode local --target ./.orca-hvn
```

Expected result:
The script prints the install target and next-step docs.

Add the installed command layer to your shell path:

```sh
export PATH="$(pwd)/.orca-hvn/bin:$PATH"
```

## 4. Verify The Install

```sh
./install/verify-install.sh --target ./.orca-hvn
./install/doctor.sh --target ./.orca-hvn
```

Expected result:
You see `install verified` and `doctor: ok`.

## 5. Run The First Success Flow

Read:

1. [first-run.md](first-run.md)
2. [first-success-check.md](first-success-check.md)
3. [first-workflow.md](first-workflow.md)

Then use the default ORCA path:

1. `orca-onboard`
2. `orca-spec`
3. `orca-plan`
4. `orca-build`
5. `orca-review`

If you want one personalized showcase instead of choosing your own task first, use `orca-demo`.

These commands are available after install if `.orca-hvn/bin` is on your `PATH`.
Use `orca-onboard --print -- "describe the task"` to inspect the prompt, or run `orca-onboard --harness codex -- "describe the task"` when Codex CLI is installed.
