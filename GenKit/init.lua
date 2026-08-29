-- ============================================================
-- GenKit
-- 项目代码生成工具套件
--
-- 配置：
--   路径相关配置统一从 ExternalConfig/setting.lua 读取
--   设置方式见 README "配置" 一节
-- ============================================================

local M = {}

-- 引入项目级配置
local setting = require("ExternalConfig.setting")

-- 先注册自身到 package.loaded，避免循环 require
package.loaded["init"] = M

-- 项目根目录（WithDraw 项目）
M.PROJECT_ROOT = setting.projectRoot

-- Lua 源码目录
function M.getScriptDir()
    return M.PROJECT_ROOT .. [[\Script]]
end

-- Project_Globals.lua 输出绝对路径
function M.getProjectGlobalsOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.projectGlobalsPath
end

-- Package_Registry.lua 输出绝对路径
function M.getPackageRegistryOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.packageRegistryPath
end

-- Package_Meta_Index.lua 输出绝对路径
function M.getPackageMetaIndexOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.packageMetaIndexPath
end

function M.getCommandConfigDir()
    return M.PROJECT_ROOT .. [[\]] .. setting.commandConfigDir
end

function M.getCommandListOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.commandListPath
end

function M.getDebugKitScanDir()
    return M.PROJECT_ROOT .. [[\]] .. setting.debugKitScanDir
end

function M.getDebugKitPredictionOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.debugKitPredictionPath
end

-- 向后兼容字段（外部脚本可能直接读取 M.SCRIPT_DIR）
M.SCRIPT_DIR = M.PROJECT_ROOT .. [[\Script]]

-- 内置白名单（Lua 标准库 + 引擎 API）
M.LUA_BUILTINS = {
    ["pairs"] = true, ["ipairs"] = true, ["print"] = true,
    ["type"] = true, ["tostring"] = true, ["tonumber"] = true,
    ["pcall"] = true, ["xpcall"] = true, ["error"] = true,
    ["select"] = true, ["assert"] = true, ["require"] = true,
    ["next"] = true, ["rawget"] = true, ["rawset"] = true,
    ["rawlen"] = true, ["setmetatable"] = true, ["getmetatable"] = true,
    ["collectgarbage"] = true, ["dofile"] = true, ["loadfile"] = true,
    ["load"] = true, ["table"] = true, ["string"] = true,
    ["math"] = true, ["io"] = true, ["os"] = true, ["debug"] = true,
    ["unpack"] = true, ["coroutine"] = true,
}

M.ENGINE_BUILTINS = {
    ["ugcprint"] = true, ["UGCGameSystem"] = true,
    ["UGCAudioSystem"] = true, ["UGCPropertySystem"] = true,
    ["UGCCharacter"] = true, ["UGCGameplay"] = true,
    ["UGCUI"] = true, ["UGCInventory"] = true,
    ["UGCAttribute"] = true, ["TimerService"] = true,
    ["EventService"] = true, ["AsyncService"] = true,
    ["LogService"] = true, ["UnrealNetwork"] = true,
    ["Util_EnumManager"] = true,
    -- require 路径前缀
    ["Script"] = true, ["Package"] = true,
    ["Config"] = true, ["Suites"] = true, ["System"] = true,
}

function M.getProjectRoot()
    return M.PROJECT_ROOT
end

-- getScriptDir() 已在上方用函数 getter 实现,这里不再重复定义

-- ============================================================
-- 工具函数
-- ============================================================

