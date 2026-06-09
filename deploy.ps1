# deploy.ps1 — Classable mockups auto-push
# Double-click (or run in PowerShell) to commit & push all changes to GitHub Pages

$ErrorActionPreference = "Stop"

Set-Location -Path $PSScriptRoot

# Check if there's anything to commit
$status = git status --porcelain
if (-not $status) {
    Write-Host "✓ Nothing to commit — already up to date." -ForegroundColor Green
    exit 0
}

# Build a commit message with a timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
$msg = "Update mockups $timestamp"

Write-Host "Staging all changes..." -ForegroundColor Cyan
git add -A

Write-Host "Committing: $msg" -ForegroundColor Cyan
git commit -m $msg

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git push origin main

Write-Host ""
Write-Host "✓ Done! Live at: https://helloitsj.github.io/classable-mockups/" -ForegroundColor Green
Write-Host "  (GitHub Pages may take ~60 seconds to rebuild)" -ForegroundColor Gray

Read-Host "Press Enter to close"
