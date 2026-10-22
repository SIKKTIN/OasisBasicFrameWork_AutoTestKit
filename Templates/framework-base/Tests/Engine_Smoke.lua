-- 通过 PIE doluastring 分别在 client/ds 执行本文件内容；结果读取实际日志。
-- Start 检查空配置并安装探针；通过测试工程临时索引加载配套 Suite 后 StartSuite，稍后 Finish。
local Smoke = {passed = 0, failed = 0, checks = {}}
local server = UGCGameSystem.IsServer()
local port = server and "DS" or "Client"
local function Check(name, fn)
    local ok, detail = pcall(fn)
    Smoke.checks[#Smoke.checks + 1] = {name = name, passed = ok, detail = not ok and tostring(detail) or nil}
    if ok then Smoke.passed = Smoke.passed + 1 else Smoke.failed = Smoke.failed + 1 end
    ugcprint("[OASIS_SMOKE][" .. port .. "] " .. (ok and "PASS " or "FAIL ") .. name
        .. (ok and "" or " | " .. tostring(detail)))
end

function Smoke.Start()
    local lc = assert(LifeCycle, "LifeCycle was not automatically loaded")
    local gs = UGCGameSystem.GetGameState()
    local pcs = server and UGCGameSystem.GetAllPlayerController() or {UGCGameSystem.GetLocalPlayerController()}
    local pc
    for _, value in pairs(pcs) do pc = value; break end
    pc = assert(pc, "no player controller")
    Smoke.pc, Smoke.lc = pc, lc
    local bus, events = UGCEventSystem, EventType
    Check("framework auto-ready", function() assert(lc.GetStatus().phase == "ready") end)
    Check("eight Core globals automatically loaded", function()
        local registry = require("Script.Setting.Core_Registry")
        assert(#registry == 8)
        for _, path in ipairs(registry) do assert(type(_G[path:match("([^.]+)$")]) == "table", path) end
    end)
    Check("no pending controllers or pawns", function()
        local state = lc.GetStatus(); assert(state.pendingControllers == 0 and state.pendingPawns == 0)
    end)
    Check("both DataCores have zero business declarations", function()
        assert(#Global_GameDataCore.GetAllKeys() == 0 and #Global_PlayerDataCore.GetAllKeys() == 0)
    end)
    Check("UI empty table loaded through engine", function()
        local ui = require("Script.Core.UISystem.Sys_UIManager")
        assert(type(ui.uiConfigData) == "table" and next(ui.uiConfigData) == nil)
    end)
    Check("controller readiness", function()
        local state = lc.GetPlayerStatus(pc)
        assert(state.controllerReady and not state.ended)
        if server then assert(state.dataReady) end
    end)
    Check("bound property component", function()
        local component = assert(pc.PlayerPropertyComponent, "SCS component field unavailable")
        assert(component:GetOwner() == pc)
        if server then
            assert(component._loadState == "loaded", tostring(component._loadReason))
            assert(component._archiveMode == "no-data-packages")
        else assert(not component._listening) end
    end)
    Check("duplicate PC init has no second notification", function()
        local count = 0
        local id = server and events.Server_OnPlayerControllerInit or events.Client_OnPlayerControllerInit
        local fn = function() count = count + 1 end
        bus:AddListener(id, fn); local ok = lc.OnPCInit(pc); bus:RemoveListener(id, fn)
        assert(ok and count == 0)
    end)
    Check("duplicate GameState does not reannounce framework", function()
        local count = 0; local fn = function() count = count + 1 end
        bus:AddListener(events.Lifecycle_FrameworkReady, fn)
        local ok = lc.OnGameStateInit(gs)
        bus:RemoveListener(events.Lifecycle_FrameworkReady, fn)
        assert(ok and count == 0)
    end)
    Check("actual Pawn already initialized once", function()
        local pawn = assert(UGCGameSystem.GetPlayerPawnByPlayerController(pc), "pawn unavailable")
        local id = server and events.Server_OnPlayerPawnInit or events.Client_OnPlayerPawnInit
        local count = 0; local fn = function() count = count + 1 end
        bus:AddListener(id, fn); local ok, reason = lc.OnPawnInit(pawn); bus:RemoveListener(id, fn)
        assert(ok and count == 0, tostring(reason) .. " count=" .. count)
    end)
    Check("event listener dedupe, nil arity and removal", function()
        local id, count, arity, middle = "OasisEngineSmoke", 0
        local fn = function(...) count = count + 1; arity = select("#", ...); middle = select(2, ...) end
        assert(bus:AddListener(id, fn) and bus:AddListener(id, fn))
        assert(bus:SendEvent(id, 1, nil, 3)); assert(bus:RemoveListener(id, fn))
        bus:SendEvent(id, 1); bus.Events[id] = nil
        assert(count == 1 and arity == 3 and middle == nil)
    end)
    Check("unknown command reports empty registry", function()
        local result = Global_CommandSystem.Execute("cmd -s default -oasis_missing -ping")
        assert(result.success == false and result.code == "UNKNOWN_NAMESPACE", tostring(result.code))
    end)
    Check("command interpreter executes on requested local port", function()
        local target = server and "Server" or "Client"
        assert(Global_CommandSystem.RegisterInterpreter("oasisengine", {Parse = function()
            return {name = "oasisengine.ping", defaultTarget = target, allowedTargets = {[target] = true},
                args = {9}, handler = function(context, value)
                    assert(context.actualPort == target); return value + 1
                end}
        end}))
        local result = Global_CommandSystem.Execute("cmd -s oasisengine ping")
        assert(result.success and result.value == 10, tostring(result.code))
    end)
    Check("AutoTestKit index reflects deployed configuration", function()
        local suites = Global_AutoTestKit.GetSuiteDescriptors()
        if #suites == 0 then
            assert(Global_AutoTestKit.RunAll(nil) == false)
            local report = Global_AutoTestKit.GetReport()
            assert(report.status == "no-tests" and report.allPassed == false and report.totalCases == 0)
        else assert(#suites == 1 and suites[1].name == "OasisEngineSmoke") end
    end)
    Check("DebugKit recorded actual framework lifecycle", function()
        assert(Global_DebugKit.Summary(Global_DebugKit.ID.LIFECYCLE))
    end)
    if server then
        Check("new engine archive recognized without writing", function()
            local exists, reason = Global_PlayerDataCore.CheckArchiveData(pc)
            assert(exists == false and reason == "missing", tostring(reason))
        end)
        Check("empty archive save is rejected without storage write", function()
            local ok, reason = Global_PlayerDataCore.SaveArchiveData(pc)
            assert(ok == false and reason == "no-data-packages", tostring(reason))
        end)
    else
        Check("ClientCache push, subscribe, peek and pop", function()
            local key, count = "OasisEngineSmoke", 0
            local payload = {"probe"}
            Global_ClientCache.Subscribe(key, function(value) if value == payload then count = count + 1 end end)
            Global_ClientCache.Push(key, payload)
            assert(count == 1 and Global_ClientCache.Peek(key) == payload)
            assert(Global_ClientCache.Pop(key) == payload and Global_ClientCache.Peek(key) == nil)
        end)
        Check("Tip queued for real client Tick", function()
            local queue = require("Script.Core.TipSystem.Sys_TipQueueSystem")
            assert(not queue._has_pending)
            Global_Tip.Show(pc, "Oasis framework startup check passed", Global_Tip.PRIORITY.HIGH)
            assert(queue._has_pending)
        end)
    end
    -- 比较真实帧调用数，不在探针中人工 Tick 来冒充入口驱动成功。
    Smoke.tickCounts = {life = 0, tip = 0, tests = 0}
    Smoke.oldLife, Smoke.oldTip, Smoke.oldTests = lc.Tick, Global_Tip.Tick, Global_AutoTestKit.Tick
    lc.Tick = function(dt) Smoke.tickCounts.life = Smoke.tickCounts.life + 1; return Smoke.oldLife(dt) end
    Global_Tip.Tick = function(dt) Smoke.tickCounts.tip = Smoke.tickCounts.tip + 1; return Smoke.oldTip(dt) end
    Global_AutoTestKit.Tick = function(dt) Smoke.tickCounts.tests = Smoke.tickCounts.tests + 1; return Smoke.oldTests(dt) end
    ugcprint("[OASIS_SMOKE][" .. port .. "] STARTED awaiting temporary Suite index")
end

function Smoke.StartSuite()
    Check("AutoTestKit starts two-case engine suite", function() assert(Global_AutoTestKit.RunAll(nil)) end)
    ugcprint("[OASIS_SMOKE][" .. port .. "] SUITE STARTED wait for Finish after 12 seconds")
end

function Smoke.Finish()
    Check("real Tick routes exactly once per GameState frame", function()
        local count = Smoke.tickCounts
        assert(count.life > 0 and count.life == count.tip and count.life == count.tests,
            "life=" .. count.life .. " tip=" .. count.tip .. " tests=" .. count.tests)
    end)
    Check("AutoTestKit completed via actual Tick", function()
        local report = Global_AutoTestKit.GetReport()
        assert(report.allPassed and report.totalCases == 2 and report.passedCases == 2
            and #report.errors == 0 and Smoke.setup == 1 and Smoke.teardown == 1,
            "status=" .. report.status .. " total=" .. report.totalCases)
    end)
    if not server then
        Check("Tip drained via actual Tick", function()
            local queue = require("Script.Core.TipSystem.Sys_TipQueueSystem")
            assert(not queue._has_pending)
        end)
    end
    Smoke.lc.Tick, Global_Tip.Tick, Global_AutoTestKit.Tick = Smoke.oldLife, Smoke.oldTip, Smoke.oldTests
    ugcprint("[OASIS_SMOKE][" .. port .. "] RESULT passed=" .. Smoke.passed .. " failed=" .. Smoke.failed)
end

function Smoke.PrepareRespawn()
    Smoke.oldPawn = UGCGameSystem.GetPlayerPawnByPlayerController(Smoke.pc)
    Smoke.respawnCount, Smoke.reloadCount = 0, 0
    Smoke.pawnEvent = server and EventType.Server_OnPlayerPawnInit or EventType.Client_OnPlayerPawnInit
    Smoke.onRespawn = function(value)
        if (server and tostring(value) == tostring(Smoke.lc.GetPlayerStatus(Smoke.pc).playerKey))
            or (not server and value == UGCGameSystem.GetPlayerPawnByPlayerController(Smoke.pc)) then
            Smoke.respawnCount = Smoke.respawnCount + 1
        end
    end
    Smoke.onReload = function() Smoke.reloadCount = Smoke.reloadCount + 1 end
    UGCEventSystem:AddListener(Smoke.pawnEvent, Smoke.onRespawn)
    if server then UGCEventSystem:AddListener(EventType.Server_OnPlayerDataLoaded, Smoke.onReload) end
    ugcprint("[OASIS_SMOKE][" .. port .. "] RESPAWN PREPARED")
end

function Smoke.CheckRespawn()
    Check("real respawn replaces Pawn and emits once", function()
        local pawn = UGCGameSystem.GetPlayerPawnByPlayerController(Smoke.pc)
        assert(pawn and pawn ~= Smoke.oldPawn and Smoke.respawnCount == 1,
            "changed=" .. tostring(pawn ~= Smoke.oldPawn) .. " events=" .. Smoke.respawnCount)
        assert(Smoke.lc.OnPawnInit(pawn) and Smoke.respawnCount == 1)
    end)
    Check("respawn preserves controller and data readiness", function()
        local state = Smoke.lc.GetPlayerStatus(Smoke.pc)
        assert(state.controllerReady and (not server or state.dataReady))
        assert(Smoke.reloadCount == 0)
        if server then assert(Smoke.pc.PlayerPropertyComponent._loadState == "loaded") end
    end)
    UGCEventSystem:RemoveListener(Smoke.pawnEvent, Smoke.onRespawn)
    if server then UGCEventSystem:RemoveListener(EventType.Server_OnPlayerDataLoaded, Smoke.onReload) end
    ugcprint("[OASIS_SMOKE][" .. port .. "] FINAL passed=" .. Smoke.passed .. " failed=" .. Smoke.failed)
end

function Smoke.CheckExit()
    Check("real controller exit clears readiness and rejects late data", function()
        assert(Smoke.lc.OnPCEnd(Smoke.pc))
        local state = Smoke.lc.GetPlayerStatus(Smoke.pc)
        assert(state.ended and not state.controllerReady and not state.dataReady)
        local ok = Smoke.lc.NotifyPlayerDataLoaded(Smoke.pc)
        assert(ok == false and Smoke.lc.OnPCInit(Smoke.pc) == false)
    end)
    Check("component EndPlay unregisters its listener", function()
        local component = Smoke.pc.PlayerPropertyComponent
        component:ReceiveEndPlay(0)
        assert(component._ended and not component._listening and component:RetryLoad() == false)
        for _, entry in ipairs(UGCEventSystem.Events[EventType.Server_OnPlayerControllerInit] or {}) do
            assert(entry.Object ~= component)
        end
    end)
    ugcprint("[OASIS_SMOKE][" .. port .. "] COMPLETE passed=" .. Smoke.passed .. " failed=" .. Smoke.failed)
end

OasisEngineSmoke = Smoke
Smoke.Start()
