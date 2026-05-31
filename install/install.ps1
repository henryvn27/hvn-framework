param(
  [ValidateSet("local", "global")]
  [string]$Mode = "local",
  [string]$Target = "",
  [ValidateSet("shared", "claude", "codex", "opencode", "hermes")]
  [string]$HostAdapter = "shared",
  [switch]$DryRun,
  [switch]$Yes,
  [switch]$SkipVerify
)

$ErrorActionPreference = "Stop"
$Root = Resolve-Path (Join-Path $PSScriptRoot "..")

if ($Target -eq "") {
  if ($Mode -eq "global") {
    $Target = Join-Path $HOME ".hvn"
  } else {
    $Target = Join-Path (Get-Location) ".hvn"
  }
}

Write-Host "== HVN install =="
Write-Host "Mode: $Mode"
Write-Host "Host adapter: $HostAdapter"
Write-Host "Target: $Target"
Write-Host "Dry run: $DryRun"

if ((Test-Path $Target) -and !(Test-Path (Join-Path $Target "HVN.md"))) {
  throw "Target exists but does not look like an HVN install: $Target"
}

if ((Test-Path $Target) -and !$Yes -and !$DryRun) {
  $Answer = Read-Host "Existing HVN install will be refreshed. Continue? [y/N]"
  if ($Answer -notin @("y", "Y", "yes", "YES")) {
    throw "Install canceled"
  }
}

if (!$DryRun) {
  New-Item -ItemType Directory -Force -Path $Target | Out-Null
}

foreach ($Item in @("HVN.md", "HVN.defaults.md", "commands", "skills", "templates", "docs", "mcp", "profiles", "core", "adapters")) {
  $Source = Join-Path $Root $Item
  $Destination = Join-Path $Target $Item
  if (!(Test-Path $Source)) {
    throw "Missing source item: $Item"
  }
  if ($DryRun) {
    Write-Host "[dry-run] Copy $Source -> $Destination"
  } elseif (Test-Path $Destination) {
    Remove-Item -Recurse -Force $Destination
    Copy-Item -Recurse $Source $Destination
  } else {
    Copy-Item -Recurse $Source $Destination
  }
}

if (!$DryRun) {
  New-Item -ItemType Directory -Force -Path (Join-Path $Target "memory/runs/archive") | Out-Null
}

if (!$DryRun) {
  Set-Content -Path (Join-Path $Target "VERSION") -Value "0.1.0"
  Set-Content -Path (Join-Path $Target "HOST") -Value $HostAdapter
}

Write-Host "HVN installed to $Target"
Write-Host "Host adapter: $HostAdapter"
Write-Host "Defaults: $(Join-Path $Target 'HVN.defaults.md')"
Write-Host "Henry profile: $(Join-Path $Target 'profiles/henry-van-ness.md')"
Write-Host "Linear setup guide: $(Join-Path $Target 'docs/linear-setup.md')"
Write-Host "Linear-first guidance: $(Join-Path $Target 'docs/linear-guidance.md')"
Write-Host "Cross-harness guide: $(Join-Path $Target 'docs/cross-harness-architecture.md')"
Write-Host "Run memory directory: $(Join-Path $Target 'memory/runs')"
Write-Host "First run: $(Join-Path $Target 'docs/first-run.md')"
Write-Host "Opt-out mode: choose a durable system of record and map HVN gates there."
