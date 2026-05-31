param(
  [ValidateSet("local", "global")]
  [string]$Mode = "local",
  [string]$Target = ""
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

New-Item -ItemType Directory -Force -Path $Target | Out-Null

foreach ($Item in @("HVN.md", "HVN.defaults.md", "commands", "skills", "templates", "docs", "mcp", "profiles")) {
  $Source = Join-Path $Root $Item
  $Destination = Join-Path $Target $Item
  if (!(Test-Path $Source)) {
    throw "Missing source item: $Item"
  }
  if (Test-Path $Destination) {
    Remove-Item -Recurse -Force $Destination
  }
  Copy-Item -Recurse $Source $Destination
}

New-Item -ItemType Directory -Force -Path (Join-Path $Target "memory/runs/archive") | Out-Null

Set-Content -Path (Join-Path $Target "VERSION") -Value "0.1.0"
Write-Host "HVN installed to $Target"
Write-Host "Defaults: $(Join-Path $Target 'HVN.defaults.md')"
Write-Host "Henry profile: $(Join-Path $Target 'profiles/henry-van-ness.md')"
Write-Host "Linear setup guide: $(Join-Path $Target 'docs/linear-setup.md')"
Write-Host "Linear-first guidance: $(Join-Path $Target 'docs/linear-guidance.md')"
Write-Host "Run memory directory: $(Join-Path $Target 'memory/runs')"
Write-Host "Opt-out mode: choose a durable system of record and map HVN gates there."
