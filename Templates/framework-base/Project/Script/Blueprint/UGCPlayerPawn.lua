-- 引擎 Pawn 入口：服务端和客户端首次生成、重生均通知 LifeCycle。
local LifeCycle = require("Script.Core.LifeCycle.Life_Cycle")
local UGCPlayerPawn = {}

function UGCPlayerPawn:ReceiveBeginPlay()
    if UGCPlayerPawn.SuperClass.ReceiveBeginPlay then
        UGCPlayerPawn.SuperClass.ReceiveBeginPlay(self)
    end

    local success, reason = LifeCycle.BeginPlay()
    if not success then
        ugcprint("[UGCPlayerPawn] 生命周期监听注册失败: " .. tostring(reason))
        return false, reason
    end
    -- LifeCycle 负责角色关联、数据等待、本地玩家过滤和实例去重。
    return LifeCycle.OnPawnInit(self)
end

function UGCPlayerPawn:GetReplicatedProperties()
    -- 保留当前编辑器空白工程的子对象延迟复制声明。
    return {"__SubObjectRepList", "Lazy"}
end

-- 死亡、复活、战斗与输入等行为由项目功能接入。
return UGCPlayerPawn
