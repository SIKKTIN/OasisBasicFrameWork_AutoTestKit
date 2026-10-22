-- 安装 GM 时附加到实际控制器类；RPC 入口只转发，不包含功能逻辑。
local GM = require("Script.Package.GM.Registry_GM")
local Adapter = {}
local unpackValues = table.unpack or unpack
local serverActions = {
    Server_RunAutoTest = "run-all", Server_RunAutoTest_BySuite = "run-suite",
    Server_RunAutoTest_ByCase = "run-case", Server_StopAutoTest = "stop",
    Server_ExecuteDevCommand = "command",
}
local methods = {}
function methods:Server_GM_Action(action, arg, arg2)
    local r = GM.ExecuteServer(self, action, arg, arg2)
    if UGCGameSystem.IsServer() then
        UnrealNetwork.CallUnrealRPC(self, self, "Client_GM_Result", r.success, r.code, r.message)
    end
    return r
end
for name, action in pairs(serverActions) do
    methods[name] = function(self, arg, arg2)
        local r = GM.ExecuteServer(self, action, arg, arg2)
        if UGCGameSystem.IsServer() then
            if action == "command" then
                UnrealNetwork.CallUnrealRPC(self, self, "Client_CommandResult", r.success, r.message)
            else
                UnrealNetwork.CallUnrealRPC(self, self, "Client_GM_Result", r.success, r.code, r.message)
            end
        end
        return r
    end
end
function methods:Client_GM_Result(success, code, message)
    return GM.AcceptResult(self, success, code, message)
end
function methods:Client_CommandResult(success, message)
    return GM.AcceptResult(self, success, "COMMAND_RESULT", message)
end
function methods:Client_TipContent(message, priority)
    if not UGCGameSystem.IsServer() and self == UGCGameSystem.GetLocalPlayerController() then
        Global_Tip.Show(self, tostring(message), priority)
    end
end

function Adapter.Attach(controller)
    if controller.__oasisGMAdapter then return true end
    for name in pairs(methods) do
        assert(controller[name] == nil, "GM RPC conflict: " .. name)
    end
    local previousRPCs, previousEnd = controller.GetAvailableServerRPCs, controller.ReceiveEndPlay
    for name, fn in pairs(methods) do controller[name] = fn end
    controller.GetAvailableServerRPCs = function(self)
        local names, used = {}, {}
        local function add(name)
            if type(name) == "string" and not used[name] then names[#names + 1], used[name] = name, true end
        end
        if previousRPCs then for _, name in ipairs({previousRPCs(self)}) do add(name) end end
        add("Server_GM_Action")
        for name in pairs(serverActions) do add(name) end
        table.sort(names)
        return unpackValues(names)
    end
    controller.ReceiveEndPlay = function(self, ...)
        GM.OnControllerEnd(self)
        if previousEnd then return previousEnd(self, ...) end
    end
    controller.__oasisGMAdapter = true
    return true
end
return Adapter
