-- ============================================================
-- TestKit
-- 包内单元测试统一管理套件
--
-- 配置: 填入项目根目录
--   测试目录: TestHelper/Test/
--   测试文件: TestHelper/Test/Test_*.lua
--   opts.testDir 可显式覆盖
-- ============================================================

local M = {}

-- 项目根目录（请根据实际项目修改）
M.PROJECT_ROOT = [[E:\Project\AgentHelper\WithDrawCache]]

-- 默认测试目录（相对于 PROJECT_ROOT）
M.DEFAULT_TEST_DIR = [[TestHelper\Test]]

-- 包注册表: { [name] = { name, testDir, testFiles } }
M.packages = {}

-- ============================================================
-- 工具函数
-- ============================================================

function M.getProjectRoot()
    return M.PROJECT_ROOT
end

-- 扫描目录下所有 Test_*.lua 文件
function M.scanTestFiles(testDir, projectRoot)
    local files = {}
    local fullPath = projectRoot .. "\\" .. testDir:gsub("/", "\\")

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
function M.runTestFile(testFilePath, projectRoot)
    local fullPath = projectRoot .. "\\" .. testFilePath:gsub("/", "\\")

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
        local projectRoot = M.getProjectRoot()
        pkg.testFiles = M.scanTestFiles(pkg.testDir, projectRoot)
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

    local projectRoot = M.getProjectRoot()
    local testFiles = M.GetTestFiles(packageName)
    local allPass = true
    local results = {}

    for _, fileName in ipairs(testFiles) do
        local testFilePath = pkg.testDir .. "/" .. fileName
        local result = M.runTestFile(testFilePath, projectRoot)
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

    local projectRoot = M.getProjectRoot()
    local testFilePath = pkg.testDir .. "/" .. fileName
    local result = M.runTestFile(testFilePath, projectRoot)
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
