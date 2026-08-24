-- ============================================================
-- check_depends.lua
-- 检查 Package_Meta 中 dependsOn 字段的有效性
--
-- 功能:
--   1. 扫描所有 Package_Meta.lua
--   2. 读取 dependsOn 字段
--   3. 检查每个依赖是否在 Project_Globals 中有记录
--   4. 报告未找到的依赖
-- ============================================================

local M = {}

-- 加载 Project_Globals
local function loadProjectGlobals(projectRoot)
    local path = projectRoot .. [[\Script\Setting\Project_Globals.lua]]
    local chunk, err = loadfile(path)
    if not chunk then
        return nil, "无法加载 Project_Globals: " .. path
    end
    local globals = chunk()
    if type(globals) ~= "table" then
        return nil, "Project_Globals 格式错误"
    end
    return globals
end

-- 扫描所有 Package_Meta.lua
local function scanPackageMetas(projectRoot)
    local pkgDir = projectRoot .. [[\Script\Package]]
    local metas = {}

    local cmd = 'dir /b "' .. pkgDir .. '" 2>nul'
    local handle = io.popen(cmd)
    if handle then
        local output = handle:read("*all")
        handle:close()

        for pkgName in (output or ""):gmatch("[^\r\n]+") do
            local metaPath = pkgDir .. [[\]] .. pkgName .. [[\Package_Meta.lua]]
            local f = io.open(metaPath, "r")
            if f then
                metas[#metas + 1] = {
                    packageName = pkgName,
                    path = metaPath,
                }
                f:close()
            end
        end
    end

    return metas
end

-- 解析 Package_Meta 中的 dependsOn
local function parseDependsOn(metaPath)
    local chunk, err = loadfile(metaPath)
    if not chunk then
        return nil
    end
    local ok, result = pcall(chunk)
    if not ok then
        return nil
    end
    if type(result) ~= "table" then
        return nil
    end
    return result.dependsOn
end

-- 检查单个依赖是否在 Project_Globals 中
local function checkDependency(depName, projectGlobals)
    if not projectGlobals then
        return "unknown", nil
    end

    if projectGlobals[depName] then
        local info = projectGlobals[depName]
        if type(info) == "table" and info.source then
            return "found", info.source
        elseif type(info) == "string" then
            return "found", info
        else
            return "found", "Project_Globals (无 source)"
        end
    end

    return "not_found", nil
end

-- 运行检查
function M.run(projectRoot)
    local result = {
        packages = {},
        totalPackages = 0,
        totalDeps = 0,
        errors = 0,
        warnings = 0,
    }

    -- 加载 Project_Globals
    local projectGlobals, loadErr = loadProjectGlobals(projectRoot)
    if not projectGlobals then
        result.error = loadErr
        return result
    end

    -- 扫描所有 Package_Meta
    local metas = scanPackageMetas(projectRoot)
    result.totalPackages = #metas

    for _, meta in ipairs(metas) do
        local dependsOn = parseDependsOn(meta.path)
        local pkgResult = {
            packageName = meta.packageName,
            dependsOn = dependsOn,
            deps = {},
        }

        if dependsOn and type(dependsOn) == "table" then
            for _, depName in ipairs(dependsOn) do
                local status, source = checkDependency(depName, projectGlobals)
                local depResult = {
                    name = depName,
                    status = status,
                    source = source,
                }
                pkgResult.deps[#pkgResult.deps + 1] = depResult
                result.totalDeps = result.totalDeps + 1

                if status == "not_found" then
                    result.warnings = result.warnings + 1
                end
            end
        end

        result.packages[#result.packages + 1] = pkgResult
    end

    return result
end

-- 打印报告
function M.printReport(result)
    if result.error then
        print("  [错误] " .. result.error)
        return
    end

    local SEP = string.rep("─", 60)

    for _, pkg in ipairs(result.packages) do
        print("")
        print("  [" .. pkg.packageName .. "]")

        if not pkg.dependsOn or #pkg.dependsOn == 0 then
            print("    (无 dependsOn)")
        else
            for _, dep in ipairs(pkg.deps) do
                if dep.status == "found" then
                    print("  ✓ " .. dep.name .. " -> " .. dep.source)
                else
                    print("  ⚠ " .. dep.name .. " -> 未在 Project_Globals 中找到")
                end
            end
        end
    end

    print("")
    print(SEP)
    print(string.format("  总结: %d 个包, %d 个依赖, %d 个警告",
        result.totalPackages, result.totalDeps, result.warnings))
end

return M
