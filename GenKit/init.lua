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

function M.getCoreScanDir()
    return M.PROJECT_ROOT .. [[\]] .. setting.coreScanDir
end

function M.getCoreRegistryOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.coreRegistryPath
end

function M.getCommandConfigDir()
    return M.PROJECT_ROOT .. [[\]] .. setting.commandConfigDir
end

function M.getCommandConfigIndexOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.commandConfigIndexPath
end

function M.getCommandListOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.commandListPath
end

function M.getDebugKitScanDir()
    return M.PROJECT_ROOT .. [[\]] .. setting.debugKitScanDir
end

function M.getDebugKitLineConfigPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.debugKitLineConfigPath
end

function M.getDebugKitPredictionOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.debugKitPredictionPath
end

function M.getAutoTestSuiteDir()
    return M.PROJECT_ROOT .. [[\]] .. setting.autoTestSuiteDir
end

function M.getAutoTestSuiteIndexOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.autoTestSuiteIndexPath
end

function M.getConstDataOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.constDataPath
end

function M.getEventDataChangeOutputPath()
    return M.PROJECT_ROOT .. [[\]] .. setting.eventDataChangePath
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
    local active, depth, action, target, describe, argDescribe, argExamples, includeBaseExample = nil, 0, nil, nil, nil, nil, nil, nil
    for _, line in ipairs(lines) do
        local clean = line:gsub("%-%-[^\r\n]*", "")
        if not active then
            local found = clean:match("^%s*([%w_]+)%s*=%s*{%s*$")
            if found and not clean:match("commands%s*=") then
                active, action, target, describe, argDescribe, argExamples, includeBaseExample = true, found, nil, nil, nil, {}, false
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
            if foundArgExample then argExamples = { foundArgExample } end
            local foundArgExamples = clean:match("argExamples%s*=%s*{(.-)}")
            if foundArgExamples then
                argExamples = {}
                for value in foundArgExamples:gmatch("[\"']([^\"']*)[\"']") do
                    argExamples[#argExamples + 1] = value
                end
            end
            if clean:match("includeBaseExample%s*=%s*true") then
                includeBaseExample = true
            end
            depth = depth + countChar(clean, "{") - countChar(clean, "}")
            if depth <= 0 then
                commands[#commands + 1] = {
                    action = action,
                    target = target or "Both",
                    describe = describe or "",
                    argDescribe = argDescribe or "",
                    argExamples = argExamples or {},
                    includeBaseExample = includeBaseExample,
                }
                active, action, target, describe, argDescribe, argExamples, includeBaseExample = nil, nil, nil, nil, nil, nil, nil
            end
        end
    end
    return { namespace = namespace, commands = commands }
end

local function commandEscape(value)
    return tostring(value):gsub("\\", "\\\\"):gsub("\"", "\\\"")
end

local function commandConfigDirectoryExists(path)
    local ok, _, code = os.rename(path, path)
    return ok or code == 13
end

local function toCommandConfigModulePath(filePath)
    local relativePath = M.absPathToRelative(filePath)
    if not relativePath then
        return nil, "无法转换为 Script 相对路径"
    end

    local segments = {}
    for segment in relativePath:gmatch("[^/\\]+") do
        if not segment:match("^[%a_][%w_]*$") then
            return nil, "路径片段不是合法 Lua 模块名: " .. segment
        end
        segments[#segments + 1] = segment
    end
    if #segments == 0 then
        return nil, "模块路径为空"
    end
    return "Script." .. table.concat(segments, ".")
end

function M.genCommandConfigIndex()
    local dir = M.getCommandConfigDir()
    local results = {
        files = {},
        modules = {},
        warnings = {},
        success = true,
        error = nil,
    }

    if not commandConfigDirectoryExists(dir) then
        results.success = false
        results.error = "Command 配置目录不存在: " .. dir
        return results
    end

    local files = M.scanLuaFiles(dir)
    table.sort(files, function(a, b) return a:lower() < b:lower() end)

    local seen = {}
    for _, filePath in ipairs(files) do
        if filePath:match("[\\/]Config_Command_[^\\/]+%.lua$") then
            results.files[#results.files + 1] = filePath
            local modulePath, err = toCommandConfigModulePath(filePath)
            if not modulePath then
                results.warnings[#results.warnings + 1] = filePath .. ": " .. err
            else
                local key = modulePath:lower()
                if seen[key] then
                    results.warnings[#results.warnings + 1] = "重复命令配置模块路径: " .. modulePath
                else
                    seen[key] = true
                    results.modules[#results.modules + 1] = modulePath
                end
            end
        end
    end

    table.sort(results.modules, function(a, b) return a:lower() < b:lower() end)
    return results
end

function M.previewCommandConfigIndex()
    local results = M.genCommandConfigIndex()
    print("运行时索引扫描目录: " .. M.getCommandConfigDir())
    print("命令配置文件数: " .. #results.files)
    print("有效模块数: " .. #results.modules)
    print("索引写入位置: " .. M.getCommandConfigIndexOutputPath())
    if not results.success then
        return false, results.error, results
    end
    for _, warning in ipairs(results.warnings) do print("[WARN] " .. warning) end
    for _, modulePath in ipairs(results.modules) do print("  " .. modulePath) end
    return true, nil, results
end

function M.writeCommandConfigIndex(results)
    if not results or not results.success then
        return false, results and results.error or "无有效的生成结果"
    end

    local outputPath = M.getCommandConfigIndexOutputPath()
    local f, err = io.open(outputPath, "w")
    if not f then return false, "无法写入文件: " .. tostring(err) end
    f:write("-- CommandConfigIndex.lua\n-- 由 GenKit 自动生成，请勿手动编辑\n\nreturn {\n")
    for _, modulePath in ipairs(results.modules) do
        f:write(string.format("    \"%s\",\n", commandEscape(modulePath)))
    end
    f:write("}\n")
    f:close()
    print("生成完成: " .. outputPath)
    return true, nil
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
                    local baseCommandText = string.format("cmd -s default -t both -%s -%s", config.namespace, command.action)
                    local commandText = baseCommandText
                    for _, argExample in ipairs(command.argExamples) do
                        commandText = commandText .. " \"" .. commandEscape(argExample) .. "\""
                    end
                    local description = command.describe
                    if command.argDescribe ~= "" then
                        description = description .. "。" .. command.argDescribe
                    end
                    local function addCommand(text)
                        results.commands[#results.commands + 1] = {
                            namespace = config.namespace,
                            action = command.action,
                            target = command.target,
                            describe = description,
                            interpreter = "default",
                            command = text,
                        }
                    end
                    if command.includeBaseExample then addCommand(baseCommandText) end
                    if commandText ~= baseCommandText or not command.includeBaseExample then
                        addCommand(commandText)
                    end
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
        local key = item.command:lower()
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

function M.runGenCommandSystemArtifacts()
    local indexOk, indexErr, indexResults = M.previewCommandConfigIndex()
    if not indexOk then return false, indexErr end

    local listOk, listErr, listResults = M.previewCommandList()
    if not listOk then return false, listErr end

    io.write("确认同时写入命令配置索引和指令清单? [Y/N]: ")
    io.flush()
    local confirm = (io.read() or ""):lower():gsub("^%s*(.-)%s*$", "%1")
    if confirm ~= "y" and confirm ~= "yes" then return false, "用户取消" end

    local writeIndexOk, writeIndexErr = M.writeCommandConfigIndex(indexResults)
    if not writeIndexOk then return false, writeIndexErr end
    return M.writeCommandList(listResults)
end

-- ============================================================
-- 生成器: DebugKitPrediction（静态扫描 Log 调用）
-- ============================================================

local function parseDebugKitLineConfigs()
    local path = M.getDebugKitLineConfigPath()
    local f, err = io.open(path, "r")
    if not f then return nil, "无法读取检测线配置: " .. tostring(err) end
    local content = f:read("*a")
    f:close()

    local body = content:match(
        "Const_DebugKit%.Lines%s*=%s*{(.-)\n}%s*\n%s*Const_DebugKit%.ID")
    if not body then return nil, "未找到 Const_DebugKit.Lines 配置块" end

    local configs = { bySymbol = {}, byID = {}, byName = {} }
    local active, depth
    for line in body:gmatch("[^\r\n]+") do
        local clean = line:gsub("%-%-.*$", "")
        if not active then
            local symbol = clean:match("^%s*([%w_]+)%s*=%s*{")
            if symbol then
                active = { symbol = symbol }
                depth = countChar(clean, "{") - countChar(clean, "}")
            end
        else
            active.id = active.id or tonumber(clean:match("id%s*=%s*(%d+)"))
            active.name = active.name or clean:match("name%s*=%s*[\"']([^\"']+)[\"']")
            local typeKey = clean:match("type%s*=%s*Const_DebugKit%.LineType%.([%w_]+)")
            if typeKey then
                active.type = ({ GAME = "Game", PLAYER = "Player" })[typeKey]
            end
            depth = depth + countChar(clean, "{") - countChar(clean, "}")
            if depth <= 0 then
                if not active.id or not active.name or not active.type then
                    return nil, "检测线配置字段不完整: " .. tostring(active.symbol)
                end
                if configs.byID[active.id] then
                    return nil, "检测线 ID 重复: " .. tostring(active.id)
                end
                local nameKey = active.name:lower()
                if configs.byName[nameKey] then
                    return nil, "检测线 name 重复: " .. active.name
                end
                configs.bySymbol[active.symbol] = active
                configs.byID[active.id] = active
                configs.byName[nameKey] = active
                active = nil
            end
        end
    end
    return configs
end

local function parseDebugKitLine(expression, configs)
    local symbol = expression:match("Global_DebugKit%.ID%.([%w_]+)")
    if symbol then return configs.bySymbol[symbol] end
    local numericID = tonumber(expression:match("^%s*(%d+)%s*$"))
    if numericID then return configs.byID[numericID] end
    local literal = expression:match("^%s*[\"']([^\"']+)[\"']%s*$")
    return literal and configs.byName[literal:lower()] or nil
end

local function parseDebugKitTarget(expression)
    local key = expression:match("Global_DebugKit%.Target%.([%w_]+)")
    if key then return ({ CLIENT = "Client", SERVER = "Server", BOTH = "Both" })[key] end
    local literal = expression:match("^[%s]*[\"']([^\"']+)[\"']%s*$")
    if literal == "Client" or literal == "Server" or literal == "Both" then return literal end
    return nil
end

local function splitLuaArguments(text)
    local args, startIndex = {}, 1
    local roundDepth, braceDepth, bracketDepth = 0, 0, 0
    local quote, escaped = nil, false
    for index = 1, #text do
        local char = text:sub(index, index)
        if quote then
            if escaped then
                escaped = false
            elseif char == "\\" then
                escaped = true
            elseif char == quote then
                quote = nil
            end
        elseif char == "\"" or char == "'" then
            quote = char
        elseif char == "(" then roundDepth = roundDepth + 1
        elseif char == ")" then roundDepth = roundDepth - 1
        elseif char == "{" then braceDepth = braceDepth + 1
        elseif char == "}" then braceDepth = braceDepth - 1
        elseif char == "[" then bracketDepth = bracketDepth + 1
        elseif char == "]" then bracketDepth = bracketDepth - 1
        elseif char == "," and roundDepth == 0 and braceDepth == 0 and bracketDepth == 0 then
            args[#args + 1] = text:sub(startIndex, index - 1):match("^%s*(.-)%s*$")
            startIndex = index + 1
        end
    end
    args[#args + 1] = text:sub(startIndex):match("^%s*(.-)%s*$")
    return args
end

local function findCallEnd(content, openIndex)
    local depth, quote, escaped = 1, nil, false
    for index = openIndex + 1, #content do
        local char = content:sub(index, index)
        if quote then
            if escaped then
                escaped = false
            elseif char == "\\" then
                escaped = true
            elseif char == quote then
                quote = nil
            end
        elseif char == "\"" or char == "'" then
            quote = char
        elseif char == "(" then
            depth = depth + 1
        elseif char == ")" then
            depth = depth - 1
            if depth == 0 then return index end
        end
    end
    return nil
end

local function parseDebugKitCalls(relativePath, content, configs)
    local calls, warnings, searchIndex = {}, {}, 1
    while true do
        local callStart, matchEnd = content:find("Global_DebugKit%.Log%s*%(", searchIndex)
        local helperStart = content:find("LogPlayerNode%s*%(", searchIndex)
        local isHelper = false
        if helperStart and (not callStart or helperStart < callStart) then
            callStart, isHelper = helperStart, true
        end
        if not callStart then break end
        local openIndex = content:find("%(", callStart)
        local closeIndex = openIndex and findCallEnd(content, openIndex) or nil
        local _, newlineCount = content:sub(1, callStart):gsub("\n", "\n")
        local lineNumber = newlineCount + 1
        if not closeIndex then
            warnings[#warnings + 1] = string.format(
                "%s:%d Log 调用未闭合", relativePath, lineNumber)
            break
        end

        local prefix = content:sub(math.max(1, callStart - 20), callStart - 1)
        if isHelper and prefix:match("function%s*$") then
            searchIndex = closeIndex + 1
            goto continue
        end

        local args = splitLuaArguments(content:sub(openIndex + 1, closeIndex - 1))
        local line = args[1] and parseDebugKitLine(args[1], configs) or nil
        local node = args[2] and args[2]:match("^%s*[\"']([^\"']*)[\"']%s*$") or nil
        local target = args[3] and parseDebugKitTarget(args[3]) or nil
        if isHelper then
            line = configs.bySymbol.PLAYER_LIFECYCLE
            node = args[3] and args[3]:match("^%s*[\"']([^\"']*)[\"']%s*$") or nil
            target = args[4] and parseDebugKitTarget(args[4]) or nil
        end
        -- LogPlayerNode 内部的动态 Global_DebugKit.Log 是转发实现，不重复计数。
        if not isHelper and not line and args[1] and args[1]:match("^%s*Global_DebugKit%.ID%.") == nil
            and not node and not target then
            searchIndex = closeIndex + 1
            goto continue
        end
        if not line then
            warnings[#warnings + 1] = string.format(
                "%s:%d 未识别检测线: %s", relativePath, lineNumber, tostring(args[1]))
        end
        if not node then
            warnings[#warnings + 1] = string.format(
                "%s:%d 未识别节点名称: %s", relativePath, lineNumber, tostring(args[2]))
        end
        if not target then
            warnings[#warnings + 1] = string.format(
                "%s:%d 未识别 Target: %s", relativePath, lineNumber, tostring(args[3]))
        end
        if line and node and target then
            calls[#calls + 1] = {
                id = line.id,
                name = node,
                lineName = line.name,
                lineType = line.type,
                target = target,
                playerKey = args[4],
                source = relativePath,
                line = lineNumber,
            }
        end
        searchIndex = closeIndex + 1
        ::continue::
    end
    return calls, warnings
end

function M.genDebugKitPrediction()
    local files = M.scanLuaFiles(M.getDebugKitScanDir())
    local results = {
        predictions = {}, warnings = {}, totalFiles = #files,
        totalCalls = 0, success = true, error = nil,
    }
    local configs, configError = parseDebugKitLineConfigs()
    if not configs then
        results.success = false
        results.error = configError
        return results
    end
    for _, filePath in ipairs(files) do
        local f = io.open(filePath, "r")
        if f then
            local content = f:read("*a"); f:close()
            local relativePath = M.absPathToRelative(filePath)
            if relativePath then
                relativePath = "Script/" .. relativePath .. ".lua"
            else
                relativePath = filePath
            end
            local calls, warnings = parseDebugKitCalls(relativePath, content, configs)
            for _, warning in ipairs(warnings) do results.warnings[#results.warnings + 1] = warning end
            for _, call in ipairs(calls) do
                local prediction = results.predictions[call.id]
                if not prediction then
                    prediction = {
                        id = call.id,
                        name = call.lineName,
                        type = call.lineType,
                        client = 0,
                        server = 0,
                        nodes = {},
                    }
                    results.predictions[call.id] = prediction
                end
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
    if not results or not results.success then
        return false, results and results.error or "无有效的生成结果"
    end
    local outputPath = M.getDebugKitPredictionOutputPath()
    local f, err = io.open(outputPath, "w")
    if not f then return false, "无法写入文件: " .. tostring(err) end
    f:write("-- DebugKitPrediction.lua\n-- 由 GenKit 自动生成，请勿手动编辑\n\nreturn {\n")
    local ids = {}; for id in pairs(results.predictions) do ids[#ids + 1] = id end; table.sort(ids)
    for _, id in ipairs(ids) do
        local p = results.predictions[id]
        f:write(string.format(
            "    [%d] = { id = %d, name = \"%s\", type = \"%s\", client = %d, server = %d, nodes = {\n",
            id, p.id, commandEscape(p.name), commandEscape(p.type), p.client, p.server))
        table.sort(p.nodes, function(a, b)
            if a.target ~= b.target then return a.target < b.target end
            if a.name ~= b.name then return a.name < b.name end
            if a.source ~= b.source then return a.source < b.source end
            return a.line < b.line
        end)
        for _, n in ipairs(p.nodes) do f:write(string.format("        { name = \"%s\", target = \"%s\", source = \"%s\", line = %d },\n", commandEscape(n.name), commandEscape(n.target), commandEscape(n.source), n.line)) end
        f:write("        },\n    },\n")
    end
    f:write("}\n"); f:close(); print("生成完成: " .. outputPath); return true, nil
end

function M.runGenDebugKitPrediction()
    local results = M.genDebugKitPrediction()
    if not results.success then return false, results.error end
    print("扫描文件数: " .. results.totalFiles .. "，识别调用数: " .. results.totalCalls)
    for id, p in pairs(results.predictions) do print(string.format("  %s: Client %d / Server %d", id, p.client, p.server)) end
    for _, warning in ipairs(results.warnings) do print("[WARN] " .. warning) end
    return M.writeDebugKitPrediction(results)
end

-- ============================================================
-- 生成器: Core_Registry（扫描 Global_*.lua）
-- ============================================================

local function coreRegistryDirectoryExists(path)
    local ok, _, code = os.rename(path, path)
    return ok or code == 13
end

local function toCoreModuleInfo(filePath)
    local relativePath = M.absPathToRelative(filePath)
    if not relativePath then
        return nil, "无法转换为 Script 相对路径"
    end

    local segments = {}
    for segment in relativePath:gmatch("[^/\\]+") do
        if not segment:match("^[%a_][%w_]*$") then
            return nil, "路径片段不是合法 Lua 模块名: " .. segment
        end
        segments[#segments + 1] = segment
    end
    if #segments == 0 then
        return nil, "模块路径为空"
    end

    local globalName = segments[#segments]
    if not globalName:match("^Global_[%w_]+$") then
        return nil, "文件名不符合 Global_*.lua: " .. globalName
    end
    return {
        path = "Script." .. table.concat(segments, "."),
        globalName = globalName,
        source = "Script/" .. relativePath .. ".lua",
    }
end

function M.genCoreRegistry()
    local dir = M.getCoreScanDir()
    local results = {
        files = {},
        modules = {},
        warnings = {},
        success = true,
        error = nil,
    }

    if not coreRegistryDirectoryExists(dir) then
        results.success = false
        results.error = "Core 扫描目录不存在: " .. dir
        return results
    end

    local files = M.scanLuaFiles(dir)
    table.sort(files, function(a, b) return a:lower() < b:lower() end)

    local seenPaths = {}
    local seenNames = {}
    for _, filePath in ipairs(files) do
        local fileName = filePath:match("([^/\\]+)$") or ""
        if fileName:match("^Global_[%w_]+%.lua$") then
            results.files[#results.files + 1] = filePath
            local info, err = toCoreModuleInfo(filePath)
            if not info then
                results.warnings[#results.warnings + 1] = filePath .. ": " .. err
            else
                local pathKey = info.path:lower()
                local nameKey = info.globalName:lower()
                if seenPaths[pathKey] then
                    results.warnings[#results.warnings + 1] = "重复 Core 模块路径: " .. info.path
                else
                    seenPaths[pathKey] = true
                    if seenNames[nameKey] then
                        results.warnings[#results.warnings + 1] = string.format(
                            "重复 Global 名称: %s (%s / %s)",
                            info.globalName, seenNames[nameKey], info.path)
                    else
                        seenNames[nameKey] = info.path
                    end
                    results.modules[#results.modules + 1] = info
                end
            end
        end
    end

    table.sort(results.modules, function(a, b) return a.path:lower() < b.path:lower() end)
    return results
end

function M.previewCoreRegistry()
    local results = M.genCoreRegistry()
    print("扫描目录: " .. M.getCoreScanDir())
    print("Global 文件数: " .. #results.files)
    print("有效 Core 模块数: " .. #results.modules)
    print("写入位置: " .. M.getCoreRegistryOutputPath())
    if not results.success then
        return false, results.error, results
    end
    for _, warning in ipairs(results.warnings) do print("[WARN] " .. warning) end
    for _, info in ipairs(results.modules) do print("  " .. info.path) end
    return true, nil, results
end

function M.writeCoreRegistry(results)
    if not results or not results.success then
        return false, results and results.error or "无有效的生成结果"
    end

    local outputPath = M.getCoreRegistryOutputPath()
    local f, err = io.open(outputPath, "w")
    if not f then return false, "无法写入文件: " .. tostring(err) end

    f:write("-- Core_Registry.lua\n")
    f:write("-- 由 GenKit 自动生成，请勿手动编辑\n\n")
    f:write("local Core_Registry = {\n")
    for _, info in ipairs(results.modules) do
        f:write(string.format("    \"%s\",\n", commandEscape(info.path)))
    end
    f:write("}\n\n")
    f:write([[
local initialized = false
local beginPlaySucceeded = nil
local tickEntries = {}
local loadedModules = {}
local loadSucceeded = true

local function Log(message)
    if type(ugcprint) == "function" then
        ugcprint(message)
    elseif type(print) == "function" then
        print(message)
    end
end

local function ResolveModule(modulePath, loaded)
    if type(loaded) == "table" then
        return loaded
    end
    local globalName = modulePath:match("([^.]+)$")
    local globalModule = _G and _G[globalName]
    if type(globalModule) == "table" then
        return globalModule
    end
    return nil
end

-- Global 模块在 Registry 被 require 时预加载；BeginPlay 只负责调用生命周期。
for _, modulePath in ipairs(Core_Registry) do
    local requireOk, loaded = pcall(require, modulePath)
    if not requireOk then
        loadSucceeded = false
        Log("[Core_Registry] 模块加载失败: " .. modulePath .. " | " .. tostring(loaded))
    else
        local module = ResolveModule(modulePath, loaded)
        if not module then
            loadSucceeded = false
            Log("[Core_Registry] Global 模块未返回 table 且未写入 _G: " .. modulePath)
        else
            loadedModules[modulePath] = module
        end
    end
end

function Core_Registry.BeginPlay()
    if initialized then
        return beginPlaySucceeded
    end

    initialized = true
    beginPlaySucceeded = loadSucceeded
    tickEntries = {}

    for _, modulePath in ipairs(Core_Registry) do
        local module = loadedModules[modulePath]
        if module then
            local moduleReady = true
            if type(module.BeginPlay) == "function" then
                local beginOk, beginError = pcall(module.BeginPlay)
                if not beginOk then
                    moduleReady = false
                    beginPlaySucceeded = false
                    Log("[Core_Registry] BeginPlay 失败: " .. modulePath
                        .. " | " .. tostring(beginError))
                end
            end
            if moduleReady and type(module.Tick) == "function" then
                tickEntries[#tickEntries + 1] = {
                    path = modulePath,
                    module = module,
                    disabled = false,
                }
            end
        end
    end

    return beginPlaySucceeded
end

function Core_Registry.Tick(deltaTime)
    if not initialized then
        return
    end

    for _, entry in ipairs(tickEntries) do
        if not entry.disabled then
            local tickOk, tickError = pcall(entry.module.Tick, deltaTime)
            if not tickOk then
                entry.disabled = true
                Log("[Core_Registry] Tick 失败，已停用: " .. entry.path
                    .. " | " .. tostring(tickError))
            end
        end
    end
end

return Core_Registry
]])
    f:close()
    print("生成完成: " .. outputPath)
    return true, nil
end

function M.runGenCoreRegistry()
    local ok, err, results = M.previewCoreRegistry()
    if not ok then return false, err end
    io.write("确认写入? [Y/N]: ")
    io.flush()
    local confirm = (io.read() or ""):lower():gsub("^%s*(.-)%s*$", "%1")
    if confirm ~= "y" and confirm ~= "yes" then return false, "用户取消" end
    return M.writeCoreRegistry(results)
end

-- ============================================================
-- 生成器: AutoTestSuiteIndex（静态扫描测试 Suite）
-- ============================================================

local function directoryExists(path)
    local ok, _, code = os.rename(path, path)
    return ok or code == 13
end

local function toSuiteModulePath(filePath)
    local relativePath = M.absPathToRelative(filePath)
    if not relativePath then
        return nil, "无法转换为 Script 相对路径"
    end

    local segments = {}
    for segment in relativePath:gmatch("[^/\\]+") do
        if not segment:match("^[%a_][%w_]*$") then
            return nil, "路径片段不是合法 Lua 模块名: " .. segment
        end
        segments[#segments + 1] = segment
    end
    if #segments == 0 then
        return nil, "模块路径为空"
    end
    return "Script." .. table.concat(segments, ".")
end

function M.genAutoTestSuiteIndex()
    local dir = M.getAutoTestSuiteDir()
    local results = {
        files = {},
        modules = {},
        warnings = {},
        success = true,
        error = nil,
    }

    if not directoryExists(dir) then
        results.success = false
        results.error = "AutoTestSuite 目录不存在: " .. dir
        return results
    end

    local files = M.scanLuaFiles(dir)
    table.sort(files, function(a, b) return a:lower() < b:lower() end)

    local seen = {}
    for _, filePath in ipairs(files) do
        results.files[#results.files + 1] = filePath
        local modulePath, err = toSuiteModulePath(filePath)
        if not modulePath then
            results.warnings[#results.warnings + 1] = filePath .. ": " .. err
        else
            local key = modulePath:lower()
            if seen[key] then
                results.warnings[#results.warnings + 1] = "重复 Suite 模块路径: " .. modulePath
            else
                seen[key] = true
                results.modules[#results.modules + 1] = modulePath
            end
        end
    end

    table.sort(results.modules, function(a, b) return a:lower() < b:lower() end)
    return results
end

function M.previewAutoTestSuiteIndex()
    local results = M.genAutoTestSuiteIndex()
    print("扫描目录: " .. M.getAutoTestSuiteDir())
    print("Lua 文件数: " .. #results.files)
    print("有效 Suite 模块数: " .. #results.modules)
    print("写入位置: " .. M.getAutoTestSuiteIndexOutputPath())
    if not results.success then
        return false, results.error, results
    end
    for _, warning in ipairs(results.warnings) do print("[WARN] " .. warning) end
    for _, modulePath in ipairs(results.modules) do print("  " .. modulePath) end
    return true, nil, results
end

function M.writeAutoTestSuiteIndex(results)
    if not results or not results.success then
        return false, results and results.error or "无有效的生成结果"
    end

    local outputPath = M.getAutoTestSuiteIndexOutputPath()
    local f, err = io.open(outputPath, "w")
    if not f then return false, "无法写入文件: " .. tostring(err) end
    f:write("-- AutoTestSuiteIndex.lua\n-- 由 GenKit 自动生成，请勿手动编辑\n\nreturn {\n")
    for _, modulePath in ipairs(results.modules) do
        f:write(string.format("    \"%s\",\n", commandEscape(modulePath)))
    end
    f:write("}\n")
    f:close()
    print("生成完成: " .. outputPath)
    return true, nil
end

function M.runGenAutoTestSuiteIndex()
    local ok, err, results = M.previewAutoTestSuiteIndex()
    if not ok then return false, err end
    return M.writeAutoTestSuiteIndex(results)
end

-- ============================================================
-- 生成器: Const_Data
-- ============================================================

local function DataTypeFieldName(dataKey)
    return dataKey:gsub("[^%w]+", "_"):gsub("^%d", "_%0"):upper()
end

local function AddDataType(result, category, dataKey, sourcePath)
    if type(dataKey) ~= "string" or dataKey == "" then
        result.errors[#result.errors + 1] = sourcePath .. " 的 dataKey 为空"
        return
    end
    local fieldName = DataTypeFieldName(dataKey)
    local existing = result[category][fieldName]
    if existing and existing ~= dataKey then
        result.errors[#result.errors + 1] = string.format(
            "%s 字段冲突: %s -> %s / %s", category, fieldName, existing, dataKey)
        return
    end
    if existing then
        result.warnings[#result.warnings + 1] =
            "重复 dataKey，已去重: " .. category .. "." .. fieldName
    else
        result[category][fieldName] = dataKey
    end
end

local function ScanMetaDataKeys(content, sourcePath, result)
    local section = nil
    for line in content:gmatch("[^\r\n]+") do
        local topLevel = line:match("^%s%s%s%s([%a_][%w_]*)%s*=")
        if topLevel == "playerData" or topLevel == "gameData" then
            section = topLevel == "playerData" and "PLAYER_DATA_TYPE" or "GAME_DATA_TYPE"
        elseif topLevel then
            section = nil
        end
        if section then
            local dataKey = line:match("dataKey%s*=%s*[\"']([^\"']+)[\"']")
            if dataKey then AddDataType(result, section, dataKey, sourcePath) end
        end
    end
end

function M.genConstData()
    local result = {
        PLAYER_DATA_TYPE = {}, GAME_DATA_TYPE = {},
        warnings = {}, errors = {}, files = {},
    }
    local packageDir = M.getScriptDir() .. [[\Package]]
    for _, filePath in ipairs(M.scanLuaFiles(packageDir)) do
        local relPath = M.absPathToRelative(filePath)
        if relPath and relPath:match("^Package/[^/]+/Package_Meta$") then
            local file = io.open(filePath, "r")
            if not file then
                result.errors[#result.errors + 1] = "无法读取 Meta: " .. filePath
            else
                local content = file:read("*all")
                file:close()
                result.files[#result.files + 1] = filePath
                ScanMetaDataKeys(content, relPath, result)
            end
        end
    end
    return result
end

local function SortedKeys(map)
    local keys = {}
    for key in pairs(map) do keys[#keys + 1] = key end
    table.sort(keys)
    return keys
end

function M.previewConstData()
    local result = M.genConstData()
    print("扫描 Package Meta: " .. #result.files .. " 个")
    for _, warning in ipairs(result.warnings) do print("[WARN] " .. warning) end
    for _, err in ipairs(result.errors) do print("[ERROR] " .. err) end
    print("PLAYER_DATA_TYPE: " .. #SortedKeys(result.PLAYER_DATA_TYPE))
    print("GAME_DATA_TYPE: " .. #SortedKeys(result.GAME_DATA_TYPE))
    return #result.errors == 0, result.errors[1], result
end

function M.writeConstData(result)
    if not result or #result.errors > 0 then
        return false, "Const_Data 扫描存在错误"
    end
    local outputPath = M.getConstDataOutputPath()
    local f, err = io.open(outputPath, "w")
    if not f then return false, "无法写入文件: " .. tostring(err) end
    f:write("-- Const_Data.lua\n-- 由 GenKit 自动生成，请勿手动编辑。\n")
    f:write("-- condition_data / backitem_data 是历史遗留数据类型，生成后需手动补回。\n\n")
    f:write("local Const_Data = {}\n\nConst_Data.PLAYER_DATA_TYPE = {\n")
    for _, key in ipairs(SortedKeys(result.PLAYER_DATA_TYPE)) do
        f:write(string.format('    %s = "%s",\n', key, result.PLAYER_DATA_TYPE[key]))
    end
    f:write("}\n\n")
    f:write("Const_Data.GAME_DATA_TYPE = {\n")
    for _, key in ipairs(SortedKeys(result.GAME_DATA_TYPE)) do
        f:write(string.format('    %s = "%s",\n', key, result.GAME_DATA_TYPE[key]))
    end
    f:write("}\n\nreturn Const_Data\n")
    f:close()
    print("生成完成: " .. outputPath)
    return true, nil
end

function M.runGenConstData()
    local ok, err, result = M.previewConstData()
    if not ok then return false, err end
    return M.writeConstData(result)
end

-- ============================================================
-- 生成 Event_DataChange
-- ============================================================

local function EventDataFieldName(dataKey)
    return dataKey:gsub("[^%w]+", "_"):gsub("^%d", "_%0"):upper()
end

local function AddEventDataType(result, category, dataKey, sourcePath)
    if type(dataKey) ~= "string" or dataKey == "" then
        result.errors[#result.errors + 1] = sourcePath .. " 的 dataKey 为空"
        return
    end
    if not dataKey:match("^[%a_][%w_]*$") then
        result.errors[#result.errors + 1] = sourcePath .. " 的 dataKey 非法: " .. dataKey
        return
    end
    local fieldName = EventDataFieldName(dataKey)
    local existing = result[category][fieldName]
    if existing and existing ~= dataKey then
        result.errors[#result.errors + 1] = string.format(
            "%s 事件字段冲突: %s -> %s / %s", category, fieldName, existing, dataKey)
        return
    end
    if existing then
        result.warnings[#result.warnings + 1] =
            "重复 dataKey，事件已去重: " .. category .. "." .. fieldName
    else
        result[category][fieldName] = dataKey
    end
end

function M.genEventDataChange()
    local result = {
        PLAYER_DATA_TYPE = {},
        GAME_DATA_TYPE = {},
        warnings = {},
        errors = {},
        files = {},
    }
    local packageDir = M.getScriptDir() .. [[\Package]]
    for _, filePath in ipairs(M.scanLuaFiles(packageDir)) do
        local relPath = M.absPathToRelative(filePath)
        if relPath and relPath:match("^Package/[^/]+/Package_Meta$") then
            local file = io.open(filePath, "r")
            if not file then
                result.errors[#result.errors + 1] = "无法读取 Meta: " .. filePath
            else
                local content = file:read("*all")
                file:close()
                result.files[#result.files + 1] = filePath
                local section
                for line in content:gmatch("[^\r\n]+") do
                    local topLevel = line:match("^%s%s%s%s([%a_][%w_]*)%s*=")
                    if topLevel == "playerData" or topLevel == "gameData" then
                        section = topLevel == "playerData" and "PLAYER_DATA_TYPE" or "GAME_DATA_TYPE"
                    elseif topLevel then
                        section = nil
                    end
                    if section then
                        local dataKey = line:match("dataKey%s*=%s*[\"']([^\"']+)[\"']")
                        if dataKey then AddEventDataType(result, section, dataKey, relPath) end
                    end
                end
            end
        end
    end
    AddEventDataType(result, "PLAYER_DATA_TYPE", "condition_data", "历史遗留数据")
    AddEventDataType(result, "PLAYER_DATA_TYPE", "backitem_data", "历史遗留数据")
    return result
end

function M.previewEventDataChange()
    local result = M.genEventDataChange()
    print("扫描 Package Meta: " .. #result.files .. " 个")
    for _, warning in ipairs(result.warnings) do print("[WARN] " .. warning) end
    for _, err in ipairs(result.errors) do print("[ERROR] " .. err) end
    print("PLAYER_DATA_TYPE 事件数: " .. #SortedKeys(result.PLAYER_DATA_TYPE))
    print("GAME_DATA_TYPE 事件数: " .. #SortedKeys(result.GAME_DATA_TYPE))
    return #result.errors == 0, result.errors[1], result
end

function M.writeEventDataChange(result)
    if not result or #result.errors > 0 then
        return false, "Event_DataChange 扫描存在错误"
    end
    local eventCount = 2 + #SortedKeys(result.PLAYER_DATA_TYPE) + #SortedKeys(result.GAME_DATA_TYPE)
    if 5000 + eventCount > 6000 then
        return false, "Event_DataChange 超出 5000-5999 ID 范围"
    end
    local outputPath = M.getEventDataChangeOutputPath()
    local f, err = io.open(outputPath, "w")
    if not f then return false, "无法写入文件: " .. tostring(err) end
    f:write("-- Event_DataChange.lua\n-- 由 GenKit 自动生成，请勿手动编辑。\n\n")
    f:write("local Event_DataChange = {}\n\n")
    local id = 5000
    f:write(string.format("Event_DataChange.ON_PLAYER_DATA_CHANGE = %d\n", id)); id = id + 1
    f:write(string.format("Event_DataChange.ON_GAME_DATA_CHANGE = %d\n", id)); id = id + 1
    for _, key in ipairs(SortedKeys(result.PLAYER_DATA_TYPE)) do
        f:write(string.format("Event_DataChange.ON_PLAYER_%s_CHANGE = %d\n", key, id)); id = id + 1
    end
    for _, key in ipairs(SortedKeys(result.GAME_DATA_TYPE)) do
        f:write(string.format("Event_DataChange.ON_GAME_%s_CHANGE = %d\n", key, id)); id = id + 1
    end
    f:write("\nreturn Event_DataChange\n")
    f:close()
    print("生成完成: " .. outputPath)
    return true, nil
end

function M.runGenEventDataChange()
    local ok, err, result = M.previewEventDataChange()
    if not ok then return false, err end
    return M.writeEventDataChange(result)
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
        id = "gen_core_registry",
        name = "生成 Core_Registry.lua",
        description = "扫描 Core 下的 Global 模块，生成 BeginPlay 和 Tick 生命周期注册表",
        run = M.runGenCoreRegistry,
    },
    {
        id = "gen_command_list",
        name = "生成 CommandSystem 配置",
        description = "扫描外置命令配置，同时生成运行时索引和可读指令清单",
        run = M.runGenCommandSystemArtifacts,
    },
    {
        id = "gen_debugkit_prediction",
        name = "生成 DebugKit 预测配置",
        description = "扫描 DebugKit.Log 调用，生成按检测线和目标端统计的预测配置",
        run = M.runGenDebugKitPrediction,
    },
    {
        id = "gen_autotest_suite_index",
        name = "生成 AutoTestSuite 索引",
        description = "扫描 AutoTestSuite 目录，生成 AutoTestKit 运行时 Suite 索引",
        run = M.runGenAutoTestSuiteIndex,
    },
    {
        id = "gen_const_data",
        name = "生成 Const_Data.lua",
        description = "扫描 Package Meta 的 playerData/gameData，生成数据类型常量",
        run = M.runGenConstData,
    },
    {
        id = "gen_event_data_change",
        name = "生成 Event_DataChange.lua",
        description = "扫描 Package Meta，生成 PlayerData/GameData 数据变更事件",
        run = M.runGenEventDataChange,
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
