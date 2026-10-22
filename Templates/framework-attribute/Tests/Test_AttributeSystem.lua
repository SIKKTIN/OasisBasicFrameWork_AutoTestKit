-- 在工具仓库运行：lua Templates/framework-attribute/Tests/Test_AttributeSystem.lua
local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(source:match("^(.*)/[^/]+$"))
local root = dir .. "/../../.."
package.path = dir .. "/../Project/?.lua;" .. root .. "/Templates/framework-base/Project/?.lua"
package.cpath = ""
local ctx, api, core, bus, events
local configPath = "Script.Package.AttributeSystem.Config.Config_Attribute"
local function clone(value)
    if type(value) ~= "table" then return value end
    local copy = {}; for key, item in pairs(value) do copy[key] = clone(item) end
    return copy
end
local function fresh(options)
    options = options or {}
    for name in pairs(package.loaded) do
        if name:match("^Script%.") then package.loaded[name] = nil end
    end
    for name in pairs(package.preload) do
        if name:match("^Script%.") then package.preload[name] = nil end
    end
    Global_PlayerDataCore, EventType, UGCEventSystem, LifeCycle = nil, nil, nil, nil
    ctx = {server = true, writes = 0, saves = 0, logs = {}, failSave = false,
        pc = {PlayerKey = 7}, gs = {}}
    ctx.pawn = {pc = ctx.pc, attrs = {HealthMax = 250, Health = 73, Speed = 1.7, Power = 5}}
    ctx.pc.pawn = ctx.pawn
    for key, value in pairs(options) do ctx[key] = value end
    ugcprint = function(message) ctx.logs[#ctx.logs + 1] = tostring(message) end
    UGCObjectUtility = {IsObjectValid = function(obj) return obj and obj.valid ~= false end}
    UGCGameSystem = {
        IsServer = function() return ctx.server end,
        GetGameState = function() return ctx.gs end,
        GetLocalPlayerController = function() return ctx.pc end,
        GetUIDByPlayerController = function() return 99 end,
        GetPlayerKeyByPlayerController = function(pc) return pc.PlayerKey end,
        GetPlayerControllerByPlayerKey = function(key) return key == 7 and ctx.pc or nil end,
        GetPlayerControllerByPlayerPawn = function(pawn) return pawn.pc end,
        GetPlayerPawnByPlayerController = function(pc) return pc.pawn end,
    }
    UGCPlayerStateSystem = {
        SavePlayerArchiveData = function(_, archive)
            ctx.saves = ctx.saves + 1
            if ctx.failSave then return false end
            ctx.archive = clone(archive); return true
        end,
        GetPlayerArchiveData = function() return clone(ctx.archive) end,
        GetPlayerDataSize = function() return ctx.archive and 12 or 0 end,
    }
    UGCAttributeSystem = {
        GetGameAttributeValue = function(pawn, key) return pawn.attrs[key] end,
        SetGameAttributeValue = function(pawn, key, value)
            ctx.writes = ctx.writes + 1
            pawn.attrs[key] = value
            if ctx.engineError == key then
                if not ctx.permanentError then ctx.engineError = nil end
                error("simulated engine failure")
            end
            if ctx.clampKey == key then pawn.attrs[key] = math.min(value, 10) end
            -- 引擎写接口允许无返回值。
        end,
    }
    package.preload["Script.GameAttribute.game_attribute_type"] = function()
        UGCNativeGameAttributeType = {Character_HealthMax = "HealthMax", Character_Health = "Health"}
        return true
    end
    package.preload["Script.Const.Data.Const_Data"] = function()
        return {PLAYER_DATA_TYPE = ctx.missingConstant and {} or {ATTRIBUTE_DATA = "attribute_data"},
            PLAYER_DATA_TYPE_ORDER = {"ATTRIBUTE_DATA"}, GAME_DATA_TYPE = {}}
    end
    package.preload["Script.Event.Event_DataChange"] = function()
        return {ON_PLAYER_DATA_CHANGE = 5000, ON_GAME_DATA_CHANGE = 5001,
            ON_PLAYER_ATTRIBUTE_DATA_CHANGE = 5002}
    end
    package.preload["Script.Setting.Package_Meta_Index"] = function()
        return {Load = function()
            return {(require("Script.Package.AttributeSystem.Package_Meta"))}, {}
        end}
    end
    if options.config then package.preload[configPath] = function() return options.config end end
    events = require("Script.Event.EventType")
    bus = require("Script.Core.EventSystem.UGCEventSystem")
    core = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
    assert(core.BeginPlay())
    api = require("Script.Package.AttributeSystem.Registry_AttributeSystem")
    return ctx
end
local function configured(extra)
    local options = {config = {persistedAttributes = {HealthMax = 100, Speed = 1}, resetHealthOnSpawn = false}}
    for key, value in pairs(extra or {}) do options[key] = value end
    return fresh(options)
end
local function init() assert(core.InitAllData(7)) end
local passed, failed = 0, 0
local function check(name, fn)
    local ok, err = pcall(fn)
    if ok then passed = passed + 1; print("PASS " .. name)
    else failed = failed + 1; print("FAIL " .. name .. ": " .. tostring(err)) end
end

check("default config is empty and creates only an empty owned container", function()
    fresh(); init()
    assert(#api.GetPersistedAttributeTypes() == 0 and next(ctx.pc.attribute_data) == nil)
    assert(api.SyncPawn(ctx.pc) and ctx.writes == 0 and ctx.saves == 0)
    assert(ctx.pawn.attrs.HealthMax == 250 and ctx.pawn.attrs.Health == 73 and ctx.pawn.attrs.Speed == 1.7)
end)
check("default Pawn events and respawn preserve editor attribute values", function()
    fresh(); init(); assert(api.BeginPlay())
    assert(bus:SendEvent(events.Server_OnPlayerPawnInit, 7))
    ctx.pc.pawn = {pc = ctx.pc, attrs = {HealthMax = 400, Health = 23, Speed = 2}}
    assert(bus:SendEvent(events.Server_OnPlayerPawnInit, 7))
    assert(ctx.pc.pawn.attrs.Health == 23 and ctx.pc.pawn.attrs.HealthMax == 400 and ctx.writes == 0)
end)
check("explicit runtime writes remain available without persisting them", function()
    fresh(); init()
    assert(api.SetAttributeValue(ctx.pc, "Power", 9))
    assert(api.AddAttributeValue(ctx.pc, "Power", 2))
    assert(ctx.pawn.attrs.Power == 11 and next(ctx.pc.attribute_data) == nil and ctx.saves == 0)
end)
check("config enables defaults without changing existing saved values", function()
    configured(); ctx.pc.attribute_data = {HealthMax = 180}; init()
    assert(ctx.pc.attribute_data.HealthMax == 180 and ctx.pc.attribute_data.Speed == 1)
    assert(api.SyncPawn(ctx.pc))
    assert(ctx.pawn.attrs.HealthMax == 180 and ctx.pawn.attrs.Speed == 1 and ctx.pawn.attrs.Health == 73)
end)
check("configured setters update Pawn and data but do not autosave", function()
    configured(); init()
    assert(api.SetAttributeValue(ctx.pc, "HealthMax", 150))
    assert(api.AddAttributeValue(ctx.pc, "HealthMax", 10))
    assert(ctx.pawn.attrs.HealthMax == 160 and ctx.pc.attribute_data.HealthMax == 160 and ctx.saves == 0)
end)
check("setting the same persisted value is successful", function()
    configured(); init(); assert(api.SyncPawn(ctx.pc))
    assert(api.SetAttributeValue(ctx.pc, "HealthMax", 100))
end)
check("full health is an explicit opt in", function()
    fresh({config = {persistedAttributes = {}, resetHealthOnSpawn = true}}); init()
    assert(api.SyncPawn(ctx.pc) and ctx.pawn.attrs.Health == 250)
    assert(next(ctx.pc.attribute_data) == nil and ctx.saves == 0)
end)
check("default and data getters return copies", function()
    configured(); init()
    local types, values = api.GetPersistedAttributeTypes(), api.GetAttributeData(ctx.pc)
    types[1], values.HealthMax = "changed", 999
    assert(api.GetPersistedAttributeTypes()[1] ~= "changed" and ctx.pc.attribute_data.HealthMax == 100)
    ctx.pc.attribute_data.legacy = {nested = 1}
    values = api.GetAttributeData(ctx.pc); values.legacy.nested = 2
    assert(ctx.pc.attribute_data.legacy.nested == 1)
end)
check("failed listener registration rolls back and can retry", function()
    fresh()
    local original, calls = bus.AddListener, 0
    bus.AddListener = function(self, ...)
        calls = calls + 1; if calls == 2 then return false end
        return original(self, ...)
    end
    assert(api.BeginPlay() == false)
    assert(#(bus.Events[events.Server_OnPlayerPawnInit] or {}) == 0)
    bus.AddListener = original
    assert(api.BeginPlay() and api.BeginPlay())
    assert(#bus.Events[events.Server_OnPlayerPawnInit] == 1)
end)
check("listener exceptions never leave initialization marked successful", function()
    fresh(); local original = bus.AddListener
    bus.AddListener = function() error("listener failed") end
    assert(api.BeginPlay() == false)
    bus.AddListener = original; assert(api.BeginPlay())
end)
check("client starts without server listeners or writes", function()
    fresh({server = false}); assert(api.BeginPlay())
    assert(api.SetAttributeValue(ctx.pc, "Power", 6) == false and api.SyncPawn(ctx.pc) == false)
    assert(ctx.writes == 0 and ctx.saves == 0 and not bus.Events[events.Server_OnPlayerPawnInit])
    assert(api.GetAttributeValue(ctx.pc, "Power") == 5)
end)
check("invalid complete batch is rejected before any write", function()
    configured(); init()
    assert(not api.ModifyAttributeList(ctx.pc, {{key = "Power", value = 6}, {key = "HealthMax", value = "bad"}}))
    assert(not api.ModifyAttributeList(ctx.pc, {[1] = {key = "Power", value = 6}, [3] = {key = "Power", value = 7}}))
    assert(not api.ModifyAttributeList(ctx.pc, {{key = "Power", value = 6}, {key = "Power", value = 7}}))
    assert(ctx.writes == 0 and ctx.pawn.attrs.Power == 5)
end)
check("NaN and infinity are rejected", function()
    fresh(); init()
    assert(not api.SetAttributeValue(ctx.pc, "Power", 0/0))
    assert(not api.SetAttributeValue(ctx.pc, "Power", math.huge))
    assert(not api.AddAttributeValue(ctx.pc, "Power", math.huge) and ctx.writes == 0)
end)
check("engine failure restores Pawn and never commits persisted data", function()
    configured(); init(); ctx.engineError = "HealthMax"
    assert(not api.ModifyAttributeList(ctx.pc, {{key = "Power", value = 9}, {key = "HealthMax", value = 120}}))
    assert(ctx.pawn.attrs.Power == 5 and ctx.pawn.attrs.HealthMax == 250)
    assert(ctx.pc.attribute_data.HealthMax == 100)
end)
check("rollback failure is explicitly reported", function()
    configured(); init(); ctx.engineError, ctx.permanentError = "HealthMax", true
    local ok, reason = api.SetAttributeValue(ctx.pc, "HealthMax", 120)
    assert(not ok and reason:find("rollback%-incomplete") and ctx.pc.attribute_data.HealthMax == 100)
end)
check("engine clamping is detected through readback", function()
    fresh(); init(); ctx.clampKey = "Power"
    assert(not api.SetAttributeValue(ctx.pc, "Power", 99))
    assert(ctx.pawn.attrs.Power == 5)
end)
check("data commit failure restores Pawn and data", function()
    configured(); init()
    local original = core.ModifyList
    core.ModifyList = function() return false end
    assert(not api.SetAttributeValue(ctx.pc, "HealthMax", 120))
    core.ModifyList = original
    assert(ctx.pawn.attrs.HealthMax == 250 and ctx.pc.attribute_data.HealthMax == 100)
end)
check("default backfill save failure remains pending until retry succeeds", function()
    configured(); ctx.pc.attribute_data = {HealthMax = 170}; ctx.failSave = true
    assert(not api.SyncPawn(ctx.pc))
    assert(api.GetStatus(ctx.pc).pendingSave and api.GetStatus(ctx.pc).phase == "failed")
    assert(not api.SyncPawn(ctx.pc) and ctx.saves == 2)
    ctx.failSave = false; assert(api.SyncPawn(ctx.pc))
    assert(ctx.saves == 3 and ctx.archive.attribute_data.Speed == 1 and not api.GetStatus(ctx.pc).pendingSave)
end)
check("invalid stored values are not overwritten with defaults", function()
    configured(); ctx.pc.attribute_data = {HealthMax = "bad"}
    assert(not api.SyncPawn(ctx.pc))
    assert(ctx.pc.attribute_data.HealthMax == "bad" and ctx.writes == 0 and ctx.saves == 0)
end)
check("missing generated constants fail data initialization", function()
    fresh({missingConstant = true})
    assert(core.InitAllData(7) == false and ctx.pc.attribute_data == nil)
end)
check("controller exit clears pending state and EndPlay removes listeners", function()
    configured(); assert(api.BeginPlay()); ctx.failSave = true
    assert(not api.SyncPawn(ctx.pc))
    bus:SendEvent(events.Server_OnPlayerEnd, 7)
    assert(api.GetStatus(ctx.pc).phase == "idle" and not api.GetStatus(ctx.pc).pendingSave)
    api.EndPlay(); assert(#bus.Events[events.Server_OnPlayerPawnInit] == 0)
    assert(api.BeginPlay() and #bus.Events[events.Server_OnPlayerPawnInit] == 1)
end)
check("archive format and missing package restore stay compatible", function()
    fresh(); init(); assert(core.SaveArchiveData(ctx.pc))
    assert(ctx.archive.__oasisArchive.version == 1 and next(ctx.archive.attribute_data) == nil)
    ctx.archive = {__oasisArchive = {version = 1}}
    assert(core.RestoreArchiveData(ctx.pc) and api.SyncPawn(ctx.pc))
    assert(next(ctx.pc.attribute_data) == nil and ctx.writes == 0)
end)
check("actual lifecycle and PropertyComponent complete with the empty package", function()
    fresh()
    package.preload["Script.Setting.Core_Registry"] = function()
        return {BeginPlay = core.BeginPlay, Tick = function() end}
    end
    package.preload["Script.Setting.Package_Registry"] = function()
        return {BeginPlay = api.BeginPlay, GameStateTick = function() end}
    end
    package.preload["Script.Core.DebugKit.Global_DebugKit"] = function()
        return {ID = {}, Target = {}, Start = function() end, Log = function() end}
    end
    local lc = require("Script.Core.LifeCycle.Life_Cycle")
    local component = require("Script.Blueprint.Component.BP_PlayerPropertyComponent")
    local c = setmetatable({GetOwner = function() return ctx.pc end}, {__index = component})
    assert(lc.OnGameStateInit(ctx.gs))
    c:ReceiveBeginPlay(); lc.OnPCInit(ctx.pc); lc.OnPawnInit(ctx.pawn); lc.Tick(0.1)
    assert(c._loadState == "loaded" and lc.GetPlayerStatus(ctx.pc).dataReady)
    assert(api.GetStatus(ctx.pc).phase == "ready" and ctx.writes == 0 and ctx.saves == 1)
    lc.OnPCEnd(ctx.pc); assert(api.GetStatus(ctx.pc).phase == "idle")
end)
check("GenKit discovers the optional package and generates compatible data and events", function()
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
    assert(packages.count == 1 and packages.list[1] == "Script.Package.AttributeSystem.Registry_AttributeSystem")
    assert(metas.count == 1 and metas.list[1] == "Script.Package.AttributeSystem.Package_Meta")
    assert(#constants.errors == 0 and constants.PLAYER_DATA_TYPE.ATTRIBUTE_DATA == "attribute_data")
    assert(constants.PLAYER_DATA_TYPE.CONDITION_DATA == nil and constants.PLAYER_DATA_TYPE.BACKITEM_DATA == nil)
    assert(#eventData.errors == 0 and eventData.PLAYER_DATA_TYPE.ATTRIBUTE_DATA == "attribute_data")
    local function capture(writer, input)
        local chunks, originalIO, originalPrint = {}, io, print
        io = setmetatable({open = function()
            return {write = function(_, text) chunks[#chunks + 1] = text end, close = function() end}
        end}, {__index = originalIO})
        print = function() end
        local ok, result = pcall(writer, input)
        io, print = originalIO, originalPrint
        assert(ok and result == true)
        return assert(load(table.concat(chunks), "generated", "t", _G))()
    end
    gen.getPackageRegistryOutputPath = function() return "memory:Package" end
    gen.getPackageMetaIndexOutputPath = function() return "memory:Meta" end
    gen.getConstDataOutputPath = function() return "memory:Const" end
    gen.getEventDataChangeOutputPath = function() return "memory:Events" end
    assert(capture(gen.writePackageRegistry, packages)[1] == packages.list[1])
    assert(capture(gen.writePackageMetaIndex, metas).paths[1] == metas.list[1])
    local output = capture(gen.writeConstData, constants)
    assert(output.PLAYER_DATA_TYPE.ATTRIBUTE_DATA == "attribute_data")
    assert(output.PLAYER_DATA_TYPE_ORDER[1] == "ATTRIBUTE_DATA")
    assert(capture(gen.writeEventDataChange, eventData).ON_PLAYER_ATTRIBUTE_DATA_CHANGE ~= nil)
    local controller = require("Script.Blueprint.UGCPlayerController")
    assert(controller.GetReplicatedProperties({}) == "attribute_data")
end)
print(string.format("AttributeSystem: %d passed, %d failed", passed, failed))
assert(failed == 0, "AttributeSystem regression failed")
