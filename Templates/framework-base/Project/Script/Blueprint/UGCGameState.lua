---@class UGCGameState_C:BP_UGCGameState_C
-- 保留编辑器初始工程的公共枚举加载。
UGCGameSystem.UGCRequire('Script.Common.ue_enum_custom')

local LifeCycle = require("Script.Core.LifeCycle.Life_Cycle")
local Const_Data = require("Script.Const.Data.Const_Data")
local unpackValues = table.unpack or unpack
local UGCGameState = {}

function UGCGameState:ReceiveBeginPlay()
    if UGCGameState.SuperClass.ReceiveBeginPlay then
        UGCGameState.SuperClass.ReceiveBeginPlay(self)
    end

    local success, reason = LifeCycle.BeginPlay()
    if success then success, reason = LifeCycle.OnGameStateInit(self) end
    if not success then
        ugcprint("[UGCGameState] 框架启动失败: " .. tostring(reason))
    end
    return success, reason
end

function UGCGameState:ReceiveTick(deltaTime)
    if UGCGameState.SuperClass.ReceiveTick then
        UGCGameState.SuperClass.ReceiveTick(self, deltaTime)
    end
    -- LifeCycle 内部统一驱动 Core.Tick 与 Package.GameStateTick，避免重复调用。
    return LifeCycle.Tick(deltaTime)
end

function UGCGameState:GetReplicatedProperties()
    local types = Const_Data.GAME_DATA_TYPE or {}
    local properties, used = {}, {}
    -- GenKit ORDER 保存的是常量字段名，例如 GAME_STATUS_DATA。
    for _, name in ipairs(Const_Data.GAME_DATA_TYPE_ORDER or {}) do
        local key = types[name]
        if key and not used[key] then
            properties[#properties + 1], used[key] = key, true
        end
    end
    -- 兼容缺少 ORDER 的旧生成文件，固定追加顺序，保持两端一致。
    local remaining = {}
    for _, key in pairs(types) do
        if not used[key] then remaining[#remaining + 1], used[key] = key, true end
    end
    table.sort(remaining)
    for _, key in ipairs(remaining) do properties[#properties + 1] = key end
    return unpackValues(properties)
end

return UGCGameState
