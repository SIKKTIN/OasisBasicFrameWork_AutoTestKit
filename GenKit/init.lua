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
