# Copies your Box AI pitch PDF into assets/ as boxai-pitch.pdf (the name index.html uses).
# Usage (from project root in PowerShell):
#   .\scripts\copy-boxai-pitch-to-assets.ps1 -Source "$env:USERPROFILE\OneDrive\Documents\YourPitch.pdf"

param(
  [Parameter(Mandatory = $true)]
  [string] $Source
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path $PSScriptRoot -Parent
$destDir = Join-Path $projectRoot 'assets'
$destFile = Join-Path $destDir 'boxai-pitch.pdf'

if (-not (Test-Path -LiteralPath $Source)) {
  Write-Error "Source file not found: $Source"
}

if (-not (Test-Path $destDir)) {
  New-Item -ItemType Directory -Path $destDir | Out-Null
}

Copy-Item -LiteralPath $Source -Destination $destFile -Force
Write-Host "OK: copied to $destFile"
Write-Host "Commit and push so the live site can serve it."
