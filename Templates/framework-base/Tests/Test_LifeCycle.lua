-- 在工具仓库运行：lua Templates/framework-base/Tests/Test_LifeCycle.lua
local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(source:match("^(.*)/[^/]+$"))
package.path, package.cpath = dir .. "/../Project/?.lua", ""
local corePath, pkgPath, debugPath = "Script.Setting.Core_Registry",
    "Script.Setting.Package_Registry", "Script.Core.DebugKit.Global_DebugKit"
local ctx, lc, bus, event
local function fresh()
    for path in pairs(package.loaded) do
        if path:match("^Script%.") then package.loaded[path] = nil end
    end
    LifeCycle, EventType, UGCEventSystem = nil, nil, nil
    ctx = {gs = {}, server = true, coreCalls = 0, packageCalls = 0,
        coreTicks = 0, packageTicks = 0, coreResult = true, packageResult = true, logs = {}}
    ugcprint = function(message) ctx.logs[#ctx.logs + 1] = tostring(message) end
    UGCObjectUtility = {IsObjectValid = function(obj) return obj ~= nil and obj.valid ~= false end}
    UGCGameSystem = {
        IsServer = function() return ctx.server end,
        GetGameState = function() return ctx.gs end,
        GetLocalPlayerController = function() return ctx.localPC end,
        GetPlayerKeyByPlayerController = function(pc) return pc.PlayerKey end,
        GetPlayerControllerByPlayerPawn = function(pawn) return pawn.pc end,
        GetPlayerPawnByPlayerController = function(pc) return pc.pawn end,
        SetTimer = function() error("LifeCycle must not infer readiness from timers") end,
    }
    package.preload[corePath] = function() return {
        BeginPlay = function()
            ctx.coreCalls = ctx.coreCalls + 1
            if ctx.coreError then error("core exploded") end
            if ctx.coreHook then return ctx.coreHook() end
            return ctx.coreResult
        end,
        Tick = function() ctx.coreTicks = ctx.coreTicks + 1 end,
    } end
    package.preload[pkgPath] = function() return {
        BeginPlay = function()
            ctx.packageCalls = ctx.packageCalls + 1
            if ctx.packageHook then ctx.packageHook() end
            if ctx.packageError then error("package exploded") end
            return ctx.packageResult
        end,
        GameStateTick = function(gs) assert(gs == ctx.gs); ctx.packageTicks = ctx.packageTicks + 1 end,
    } end
    package.preload[debugPath] = function() return {
        ID = {LIFECYCLE = 1, PLAYER_LIFECYCLE = 2}, Target = {BOTH = "Both"},
        Start = function() end, Log = function() end,
    } end
    lc = require("Script.Core.LifeCycle.Life_Cycle")
    bus, event = UGCEventSystem, EventType
    return lc
end
local function boot() assert(lc.OnGameStateInit(ctx.gs)) end
local function player(key)
    local pc = {PlayerKey = key or 7}
    local pawn = {pc = pc}; pc.pawn = pawn
    return pc, pawn
end
local function countEvent(id)
    local count, last = 0, nil
    bus:AddListener(id, function(...) count = count + 1; last = {...} end)
    return function() return count, last end
end
local passed, failed = 0, 0
local function check(name, fn)
    local ok, err = pcall(fn)
    if ok then passed = passed + 1; print("PASS " .. name)
    else failed = failed + 1; print("FAIL " .. name .. ": " .. tostring(err)) end
end
check("blank startup has no GameMode or GM dependency", function()
    fresh(); Global_UI, Const_Editor = nil, nil
    boot(); assert(lc.GetStatus().phase == "ready")
end)
check("BeginPlay registers once and returns success", function()
    fresh(); assert(lc.BeginPlay() and lc.BeginPlay())
    assert(#bus.Events[event.Lifecycle_PC_Init] == 1)
end)
check("partial listener registration rolls back and can retry", function()
    fresh()
    local original, calls = bus.AddListener, 0
    bus.AddListener = function(self, ...)
        calls = calls + 1; if calls == 2 then return false end
        return original(self, ...)
    end
    assert(lc.BeginPlay() == false and not lc.GetStatus().listenersReady)
    bus.AddListener = original
    assert(lc.BeginPlay() and #bus.Events[event.Lifecycle_GameState_Init] == 1)
end)
check("framework ready occurs after package registration, once per state", function()
    fresh(); local calls = 0
    ctx.packageHook = function()
        bus:AddListener(event.Lifecycle_FrameworkReady, function(gs)
            assert(gs == ctx.gs and ctx.coreCalls == 1 and ctx.packageCalls == 1)
            calls = calls + 1
        end)
    end
    boot(); boot(); assert(calls == 1 and ctx.packageCalls == 1)
end)
check("core false prevents packages and ready event", function()
    fresh(); local count = countEvent(event.Lifecycle_FrameworkReady)
    ctx.coreResult = false
    assert(lc.OnGameStateInit(ctx.gs) == false)
    assert(ctx.packageCalls == 0 and count() == 0 and lc.GetStatus().phase == "failed")
end)
check("core exception reports failure and supports explicit retry", function()
    fresh(); ctx.coreError = true
    assert(lc.OnGameStateInit(ctx.gs) == false)
    ctx.coreError = false; boot(); assert(lc.GetStatus().phase == "ready")
end)
check("package false or exception never announces ready", function()
    for _, mode in ipairs({"false", "exception"}) do
        fresh(); local count = countEvent(event.Lifecycle_FrameworkReady)
        if mode == "false" then ctx.packageResult = false else ctx.packageError = true end
        assert(lc.OnGameStateInit(ctx.gs) == false and count() == 0)
    end
end)
check("client receives framework ready without server-only game event", function()
    fresh(); ctx.server = false
    local ready, serverReady = countEvent(event.Lifecycle_FrameworkReady), countEvent(event.Server_OnGameInit)
    boot(); assert(ready() == 1 and serverReady() == 0)
end)
check("package listener failure cannot suppress other packages or restart framework", function()
    fresh(); local calls = 0
    bus:AddListener(event.Lifecycle_FrameworkReady, function() error("mode load failed") end)
    bus:AddListener(event.Lifecycle_FrameworkReady, function() calls = calls + 1 end)
    boot(); boot(); assert(calls == 1 and lc.GetStatus().phase == "ready")
end)
check("PC arriving before startup is processed once after ready", function()
    fresh(); local pc = player()
    local count = countEvent(event.Server_OnPlayerControllerInit)
    assert(lc.OnPCInit(pc) == false and count() == 0)
    boot(); lc.OnPCInit(pc); assert(count() == 1)
end)
check("waiting for a real player key does not use fixed timers", function()
    fresh(); boot(); local pc = {PlayerKey = 0}
    local count = countEvent(event.Server_OnPlayerControllerInit)
    lc.OnPCInit(pc); lc.Tick(2); assert(count() == 0)
    pc.PlayerKey = 7; lc.Tick(0.1); assert(count() == 1)
end)
check("data ready is explicit, never emitted by elapsed time", function()
    fresh(); boot(); local pc = player()
    local count = countEvent(event.Server_OnPlayerDataLoaded)
    assert(lc.OnPCInit(pc)); lc.Tick(10); assert(count() == 0)
    assert(lc.NotifyPlayerDataLoaded(pc) and lc.NotifyPlayerDataLoaded(pc))
    assert(count() == 1)
end)
check("server Pawn waits for its controller and confirmed data", function()
    fresh(); boot(); local pc, pawn = player()
    local count = countEvent(event.Server_OnPlayerPawnInit)
    lc.OnPawnInit(pawn); lc.OnPCInit(pc); lc.Tick(0.1); assert(count() == 0)
    assert(lc.NotifyPlayerDataLoaded(pc) and count() == 1)
end)
check("synchronous property completion inside PC notification is supported", function()
    fresh(); boot(); local pc, pawn = player()
    local count = countEvent(event.Server_OnPlayerPawnInit)
    bus:AddListener(event.Server_OnPlayerControllerInit, function() assert(lc.NotifyPlayerDataLoaded(pc)) end)
    lc.OnPawnInit(pawn); assert(lc.OnPCInit(pc) and count() == 1)
end)
check("respawn emits once per Pawn without repeating data initialization", function()
    fresh(); boot(); local pc, pawn = player()
    local pawns, data = countEvent(event.Server_OnPlayerPawnInit), countEvent(event.Server_OnPlayerDataLoaded)
    lc.OnPCInit(pc); lc.NotifyPlayerDataLoaded(pc); lc.OnPawnInit(pawn); lc.OnPawnInit(pawn)
    local replacement = {pc = pc}; pc.pawn = replacement
    lc.OnPawnInit(replacement); assert(pawns() == 2 and data() == 1)
end)
check("stale Pawn is discarded instead of receiving a delayed ready event", function()
    fresh(); boot(); local pc, old = player()
    lc.OnPCInit(pc); lc.OnPawnInit(old)
    pc.pawn = {pc = pc}
    local count = countEvent(event.Server_OnPlayerPawnInit)
    lc.NotifyPlayerDataLoaded(pc); assert(count() == 0 and lc.GetStatus().pendingPawns == 0)
end)
check("client only notifies local controller and local Pawn", function()
    fresh(); ctx.server = false; boot()
    local pc, pawn = player(); ctx.localPC = pc
    local localReady, localPawn = countEvent(event.Client_OnPlayerControllerInit), countEvent(event.Client_OnPlayerPawnInit)
    local serverReady = countEvent(event.Server_OnPlayerControllerInit)
    lc.OnPCInit(pc); lc.OnPawnInit(pawn)
    local remote, remotePawn = player(8); lc.OnPCInit(remote); lc.OnPawnInit(remotePawn)
    assert(localReady() == 1 and localPawn() == 1 and serverReady() == 0)
    assert(lc.GetStatus().pendingControllers == 0 and lc.GetStatus().pendingPawns == 0)
end)
check("invalid and expired objects are discarded", function()
    fresh(); local pc, pawn = player()
    assert(lc.OnPCInit(nil) == false and lc.OnPawnInit(nil) == false)
    lc.OnPCInit(pc); lc.OnPawnInit(pawn); pc.valid, pawn.valid = false, false
    lc.Tick(1); assert(lc.GetStatus().pendingControllers == 0 and lc.GetStatus().pendingPawns == 0)
end)
check("pending waits time out without emitting success", function()
    fresh(); local pc = {PlayerKey = 0}
    lc.OnPCInit(pc); lc.Tick(31)
    assert(lc.GetStatus().pendingControllers == 0 and table.concat(ctx.logs):find("等待超时", 1, true))
end)
check("exit cleans queues and cannot be undone by late callbacks", function()
    fresh(); boot(); local pc, pawn = player()
    local ended, data = countEvent(event.Server_OnPlayerEnd), countEvent(event.Server_OnPlayerDataLoaded)
    lc.OnPCInit(pc); lc.OnPawnInit(pawn)
    assert(lc.OnPCEnd(pc) and lc.OnPCEnd(pc)); lc.Tick(1)
    assert(ended() == 1 and data() == 0 and lc.GetStatus().pendingPawns == 0)
    assert(lc.NotifyPlayerDataLoaded(pc) == false and lc.OnPCInit(pc) == false)
end)
check("new controller can reuse player key after previous one exits", function()
    fresh(); boot(); local first = player()
    lc.OnPCInit(first); lc.OnPCEnd(first)
    local nextPC = player(); assert(lc.OnPCInit(nextPC) and lc.NotifyPlayerDataLoaded(nextPC))
end)
check("Tick dispatches once only while framework is ready", function()
    fresh(); lc.Tick(1); assert(ctx.coreTicks == 0)
    boot(); lc.Tick(0.1); assert(ctx.coreTicks == 1 and ctx.packageTicks == 1)
    assert(lc.Tick(-1) == false and lc.Tick(0/0) == false)
end)
check("different GameState cannot silently reuse initialized modules", function()
    fresh(); boot(); assert(lc.OnGameStateInit({}) == false and ctx.packageCalls == 1)
end)
check("event bus deduplicates and supports listener object plus nil arguments", function()
    fresh(); local owner, calls = {}, 0
    local fn = function(self, a, b, c)
        assert(self == owner and a == 1 and b == nil and c == 3); calls = calls + 1
    end
    assert(bus:AddListener(99, fn, owner) and bus:AddListener(99, fn, owner))
    assert(bus:SendEvent(99, 1, nil, 3) and calls == 1)
    assert(bus:RemoveListener(99, fn, owner) and bus:SendEvent(99) and calls == 1)
end)
check("event mutation uses snapshot and false callback is not a business result", function()
    fresh(); local calls = 0
    local later = function() calls = calls + 1 end
    bus:AddListener(99, function() bus:AddListener(99, later); return false end)
    assert(bus:SendEvent(99) and calls == 0)
    assert(bus:SendEvent(99) and calls == 1)
end)
local function dataBridge(pc, mode)
    local store, saves, inits, current = {}, 0, 0, pc
    local constants = require("Script.Const.Data.Const_Data")
    constants.PLAYER_DATA_TYPE = {STATS = "stats"}
    require("Script.Setting.Package_Meta_Index").Load = function()
        return {{packageName = "Stats", playerData = {{dataKey = "stats", DataInit = function()
            inits = inits + 1
            if mode == "init-failure" then return false end
            current.stats = {level = 1}; return true
        end}}}}, {}
    end
    UGCGameSystem.GetUIDByPlayerController = function() return 88 end
    UGCPlayerStateSystem = {
        GetPlayerArchiveData = function()
            if mode == "read-failure" then error("storage unavailable") end
            return store
        end,
        SavePlayerArchiveData = function(_, data) saves = saves + 1; store = data; return true end,
    }
    local data = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
    ctx.coreHook = data.BeginPlay
    ctx.packageHook = function()
        bus:AddListener(event.Server_OnPlayerControllerInit, function()
            local exists, reason = data.CheckArchiveData(current)
            if exists == nil then return false, reason end
            local ok
            if exists then ok = data.RestoreArchiveData(current)
            else ok = data.InitAllData(current.PlayerKey) and data.SaveArchiveData(current) end
            if ok then return lc.NotifyPlayerDataLoaded(current) end
            return false
        end)
    end
    return function(nextPC)
        if nextPC then current = nextPC end
        return saves, inits
    end
end
check("real DataCore bridge saves first player then restores without resetting data", function()
    fresh(); local pc, pawn = player()
    local stats = dataBridge(pc)
    local loaded, pawnReady = countEvent(event.Server_OnPlayerDataLoaded), countEvent(event.Server_OnPlayerPawnInit)
    lc.OnPCInit(pc); lc.OnPawnInit(pawn); boot()
    local saves, inits = stats()
    assert(saves == 1 and inits == 1 and loaded() == 1 and pawnReady() == 1)
    pc.stats.level = 10
    assert(Global_PlayerDataCore.SaveArchiveData(pc))
    lc.OnPCEnd(pc)
    local returning = player(); stats(returning); lc.OnPCInit(returning)
    saves, inits = stats()
    assert(returning.stats.level == 10 and saves == 2 and inits == 1 and loaded() == 2)
end)
check("real DataCore read error cannot initialize, save or release Pawn", function()
    fresh(); local pc, pawn = player()
    local stats = dataBridge(pc, "read-failure")
    local loaded, pawnReady = countEvent(event.Server_OnPlayerDataLoaded), countEvent(event.Server_OnPlayerPawnInit)
    boot(); lc.OnPCInit(pc); lc.OnPawnInit(pawn); lc.Tick(2)
    local saves, inits = stats()
    assert(saves == 0 and inits == 0 and loaded() == 0 and pawnReady() == 0)
end)
check("real DataCore init false cannot save or announce loaded", function()
    fresh(); local pc = player()
    local stats = dataBridge(pc, "init-failure")
    local loaded = countEvent(event.Server_OnPlayerDataLoaded)
    boot(); lc.OnPCInit(pc); lc.Tick(2)
    local saves, inits = stats()
    assert(saves == 0 and inits == 1 and loaded() == 0)
end)
check("live Pawn dedupe survives Lua wrapper garbage collection", function()
    fresh(); boot(); local pc, pawn = player()
    lc.OnPCInit(pc); lc.NotifyPlayerDataLoaded(pc)
    local count = countEvent(event.Server_OnPlayerPawnInit)
    local weak = setmetatable({pawn}, {__mode = "v"})
    UGCGameSystem.GetPlayerPawnByPlayerController = function(controller)
        if not weak[1] then weak[1] = {pc = controller} end
        return weak[1]
    end
    assert(lc.OnPawnInit(pawn)); pc.pawn, pawn = nil, nil
    collectgarbage("collect"); collectgarbage("collect")
    local current = UGCGameSystem.GetPlayerPawnByPlayerController(pc)
    assert(lc.OnPawnInit(current) and count() == 1)
end)
check("client respawn waits for replicated PC Pawn association", function()
    fresh(); ctx.server = false; boot(); local pc, old = player(); ctx.localPC = pc
    lc.OnPCInit(pc); assert(lc.OnPawnInit(old))
    local count = countEvent(event.Client_OnPlayerPawnInit)
    local replacement = {pc = pc}
    local ok, reason = lc.OnPawnInit(replacement)
    assert(not ok and reason == "pawn-association-pending" and lc.GetStatus().pendingPawns == 1)
    lc.Tick(1); assert(count() == 0)
    pc.pawn = replacement; lc.Tick(0)
    assert(count() == 1 and lc.GetStatus().pendingPawns == 0)
    assert(lc.OnPawnInit(replacement) and count() == 1)
    assert(lc.OnPawnInit(old) == false)
    -- 无法确认的旧客户端对象允许有界等待，但绝不发送错误重生通知。
    lc.Tick(lc.WAIT_TIMEOUT_SECONDS)
    assert(count() == 1 and lc.GetStatus().pendingPawns == 0)
end)
-- 使用真实空注册表、真实 DebugKit 的最后一次集成检查。
check("actual template dependencies initialize without configured packages", function()
    fresh()
    for _, path in ipairs({corePath, pkgPath, debugPath, "Script.Core.LifeCycle.Life_Cycle"}) do
        package.loaded[path], package.preload[path] = nil, nil
    end
    lc = require("Script.Core.LifeCycle.Life_Cycle")
    assert(lc.OnGameStateInit(ctx.gs) and lc.Tick(0.1))
end)
print(string.format("%d passed, %d failed; template LifeCycle, engine mocked.", passed, failed))
if failed > 0 then os.exit(1) end
