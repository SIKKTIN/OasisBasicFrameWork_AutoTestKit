---@class UGCPlayerController_C:BP_UGCPlayerController_C
local LifeCycle = require("Script.Core.LifeCycle.Life_Cycle")
local Package_Registry = require("Script.Setting.Package_Registry")
local Const_Data = require("Script.Const.Data.Const_Data")
local unpackValues = table.unpack or unpack
local UGCPlayerController = {}

function UGCPlayerController:ReceiveBeginPlay()
    if UGCPlayerController.SuperClass.ReceiveBeginPlay then
        UGCPlayerController.SuperClass.ReceiveBeginPlay(self)
    end

    local success, reason = LifeCycle.BeginPlay()
    if not success then
        ugcprint("[UGCPlayerController] 生命周期监听注册失败: " .. tostring(reason))
        return false, reason
    end
    -- 提前到达时由 LifeCycle 排队，不能据此假定玩家数据已加载。
    return LifeCycle.OnPCInit(self)
end

function UGCPlayerController:ReceiveTick(deltaTime)
    if UGCPlayerController.SuperClass.ReceiveTick then
        UGCPlayerController.SuperClass.ReceiveTick(self, deltaTime)
    end
    Package_Registry.PlayerTick(self, deltaTime)
end

function UGCPlayerController:ReceiveEndPlay(endPlayReason)
    -- 先通知退出，再由父类销毁对象，保留玩家键和清理时机。
    LifeCycle.OnPCEnd(self)
    if UGCPlayerController.SuperClass.ReceiveEndPlay then
        UGCPlayerController.SuperClass.ReceiveEndPlay(self, endPlayReason)
    end
end

function UGCPlayerController:GetReplicatedProperties()
    local types = Const_Data.PLAYER_DATA_TYPE or {}
    local properties, used = {}, {}
    for _, name in ipairs(Const_Data.PLAYER_DATA_TYPE_ORDER or {}) do
        local key = types[name]
        if key and not used[key] then
            properties[#properties + 1], used[key] = key, true
        end
    end
    local remaining = {}
    for _, key in pairs(types) do
        if not used[key] then remaining[#remaining + 1], used[key] = key, true end
    end
    table.sort(remaining)
    for _, key in ipairs(remaining) do properties[#properties + 1] = key end
    return unpackValues(properties)
end

-- 存档流程由后续 PropertyComponent 接入，GM UI 和调试 RPC 由独立功能接入。
return UGCPlayerController
