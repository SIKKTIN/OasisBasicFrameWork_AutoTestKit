---@class UMG_TaskReward_C:UUserWidget
local Reward = {}
function Reward:SetReward(value)
    self.IconText:SetText(value.iconText or "奖")
    self.LabelText:SetText((value.label or tostring(value.id or value.type)) .. "\n×" .. tostring(value.amount))
end
return Reward
