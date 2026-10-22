local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(source:match("^(.*)/[^/]+$"))
package.path, package.cpath = dir .. "/../Project/?.lua", ""
local ctx, lc, bus, events, component, data
local function fresh(options)
    options = options or {}
    for path in pairs(package.loaded) do
        if path:match("^Script%.") then package.loaded[path] = nil end
    end
    LifeCycle, EventType, UGCEventSystem = nil, nil, nil
    ctx = {server = true, saves = 0, restores = 0, inits = 0, checks = 0, loaded = 0,
        exists = false, keys = {"stats"}, constants = {STATS = "stats"}}
    for k,v in pairs(options) do ctx[k] = v end
    ugcprint = function() end
    UGCObjectUtility = {IsObjectValid = function(o) return o and o.valid ~= false end}
    UGCGameSystem = {IsServer = function() return ctx.server end,
        GetPlayerKeyByPlayerController = function(pc) return pc.PlayerKey end}
    package.preload["Script.Setting.Core_Registry"] = function() return {BeginPlay = function() return true end, Tick = function() end} end
    package.preload["Script.Setting.Package_Registry"] = function() return {BeginPlay = function() return true end, GameStateTick = function() end} end
    package.preload["Script.Core.DebugKit.Global_DebugKit"] = function() return {ID = {}, Target = {}, Start = function() end, Log = function() end} end
    package.preload["Script.Const.Data.Const_Data"] = function() return {PLAYER_DATA_TYPE = ctx.constants} end
    data = {
        BeginPlay = function() return ctx.coreFailure ~= true end,
        GetAllKeys = function() return ctx.keys end,
        CheckArchiveData = function() ctx.checks = ctx.checks + 1; return ctx.exists, "check-error" end,
        InitAllData = function(key)
            ctx.inits = ctx.inits + 1; ctx.initKey = key
            if ctx.initHook then ctx.initHook() end
            if ctx.initThrow then error("init exploded") end
            return not ctx.initFailure
        end,
        SaveArchiveData = function() ctx.saves = ctx.saves + 1; return not ctx.saveFailure, "save-error" end,
        RestoreArchiveData = function() ctx.restores = ctx.restores + 1; return not ctx.restoreFailure, "restore-error" end,
    }
    package.preload["Script.Core.PlayerDataCore.Global_PlayerDataCore"] = function() return data end
    lc = require("Script.Core.LifeCycle.Life_Cycle")
    bus, events = UGCEventSystem, EventType
    bus:AddListener(events.Server_OnPlayerDataLoaded, function() ctx.loaded = ctx.loaded + 1 end)
    component = require("Script.Blueprint.Component.BP_PlayerPropertyComponent")
    assert(lc.OnGameStateInit({}))
end
local function pc(key) return {PlayerKey = key or 7} end
local function instance(owner)
    return setmetatable({GetOwner = function() return owner end}, {__index = component})
end
local passed = 0
local function check(name, fn)
    fn(); passed = passed + 1; print("PASS " .. name)