-- 扫描目录下所有 .lua 文件
function M.scanLuaFiles(dir)
    local files = {}
    local fullPath = dir:gsub("/", "\\")

    local cmd = 'dir /b /s "' .. fullPath .. '\\*.lua" 2>nul'
    local handle = io.popen(cmd)
    if handle then
        local output = handle:read("*all")
        handle:close()
        for line in (output or ""):gmatch("[^\r\n]+") do
            local trimmed = line:gsub("[\r\n]", ""):gsub("^%s*(.-)%s*$", "%1")
            if trimmed ~= "" and trimmed:match("%.lua$") then
                files[#files + 1] = trimmed
            end
        end
    end
    return files
end

-- 从文件内容中提取全局表定义
-- 匹配模式: XXX = XXX or {} (文件顶部定义)
function M.extractGlobalDefs(content)
    local globals = {}

    -- 只扫描文件开头（前 20 行），通常 global 定义在顶部
    local lines = {}
    for line in content:gmatch("[^\r\n]+") do
        lines[#lines + 1] = line
        if #lines >= 20 then break end
    end

    for _, line in ipairs(lines) do
        -- 移除注释
        local cleanLine = line:gsub("%-%-[^\r\n]*", ""):gsub("%-%-%[%[[^%]]*%]%]", "")

        -- 匹配 XXX = XXX or {}
        -- 例如: Query_Loot = Query_Loot or {}
        local match = cleanLine:match("^%s*([A-Z][a-zA-Z0-9_]*)%s*=%s*%1%s*or%s*%{%}%s*$")
        if match then
            if not M.LUA_BUILTINS[match] and not M.ENGINE_BUILTINS[match] then
                globals[match] = true
            end
        end
    end

    return globals
end

-- 将绝对路径转换为相对于 Script/ 的路径
-- 例如: E:\...\Withdraw\Script\Package\CountDown\Config\Config_CountDown.lua
--   -> Package/CountDown/Config/Config_CountDown
function M.absPathToRelative(absPath)
    -- 移除驱动器盘符和反斜杠，统一为正斜杠
    -- E:\...\Withdraw\Script\Package\... -> .../Withdraw/Script/Package/...
    local normalized = absPath:gsub("\\", "/"):gsub("^[A-Za-z]:", "")
    -- 匹配路径中任意位置的 /Script/ 子目录
    -- 保留 /Script/ 后面的部分
    local rel = normalized:match("[/\\]Script[/\\](.+)")
    if rel then
        -- 移除 .lua 后缀
        return rel:gsub("%.lua$", "")
    end
    return nil
end

-- ============================================================
-- 生成器: Project_Globals
-- ============================================================

function M.genProjectGlobals()
    local results = {
        found = {},  -- { [name] = { name = name, source = "Package/..." }, ... }
        totalFiles = 0,
        success = true,
        error = nil,
    }

    print("扫描目录: " .. M.SCRIPT_DIR)

    local luaFiles = M.scanLuaFiles(M.SCRIPT_DIR)
    results.totalFiles = #luaFiles

    print("找到 " .. #luaFiles .. " 个 Lua 文件")

    for _, filePath in ipairs(luaFiles) do
        local f, err = io.open(filePath, "r")
        if not f then
            -- 静默跳过无法读取的文件
        else
            local content = f:read("*a")
            f:close()

            local globals = M.extractGlobalDefs(content)
            local relPath = M.absPathToRelative(filePath)

            for name in pairs(globals) do
                results.found[name] = {
                    name = name,
                    source = relPath,
                }
            end
        end
    end

    -- 排序
    local sorted = {}
    for name in pairs(results.found) do
        sorted[#sorted + 1] = name
    end
    table.sort(sorted)

    results.sorted = sorted
    results.count = #sorted

    return results
end

-- 预览 Project_Globals（不写入文件）
function M.previewProjectGlobals()
    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  预览: 生成 Project_Globals.lua")
    print("═══════════════════════════════════════════════════════════")
    print("")

    -- 生成
    local results = M.genProjectGlobals()

    if results.totalFiles == 0 then
        print("[ERROR] 未找到任何 Lua 文件")
        return false, "未找到 Lua 文件", nil
    end

    local outputPath = M.getProjectGlobalsOutputPath()

    print("")
    print("───────────────────────────────────────────────────────────")
    print("  统计信息")
    print("───────────────────────────────────────────────────────────")
    print("  扫描文件数: " .. results.totalFiles)
    print("  收集全局数: " .. results.count)
    print("  写入位置:   " .. outputPath)
    print("")
    print("───────────────────────────────────────────────────────────")
    print("  全局列表 (前 20 个)")
    print("───────────────────────────────────────────────────────────")

    local maxShow = math.min(#results.sorted, 20)
    for i = 1, maxShow do
        local name = results.sorted[i]
        local info = results.found[name]
        print(string.format("  [%d] %s", i, name))
        print(string.format("      -> %s", info.source))
    end

    if #results.sorted > 20 then
        print(string.format("  ... 还有 %d 个", #results.sorted - 20))
    end

    print("")
    print("───────────────────────────────────────────────────────────")

    return true, nil, results
end

-- 确认写入 Project_Globals
function M.writeProjectGlobalsConfirm(results)
    local outputPath = M.getProjectGlobalsOutputPath()

    print("")
    print("  确认写入? [Y] 是  [N] 否: ", "")
    io.flush()
    local confirm = io.read()
    confirm = (confirm or ""):gsub("^%s*(.-)%s*$", "%1"):lower()

    if confirm ~= "y" and confirm ~= "yes" then
        print("")
        print("  [取消] 操作已取消，未写入文件")
        return false, "用户取消"
    end

    -- 写入
    print("")
    print("  正在写入文件...")

    local f, err = io.open(outputPath, "w")
    if not f then
        return false, "无法写入文件: " .. err
    end

    f:write("-- ============================================================\n")
    f:write("-- Project_Globals.lua\n")
    f:write("-- 项目级全局变量白名单 + 来源路径\n")
    f:write("-- 由 GenKit 自动生成\n")
    f:write("-- ============================================================\n")
    f:write("--\n")
    f:write("-- 格式:\n")
    f:write("--   name   全局变量名\n")
    f:write("--   source 相对于 Script/ 的路径\n")
    f:write("--\n")
    f:write("-- Package_Meta.dependsOn 中使用 name 字段值\n")
    f:write("-- 检查工具根据 name 查找 source 定位文件\n")
    f:write("-- ============================================================\n")
    f:write("\n")
    f:write("local Project_Globals = {\n")

    for _, name in ipairs(results.sorted) do
        local info = results.found[name]
        f:write(string.format('    ["%s"] = {\n', name))
        f:write(string.format('        name = "%s",\n', name))
        f:write(string.format('        source = "%s",\n', info.source))
        f:write("    },\n")
    end

    f:write("}\n")
    f:write("\n")
    f:write("return Project_Globals\n")

    f:close()

    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  生成完成!")
    print("═══════════════════════════════════════════════════════════")
    print("")
    print("  写入位置: " .. outputPath)
    print("  写入数量: " .. results.count .. " 个全局变量")
    print("")
    print("═══════════════════════════════════════════════════════════")

    return true, nil
end

-- 完整运行（预览 + 确认）
function M.runGenProjectGlobals()
    -- 预览
    local ok, err, results = M.previewProjectGlobals()
    if not ok then
        return false, err
    end

    -- 确认写入
    return M.writeProjectGlobalsConfirm(results)
end

-- ============================================================
-- 生成器: Package_Registry
-- ============================================================

--- 扫描 Package 目录下所有 Registry 文件
--- 匹配模式: Script/Package/{PackageName}/Registry_{PackageName}.lua
function M.genPackageRegistry()
    local packageDir = M.getScriptDir() .. [[\Package]]

    print("扫描目录: " .. packageDir)

    local luaFiles = M.scanLuaFiles(packageDir)
    local registryList = {}

    print("找到 " .. #luaFiles .. " 个 Lua 文件")

    for _, filePath in ipairs(luaFiles) do
        -- 检查是否是 Registry 文件
        -- 路径模式: Script/Package/{Name}/Registry_{Name}.lua
        local relPath = M.absPathToRelative(filePath)
        if relPath and relPath:match("^Package/[^/]+/Registry_") then
            -- 转换为点分隔路径: Script.Package.Name.Registry_Name
            local dotPath = "Script." .. relPath:gsub("/", ".")
            table.insert(registryList, dotPath)
            print("  发现: " .. dotPath)
        end
    end

    -- 排序（按字母顺序）
    table.sort(registryList)

    return {
        list = registryList,
        count = #registryList,
        totalFiles = #luaFiles,
    }
end

--- 预览 Package_Registry（不写入文件）
function M.previewPackageRegistry()
    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  预览: 生成 Package_Registry.lua")
    print("═══════════════════════════════════════════════════════════")
    print("")

    local results = M.genPackageRegistry()

    if results.count == 0 then
        print("[WARN] 未找到任何 Registry 文件")
        print("")
        return true, nil, results
    end

    local outputPath = M.getPackageRegistryOutputPath()

    print("")
    print("───────────────────────────────────────────────────────────")
    print("  统计信息")
    print("───────────────────────────────────────────────────────────")
    print("  扫描文件数: " .. results.totalFiles)
    print("  Registry 数: " .. results.count)
    print("  写入位置:   " .. outputPath)
    print("")
    print("───────────────────────────────────────────────────────────")
    print("  Registry 列表")
    print("───────────────────────────────────────────────────────────")

    for i, path in ipairs(results.list) do
        print(string.format("  [%d] %s", i, path))
    end

    print("")
    print("───────────────────────────────────────────────────────────")
    print("")
    print("  预览输出内容:")
    print("───────────────────────────────────────────────────────────")
    print("  local Package_Registry = {")

    for _, path in ipairs(results.list) do
        print(string.format('      "%s",', path))
    end

    print("  }")
    print("  return Package_Registry")
    print("───────────────────────────────────────────────────────────")

    return true, nil, results
end

--- 确认写入 Package_Registry
function M.writePackageRegistryConfirm(results)
    local outputPath = M.getPackageRegistryOutputPath()

    print("")
    print("  确认写入? [Y] 是  [N] 否: ", "")
    io.flush()
    local confirm = io.read()
    confirm = (confirm or ""):gsub("^%s*(.-)%s*$", "%1"):lower()

    if confirm ~= "y" and confirm ~= "yes" then
        print("")
        print("  [取消] 操作已取消，未写入文件")
        return false, "用户取消"
    end

    -- 写入
    print("")
    print("  正在写入文件...")

    local f, err = io.open(outputPath, "w")
    if not f then
        return false, "无法写入文件: " .. err
    end

    f:write("-- ============================================================\n")
    f:write("-- Package_Registry.lua\n")
    f:write("-- Package Registry 模块注册表\n")
    f:write("-- 由 GenKit 自动生成，请勿手动编辑\n")
    f:write("-- ============================================================\n")
    f:write("--\n")
    f:write("-- 使用说明:\n")
    f:write("--   1. 运行 GenKit 生成此文件\n")
    f:write("--   2. 在 LifeCycle 中调用 Package_Registry.BeginPlay()\n")
    f:write("--   3. 新增 Package 时自动包含，无需手动添加\n")
    f:write("--\n")
    f:write("-- 生成规则:\n")
    f:write("--   扫描 Script/Package/{Name}/Registry_{Name}.lua\n")
    f:write("-- ============================================================\n")
    f:write("\n")

    f:write("local Package_Registry = {\n")
    for _, path in ipairs(results.list) do
        f:write(string.format('    "%s",\n', path))
    end
    f:write("}\n")
    f:write("\n")
    f:write("--- BeginPlay: 批量初始化所有 Registry\n")
    f:write("function Package_Registry.BeginPlay()\n")
    f:write("    for _, modulePath in ipairs(Package_Registry) do\n")
    f:write("        local ok, registry = pcall(require, modulePath)\n")
    f:write("        if ok and registry and registry.BeginPlay then\n")
    f:write("            registry.BeginPlay()\n")
    f:write("        end\n")
    f:write("    end\n")
    f:write("end\n")
    f:write("\n")
    f:write("return Package_Registry\n")

    f:close()

    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  生成完成!")
    print("═══════════════════════════════════════════════════════════")
    print("")
    print("  写入位置: " .. outputPath)
    print("  写入数量: " .. results.count .. " 个 Registry")
    print("")
    print("  使用方式:")
    print("    local Package_Registry = require(\"Script.Setting.Package_Registry\")")
    print("    Package_Registry.BeginPlay()")
    print("")
    print("═══════════════════════════════════════════════════════════")

    return true, nil
end

--- 完整运行（预览 + 确认）
function M.runGenPackageRegistry()
    -- 预览
    local ok, err, results = M.previewPackageRegistry()
    if not ok then
        return false, err
    end

    -- 确认写入
    return M.writePackageRegistryConfirm(results)
end

-- ============================================================
-- 生成器: Package_Meta_Index
-- ============================================================

--- 扫描 Package 目录下所有 Package_Meta.lua
--- 匹配模式: Script/Package/{PackageName}/Package_Meta.lua
function M.genPackageMetaIndex()
    local packageDir = M.getScriptDir() .. [[\Package]]

    print("扫描目录: " .. packageDir)

    local luaFiles = M.scanLuaFiles(packageDir)
    local metaList = {}

    print("找到 " .. #luaFiles .. " 个 Lua 文件")

    for _, filePath in ipairs(luaFiles) do
        -- 检查是否是 Package_Meta 文件
        -- 路径模式: Script/Package/{Name}/Package_Meta.lua
        local relPath = M.absPathToRelative(filePath)
        if relPath and relPath:match("^Package/[^/]+/Package_Meta$") then
            -- 转换为点分隔路径: Script.Package.Name.Package_Meta
            local dotPath = "Script." .. relPath:gsub("/", ".")
            table.insert(metaList, dotPath)
            print("  发现: " .. dotPath)
        end
    end

    -- 排序（按字母顺序）
    table.sort(metaList)

    return {
        list = metaList,
        count = #metaList,
        totalFiles = #luaFiles,
    }
end

--- 预览 Package_Meta_Index（不写入文件）
function M.previewPackageMetaIndex()
    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  预览: 生成 Package_Meta_Index.lua")
    print("═══════════════════════════════════════════════════════════")
    print("")

    local results = M.genPackageMetaIndex()

    if results.count == 0 then
        print("[WARN] 未找到任何 Package_Meta 文件")
        print("")
        return true, nil, results
    end

    local outputPath = M.getPackageMetaIndexOutputPath()

    print("")
    print("───────────────────────────────────────────────────────────")
    print("  统计信息")
    print("───────────────────────────────────────────────────────────")
    print("  扫描文件数: " .. results.totalFiles)
    print("  Meta 数:    " .. results.count)
    print("  写入位置:   " .. outputPath)
    print("")
    print("───────────────────────────────────────────────────────────")
    print("  Meta 列表")
    print("───────────────────────────────────────────────────────────")

    for i, path in ipairs(results.list) do
        print(string.format("  [%d] %s", i, path))
    end

    print("")
    print("───────────────────────────────────────────────────────────")

    return true, nil, results
end

--- 确认写入 Package_Meta_Index
function M.writePackageMetaIndexConfirm(results)
    local outputPath = M.getPackageMetaIndexOutputPath()

    print("")
    print("  确认写入? [Y] 是  [N] 否: ", "")
    io.flush()
    local confirm = io.read()
    confirm = (confirm or ""):gsub("^%s*(.-)%s*$", "%1"):lower()

    if confirm ~= "y" and confirm ~= "yes" then
        print("")
        print("  [取消] 操作已取消，未写入文件")
        return false, "用户取消"
    end

    -- 写入
    print("")
    print("  正在写入文件...")

    local f, err = io.open(outputPath, "w")
    if not f then
        return false, "无法写入文件: " .. err
    end

    f:write("-- ============================================================\n")
    f:write("-- Package_Meta_Index.lua\n")
    f:write("-- Package_Meta 索引（由 GenKit 自动生成，请勿手动编辑）\n")
    f:write("-- ============================================================\n")
    f:write("--\n")
    f:write("-- 作用：\n")
    f:write("--   按需加载所有 Package_Meta，每次 Load() 都重新 require，不做缓存。\n")
    f:write("--   Core 层（如 PlayerDataCore、EventCore 等）通过此文件\n")
    f:write("--   统一访问所有包的 Meta 声明（playerData / listensTo / 等）。\n")
    f:write("--\n")
    f:write("-- 使用方式:\n")
    f:write("--   local Package_Meta_Index = require(\"Script.Setting.Package_Meta_Index\")\n")
    f:write("--   for _, meta in ipairs(Package_Meta_Index.Load()) do ... end\n")
    f:write("--\n")
    f:write("-- 生成规则:\n")
    f:write("--   扫描 Script/Package/{Name}/Package_Meta.lua\n")
    f:write("-- ============================================================\n")
    f:write("\n")
    f:write("local Package_Meta_Index = {\n")
    f:write("    -- 全部 Package_Meta 的 require 路径（点分隔）\n")
    f:write("    paths = {\n")
    for _, path in ipairs(results.list) do
        f:write(string.format('        "%s",\n', path))
    end
    f:write("    },\n")
    f:write("}\n")
    f:write("\n")
    f:write("--- 加载全部 Meta（每次都重新 require，不缓存）\n")
    f:write("--- 失败路径会打 ugcprint 错误日志，整体不会抛错。\n")
    f:write("---@return table[] 成功加载的 Meta 列表\n")
    f:write("function Package_Meta_Index.Load()\n")
    f:write("    local metas = {}\n")
    f:write("    for _, path in ipairs(Package_Meta_Index.paths) do\n")
    f:write("        local ok, meta = pcall(require, path)\n")
    f:write("        if ok and meta then\n")
    f:write("            metas[#metas+1] = meta\n")
    f:write("        else\n")
    f:write("            ugcprint(\"[Package_Meta_Index] Meta 加载失败: \" .. tostring(path))\n")
    f:write("        end\n")
    f:write("    end\n")
    f:write("    return metas\n")
    f:write("end\n")
    f:write("\n")
    f:write("return Package_Meta_Index\n")

    f:close()

    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  生成完成!")
    print("═══════════════════════════════════════════════════════════")
    print("")
    print("  写入位置: " .. outputPath)
    print("  写入数量: " .. results.count .. " 个 Meta")
    print("")
    print("  使用方式:")
    print("    local Package_Meta_Index = require(\"Script.Setting.Package_Meta_Index\")")
    print("    for _, meta in ipairs(Package_Meta_Index.Load()) do ... end")
    print("")
    print("═══════════════════════════════════════════════════════════")

    return true, nil
end

--- 完整运行（预览 + 确认）
function M.runGenPackageMetaIndex()
    -- 预览
    local ok, err, results = M.previewPackageMetaIndex()
    if not ok then
        return false, err
    end

    -- 确认写入
    return M.writePackageMetaIndexConfirm(results)
end

-- ============================================================
-- 生成器: CommandList（仅静态扫描，不加载项目配置）
-- ============================================================

local function countChar(text, char)
    local _, count = text:gsub("%" .. char, "")
    return count
end

local function parseCommandConfig(filePath)
    local f, err = io.open(filePath, "r")
    if not f then return nil, "无法读取: " .. tostring(err) end
    local content = f:read("*a")
    f:close()

    local namespace = content:match("namespace%s*=%s*[\"']([^\"']+)[\"']")
    if not namespace then return nil, "未找到 namespace" end
    if not content:match("commands%s*=%s*{") then return nil, "未找到 commands" end

    local commands = {}
    local lines = {}
    for line in content:gmatch("[^\r\n]+") do lines[#lines + 1] = line end
    local active, depth, action, target, describe, argDescribe, argExample = nil, 0, nil, nil, nil, nil, nil
    for _, line in ipairs(lines) do
        local clean = line:gsub("%-%-[^\r\n]*", "")
        if not active then
            local found = clean:match("^%s*([%w_]+)%s*=%s*{%s*$")
            if found and not clean:match("commands%s*=") then
                active, action, target, describe, argDescribe, argExample = true, found, nil, nil, nil, nil
                depth = 1
            end
        else
            local foundTarget = clean:match("defaultTarget%s*=%s*[\"']([^\"']+)[\"']")
            if foundTarget then target = foundTarget end
            local foundDescribe = clean:match("describe%s*=%s*[\"']([^\"']*)[\"']")
            if foundDescribe then describe = foundDescribe end
            local foundArgDescribe = clean:match("argDescribe%s*=%s*[\"']([^\"']*)[\"']")
            if foundArgDescribe then argDescribe = foundArgDescribe end
            local foundArgExample = clean:match("argExample%s*=%s*[\"']([^\"']*)[\"']")
            if foundArgExample then argExample = foundArgExample end
            depth = depth + countChar(clean, "{") - countChar(clean, "}")
            if depth <= 0 then
                commands[#commands + 1] = {
                    action = action,
                    target = target or "Both",
                    describe = describe or "",
                    argDescribe = argDescribe or "",
                    argExample = argExample or "",
                }
                active, action, target, describe, argDescribe, argExample = nil, nil, nil, nil, nil, nil
            end
        end
    end
    return { namespace = namespace, commands = commands }
end

local function commandEscape(value)
    return tostring(value):gsub("\\", "\\\\"):gsub("\"", "\\\"")
end

function M.genCommandList()
    local dir = M.getCommandConfigDir()
    local files = M.scanLuaFiles(dir)
    local results = { files = {}, commands = {}, warnings = {}, success = true }
    for _, filePath in ipairs(files) do
        if filePath:match("[\\/]Config_Command_[^\\/]+%.lua$") then
            local config, err = parseCommandConfig(filePath)
            if not config then
                results.warnings[#results.warnings + 1] = filePath .. ": " .. err
            else
                results.files[#results.files + 1] = filePath
                for _, command in ipairs(config.commands) do
                    local commandText = string.format("cmd -s default -t both -%s -%s", config.namespace, command.action)
                    if command.argExample ~= "" then
                        commandText = commandText .. " \"" .. commandEscape(command.argExample) .. "\""
                    end
                    local description = command.describe
                    if command.argDescribe ~= "" then
                        description = description .. "。" .. command.argDescribe
                    end
                    results.commands[#results.commands + 1] = {
                        namespace = config.namespace,
                        action = command.action,
                        target = command.target,
                        describe = description,
                        interpreter = "default",
                        command = commandText,
                    }
                end
            end
        end
    end
    table.sort(results.commands, function(a, b)
        if a.namespace == b.namespace then return a.action:lower() < b.action:lower() end
        return a.namespace:lower() < b.namespace:lower()
    end)
    local seen = {}
    for _, item in ipairs(results.commands) do
        local key = item.namespace:lower() .. "." .. item.action:lower()
        if seen[key] then
            results.warnings[#results.warnings + 1] = "重复指令: " .. item.namespace .. "." .. item.action
        end
        seen[key] = true
    end
    return results
end

function M.previewCommandList()
    local results = M.genCommandList()
    local outputPath = M.getCommandListOutputPath()
    print("扫描目录: " .. M.getCommandConfigDir())
    print("配置文件数: " .. #results.files)
    print("指令数: " .. #results.commands)
    print("写入位置: " .. outputPath)
    for _, warning in ipairs(results.warnings) do print("[WARN] " .. warning) end
    for _, item in ipairs(results.commands) do
        print("  " .. item.command)
        if item.describe ~= "" then print("    " .. item.describe) end
    end
    return true, nil, results
end

function M.writeCommandList(results)
    local outputPath = M.getCommandListOutputPath()
    local f, err = io.open(outputPath, "w")
    if not f then return false, "无法写入文件: " .. tostring(err) end
    f:write("-- CommandList.lua\n-- 由 GenKit 自动生成，请勿手动编辑\n\n")
    f:write("return {\n    text = {\n")
    for _, item in ipairs(results.commands) do
        f:write(string.format("        { command = \"%s\", describe = \"%s\" },\n",
            commandEscape(item.command), commandEscape(item.describe)))
    end
    f:write("    },\n}\n")
    f:close()
    print("生成完成: " .. outputPath)
    return true, nil
end

function M.runGenCommandList()
    local ok, err, results = M.previewCommandList()
    if not ok then return false, err end
    io.write("确认写入? [Y/N]: ")
    io.flush()
    local confirm = (io.read() or ""):lower():gsub("^%s*(.-)%s*$", "%1")
    if confirm ~= "y" and confirm ~= "yes" then return false, "用户取消" end
    return M.writeCommandList(results)
end

-- ============================================================
-- 生成器: DebugKitPrediction（静态扫描 Log 调用）
-- ============================================================

local function parseDebugKitId(expression)
    local key = expression:match("Global_DebugKit%.ID%.([%w_]+)")
    if key then
        if key == "LIFECYCLE" then return "Lifecycle" end
        return key
    end
    local literal = expression:match("^[%s]*[\"']([^\"']+)[\"']%s*$")
    return literal
end

local function parseDebugKitTarget(expression)
    local key = expression:match("Global_DebugKit%.Target%.([%w_]+)")
    if key then return ({ CLIENT = "Client", SERVER = "Server", BOTH = "Both" })[key] end
    local literal = expression:match("^[%s]*[\"']([^\"']+)[\"']%s*$")
    if literal == "Client" or literal == "Server" or literal == "Both" then return literal end
    return nil
end

local function parseDebugKitCalls(filePath, relativePath, content)
    local calls, warnings = {}, {}
    local lines, pending, startLine = {}, nil, nil
    for line in content:gmatch("[^\r\n]+") do
        lines[#lines + 1] = line
    end
    local function consume(chunk, lineNo)
        local idExpr, nodeExpr, targetExpr = chunk:match("Global_DebugKit%.Log%s*%(%s*(.-)%s*,%s*(.-)%s*,%s*(.-)%s*%)")
        if not idExpr then return false end
        local id = parseDebugKitId(idExpr)
        local target = parseDebugKitTarget(targetExpr)
        local node = nodeExpr:match("^[%s]*[\"']([^\"']*)[\"']%s*$")
        if not id then warnings[#warnings + 1] = string.format("%s:%d 未识别 ID: %s", relativePath, lineNo, idExpr) end
        if not target then warnings[#warnings + 1] = string.format("%s:%d 未识别 Target: %s", relativePath, lineNo, targetExpr) end
        if id and target and node then
            calls[#calls + 1] = { id = id, name = node, target = target, source = relativePath, line = lineNo }
        end
        return true
    end
    for lineNo, line in ipairs(lines) do
        if pending then
            pending = pending .. " " .. line
            if consume(pending, startLine) then pending, startLine = nil, nil end
        elseif line:find("Global_DebugKit%.Log%s*%(") then
            pending, startLine = line, lineNo
            if consume(pending, startLine) then pending, startLine = nil, nil end
        end
    end
    if pending then warnings[#warnings + 1] = string.format("%s:%d Log 调用未闭合或参数无法解析", relativePath, startLine) end
    return calls, warnings
end

function M.genDebugKitPrediction()
    local files = M.scanLuaFiles(M.getDebugKitScanDir())
    local results = { predictions = {}, warnings = {}, totalFiles = #files, totalCalls = 0 }
    for _, filePath in ipairs(files) do
        local f = io.open(filePath, "r")
        if f then
            local content = f:read("*a"); f:close()
            local relativePath = M.absPathToRelative(filePath) or filePath
            if not relativePath:match("^Script[/\\]") then relativePath = "Script/" .. relativePath end
            local calls, warnings = parseDebugKitCalls(filePath, relativePath, content)
            for _, warning in ipairs(warnings) do results.warnings[#results.warnings + 1] = warning end
            for _, call in ipairs(calls) do
                local prediction = results.predictions[call.id]
                if not prediction then prediction = { name = call.id, client = 0, server = 0, nodes = {} }; results.predictions[call.id] = prediction end
                if call.target == "Client" or call.target == "Both" then prediction.client = prediction.client + 1 end
                if call.target == "Server" or call.target == "Both" then prediction.server = prediction.server + 1 end
                prediction.nodes[#prediction.nodes + 1] = call
                results.totalCalls = results.totalCalls + 1
            end
        else
            results.warnings[#results.warnings + 1] = "无法读取: " .. filePath
        end
    end
    return results
end

function M.writeDebugKitPrediction(results)
    local outputPath = M.getDebugKitPredictionOutputPath()
    local f, err = io.open(outputPath, "w")
    if not f then return false, "无法写入文件: " .. tostring(err) end
    f:write("-- DebugKitPrediction.lua\n-- 由 GenKit 自动生成，请勿手动编辑\n\nreturn {\n")
    local ids = {}; for id in pairs(results.predictions) do ids[#ids + 1] = id end; table.sort(ids)
    for _, id in ipairs(ids) do
        local p = results.predictions[id]
        f:write(string.format("    [\"%s\"] = { name = \"%s\", client = %d, server = %d, nodes = {\n", commandEscape(id), commandEscape(p.name), p.client, p.server))
        table.sort(p.nodes, function(a,b) return a.source .. ":" .. a.line < b.source .. ":" .. b.line end)
        for _, n in ipairs(p.nodes) do f:write(string.format("        { name = \"%s\", target = \"%s\", source = \"%s\", line = %d },\n", commandEscape(n.name), commandEscape(n.target), commandEscape(n.source), n.line)) end
        f:write("        },\n    },\n")
    end
    f:write("}\n"); f:close(); print("生成完成: " .. outputPath); return true, nil
end

function M.runGenDebugKitPrediction()
    local results = M.genDebugKitPrediction()
    print("扫描文件数: " .. results.totalFiles .. "，识别调用数: " .. results.totalCalls)
    for id, p in pairs(results.predictions) do print(string.format("  %s: Client %d / Server %d", id, p.client, p.server)) end
    for _, warning in ipairs(results.warnings) do print("[WARN] " .. warning) end
    return M.writeDebugKitPrediction(results)
end

-- ============================================================
-- 注册的工具函数
-- ============================================================

M.tools = {
    {
        id = "gen_project_globals",
        name = "生成 Project_Globals.lua",
        description = "扫描 Script 目录，收集所有全局表定义，生成 Project_Globals.lua",
        run = M.runGenProjectGlobals,
    },
    {
        id = "gen_package_registry",
        name = "生成 Package_Registry.lua",
        description = "扫描 Package 目录，收集所有 Registry 文件，生成 Package_Registry.lua",
        run = M.runGenPackageRegistry,
    },
    {
        id = "gen_package_meta_index",
        name = "生成 Package_Meta_Index.lua",
        description = "扫描 Package 目录，收集所有 Package_Meta 文件，生成 Package_Meta_Index.lua（供 Core 层统一访问 Meta）",
        run = M.runGenPackageMetaIndex,
    },
    {
        id = "gen_command_list",
        name = "生成默认指令清单",
        description = "扫描 CommandSystem 配置，生成默认解释器和 Both 端指令清单",
        run = M.runGenCommandList,
    },
    {
        id = "gen_debugkit_prediction",
        name = "生成 DebugKit 预测配置",
        description = "扫描 DebugKit.Log 调用，生成按检测线和目标端统计的预测配置",
        run = M.runGenDebugKitPrediction,
    },
}

function M.getTools()
    return M.tools
end

function M.getToolById(id)
    for _, tool in ipairs(M.tools) do
        if tool.id == id then
            return tool
        end
    end
    return nil
end

return M
