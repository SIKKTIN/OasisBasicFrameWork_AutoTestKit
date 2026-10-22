Global_Tip = Global_Tip or {}

local Sys_TipQuene = require("Script.Core.TipSystem.Sys_TipQueueSystem")
local Const_Tip = require("Script.Const.Core.Const_Tip")

Global_Tip.PRIORITY = Const_Tip.PRIORITY

function Global_Tip.Tick(DeltaTime)
    Sys_TipQuene.Tick(DeltaTime)
end

--- 显示一条提示（默认 MEDIUM 优先级）
---@param owner userdata|nil 所属玩家，nil 表示全局
---@param content string|number|boolean 提示内容
---@param priority number|nil 优先级，默认 MEDIUM
function Global_Tip.Show(owner, content, priority)
    Sys_TipQuene.Enqueue(owner, content, priority)
end

--- 显示普通提示（LOW 优先级）
function Global_Tip.ShowLow(owner, content)
    Sys_TipQuene.Enqueue(owner, content, Global_Tip.PRIORITY.LOW)
end

--- 显示普通提示（MEDIUM 优先级）
function Global_Tip.ShowMedium(owner, content)
    Sys_TipQuene.Enqueue(owner, content, Global_Tip.PRIORITY.MEDIUM)
end

--- 显示重要提示（HIGH 优先级）
function Global_Tip.ShowHigh(owner, content)
    Sys_TipQuene.Enqueue(owner, content, Global_Tip.PRIORITY.HIGH)
end

--- 清空指定玩家的提示队列
function Global_Tip.Clear(owner)
    Sys_TipQuene.Clear(owner)
end

return Global_Tip
