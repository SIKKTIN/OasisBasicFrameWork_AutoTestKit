# ============================================================
# Config - TestKit project root absolute path
# ============================================================
$PROJECT_ROOT = 'E:\Project\AgentHelper\WithDrawCache'

# TestKit launcher (UTF-8 support)
chcp 65001 > $null
$OutputEncoding = [Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Auto-detect project root (used when $PROJECT_ROOT is not set or invalid)
function Get-ProjectRoot {
    if ($PROJECT_ROOT -and (Test-Path (Join-Path $PROJECT_ROOT 'TestHelper'))) {
        return $PROJECT_ROOT
    }
    $scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
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

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Get-ProjectRoot
if (-not $projectRoot) {
    Write-Host "[ERROR] Cannot find project root" -ForegroundColor Red
    exit 1
}

Set-Location $projectRoot

$luaScript = "$projectRoot\TestHelper\TestKit\Run_Console.lua"

if (-not (Test-Path $luaScript)) {
    Write-Host "[ERROR] Cannot find $luaScript" -ForegroundColor Red
    exit 1
}

& lua54 $luaScript
$exitCode = $LASTEXITCODE

if ($exitCode -ne 0) {
    Write-Host ""
    Write-Host "[FAIL] TestKit exited with code $exitCode" -ForegroundColor Red
} else {
    Write-Host ""
    Write-Host "[OK] TestKit finished" -ForegroundColor Green
}

Read-Host "Press Enter to exit"
exit $exitCode
