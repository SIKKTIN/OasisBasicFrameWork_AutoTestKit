# ============================================================
# PackageKit Runner
#
# Usage:
#   .\PackageKit_Runner.ps1              Interactive console
#
# Deployed at TestHelper/
# ============================================================

$ErrorActionPreference = 'Continue'

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 | Out-Null

# Auto-detect project root
function Get-ProjectRoot {
    $scriptPath = if ($PSCommandPath) { $PSCommandPath } else { $MyInvocation.MyCommand.Path }
    $scriptDir = Split-Path -Parent $scriptPath
    $dir = $scriptDir.TrimEnd('\', '/')
    while ($dir -ne '') {
        if (Test-Path (Join-Path $dir 'TestHelper')) {
            return $dir
        }
        $sepIndex = $dir.LastIndexOfAny([char[]]@('\', '/'))
        if ($sepIndex -le 0) { break }
        $dir = $dir.Substring(0, $sepIndex)
    }
    return $null
}

$projectRoot = Get-ProjectRoot

if (-not $projectRoot) {
    Write-Host "[ERROR] Cannot find project root" -ForegroundColor Red
    exit 1
}

Write-Host "============================================================"
Write-Host "PackageKit - Interactive Console"
Write-Host "============================================================"
Write-Host ""

# Run interactive console
Set-Location $projectRoot
$settingFile = Join-Path $projectRoot 'TestHelper\setting.json'
if (-not (Test-Path $settingFile)) {
    Write-Host "[ERROR] Cannot find $settingFile" -ForegroundColor Red
    exit 1
}
$setting = Get-Content $settingFile -Raw -Encoding UTF8 | ConvertFrom-Json
$luaExec = $setting.luaPath
if (-not $luaExec -or -not (Test-Path $luaExec)) {
    Write-Host "[ERROR] luaPath is missing or invalid in setting.json" -ForegroundColor Red
    exit 1
}
$luaScript = "$projectRoot\TestHelper\PackageKit\Run_Console.lua"

if (-not (Test-Path $luaScript)) {
    Write-Host "[ERROR] Cannot find $luaScript" -ForegroundColor Red
    exit 1
}

& $luaExec $luaScript
$exitCode = $LASTEXITCODE

Write-Host ""
if ($exitCode -ne 0) {
    Write-Host "[FAIL] PackageKit exited with code $exitCode" -ForegroundColor Red
} else {
    Write-Host "[OK] PackageKit finished" -ForegroundColor Green
}

Read-Host "Press Enter to exit"
exit $exitCode
