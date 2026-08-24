# ============================================================
# CodeNormKit_Runner.ps1
# Default entry point - starts the interactive console.
# ============================================================
# Run directly:
#   .\CodeNormKit_Runner.ps1
#
# For CI / batch mode, run the base entry instead:
#   lua54 TestHelper\CodeNormKit\testsuite\Run_All.lua
#   lua54 TestHelper\CodeNormKit\testsuite\Run_All.lua AutoTestKit
# ============================================================

# UTF-8 support (Console + pipeline), same as other *Kit_Runner.ps1
chcp 65001 | Out-Null
$OutputEncoding = [Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$luaScript = Join-Path $scriptDir 'CodeNormKit\Run_Console.lua'

if (-not (Test-Path $luaScript)) {
    Write-Host "[ERROR] Cannot find $luaScript" -ForegroundColor Red
    exit 1
}

& lua54 $luaScript
$exitCode = $LASTEXITCODE

Write-Host ""
if ($exitCode -ne 0) {
    Write-Host "[FAIL] CodeNormKit exited with code $exitCode" -ForegroundColor Red
} else {
    Write-Host "[OK] CodeNormKit finished" -ForegroundColor Green
}

# Keep the window open (matches other Kit runners; lets users read output
# after the Lua process exits).
Read-Host "Press Enter to exit"
exit $exitCode