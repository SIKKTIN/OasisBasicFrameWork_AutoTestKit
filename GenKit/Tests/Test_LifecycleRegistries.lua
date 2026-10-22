-- 在工具仓库运行：lua GenKit/Tests/Test_LifecycleRegistries.lua
local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(source:match("^(.*)/[^/]+$"))
local root = dir .. "/../.."
local template = root .. "/Templates/framework-base/Project/"
package.path, package.cpath = template .. "?.lua;" .. root .. "/?.lua", ""
package.preload["ExternalConfig.config"] = function() return {load = function()
    return {projectRoot = "memory:project"}
end} end
package.preload.Csv = function() return {} end
local gen = require("GenKit.init")
local output = print
local function generate(kind, paths)
    local chunks = {}
    local oldIO, oldPrint = io, print
    io = setmetatable({open = function()
        return {write = function(_, text) chunks[#chunks + 1] = text end, close = function() end}
    end}, {__index = oldIO})
    print = function() end
    local ok, result = pcall(function()
        if kind == "Core" then
            gen.getCoreRegistryOutputPath = function() return "memory:Core" end
            local modules = {}; for _, path in ipairs(paths) do modules[#modules + 1] = {path = path} end
            return gen.writeCoreRegistry({success = true, modules = modules})
        elseif kind == "Package" then
            gen.getPackageRegistryOutputPath = function() return "memory:Package" end
            return gen.writePackageRegistry({list = paths, count = #paths})
        else
            gen.getPackageMetaIndexOutputPath = function() return "memory:Meta" end
            return gen.writePackageMetaIndex({list = paths, count = #paths})
        end
    end)
    io, print = oldIO, oldPrint
    assert(ok, result); assert(result == true)
    return table.concat(chunks)
end
local function registry(kind, paths, resolve)
    local env = setmetatable({ugcprint = function() end, require = resolve}, {__index = _G})
    env._G = env
    return assert(load(generate(kind, paths), "generated-" .. kind, "t", env))()
end
local passed, failed = 0, 0
local function check(name, fn)
    local ok, err = pcall(fn)
    if ok then passed = passed + 1; output("PASS " .. name)
    else failed = failed + 1; output("FAIL " .. name .. ": " .. tostring(err)) end
end
for _, kind in ipairs({"Core", "Package"}) do
    check(kind .. " empty output matches template seed", function()
        local name = kind == "Core" and "Core_Registry.lua" or "Package_Registry.lua"
        local f = assert(io.open(template .. "Script/Setting/" .. name)); local text = f:read("*a"); f:close()
        local function normalize(s) return s:gsub("\r\n", "\n"):gsub("%s+$", "") end
        assert(normalize(generate(kind, {})) == normalize(text))
    end)
    check(kind .. " false initialization disables failed module Tick and retries only failures", function()
        local succeeds, goodCalls, badCalls, ticks = false, 0, 0, 0
        local good = {BeginPlay = function() goodCalls = goodCalls + 1 end}
        local bad = {BeginPlay = function() badCalls = badCalls + 1; return succeeds end}
        bad.Tick = function() ticks = ticks + 1 end
        bad.GameStateTick = bad.Tick
        local r = registry(kind, {"good", "bad"}, function(path) return path == "good" and good or bad end)
        assert(r.BeginPlay() == false and goodCalls == 1 and badCalls == 1)
        if kind == "Core" then r.Tick(0.1) else r.GameStateTick({}, 0.1) end
        assert(ticks == 0)
        succeeds = true; assert(r.BeginPlay() and r.BeginPlay())
        assert(goodCalls == 1 and badCalls == 2)
        if kind == "Core" then r.Tick(0.1) else r.GameStateTick({}, 0.1) end
        assert(ticks == 1)
    end)
    check(kind .. " initializer exception does not skip later entries", function()
        local calls = 0
        local r = registry(kind, {"broken", "later"}, function(path)
            return {BeginPlay = function()
                calls = calls + 1; if path == "broken" then error("broken") end
            end}
        end)
        assert(r.BeginPlay() == false and calls == 2)
    end)
    check(kind .. " failed require can retry while invalid module is rejected", function()
        local available = false
        local r = registry(kind, {"missing"}, function()
            if not available then error("not available") end
            return {}
        end)
        assert(r.BeginPlay() == false); available = true; assert(r.BeginPlay())
        local invalid = registry(kind, {"invalid"}, function() return 123 end)
        assert(invalid.BeginPlay() == false)
    end)
    check(kind .. " Tick exception disables only offending method", function()
        local bad, good = 0, 0
        local r = registry(kind, {"bad", "good"}, function(path)
            local tick = function()
                if path == "bad" then bad = bad + 1; error("tick broken") end
                good = good + 1
            end
            return {Tick = tick, GameStateTick = tick}
        end)
        assert(r.BeginPlay())
        for _ = 1, 2 do
            if kind == "Core" then r.Tick(0.1) else r.GameStateTick({}, 0.1) end
        end
        assert(bad == 1 and good == 2)
    end)
end
check("Meta output matches template seed", function()
    local f = assert(io.open(template .. "Script/Setting/Package_Meta_Index.lua"))
    local text = f:read("*a"); f:close()
    local function normalize(s) return s:gsub("\r\n", "\n"):gsub("%s+$", "") end
    assert(normalize(generate("Meta", {})) == normalize(text))
end)
check("Meta exposes errors instead of hiding missing or non-table declarations", function()
    local index = registry("Meta", {"good", "missing", "invalid"}, function(path)
        if path == "missing" then error("missing meta") end
        return path == "good" and {packageName = "Good"} or 123
    end)
    local metas, errors = index.Load()
    assert(#metas == 1 and #errors == 2)
end)
check("both DataCores reject Meta errors and permit repaired retry", function()
    ugcprint = function() end
    UGCGameSystem = {GetGameState = function() return {} end}
    EventType = {Server_Delegate_PlaerDataLoad = 2001}
    UGCEventSystem = {AddListener = function() return true end}
    for _, kind in ipairs({"PlayerDataCore", "GameDataCore"}) do
        local indexPath = "Script.Setting.Package_Meta_Index"
        local broken = true
        package.loaded[indexPath] = {Load = function()
            return {}, broken and {{path = "missing"}} or {}
        end}
        local core = assert(loadfile(template .. "Script/Core/" .. kind .. "/System_" .. kind .. ".lua"))()
        assert(core.BeginPlay() == false)
        broken = false; assert(core.BeginPlay())
    end
end)
check("Command Global wrapper propagates initializer false", function()
    Global_CommandSystem = nil
    package.loaded["Script.Core.CommandSystem.System_CommandSystem"] = {Initialize = function() return false end}
    local global = assert(loadfile(template .. "Script/Core/CommandSystem/Global_CommandSystem.lua"))()
    assert(global.BeginPlay() == false)
end)
check("PlayerDataCore missing EventType fails and repaired BeginPlay retries", function()
    package.loaded["Script.Setting.Package_Meta_Index"] = {Load = function() return {} end}
    local core = assert(loadfile(template .. "Script/Core/PlayerDataCore/System_PlayerDataCore.lua"))()
    EventType = nil
    assert(core.BeginPlay() == false)
    EventType = {Server_Delegate_PlaerDataLoad = 2001}
    assert(core.BeginPlay())
end)
check("PlayerDataCore listener registration false is reported and retryable", function()
    local ready = false
    UGCEventSystem = {AddListener = function() return ready end}
    local core = assert(loadfile(template .. "Script/Core/PlayerDataCore/System_PlayerDataCore.lua"))()
    assert(core.BeginPlay() == false)
    ready = true; assert(core.BeginPlay())
end)
check("GameDataCore failed initializer can retry without duplicate registration", function()
    local ready, calls = false, 0
    package.loaded["Script.Setting.Package_Meta_Index"] = {Load = function()
        return {{packageName = "Stats", gameData = {{dataKey = "stats", DataInit = function()
            calls = calls + 1; return ready
        end}}}}
    end}
    local core = assert(loadfile(template .. "Script/Core/GameDataCore/System_GameDataCore.lua"))()
    assert(core.BeginPlay() == false)
    ready = true; assert(core.BeginPlay() and core.BeginPlay() and calls == 2)
end)
output(string.format("%d passed, %d failed; generated code exercised in memory, no target writes.", passed, failed))
if failed > 0 then os.exit(1) end
