local Config = require("Script.Package.GM.Config.Config_GM")
local LifeCycle = require("Script.Core.LifeCycle.Life_Cycle")
local Bus = require("Script.Core.EventSystem.UGCEventSystem")
local Events = require("Script.Event.EventType")
local GM = {}
local initialized, owner, previousCursor, testOwner = false, nil, nil, nil
local lastResult, handledRequests = nil, 0

local function Result(ok, code, message)
    return {success = ok == true, code = code, message = tostring(message)}
end

function GM.CanUse(pc)
    if Config.Enabled ~= true or pc == nil then return false end
    local ok, allowed = pcall(Config.CanUse, pc, UGCGameSystem.IsServer())
    return ok and allowed == true
end

function GM.GetStatus()
    return {enabled = Config.Enabled == true, initialized = initialized,
        uiOpen = owner ~= nil, phase = LifeCycle.GetStatus().phase,
        lastResult = lastResult, handledRequests = handledRequests}
end

function GM.AcceptResult(pc, success, code, message)
    if UGCGameSystem.IsServer() or pc ~= UGCGameSystem.GetLocalPlayerController() then return false end
    lastResult = Result(success, tostring(code), message)
    ugcprint(string.format("[GM][%s] success=%s %s", lastResult.code, tostring(success), lastResult.message))
    if Global_Tip then Global_Tip.Show(pc, lastResult.message) end
    return true
end

function GM.Open(pc)
    if UGCGameSystem.IsServer() or pc ~= UGCGameSystem.GetLocalPlayerController() or not GM.CanUse(pc) then
        return false, "GM unavailable"
    end
    if owner == pc then return true end
    if owner then GM.Close(owner) end
    if not Global_UI.Open(Config.UIID) then return false, "GM UI open failed" end
    owner, previousCursor = pc, pc.bShowMouseCursor
    if Config.ShowMouseCursor then pc.bShowMouseCursor = true end
    return true
end

function GM.Close(pc)
    if owner ~= pc or not owner then return false end
    -- 引擎可能延迟调用 Destruct；主动解绑，避免旧控件持有回调直到 GC。
    Global_UI.TriggerFunc(Config.UIID, nil, "ReleaseBindings")
    Global_UI.Destroy(Config.UIID)
    if Config.ShowMouseCursor then pc.bShowMouseCursor = previousCursor end
    owner, previousCursor = nil, nil
    return true
end

function GM.OnControllerEnd(pc)
    if UGCGameSystem.IsServer() then
        if testOwner == pc then
            if Global_AutoTestKit.IsRunning() then Global_AutoTestKit.Stop() end
            testOwner = nil
        end
    else
        GM.Close(pc)
    end
end

local function OnPlayer(pc)
    if Config.AutoOpen and Config.Enabled then
        local ok, reason = GM.Open(pc)
        if not ok then ugcprint("[GM] " .. tostring(reason)) end
    end
end

function GM.BeginPlay()
    if initialized then return true end
    if not UGCGameSystem.IsServer() then
        if Bus:AddListener(Events.Client_OnPlayerControllerInit, OnPlayer) == false then return false end
    end
    initialized = true
    -- 支持框架已启动后显式接入；常规启动由控制器就绪事件打开。
    if not UGCGameSystem.IsServer() then
        local pc = UGCGameSystem.GetLocalPlayerController()
        if pc and LifeCycle.GetPlayerStatus(pc).controllerReady then OnPlayer(pc) end
    end
    return true
end

local function Inspect(pc, action)
    if action == "status" then
        local s, p = LifeCycle.GetStatus(), LifeCycle.GetPlayerStatus(pc)
        local message = string.format("%s framework=%s controller=%s data=%s",
            UGCGameSystem.IsServer() and "Server" or "Client", tostring(s.phase),
            tostring(p.controllerReady), tostring(p.dataReady))
        ugcprint("[GM] " .. message)
        return Result(true, "STATUS", message)
    end
    local data, target
    if action == "player-data" then data, target = Global_PlayerDataCore, pc
    elseif action == "game-data" then data, target = Global_GameDataCore, UGCGameSystem.GetGameState()
    else return Result(false, "UNKNOWN_ACTION", "未知 GM 操作") end
    local keys = data.GetAllKeys()
    if #keys == 0 then return Result(true, "NO_DATA_PACKAGES", "尚未登记数据包") end
    if not target then return Result(false, "TARGET_UNAVAILABLE", "数据对象尚未就绪") end
    local ok = data.FormatAllData(target)
    return Result(ok, ok and "DATA_PRINTED" or "DATA_PRINT_FAILED", "数据打印结果见当前执行端日志")
