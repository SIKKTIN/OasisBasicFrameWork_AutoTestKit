# ============================================================
# JsonExportKit 启动器
# ============================================================

$SETTING_FILE = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) 'ExternalConfig\setting.lua'

# 从 setting.lua 中读取 [[...]] 字段（仅支持顶层字符串字面量）
function Get-SettingField {
    param([string]$Name)
    if (-not (Test-Path $SETTING_FILE)) { return $null }
    $pattern = '(?m)^\s*' + [regex]::Escape($Name) + '\s*=\s*\[\[(.*?)\]\]'
    $raw = Get-Content $SETTING_FILE -Raw -Encoding UTF8
    $m = [regex]::Match($raw, $pattern)
    if ($m.Success) { return $m.Groups[1].Value }
    return $null
}

# 默认从 setting.lua 读取 testHelperRoot，自动推算其父目录作为项目根
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

$luaScript = "$projectRoot\TestHelper\JsonExportKit\Run_Console.lua"

if (-not (Test-Path $luaScript)) {
    Write-Host "[ERROR] Cannot find $luaScript" -ForegroundColor Red
    exit 1
}

$luaExec = Get-SettingField 'luaPath'
if (-not $luaExec) {
    Write-Host "[ERROR] Cannot find luaPath in setting.lua" -ForegroundColor Red
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
    Write-Host "[FAIL] JsonExportKit exited with code $exitCode" -ForegroundColor Red
} else {
    Write-Host ""
    Write-Host "[OK] JsonExportKit finished" -ForegroundColor Green
}

Read-Host "Press Enter to exit"
exit $exitCode
