# ============================================================
# GenKit 启动器
# ============================================================

$PROJECT_ROOT = 'E:\Project\AgentHelper\WithDrawCache'

# UTF-8 支持
chcp 65001 > $null
$OutputEncoding = [Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# 自动检测项目根目录
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

$luaScript = "$projectRoot\TestHelper\GenKit\Run_Console.lua"

if (-not (Test-Path $luaScript)) {
    Write-Host "[ERROR] Cannot find $luaScript" -ForegroundColor Red
    exit 1
}

& lua54 $luaScript
$exitCode = $LASTEXITCODE

if ($exitCode -ne 0) {
    Write-Host ""
    Write-Host "[FAIL] GenKit exited with code $exitCode" -ForegroundColor Red
} else {
    Write-Host ""
    Write-Host "[OK] GenKit finished" -ForegroundColor Green
}

Read-Host "Press Enter to exit"
exit $exitCode
