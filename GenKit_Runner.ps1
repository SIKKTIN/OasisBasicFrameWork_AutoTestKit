# ============================================================
# GenKit 启动器
# ============================================================

$SETTING_FILE = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) 'setting.json'

# 从根目录 setting.json 读取配置字段
function Get-SettingField {
    param([string]$Name)
    if (-not (Test-Path $SETTING_FILE)) { return $null }
    try {
        $config = Get-Content $SETTING_FILE -Raw -Encoding UTF8 | ConvertFrom-Json
        return $config.$Name
    } catch {
        Write-Host "[ERROR] Cannot parse $SETTING_FILE`: $($_.Exception.Message)" -ForegroundColor Red
        return $null
    }
}

# 默认从 setting.json 读取 testHelperRoot，自动推算其父目录作为项目根
$_thRoot = Get-SettingField 'testHelperRoot'
if ($_thRoot) {
    $PROJECT_ROOT = (Split-Path -Parent $_thRoot.TrimEnd('\','/'))
}
$PROJECT_ROOT_PARENT = (Split-Path -Parent $PROJECT_ROOT.TrimEnd('\','/'))

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

$luaExec = Get-SettingField 'luaPath'
if (-not $luaExec) {
    Write-Host "[ERROR] Cannot find luaPath in setting.json" -ForegroundColor Red
    exit 1
}
if (-not (Test-Path $luaExec)) {
    Write-Host "[ERROR] lua executable not found: $luaExec" -ForegroundColor Red
    exit 1
}

& $luaExec $luaScript
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
