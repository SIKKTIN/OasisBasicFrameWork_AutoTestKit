# ============================================================
# Config - Absolute path to the Withdraw project root
# ============================================================
$PROJECT_ROOT = 'E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Withdraw'

# CodeNormKit generic runner
#
# Usage:
#   .\CodeNormKit_Runner.ps1              Run all
#   .\CodeNormKit_Runner.ps1 CountDown    Filter by subset (CountDown only)
#
# Deployed at TestHelper/CodeNormKit/ (decoupled from business project)
#   - CodeNormKit sources live at <TestHelperRoot>/CodeNormKit/
#   - Business project root is set explicitly via $PROJECT_ROOT
#     (init.lua reads this value too)
#   - Entry is fixed at TestHelper/CodeNormKit/testsuite/Run_All.lua
#
# Encoding note:
#   This file is plain ASCII. No UTF-8 BOM is required.
#   Original file had Chinese comments without BOM, which PowerShell 5.x
#   mis-decoded as ANSI, breaking `}` parsing inside function bodies.
#   Keeping comments ASCII avoids that whole class of bug.

$ErrorActionPreference = 'Continue'

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 | Out-Null

# CodeNormKit directory (parent of TestHelper/CodeNormKit/, i.e. TestHelper itself)
# Runner.ps1 location: <TestHelper>/CodeNormKit_Runner.ps1
$scriptDir  = Split-Path -Parent $MyInvocation.MyCommand.Path
$kitDir     = Join-Path $scriptDir 'CodeNormKit'
$entry      = Join-Path $kitDir 'testsuite\Run_All.lua'

# Auto-detect business project root: prefer $PROJECT_ROOT, otherwise walk up
# looking for a directory that contains a Script/ folder.
function Get-ProjectRoot {
    param([string]$Configured, [string]$StartDir)
    if ($Configured -and (Test-Path (Join-Path $Configured 'Script'))) {
        return $Configured
    }
    $dir = $StartDir.TrimEnd('\', '/')
    while ($dir -ne '') {
        if (Test-Path (Join-Path $dir 'Script')) {
            return $dir
        }
        $sepIndex = $dir.LastIndexOfAny([char[]]('\', '/'))
        if ($sepIndex -le 0) { break }
        $dir = $dir.Substring(0, $sepIndex)
    }
    return $null
}

$projectRoot = Get-ProjectRoot -Configured $PROJECT_ROOT -StartDir $scriptDir
if (-not $projectRoot) {
    Write-Host "[ERROR] Cannot find business project root (with Script/ folder) starting from $scriptDir" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Required path checks
if (-not (Test-Path $kitDir)) {
    Write-Host "[ERROR] CodeNormKit directory not found: $kitDir" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}
if (-not (Test-Path $entry)) {
    Write-Host "[ERROR] Entry script not found: $entry" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "============================================================"
Write-Host "CodeNormKit - Run All"
Write-Host "============================================================"
Write-Host "Project Root: $projectRoot"
Write-Host "Kit Dir:      $kitDir"
Write-Host "Entry:        $entry"

# Lua package.path setup:
#   1) Business project root (so require("Script/...") resolves - init.lua
#      currently does not need this but we keep it for forward compat)
#   2) CodeNormKit dir (so require("init") / "parser" / "rules" resolve)
#   3) CodeNormKit/testsuite (so require("registry.CountDown") resolves)
#   4) CodeNormKit/demo (demo/Run_Demo.lua adds this itself)
# Note: Lua `?` does not treat `.` as `/`, so we add each directory directly.
$rootSlash        = ($projectRoot -replace '\\', '/')
$kitDirSlash      = ($kitDir     -replace '\\', '/')
$tsDirSlash       = ($kitDir     -replace '\\', '/') + '/testsuite'
$demoDirSlash     = ($kitDir     -replace '\\', '/') + '/demo'

$env:LUA_PATH = "$rootSlash/?.lua;$rootSlash/?/init.lua;$kitDirSlash/?.lua;$tsDirSlash/?.lua;$demoDirSlash/?.lua;;"

# Lua binary: prefer $env:LUA_BIN, fall back to 'lua54' on PATH
$luaBin = if ($env:LUA_BIN) { $env:LUA_BIN } else { 'lua54' }
Write-Host "Lua:           $luaBin"
Write-Host ""

# cd into the business project root so relative paths in init.lua
# (e.g. "./TestHelper/CodeNormKit/?.lua") resolve correctly.
Push-Location $projectRoot
try {
    & $luaBin $entry @args
    $exitCode = $LASTEXITCODE
} finally {
    Pop-Location
}

Write-Host ""
if ($exitCode -ne 0) {
    Write-Host "[FAIL] CodeNormKit Lint" -ForegroundColor Red
} else {
    Write-Host "[PASS] CodeNormKit Lint" -ForegroundColor Green
}

Read-Host "Press Enter to exit"
exit $exitCode