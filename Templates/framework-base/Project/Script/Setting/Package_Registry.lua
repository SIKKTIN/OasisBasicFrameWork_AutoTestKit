-- ============================================================
-- Package_Registry.lua
-- Package Registry 模块注册表
-- 由 GenKit 自动生成，请勿手动编辑
-- ============================================================
--
-- 使用说明:
--   1. 运行 GenKit 生成此文件
--   2. 在 LifeCycle 中调用 Package_Registry.BeginPlay()
--   3. 在 GameState/PlayerController Tick 中调用 Package_Registry Tick 接口
--   4. 新增 Package 时自动包含，无需手动添加
--
-- 生成规则:
--   扫描 Script/Package/{Name}/Registry_{Name}.lua
-- ============================================================

local Package_Registry = {
}

local loadedRegistries, ready = {}, {}
local starting = false
local disabledTicks = { GameStateTick = {}, PlayerTick = {} }
local function Log(message)
    (type(ugcprint) == "function" and ugcprint or print)(message)
end
local function LoadRegistry(path)
    if loadedRegistries[path] then return loadedRegistries[path] end
    local ok, registry = pcall(require, path)
    if not ok or type(registry) ~= "table" then
        Log("[Package_Registry] 加载失败: " .. path .. " | " .. tostring(registry))
        return nil
    end
    loadedRegistries[path] = registry
    return registry
end

function Package_Registry.BeginPlay()
    if starting then return false, "initializing" end
    starting = true
    local success = true
    for _, path in ipairs(Package_Registry) do
        if not ready[path] then
            local registry = LoadRegistry(path)
            local ok, result, reason = registry ~= nil, nil, nil
            if registry and registry.BeginPlay ~= nil then
                if type(registry.BeginPlay) ~= "function" then
                    ok, reason = false, "BeginPlay 必须是函数"
                else
                    ok, result, reason = pcall(registry.BeginPlay)
                end
            end
            if not ok or result == false then
                success = false
                Log("[Package_Registry] BeginPlay 失败: " .. path .. " | "
                    .. tostring(not ok and (reason or result) or reason or "返回 false"))
            else
                ready[path] = true
            end
        end
    end
    starting = false
    return success
end

local function DispatchTick(name, ...)
    for _, path in ipairs(Package_Registry) do
        local registry = loadedRegistries[path]
        local fn = registry and registry[name]
        if ready[path] and not disabledTicks[name][path] and fn ~= nil then
            local ok, err = pcall(fn, ...)
            if not ok then
                disabledTicks[name][path] = true
                Log("[Package_Registry] " .. name .. " 失败，已停用: " .. path .. " | " .. tostring(err))
            end
        end
    end
end
function Package_Registry.GameStateTick(gameState, deltaTime)
    DispatchTick("GameStateTick", gameState, deltaTime)
end
function Package_Registry.PlayerTick(pc, deltaTime)
    DispatchTick("PlayerTick", pc, deltaTime)
end
return Package_Registry
