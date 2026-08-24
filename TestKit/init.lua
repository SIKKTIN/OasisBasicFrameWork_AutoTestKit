-- ============================================================
-- TestKit
-- 包内单元测试统一管理套件
--
-- 配置来源: ExternalConfig/setting.lua
--   projectRoot     - 被测业务项目根（Withdraw）
--   testHelperRoot  - TestHelper 工具根
--   testDir         - 单元测试根目录（相对 testHelperRoot）
--
-- 约定:
--   测试目录: <testHelperRoot>/<testDir>/
--   测试文件: <testDir>/Test_*.lua
--   opts.testDir 可在 RegisterPackage 时显式覆盖
-- ============================================================

-- 把 TestHelper 根加入 package.path, 使得
--   require("ExternalConfig.setting") 能工作
package.path = package.path .. ";./TestHelper/?.lua"

local M = {}

-- 引入项目级配置
local setting = require("ExternalConfig.setting")

-- 项目级路径
M.PROJECT_ROOT    = setting.projectRoot     -- 被测业务项目根
M.TEST_HELPER_ROOT = setting.testHelperRoot -- TestHelper 工具根

-- 默认单元测试根目录(相对 TEST_HELPER_ROOT)
M.DEFAULT_TEST_DIR = setting.testDir

-- 包注册表: { [name] = { name, testDir, testFiles } }
M.packages = {}

-- ============================================================
-- 工具函数
-- ============================================================

function M.getProjectRoot()
    return M.PROJECT_ROOT
end

function M.getTestHelperRoot()
    return M.TEST_HELPER_ROOT
end

function M.getDefaultTestDir()
    return M.DEFAULT_TEST_DIR
end

-- 扫描目录下所有 Test_*.lua 文件
-- testDir 可以是绝对路径,也可以是相对 TEST_HELPER_ROOT 的相对路径
function M.scanTestFiles(testDir)
    local files = {}
    local fullPath
    if testDir:match("^[A-Za-z]:") or testDir:match("^[/\\]") then
        fullPath = testDir:gsub("/", "\\")
    else
        fullPath = M.TEST_HELPER_ROOT .. "\\" .. testDir:gsub("/", "\\")
    end

    local handle = io.popen('dir /b "' .. fullPath .. '\\Test_*.lua" 2>nul')
    if handle then
        local output = handle:read("*all")
        handle:close()
        for line in (output or ""):gmatch("[^\r\n]+") do
            local trimmed = line:gsub("[\r\n]", "")
            if trimmed ~= "" then
                files[#files + 1] = trimmed
            end
        end
    end

    return files
end

-- 执行单个测试文件，返回 { output, exitCode }
-- testFilePath 应当是 TEST_HELPER_ROOT 下的相对路径(如 "UnitTests/CountDown/Test_Config.lua")
function M.runTestFile(testFilePath)
    local fullPath = M.TEST_HELPER_ROOT .. "\\" .. testFilePath:gsub("/", "\\")

    -- 用 call 延迟 %errorlevel% 的读取时机，确保 lua54 执行完再取
    local cmd = 'cmd /c "lua54 "' .. fullPath .. '" 2>&1 & call echo EXITCODE: %errorlevel%"'

    local handle = io.popen(cmd)
    local output = handle:read("*all")
    handle:close()

    -- 解析 exit code（格式: "EXITCODE: N"）
    local exitCode = 0
    for line in output:gmatch("[^\r\n]+") do
        local code = line:match("EXITCODE:%s*(%d+)")
        if code then
            exitCode = tonumber(code) or -1
        end
    end

    return {
        output = output,
        exitCode = exitCode,
        pass = (exitCode == 0),
    }
end

-- ============================================================
-- 包管理
-- ============================================================

function M.RegisterPackage(name, opts)
    opts = opts or {}
    local testDir = opts.testDir or M.DEFAULT_TEST_DIR
    M.packages[name] = {
        name = name,
        testDir = testDir,
        testFiles = {},  -- 延迟到需要时扫描
    }
end

function M.GetRegisteredPackages()
    local list = {}
    for name, _ in pairs(M.packages) do
        list[#list + 1] = name
    end
    table.sort(list)
    return list
end

function M.GetTestFiles(packageName)
    local pkg = M.packages[packageName]
    if not pkg then return {} end

    if #pkg.testFiles == 0 then
        pkg.testFiles = M.scanTestFiles(pkg.testDir)
    end

    return pkg.testFiles
end

function M.ClearRegistry()
    M.packages = {}
end

-- ============================================================
-- 运行
-- ============================================================

function M.RunPackage(packageName)
    local pkg = M.packages[packageName]
    if not pkg then
        return {
            packageName = packageName,
            pass = false,
            error = "Package not registered: " .. packageName,
            results = {},
        }
    end

    local testFiles = M.GetTestFiles(packageName)
    local allPass = true
    local results = {}

    for _, fileName in ipairs(testFiles) do
        local testFilePath = pkg.testDir .. "/" .. fileName
        local result = M.runTestFile(testFilePath)
        result.fileName = fileName
        result.filePath = testFilePath
        if not result.pass then allPass = false end
        results[#results + 1] = result
    end

    return {
        packageName = packageName,
        pass = allPass,
        results = results,
        testFileCount = #testFiles,
    }
end

function M.RunSingleFile(packageName, fileName)
    local pkg = M.packages[packageName]
    if not pkg then
        return {
            packageName = packageName,
            pass = false,
            error = "Package not registered: " .. packageName,
            results = {},
        }
    end

    local testFilePath = pkg.testDir .. "/" .. fileName
    local result = M.runTestFile(testFilePath)
    result.fileName = fileName
    result.filePath = testFilePath

    return {
        packageName = packageName,
        pass = result.pass,
        results = { result },
        testFileCount = 1,
    }
end

function M.RunAll()
    local results = {}
    local allPass = true

    for _, name in ipairs(M.GetRegisteredPackages()) do
        local pkgResult = M.RunPackage(name)
        results[#results + 1] = pkgResult
        if not pkgResult.pass then allPass = false end
    end

    return {
        allPass = allPass,
        results = results,
        totalPackages = #results,
    }
end

return M