end
check("new archive initializes then saves and notifies once", function()
    fresh(); local p = pc(); local c = instance(p)
    c:ReceiveBeginPlay(); lc.OnPCInit(p); c:RetryLoad(); c:ReceiveBeginPlay()
    assert(ctx.inits == 1 and ctx.saves == 1 and ctx.loaded == 1 and ctx.initKey == 7)
end)
check("existing archive restores without initialization or save", function()
    fresh({exists = true}); local p = pc(); local c = instance(p)
    c:ReceiveBeginPlay(); lc.OnPCInit(p)
    assert(ctx.restores == 1 and ctx.inits == 0 and ctx.saves == 0 and ctx.loaded == 1)
end)
check("archive check error never overwrites", function()
    fresh(); ctx.exists = nil; local p = pc(); local c = instance(p)
    c:ReceiveBeginPlay(); lc.OnPCInit(p)
    assert(c._loadState == "failed" and ctx.inits == 0 and ctx.saves == 0 and ctx.loaded == 0)
end)
check("empty declarations skip archive entirely", function()
    fresh({keys = {}, constants = {}}); local p = pc(); local c = instance(p)
    c:ReceiveBeginPlay(); lc.OnPCInit(p)
    assert(ctx.checks == 0 and ctx.saves == 0 and ctx.loaded == 1 and c._archiveMode == "no-data-packages")
end)
check("outdated constants do not silently skip data", function()
    fresh({constants = {}}); local p = pc(); local c = instance(p)
    c:ReceiveBeginPlay(); lc.OnPCInit(p)
    assert(c._loadState == "failed" and ctx.loaded == 0 and ctx.checks == 0)
end)
check("two component instances each process only their owner", function()
    fresh(); local p1,p2 = pc(7),pc(8); local a,b = instance(p1),instance(p2)
    a:ReceiveBeginPlay(); b:ReceiveBeginPlay(); lc.OnPCInit(p1)
    assert(a._loadState == "loaded" and b._loadState ~= "loaded" and ctx.saves == 1)
    lc.OnPCInit(p2); assert(ctx.saves == 2 and ctx.loaded == 2)
end)
check("late component catches up from readonly lifecycle query", function()
    fresh(); local p = pc(); lc.OnPCInit(p)
    local snapshot = lc.GetPlayerStatus(p); snapshot.controllerReady = false
    local c = instance(p); assert(c:ReceiveBeginPlay()); assert(ctx.saves == 1 and ctx.loaded == 1)
end)
check("failed initialization is explicitly retryable", function()
    fresh({initFailure = true}); local p = pc(); local c = instance(p)
    c:ReceiveBeginPlay(); lc.OnPCInit(p); assert(ctx.saves == 0 and ctx.loaded == 0)
    ctx.initFailure = false; assert(c:RetryLoad()); assert(ctx.loaded == 1)
end)
check("save and restore failures never release player", function()
    for _, config in ipairs({{saveFailure = true}, {exists = true, restoreFailure = true}}) do
        fresh(config); local p = pc(); local c = instance(p)
        c:ReceiveBeginPlay(); lc.OnPCInit(p); assert(ctx.loaded == 0 and c._loadState == "failed")
    end
end)
check("data initialization exceptions are recorded and retryable", function()
    fresh({initThrow = true}); local p = pc(); local c = instance(p)
    c:ReceiveBeginPlay(); lc.OnPCInit(p); assert(c._loadState == "failed" and ctx.loaded == 0)
    ctx.initThrow = false; assert(c:RetryLoad())
end)
check("EndPlay unregisters and prevents late save and notification", function()
    fresh(); local p = pc(); local c = instance(p); c:ReceiveBeginPlay()
    ctx.initHook = function() c:ReceiveEndPlay(0) end
    lc.OnPCInit(p); assert(ctx.saves == 0 and ctx.loaded == 0 and c._loadState == "ended")
    assert(c:RetryLoad() == false)
    assert(#bus.Events[events.Server_OnPlayerControllerInit] == 0)
end)
check("controller exit during loading prevents late writes", function()
    fresh(); local p = pc(); local c = instance(p); c:ReceiveBeginPlay()
    ctx.initHook = function() lc.OnPCEnd(p) end
    lc.OnPCInit(p); assert(ctx.saves == 0 and ctx.loaded == 0 and lc.GetPlayerStatus(p).ended)
end)
check("reentrant event cannot initialize twice", function()
    fresh(); local p = pc(); local c = instance(p); c:ReceiveBeginPlay()
    ctx.initHook = function() c:OnPlayerDataLoad(7) end
    lc.OnPCInit(p); assert(ctx.saves == 1 and ctx.inits == 1 and ctx.loaded == 1)
end)
check("replacement component respects already loaded player", function()
    fresh(); local p = pc(); local c = instance(p); c:ReceiveBeginPlay(); lc.OnPCInit(p)
    c:ReceiveEndPlay(0); assert(instance(p):ReceiveBeginPlay()); assert(ctx.saves == 1)
end)
check("client does not subscribe or access archives", function()
    fresh({server = false}); local c = instance(pc()); assert(c:ReceiveBeginPlay())
    assert(not c._listening and ctx.checks == 0 and c:RetryLoad() == false)
end)
print(passed .. " passed; actual component and LifeCycle, engine and DataCore mocked.")
