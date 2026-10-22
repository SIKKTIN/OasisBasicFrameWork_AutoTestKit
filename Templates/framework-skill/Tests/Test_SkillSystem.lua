-- 在工具仓库运行：lua Templates/framework-skill/Tests/Test_SkillSystem.lua
local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(source:match("^(.*)/[^/]+$"))
local root = dir .. "/../../.."
package.path = dir .. "/../Project/?.lua;" .. root .. "/Templates/framework-base/Project/?.lua;"
    .. root .. "/Templates/framework-attribute/Project/?.lua"
package.cpath = ""
local ctx, api, core, bus, events, data
local function clone(value)
    if type(value) ~= "table" then return value end
    local result = {}; for key, item in pairs(value) do result[key] = clone(item) end
    return result
end
local function pawn(pc) return {pc = pc, skills = {}} end
local function fresh(options)
    options = options or {}
    for name in pairs(package.loaded) do if name:match("^Script%.") then package.loaded[name] = nil end end
    for name in pairs(package.preload) do if name:match("^Script%.") then package.preload[name] = nil end end
    Global_PlayerDataCore, LifeCycle, EventType, UGCEventSystem = nil, nil, nil, nil
    ctx = {server = true, pc = {PlayerKey = 7}, gs = {}, adds = 0, removes = 0, saves = 0, logs = {}}
    for key, value in pairs(options) do ctx[key] = value end
    ctx.pc.pawn = pawn(ctx.pc); ctx.players = {[7] = ctx.pc}
    ugcprint = function(message) ctx.logs[#ctx.logs + 1] = tostring(message) end
    UGCGameSystem = {
        IsServer = function() return ctx.server end,
        GetGameState = function() return ctx.gs end,
        GetLocalPlayerController = function() return ctx.pc end,
        GetPlayerKeyByPlayerController = function(pc) return pc.PlayerKey end,
        GetPlayerControllerByPlayerKey = function(key) return ctx.players[key] end,
        GetPlayerControllerByPlayerPawn = function(p) return p.pc end,
        GetPlayerPawnByPlayerController = function(pc) return pc.pawn end,
        GetUIDByPlayerController = function(pc) return pc.PlayerKey + 100 end,
    }
    UGCObjectUtility = {
        IsObjectValid = function(obj) return obj ~= nil and obj.valid ~= false end,
        LoadClass = function(path)
            ctx.loadedPath = path
            if ctx.failLoad then return nil end
            return {path = path}
        end,
    }
    UGCMapInfoLib = {GetRootLongPackagePath = function() return "/Probe" end}
    UGCPersistEffectSystem = {
        AddSkillByClass = function(p, class)
            ctx.adds = ctx.adds + 1
            if ctx.throwAdd then error("add failed") end
            if ctx.failAdd then return nil end
            local instance = {pawn = p, class = class}
            p.skills[instance] = true
            return instance
        end,
        RemoveSkillInstance = function(p, instance)
            ctx.removes = ctx.removes + 1
            if ctx.failRemove then return false end
            p.skills[instance], instance.valid = nil, false
            return true
        end,
    }
    UGCPlayerStateSystem = {
        GetPlayerArchiveData = function() return clone(ctx.archive) end,
        GetPlayerDataSize = function() return ctx.archive and 12 or 0 end,
        SavePlayerArchiveData = function(_, archive)
            ctx.saves = ctx.saves + 1
            if ctx.throwSave then error("save failed") end
            if ctx.failSave then return false end
            ctx.archive = clone(archive); return true
        end,
    }
    package.preload["Script.Const.Data.Const_Data"] = function()
        local types = ctx.missingConstant and {} or {SKILL_DATA = "skill_data"}
        if ctx.withAttribute then types.ATTRIBUTE_DATA = "attribute_data" end
        return {PLAYER_DATA_TYPE = types, PLAYER_DATA_TYPE_ORDER = {"SKILL_DATA"}, GAME_DATA_TYPE = {}}
    end
    package.preload["Script.Event.Event_DataChange"] = function()
        return {ON_PLAYER_DATA_CHANGE = 5000, ON_PLAYER_SKILL_DATA_CHANGE = 5002,
            ON_PLAYER_ATTRIBUTE_DATA_CHANGE = 5003}
    end
    package.preload["Script.Setting.Package_Meta_Index"] = function()
        return {Load = function()
            local result = {(require("Script.Package.SkillSystem.Package_Meta"))}
            if ctx.withAttribute then result[#result + 1] = require("Script.Package.AttributeSystem.Package_Meta") end
            return result, {}
        end}
    end
    events = require("Script.Event.EventType")
    bus = require("Script.Core.EventSystem.UGCEventSystem")
    core = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
    assert(core.BeginPlay())
    api = require("Script.Package.SkillSystem.Registry_SkillSystem")
    data = require("Script.Package.SkillSystem.Data.PlayerData_Skill")
end
local function config(name) return {name = name or "Test", assetPath = "Asset/Blueprint/Skills/Test.Test_C"} end
local function register(id) assert(api.RegisterSkill(id or 1, config())) end
local function init() assert(core.InitAllData(7)) end
local function bootLifecycle()
    package.preload["Script.Setting.Core_Registry"] = function()
        return {BeginPlay = core.BeginPlay, Tick = function() end}
    end
    package.preload["Script.Setting.Package_Registry"] = function()
        return {BeginPlay = api.BeginPlay, GameStateTick = function() end, PlayerTick = function() end}
    end
    package.preload["Script.Core.DebugKit.Global_DebugKit"] = function()
        return {ID = {}, Target = {}, Start = function() end, Log = function() end}
    end
    local lc = require("Script.Core.LifeCycle.Life_Cycle")
    assert(lc.OnGameStateInit(ctx.gs))
    return lc
end
local passed, failed = 0, 0
local function check(name, fn)
    local ok, err = pcall(fn)
    if ok then passed = passed + 1; print("PASS " .. name)
    else failed = failed + 1; print("FAIL " .. name .. ": " .. tostring(err)) end
end

check("empty new player initializes its owned container without engine skills", function()
    fresh(); init(); assert(next(ctx.pc.skill_data) == nil and #api.GetAllSkillTypes() == 0)
    UGCPersistEffectSystem, UGCMapInfoLib = nil, nil
    assert(api.BeginPlay() and api.SyncPlayer(ctx.pc))
    assert(ctx.adds == 0 and ctx.removes == 0 and ctx.saves == 0 and api.GetStatus(ctx.pc).phase == "ready")
end)
check("registered skills initialize false and never overwrite existing values", function()
    fresh(); register(); register(2); ctx.pc.skill_data = {[1] = true}; init()
    assert(ctx.pc.skill_data[1] == true and ctx.pc.skill_data[2] == false)
end)
check("invalid existing container and missing constants fail without replacement", function()
    fresh(); ctx.pc.skill_data = "bad"; assert(not core.InitAllData(7) and ctx.pc.skill_data == "bad")
    fresh({missingConstant = true}); assert(not core.InitAllData(7) and ctx.pc.skill_data == nil)
end)
check("registration is explicit, idempotent and rejects conflicting IDs", function()
    fresh(); register(); assert(api.RegisterSkill(1, config()))
    assert(not api.RegisterSkill(1, config("different")))
    assert(not api.RegisterSkill(-1, config()) and not api.RegisterSkill(1.5, config()))
    assert(not api.RegisterSkill(2, {name = "Bad", assetPath = "Asset/../Other"}))
    local value = api.GetSkillConfig(1); value.name = "changed"
    assert(api.GetSkillConfig(1).name == "Test")
end)
check("player queries normalize keys and return isolated copies", function()
    fresh(); register(); ctx.pc.skill_data = {["1"] = true, [1] = false}
    assert(api.GetPlayerSkills(ctx.pc)[1] == false and not api.IsSkillActive(ctx.pc, "1"))
    local values = api.GetPlayerSkills(ctx.pc); values[1] = true
    assert(ctx.pc.skill_data[1] == false)
end)
check("listener registration failure rolls back all additions and can retry", function()
    fresh(); local original, calls = bus.AddListener, 0
    bus.AddListener = function(self, ...)
        calls = calls + 1; if calls == 2 then return false end
        return original(self, ...)
    end
    assert(not api.BeginPlay() and #(bus.Events[events.Server_OnPlayerDataLoaded] or {}) == 0)
    bus.AddListener = original; assert(api.BeginPlay() and api.BeginPlay())
    assert(#bus.Events[events.Server_OnPlayerDataLoaded] == 1)
    assert(#bus.Events[events.Server_OnPlayerPawnInit] == 1)
    assert(bus.Events[events.Lifecycle_Pawn_Init] == nil)
end)
check("listener exception also leaves startup retryable", function()
    fresh(); local original = bus.AddListener
    bus.AddListener = function() error("listener failed") end
    assert(not api.BeginPlay()); bus.AddListener = original; assert(api.BeginPlay())
end)
check("clients can query but do not register server listeners or change data", function()
    fresh(); register(); init(); ctx.server = false
    assert(api.BeginPlay() and not api.SetSkillState(ctx.pc, 1, true))
    assert(not api.SyncPlayer(ctx.pc) and not api.IsSkillLoaded(ctx.pc, 1))
    assert(api.GetSkillConfig(1).name == "Test" and ctx.adds == 0 and ctx.saves == 0)
end)
check("activation persists only boolean state and uses target-relative class path", function()
    fresh(); register(); init(); assert(api.SetSkillState(ctx.pc, "1", true))
    assert(api.IsSkillActive(ctx.pc, 1) and api.IsSkillLoaded(ctx.pc, 1))
    assert(ctx.archive.__oasisArchive.version == 1 and ctx.archive.skill_data[1] == true)
    assert(ctx.loadedPath == "/Probe/Asset/Blueprint/Skills/Test.Test_C")
    for _, value in pairs(ctx.archive.skill_data) do assert(type(value) == "boolean") end
end)
check("repeated activation does not duplicate instances or saves", function()
    fresh(); register(); init(); assert(api.SetSkillState(ctx.pc, 1, true))
    assert(api.SetSkillState(ctx.pc, 1, true) and ctx.adds == 1 and ctx.saves == 1)
end)
check("deactivation removes instance and saves false", function()
    fresh(); register(); init(); assert(api.SetSkillState(ctx.pc, 1, true))
    assert(api.SetSkillState(ctx.pc, 1, false))
    assert(not api.IsSkillLoaded(ctx.pc, 1) and ctx.archive.skill_data[1] == false and ctx.removes == 1)
end)
check("engine class and add failures do not change data or save", function()
    for _, mode in ipairs({"failLoad", "failAdd", "throwAdd"}) do
        fresh(); register(); init(); ctx[mode] = true
        assert(not api.SetSkillState(ctx.pc, 1, true))
        assert(ctx.pc.skill_data[1] == false and ctx.saves == 0 and not api.IsSkillLoaded(ctx.pc, 1))
    end
end)
check("missing engine API and uninitialized player data fail explicitly", function()
    fresh(); register(); assert(not api.SetSkillState(ctx.pc, 1, true))
    init(); UGCPersistEffectSystem = nil
    assert(not api.SetSkillState(ctx.pc, 1, true) and ctx.pc.skill_data[1] == false)
end)
check("save failure or exception rolls back activation data and runtime", function()
    for _, mode in ipairs({"failSave", "throwSave"}) do
        fresh(); register(); init(); ctx[mode] = true
        assert(not api.SetSkillState(ctx.pc, 1, true))
        assert(ctx.pc.skill_data[1] == false and not api.IsSkillLoaded(ctx.pc, 1) and ctx.removes == 1)
    end
end)
check("failed deactivation save restores the previous active runtime", function()
    fresh(); register(); init(); assert(api.SetSkillState(ctx.pc, 1, true)); ctx.failSave = true
    assert(not api.SetSkillState(ctx.pc, 1, false))
    assert(api.IsSkillActive(ctx.pc, 1) and api.IsSkillLoaded(ctx.pc, 1) and ctx.adds == 2)
end)
check("engine removal failure never reports deactivation success", function()
    fresh(); register(); init(); assert(api.SetSkillState(ctx.pc, 1, true)); ctx.failRemove = true
    assert(not api.SetSkillState(ctx.pc, 1, false))
    assert(api.IsSkillActive(ctx.pc, 1) and ctx.saves == 1)
end)
check("legacy string keys normalize without overriding numeric priority", function()
    fresh(); register(); ctx.pc.skill_data = {["1"] = true, [1] = false}
    assert(api.SyncPlayer(ctx.pc))
    assert(ctx.pc.skill_data["1"] == nil and ctx.pc.skill_data[1] == false and ctx.saves == 1)
    assert(api.SyncPlayer(ctx.pc) and ctx.saves == 1)
end)
check("failed migration save stays pending and retries despite normalized memory", function()
    fresh(); register(); ctx.pc.skill_data = {["1"] = false}; ctx.failSave = true
    assert(not api.SyncPlayer(ctx.pc) and api.GetStatus(ctx.pc).pendingSave)
    assert(not api.SyncPlayer(ctx.pc) and ctx.saves == 2)
    assert(ctx.pc.skill_data["1"] == nil and ctx.pc.skill_data[1] == false)
    ctx.failSave = false; assert(api.SyncPlayer(ctx.pc))
    assert(ctx.saves == 3 and not api.GetStatus(ctx.pc).pendingSave and ctx.archive.skill_data[1] == false)
end)
check("data loaded before Pawn waits and authoritative Pawn event restores later", function()
    fresh(); register(); ctx.pc.skill_data = {[1] = true}; assert(api.BeginPlay())
    ctx.pc.pawn = nil
    bus:SendEvent(events.Server_OnPlayerDataLoaded, 7)
    assert(api.GetStatus(ctx.pc).phase == "waiting-pawn" and ctx.adds == 0)
    ctx.pc.pawn = pawn(ctx.pc); bus:SendEvent(events.Server_OnPlayerPawnInit, 7)
    assert(api.GetStatus(ctx.pc).phase == "ready" and ctx.adds == 1)
end)
check("raw Pawn event never adds skills before player data is ready", function()
    fresh(); register(); ctx.pc.skill_data = {[1] = true}; assert(api.BeginPlay())
    bus:SendEvent(events.Lifecycle_Pawn_Init, ctx.pc.pawn)
    assert(ctx.adds == 0)
end)
check("actual LifeCycle direct Pawn entry restores skills on respawn", function()
    fresh(); register(); ctx.pc.skill_data = {[1] = true}
    local lc = bootLifecycle(); assert(lc.OnPCInit(ctx.pc))
    assert(lc.NotifyPlayerDataLoaded(ctx.pc) and lc.OnPawnInit(ctx.pc.pawn))
    assert(ctx.adds == 1)
    local previousPawn = ctx.pc.pawn; ctx.pc.pawn = pawn(ctx.pc)
    assert(lc.OnPawnInit(ctx.pc.pawn) and api.IsSkillLoaded(ctx.pc, 1))
    assert(ctx.adds == 2 and next(previousPawn.skills) == nil)
    lc.OnPawnInit(ctx.pc.pawn); assert(ctx.adds == 2)
end)
check("invalid cached instance is detected and restored", function()
    fresh(); register(); init(); assert(api.SetSkillState(ctx.pc, 1, true))
    data.GetRuntimeInstance(ctx.pc, 1).instance.valid = false
    assert(not api.IsSkillLoaded(ctx.pc, 1))
    assert(api.SyncPlayer(ctx.pc) and ctx.adds == 2 and api.IsSkillLoaded(ctx.pc, 1))
end)
check("failed old Pawn cleanup remains retryable instead of orphaning a live instance", function()
    fresh(); register(); init(); assert(api.SetSkillState(ctx.pc, 1, true))
    local oldPawn = ctx.pc.pawn; ctx.pc.pawn = pawn(ctx.pc); ctx.failRemove = true
    assert(not api.SyncPlayer(ctx.pc) and ctx.adds == 1 and next(oldPawn.skills) ~= nil)
    ctx.failRemove = false; assert(api.SyncPlayer(ctx.pc))
    assert(ctx.adds == 2 and next(oldPawn.skills) == nil and api.IsSkillLoaded(ctx.pc, 1))
end)
check("restore errors are observable and retryable", function()
    fresh(); register(); ctx.pc.skill_data = {[1] = true}; ctx.failAdd = true
    assert(not api.SyncPlayer(ctx.pc) and api.GetStatus(ctx.pc).phase == "failed")
    ctx.failAdd = false; assert(api.SyncPlayer(ctx.pc) and api.GetStatus(ctx.pc).phase == "ready")
end)
check("controller exit removes instances and clears pending migration state", function()
    fresh(); register(); init(); assert(api.BeginPlay() and api.SetSkillState(ctx.pc, 1, true))
    api.SyncPlayer(ctx.pc); bus:SendEvent(events.Server_OnPlayerEnd, 7)
    assert(not api.IsSkillLoaded(ctx.pc, 1) and api.GetStatus(ctx.pc).phase == "idle")
    assert(next(ctx.pc.pawn.skills) == nil)
end)
check("EndPlay removes listeners and repeated startup stays unique", function()
    fresh(); init(); assert(api.BeginPlay() and api.SyncPlayer(ctx.pc))
    assert(api.EndPlay() and #bus.Events[events.Server_OnPlayerPawnInit] == 0)
    assert(api.BeginPlay() and #bus.Events[events.Server_OnPlayerPawnInit] == 1)
end)
check("empty package completes actual PropertyComponent startup and archive flow", function()
    fresh(); local lc = bootLifecycle()
    local component = require("Script.Blueprint.Component.BP_PlayerPropertyComponent")
    local c = setmetatable({GetOwner = function() return ctx.pc end}, {__index = component})
    c:ReceiveBeginPlay(); lc.OnPCInit(ctx.pc); lc.OnPawnInit(ctx.pc.pawn); lc.Tick(0.1)
    assert(c._loadState == "loaded" and lc.GetPlayerStatus(ctx.pc).dataReady)
    assert(api.GetStatus(ctx.pc).phase == "ready" and ctx.adds == 0 and ctx.saves == 1)
    assert(next(ctx.archive.skill_data) == nil)
    lc.OnPCEnd(ctx.pc); assert(api.GetStatus(ctx.pc).phase == "idle")
end)
check("SkillSystem and AttributeSystem coexist with independent empty containers", function()
    fresh({withAttribute = true}); init()
    local attribute = require("Script.Package.AttributeSystem.Registry_AttributeSystem")
    assert(api.BeginPlay() and attribute.BeginPlay())
    assert(api.SyncPlayer(ctx.pc) and attribute.SyncPawn(ctx.pc))
    assert(next(ctx.pc.skill_data) == nil and next(ctx.pc.attribute_data) == nil)
    assert(core.SaveArchiveData(ctx.pc) and type(ctx.archive.attribute_data) == "table")
    assert(type(ctx.archive.skill_data) == "table" and ctx.adds == 0)
end)
check("GenKit scans and generates skill constants, events and controller replication", function()
    package.path = package.path .. ";" .. root .. "/?.lua"
    package.preload["ExternalConfig.config"] = function()
        return {load = function() return {projectRoot = dir .. "/../Project"} end}
    end
    package.preload.Csv = function() return {} end
    local gen = require("GenKit.init")
    gen.getProjectGenKitConfigPath = function()
        return root .. "/Templates/framework-base/Project/Script/Setting/GenKit_Config.lua"
    end
    local packages, metas = gen.genPackageRegistry(), gen.genPackageMetaIndex()
    local constants, eventData = gen.genConstData(), gen.genEventDataChange()
    assert(packages.count == 1 and packages.list[1] == "Script.Package.SkillSystem.Registry_SkillSystem")
    assert(metas.count == 1 and metas.list[1] == "Script.Package.SkillSystem.Package_Meta")
    assert(#constants.errors == 0 and constants.PLAYER_DATA_TYPE.SKILL_DATA == "skill_data")
    assert(constants.PLAYER_DATA_TYPE.CONDITION_DATA == nil and constants.PLAYER_DATA_TYPE.BACKITEM_DATA == nil)
    assert(#eventData.errors == 0 and eventData.PLAYER_DATA_TYPE.SKILL_DATA == "skill_data")
    local function capture(writer, input)
        local chunks, originalIO, originalPrint = {}, io, print
        io = setmetatable({open = function()
            return {write = function(_, text) chunks[#chunks + 1] = text end, close = function() end}
        end}, {__index = originalIO})
        print = function() end
        local ok, result = pcall(writer, input); io, print = originalIO, originalPrint
        assert(ok and result == true)
        return assert(load(table.concat(chunks), "generated", "t", _G))()
    end
    gen.getPackageRegistryOutputPath = function() return "memory:Package" end
    gen.getPackageMetaIndexOutputPath = function() return "memory:Meta" end
    gen.getConstDataOutputPath = function() return "memory:Const" end
    gen.getEventDataChangeOutputPath = function() return "memory:Events" end
    assert(capture(gen.writePackageRegistry, packages)[1] == packages.list[1])
    assert(capture(gen.writePackageMetaIndex, metas).paths[1] == metas.list[1])
    local constantOutput = capture(gen.writeConstData, constants)
    assert(constantOutput.PLAYER_DATA_TYPE.SKILL_DATA == "skill_data")
    assert(capture(gen.writeEventDataChange, eventData).ON_PLAYER_SKILL_DATA_CHANGE ~= nil)
    fresh(); package.preload["Script.Setting.Package_Registry"] = function() return {} end
    local controller = require("Script.Blueprint.UGCPlayerController")
    assert(controller.GetReplicatedProperties({}) == "skill_data")
end)
print(string.format("SkillSystem: %d passed, %d failed", passed, failed))
assert(failed == 0, "SkillSystem regression failed")
