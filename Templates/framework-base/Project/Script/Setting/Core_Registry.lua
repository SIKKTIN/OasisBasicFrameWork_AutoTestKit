-- Core_Registry.lua
-- 由 GenKit 自动生成，请勿手动编辑

local Core_Registry = {
}

local loadedModules, ready, disabledTicks = {}, {}, {}
local starting = false
local function Log(message)
    (type(ugcprint) == "function" and ugcprint or print)(message)
end
local function LoadModule(path)
    if loadedModules[path] then return loadedModules[path] end
    local ok, module = pcall(require, path)
    if ok and type(module) ~= "table" then
        module = _G[path:match("([^.]+)$")]
    end
    if not ok or type(module) ~= "table" then
        Log("[Core_Registry] 加载失败: " .. path .. " | " .. tostring(module))
        return nil
    end
    loadedModules[path] = module
    return module
end
-- 保留 Global 模块预加载；失败项在显式 BeginPlay 重试时重新加载。
for _, path in ipairs(Core_Registry) do LoadModule(path) end

function Core_Registry.BeginPlay()
    if starting then return false, "initializing" end
    starting = true
    local success = true
    for _, path in ipairs(Core_Registry) do
        if not ready[path] then
            local module = LoadModule(path)
            local ok, result, reason = module ~= nil, nil, nil
            if module and module.BeginPlay ~= nil then
                if type(module.BeginPlay) ~= "function" then
                    ok, reason = false, "BeginPlay 必须是函数"
                else
                    ok, result, reason = pcall(module.BeginPlay)
                end
            end
            if not ok or result == false then
                success = false
                Log("[Core_Registry] BeginPlay 失败: " .. path .. " | "
                    .. tostring(not ok and (reason or result) or reason or "返回 false"))
            else
                ready[path] = true
            end
        end
    end
    starting = false
    return success
end

function Core_Registry.Tick(deltaTime)
    for _, path in ipairs(Core_Registry) do
        local module = loadedModules[path]
        if ready[path] and not disabledTicks[path] and module.Tick ~= nil then
            local ok, err = pcall(module.Tick, deltaTime)
            if not ok then
                disabledTicks[path] = true
                Log("[Core_Registry] Tick 失败，已停用: " .. path .. " | " .. tostring(err))
            end
        end
    end
end

return Core_Registry
