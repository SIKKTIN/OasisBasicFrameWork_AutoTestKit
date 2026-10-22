local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(source:match("^(.*)/[^/]+$"))
package.path = dir .. "/../Project/?.lua;" .. dir .. "/../../framework-base/Project/?.lua"
local passed, failed = 0, 0
local ctx, gm, config, pc, bus, events
local function fresh(server)
    for name in pairs(package.loaded) do if name:match("^Script%.") then package.loaded[name] = nil end end
    ctx = {server = server == true, opens = 0, destroys = 0, requests = {}, running = false, suites = {}, keys = {}, ready = true}
    pc = {bShowMouseCursor = false}
    ugcprint = function() end
    UGCEventSystem, EventType = nil, nil
    UGCGameSystem = {IsServer = function() return ctx.server end,
        GetLocalPlayerController = function() return pc end, GetGameState = function() return {} end}
    package.preload["Script.Core.LifeCycle.Life_Cycle"] = function() return {
        GetStatus = function() return {phase = "ready"} end,
        GetPlayerStatus = function() return {controllerReady = ctx.ready, dataReady = ctx.server} end} end
    Global_UI = {Open = function() ctx.opens = ctx.opens + 1; return ctx.openOK ~= false end,
        TriggerFunc = function(_, _, name) ctx.cleanupMethod = name end,
        Destroy = function() ctx.destroys = ctx.destroys + 1 end}
    Global_Tip = {Show = function(_, message) ctx.tip = message end}
    Global_CommandSystem = {Execute = function(command, context)
        ctx.command, ctx.context = command, context
        return {success = true, code = "SUCCESS", message = "ok"}
    end}
    Global_PlayerDataCore = {GetAllKeys = function() return ctx.keys end,
        FormatAllData = function() ctx.formatted = true; return true end}
    Global_GameDataCore = Global_PlayerDataCore
    Global_AutoTestKit = {IsRunning = function() return ctx.running end,
        GetSuiteDescriptors = function() return ctx.suites end,
        RunAll = function() ctx.running = true; return true end,
        RunSuite = function(_, name) ctx.suite = name; ctx.running = true; return true end,
        RunSingleCase = function(_, name, case) ctx.suite, ctx.case = name, case; ctx.running = true; return true end,
        Stop = function() ctx.running = false; ctx.stops = (ctx.stops or 0) + 1 end}
    UnrealNetwork = {CallUnrealRPC = function(_, _, method, ...)
        ctx.requests[#ctx.requests + 1] = {method = method, args = {...}}
    end}
    config = require("Script.Package.GM.Config.Config_GM")
    gm = require("Script.Package.GM.Registry_GM")
    bus, events = UGCEventSystem, EventType
    assert(gm.BeginPlay())
end
local function check(name, fn)
    local ok, err = pcall(fn)
    if ok then passed = passed + 1 else failed = failed + 1; print("FAIL " .. name .. ": " .. tostring(err)) end
end
check("event startup opens local PC once and preserves cursor", function()
    fresh(false); assert(ctx.opens == 1 and pc.bShowMouseCursor)
    gm.BeginPlay(); bus:SendEvent(events.Client_OnPlayerControllerInit, pc)
    assert(ctx.opens == 1); gm.OnControllerEnd(pc)
    assert(ctx.destroys == 1 and not pc.bShowMouseCursor and ctx.cleanupMethod == "ReleaseBindings")
end)
check("disabled GM skips UI and rejects server RPC", function()
    fresh(true); config.Enabled = false
    assert(gm.ExecuteServer(pc, "run-all").code == "GM_DISABLED" and not ctx.running)
end)
check("authorization false and exceptions fail closed", function()
    fresh(true); config.CanUse = function() return false end
    assert(not gm.ExecuteServer(pc, "status").success)
    config.CanUse = function() error("policy") end
    assert(not gm.ExecuteServer(pc, "status").success)
end)
check("unready and ended PC cannot execute", function()
    fresh(true); ctx.ready = false
    assert(gm.ExecuteServer(pc, "status").code == "PLAYER_NOT_READY")
end)
check("server-only and unknown operations rejected", function()
    fresh(false); assert(gm.ExecuteServer(pc, "status").code == "SERVER_ONLY")
    fresh(true); assert(gm.ExecuteServer(pc, "arbitrary-function").code == "UNKNOWN_ACTION")
end)
check("empty data packages are a valid diagnostic state", function()
    fresh(true); assert(gm.ExecuteServer(pc, "player-data").code == "NO_DATA_PACKAGES")
    ctx.keys = {"stats"}; assert(gm.ExecuteServer(pc, "game-data").success and ctx.formatted)
end)
check("empty tests do not report success", function()
    fresh(true); local r = gm.ExecuteServer(pc, "run-all")
    assert(not r.success and r.code == "NO_TESTS" and not ctx.running)
end)
check("valid tests run and owner can stop", function()
    fresh(true); ctx.suites = {{name = "Suite"}}
    assert(gm.ExecuteServer(pc, "run-suite", "Suite").code == "TEST_STARTED")
    assert(ctx.suite == "Suite" and ctx.running)
    assert(gm.ExecuteServer(pc, "stop").success and not ctx.running)
end)
check("other PC cannot replace or stop running queue", function()
    fresh(true); ctx.suites = {{name = "Suite"}}
    gm.ExecuteServer(pc, "run-all")
    assert(gm.ExecuteServer({}, "run-all").code == "TEST_BUSY")
    assert(gm.ExecuteServer({}, "stop").code == "TEST_OWNER_MISMATCH" and ctx.running)
end)
check("owner exit stops active tests but preserves completed reports", function()
    fresh(true); ctx.suites = {{name = "Suite"}}
    gm.ExecuteServer(pc, "run-all"); gm.OnControllerEnd(pc)
    assert(not ctx.running and ctx.stops == 1)
    gm.ExecuteServer(pc, "run-all"); ctx.running = false
    gm.OnControllerEnd(pc); assert(ctx.stops == 1)
end)
check("test names validated", function()
    fresh(true); ctx.suites = {{name = "Suite"}}
    assert(gm.ExecuteServer(pc, "run-suite", {}).code == "INVALID_ARGUMENT")
    assert(gm.ExecuteServer(pc, "run-case", "Suite", "").code == "INVALID_ARGUMENT")
    assert(gm.ExecuteServer(pc, "run-case", "Suite", "Case").success and ctx.case == "Case")
end)
check("RPC command re-enters parser with trusted sender", function()
    fresh(true); assert(gm.ExecuteServer(pc, "command", "cmd").success)
    assert(ctx.context.fromRPC and ctx.context.playerController == pc)
    assert(gm.ExecuteServer(pc, "command", {}).code == "INVALID_ARGUMENT")
end)
check("handler exceptions converted into failures", function()
    fresh(true); Global_CommandSystem.Execute = function() error("bad") end
    assert(gm.ExecuteServer(pc, "command", "cmd").code == "HANDLER_ERROR")
end)
check("RPC dispatch is pending and response is local-only", function()
    fresh(false); assert(gm.Request(pc, "status").code == "SERVER_DISPATCHED")
    assert(ctx.requests[1].method == "Server_GM_Action")
    assert(not gm.AcceptResult({}, true, "OK", "bad"))
    assert(gm.AcceptResult(pc, true, "STATUS", "ready") and gm.GetStatus().lastResult.code == "STATUS")
end)
check("adapter merges RPC list, forwards and cleans up", function()
    fresh(true); local c = {GetAvailableServerRPCs = function() return "Existing" end,
        ReceiveEndPlay = function() ctx.ended = true end}
    local adapter = require("Script.Package.GM.Controller_GM")
    assert(adapter.Attach(c) and adapter.Attach(c))
    local names = {c:GetAvailableServerRPCs()}; assert(#names == 7)
    assert(c.Server_ExecuteDevCommand(pc, "cmd").success)
    assert(ctx.requests[#ctx.requests].method == "Client_CommandResult")
    c.ReceiveEndPlay(pc); assert(ctx.ended)
end)
check("adapter refuses conflicts before any writes", function()
    fresh(true); local c = {Server_RunAutoTest = function() end}
    assert(not pcall(require("Script.Package.GM.Controller_GM").Attach, c))
    assert(c.Server_GM_Action == nil and c.GetAvailableServerRPCs == nil)
end)
check("UI pagination, empty state and bindings survive recreation", function()
    fresh(false)
    local functions = require("Script.UI.GM.UMG_GMControl")
    local ui = setmetatable({}, {__index = functions})
    local function widget()
        local w = {handlers = {}, Text = ""}
        w.OnClicked = {Add = function(_, fn) w.handlers[fn] = true end, Remove = function(_, fn) w.handlers[fn] = nil end}
        function w:SetVisibility(v) self.visibility = v end
        function w:SetText(t) self.Text = t end
        function w:SetIsEnabled(v) self.enabled = v end
        function w:SetActiveWidgetIndex(v) self.index = v end
        return w
    end
    for _, name in ipairs({"GMButton","Order_Manager","Module_Test","Player_Manager","Module_Print","Module_Server_Print",
        "Player_Data_Check","RunCommand","AutoTest_Manager","WaitDevelopment2","Resource_Manager","LastPageBtn","NextPageBtn",
        "CurPageText","WidgetSwitcher_0"}) do ui[name] = widget() end
    for i = 1, 6 do ui["Test" .. i], ui["Test" .. i .. "Name"] = widget(), widget() end
    ESlateVisibility = {Visible = 0, Collapsed = 1}
    ui:Construct(); local count = #ui._bindings; ui:Construct(); assert(#ui._bindings == count)
    assert(ui.CurPageText.Text == "尚未登记测试套件")
    for i = 1, 7 do ctx.suites[i] = {name = "Suite" .. i} end
    ui:OpenAutoTests(); assert(ui._pages == 2 and ui.NextPageBtn.enabled)
    ui._page = 2; ui:RefreshAutoTestPage(); ui:RunSuiteSlot(1)
    assert(ctx.requests[#ctx.requests].args[2] == "Suite7")
    ui:Destruct(); assert(next(ui.Test1.handlers) == nil)
    ui:Construct(); assert(#ui._bindings == count)
end)
print(string.format("%d passed, %d failed; GM behavior with mocked engine/RPC.", passed, failed))
if failed > 0 then os.exit(1) end