end

function GM.ExecuteLocal(pc, action, command)
    if not GM.CanUse(pc) then return Result(false, "GM_DISABLED", "GM 未启用或无使用权限") end
    if action == "command" then
        if type(command) ~= "string" then return Result(false, "INVALID_ARGUMENT", "指令必须为字符串") end
        return Global_CommandSystem.Execute(command, {playerController = pc, source = "GMUI"})
    end
    return Inspect(pc, action)
end

local function ValidName(value)
    return type(value) == "string" and value ~= "" and #value <= 256
end

local function Execute(pc, action, arg, arg2)
    if action == "command" then
        if type(arg) ~= "string" or #arg > 512 then return Result(false, "INVALID_ARGUMENT", "指令无效或过长") end
        return Global_CommandSystem.Execute(arg, {playerController = pc, source = "GMUI", fromRPC = true})
    end
    if action == "status" or action == "player-data" or action == "game-data" then return Inspect(pc, action) end
    if action == "stop" then
        if Global_AutoTestKit.IsRunning() and testOwner ~= pc then
            return Result(false, "TEST_OWNER_MISMATCH", "不能停止其他入口或玩家启动的测试")
        end
        Global_AutoTestKit.Stop(); testOwner = nil
        return Result(true, "TEST_STOPPED", "自动测试已停止")
    end
    if action ~= "run-all" and action ~= "run-suite" and action ~= "run-case" then
        return Result(false, "UNKNOWN_ACTION", "未知 GM 操作")
    end
    if Global_AutoTestKit.IsRunning() then return Result(false, "TEST_BUSY", "已有测试正在执行") end
    if (action == "run-suite" or action == "run-case") and not ValidName(arg)
        or action == "run-case" and not ValidName(arg2) then
        return Result(false, "INVALID_ARGUMENT", "Suite/Case 名称无效")
    end
    if #Global_AutoTestKit.GetSuiteDescriptors() == 0 then return Result(false, "NO_TESTS", "尚未登记测试套件") end
    local ok
    if action == "run-all" then ok = Global_AutoTestKit.RunAll(pc)
    elseif action == "run-suite" then ok = Global_AutoTestKit.RunSuite(pc, arg)
    else ok = Global_AutoTestKit.RunSingleCase(pc, arg, arg2) end
    if ok then testOwner = pc end
    return Result(ok, ok and "TEST_STARTED" or "TEST_START_FAILED",
        ok and "自动测试已启动；最终结果以测试报告为准" or "测试启动失败，请检查套件及日志")
end

function GM.ExecuteServer(pc, action, arg, arg2)
    if not UGCGameSystem.IsServer() then return Result(false, "SERVER_ONLY", "只能在服务端处理") end
    if not GM.CanUse(pc) then return Result(false, "GM_DISABLED", "GM 未启用或无使用权限") end
    if not initialized or not LifeCycle.GetPlayerStatus(pc).controllerReady then
        return Result(false, "PLAYER_NOT_READY", "控制器尚未就绪或已退出")
    end
    handledRequests = handledRequests + 1
    local ok, result = pcall(Execute, pc, action, arg, arg2)
    if not ok then ugcprint("[GM] " .. tostring(result)); return Result(false, "HANDLER_ERROR", "GM 执行异常，详见服务端日志") end
    return result
end

function GM.Request(pc, action, arg, arg2)
    if UGCGameSystem.IsServer() or pc ~= UGCGameSystem.GetLocalPlayerController() or not GM.CanUse(pc) then
        return Result(false, "GM_DISABLED", "GM 未启用或无使用权限")
    end
    UnrealNetwork.CallUnrealRPC(pc, pc, "Server_GM_Action", action, arg, arg2)
    return Result(true, "SERVER_DISPATCHED", "请求已发送，等待服务端结果")
end

return GM
