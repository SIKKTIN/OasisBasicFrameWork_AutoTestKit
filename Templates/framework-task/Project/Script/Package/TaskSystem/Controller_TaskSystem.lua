-- 仅安装 TaskSystem 时附加到实际 PC；保留已有 RPC 与复制通知。
local Task = require("Script.Package.TaskSystem.Registry_TaskSystem")
local Adapter = {}
local unpackValues = table.unpack or unpack
function Adapter.Attach(controller)
    if controller.__oasisTaskAdapter then return true end
    assert(controller.Server_TaskAction == nil and controller.Client_TaskResult == nil, "TaskSystem RPC conflict")
    local oldRPCs, oldRep, oldEnd = controller.GetAvailableServerRPCs, controller.OnRep_task_data, controller.ReceiveEndPlay
    function controller:Server_TaskAction(action, id)
        if not UGCGameSystem.IsServer() then return false end
        local ok, reason = Task.Request(self, action, id)
        UnrealNetwork.CallUnrealRPC(self, self, "Client_TaskResult", ok == true, reason or "ok")
        return ok, reason
    end
    function controller:Client_TaskResult(success, code) return Task.AcceptResult(self, success, code) end
    function controller:OnRep_task_data(...)
        if oldRep then oldRep(self, ...) end
        return Task.OnReplicated(self)
    end
    function controller:GetAvailableServerRPCs()
        local list, seen = {}, {}
        if oldRPCs then
            for _, name in ipairs({oldRPCs(self)}) do if not seen[name] then list[#list + 1], seen[name] = name, true end end
        end
        if not seen.Server_TaskAction then list[#list + 1] = "Server_TaskAction" end
        return unpackValues(list)
    end
    function controller:ReceiveEndPlay(...)
        Task.OnControllerEnd(self)
        if oldEnd then return oldEnd(self, ...) end
    end
    controller.__oasisTaskAdapter = true
    return true
end
return Adapter
