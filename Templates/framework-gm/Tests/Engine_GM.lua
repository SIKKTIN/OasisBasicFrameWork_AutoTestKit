-- 仅由 PIE Lua console 派发，不属于部署 payload；调用结果从两端日志读取。
OasisGMProbe = OasisGMProbe or {passed = 0, failed = 0, checks = {}}
local Probe = OasisGMProbe
local server = UGCGameSystem.IsServer()
local port = server and "DS" or "Client"
local GM = require("Script.Package.GM.Registry_GM")
local function Check(name, fn)
    local ok, err = pcall(fn)
    Probe.checks[#Probe.checks + 1] = {name = name, passed = ok, detail = not ok and tostring(err) or nil}
    if ok then Probe.passed = Probe.passed + 1 else Probe.failed = Probe.failed + 1 end
    ugcprint("[GM_ENGINE][" .. port .. "] " .. (ok and "PASS " or "FAIL ") .. name .. (ok and "" or " | " .. tostring(err)))
end
function Probe.Start()
    local pcs = server and UGCGameSystem.GetAllPlayerController() or {UGCGameSystem.GetLocalPlayerController()}
    for _, pc in pairs(pcs) do Probe.pc = pc; break end
    assert(Probe.pc)
    Check("framework ready with optional GM package", function()
        assert(LifeCycle.GetStatus().phase == "ready" and GM.GetStatus().initialized)
        assert(LifeCycle.GetPlayerStatus(Probe.pc).controllerReady)
    end)
    Check("server RPC whitelist installed once", function()
        local names, used = {Probe.pc:GetAvailableServerRPCs()}, {}
        for _, name in ipairs(names) do assert(not used[name]); used[name] = true end
        assert(used.Server_GM_Action and used.Server_ExecuteDevCommand and used.Server_RunAutoTest)
    end)
    Check("GM status command registered on local execution port", function()
        local r = GM.ExecuteLocal(Probe.pc, "command", "cmd -s default -t " .. (server and "server" or "client") .. " -GM -Status")
        assert(r.success and r.message:find(server and "Server" or "Client"))
    end)
    Check("empty data uses DataCore without business package", function()
        assert(GM.ExecuteLocal(Probe.pc, "player-data").code == "NO_DATA_PACKAGES")
        assert(GM.ExecuteLocal(Probe.pc, "game-data").code == "NO_DATA_PACKAGES")
    end)
    Check("seven temporary suites loaded", function() assert(#Global_AutoTestKit.GetSuiteDescriptors() == 7) end)
    if server then return end
    Probe.ui = require("Script.Core.UISystem.Sys_UIManager").uiInstances["1001"]
    Check("GM widget automatically created and visible", function()
        assert(Probe.ui and Probe.ui._isShowing and GM.GetStatus().uiOpen and Probe.pc.bShowMouseCursor)
    end)
    Check("duplicate init preserves widget and bindings", function()
        assert(GM.BeginPlay()); assert(LifeCycle.OnPCInit(Probe.pc))
        assert(require("Script.Core.UISystem.Sys_UIManager").uiInstances["1001"] == Probe.ui)
        local count = #Probe.ui._bindings; Probe.ui:Construct(); assert(#Probe.ui._bindings == count)
        Probe.bindingCount = count
    end)
    Check("native GM button expands and collapses", function()
        Probe.ui.GMButton.OnClicked:Broadcast(); assert(Probe.ui._expanded)
        Probe.ui.GMButton.OnClicked:Broadcast(); assert(not Probe.ui._expanded)
        Probe.ui.GMButton.OnClicked:Broadcast()
    end)
    Check("real empty-suite UI state", function()
        local previous = Global_AutoTestKit.GetSuiteDescriptors
        Global_AutoTestKit.GetSuiteDescriptors = function() return {} end
        local ok, err = pcall(function()
            Probe.ui:OpenAutoTests()
            assert(#Probe.ui._suites == 0 and tostring(Probe.ui.CurPageText:GetText()) == "尚未登记测试套件")
            assert(not Probe.ui.NextPageBtn:GetIsEnabled())
        end)
        Global_AutoTestKit.GetSuiteDescriptors = previous
        assert(ok, err)
    end)
    Check("real pagination shows seventh suite on second page", function()
        Probe.ui.AutoTest_Manager.OnClicked:Broadcast()
        assert(Probe.ui._pages == 2 and Probe.ui._page == 1)
        Probe.ui.NextPageBtn.OnClicked:Broadcast()
        assert(Probe.ui._page == 2 and tostring(Probe.ui.Test1Name:GetText()) == "GMProbe7")
        Probe.ui.LastPageBtn.OnClicked:Broadcast(); assert(Probe.ui._page == 1)
    end)
end
function Probe.Command()
    Probe.ui.CommandInput:SetText("cmd -s default -t server -GM -Status")
    Probe.ui.RunCommand.OnClicked:Broadcast()
end
function Probe.CommandResult()
    Check("command crossed real PC RPC and returned server result", function()
        local r = assert(GM.GetStatus().lastResult)
        assert(r.success and r.code == "COMMAND_RESULT" and r.message:find("Server"), r.code .. ":" .. r.message)
    end)
end
function Probe.Request(action, arg, arg2)
    return GM.Request(Probe.pc, action, arg, arg2)
end
function Probe.Response(code, success, label)
    Check("real RPC response " .. code .. (label and " " .. label or ""), function()
        local r = assert(GM.GetStatus().lastResult)
        assert(r.code == code and r.success == success, r.code .. ":" .. r.message)
    end)
end
function Probe.EmptyTests()
    Check("empty server suite list is not a test pass", function()
        local previous = Global_AutoTestKit.GetSuiteDescriptors
        Global_AutoTestKit.GetSuiteDescriptors = function() return {} end
        local ok, r = pcall(GM.ExecuteServer, Probe.pc, "run-all")
        Global_AutoTestKit.GetSuiteDescriptors = previous
        assert(ok and not r.success and r.code == "NO_TESTS")
    end)
end
function Probe.Suite()
    Probe.ui:OpenAutoTests(); Probe.ui.NextPageBtn.OnClicked:Broadcast()
    Probe.ui.Test1.OnClicked:Broadcast()
end
function Probe.Report(cases, status)
    Check("real server test report " .. status .. " " .. cases, function()
        local r = Global_AutoTestKit.GetReport()
        assert(r.status == status and r.totalCases == cases, tostring(r.status) .. ":" .. tostring(r.totalCases))
        assert(r.allPassed == (status == "passed"))
    end)
end
function Probe.Stop()
    Probe.ui.WaitDevelopment2.OnClicked:Broadcast()
    Probe.ui.Resource_Manager.OnClicked:Broadcast()
end
function Probe.RunAll() Probe.ui.WaitDevelopment2.OnClicked:Broadcast() end
function Probe.Recreate()
    Check("destroy explicitly clears old widget bindings", function()
        local old = Probe.ui; assert(GM.Close(Probe.pc))
        assert(not GM.GetStatus().uiOpen and old._bindings == nil)
    end)
    Check("close restores either preexisting mouse cursor state", function()
        for _, original in ipairs({false, true}) do
            Probe.pc.bShowMouseCursor = original
            assert(GM.Open(Probe.pc) and Probe.pc.bShowMouseCursor)
            assert(GM.Close(Probe.pc) and Probe.pc.bShowMouseCursor == original)
        end
        Probe.pc.bShowMouseCursor = false
    end)
    Check("reopen creates one widget with one set of handlers", function()
        assert(GM.Open(Probe.pc))
        local ui = require("Script.Core.UISystem.Sys_UIManager").uiInstances["1001"]
        assert(ui ~= Probe.ui and #ui._bindings == Probe.bindingCount)
        Probe.ui = ui
        ui.GMButton.OnClicked:Broadcast(); assert(ui._expanded)
        ui.GMButton.OnClicked:Broadcast(); assert(not ui._expanded)
    end)
end
function Probe.PrepareRespawn()
    Probe.originalPawn = UGCGameSystem.GetPlayerPawnByPlayerController(Probe.pc)
end
function Probe.CheckRespawn()
    Check("actual respawn preserves one GM widget and binding set", function()
        assert(UGCGameSystem.GetPlayerPawnByPlayerController(Probe.pc) ~= Probe.originalPawn)
        assert(require("Script.Core.UISystem.Sys_UIManager").uiInstances["1001"] == Probe.ui)
        assert(#Probe.ui._bindings == Probe.bindingCount and GM.GetStatus().uiOpen)
    end)
end
function Probe.CheckCompletedExit()
    Check("completed report survives GM owner exit cleanup", function()
        assert(Global_AutoTestKit.GetReport().allPassed)
        GM.OnControllerEnd(Probe.pc)
        assert(Global_AutoTestKit.GetReport().status == "passed" and Global_AutoTestKit.GetReport().allPassed)
    end)
end
function Probe.CheckControllerExit()
    if server then
        Check("real controller exit adapter stops owned active tests", function()
            assert(GM.ExecuteServer(Probe.pc, "run-all").success and Global_AutoTestKit.IsRunning())
            Probe.pc:ReceiveEndPlay(0)
            assert(not Global_AutoTestKit.IsRunning() and Global_AutoTestKit.GetReport().status == "stopped")
            assert(LifeCycle.GetPlayerStatus(Probe.pc).ended)
        end)
    else
        Check("real controller exit adapter releases GM UI", function()
            local ui = Probe.ui
            Probe.pc:ReceiveEndPlay(0)
            assert(not GM.GetStatus().uiOpen and ui._bindings == nil)
            assert(LifeCycle.GetPlayerStatus(Probe.pc).ended)
        end)
    end
end
function Probe.Summary()
    ugcprint(string.format("[GM_ENGINE][%s] SUMMARY passed=%d failed=%d", port, Probe.passed, Probe.failed))
end
