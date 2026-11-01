---@class UMG_TaskPanel_C:UUserWidget
local UI = {}
local Task = require("Script.Package.TaskSystem.Registry_TaskSystem")
local Bus = require("Script.Core.EventSystem.UGCEventSystem")
local events = Task.GetEvents()
local labels = {available = "可接取", locked = "未解锁", active = "进行中", completed = "可领取",
    claim_pending = "待确认", claimed = "已领取", waiting = "加载中"}
local messages = {
    ["ok"] = "操作成功", ["already-accepted"] = "任务已接取", ["already-claimed"] = "奖励已领取",
    ["save-failed"] = "保存失败，请稍后重试", ["reward-provider-unavailable"] = "奖励暂不可领取",
    ["prerequisite-not-met"] = "请先领取前置任务奖励", ["task-not-completed"] = "请先完成任务目标",
    ["reward-pending"] = "奖励正在处理，请稍后确认", ["reward-unknown"] = "奖励结果待确认，请稍后重试",
    ["request-in-progress"] = "请求正在处理", ["task-data-not-ready"] = "任务数据加载中",
}
local function PC() return UGCGameSystem.GetLocalPlayerController() end
local function Visibility(yes) return yes and ESlateVisibility.Visible or ESlateVisibility.Collapsed end
local function Make(name)
    local root = UGCMapInfoLib.GetRootLongPackagePath()
    local class = UE.LoadClass(root .. "Asset/UI/TaskSystem/" .. name .. "." .. name .. "_C")
    return class and UGCWidgetManagerSystem.CreateWidget(class) or nil
end
function UI:Bind(button, callback)
    button.OnClicked:Add(callback)
    self._bindings[#self._bindings + 1] = {button, callback}
end
function UI:ShowPanel(show)
    self.Window:SetVisibility(Visibility(show))
    self._open = show
    if show then self:Refresh() end
end
function UI:Construct()
    if self._bindings then return end
    self._bindings, self._rows, self._rewardWidgets = {}, {}, {}
    self:Bind(self.EntryButton, function() self:ShowPanel(not self._open) end)
    self:Bind(self.CloseButton, function() self:ShowPanel(false) end)
    self:Bind(self.ActionButton, function() self:Submit() end)
    self._changed = function(pc) if pc == PC() and self._open then self:Refresh() end end
    self._result = function(pc, success, code)
        if pc ~= PC() then return end
        self._pending, self._elapsed = false, 0
        self.FeedbackText:SetText(messages[code] or (success and "操作成功" or "操作未完成，请稍后重试"))
        self:Refresh()
    end
    Bus:AddListener(events.changed, self._changed, nil)
    Bus:AddListener(events.result, self._result, nil)
    self.EntryText:SetText(Task.GetUIConfig().entryLabel or "任务")
    self:ShowPanel(false)
end
function UI:OnOpen()
    self:SetVisibility(ESlateVisibility.SelfHitTestInvisible)
    if not self._bindings then self:Construct() end
end
function UI:Refresh()
    local list = Task.GetTaskList(PC())
    self.EmptyText:SetVisibility(Visibility(#list == 0))
    local known = {}
    for _, entry in ipairs(list) do
        local id = entry.config.id
        known[id] = true
        if not self._rows[id] then
            local row = Make("UMG_TaskRow")
            if row then self.TaskList:AddChild(row); self._rows[id] = row end
        end
        if not self._selected then self._selected = id end
        local row = self._rows[id]
        if row then
            row:SetTask(entry.config.name, labels[entry.status.state] or entry.status.state,
                self._selected == id, function() self._selected = id; self.FeedbackText:SetText(""); self:Refresh() end)
        end
    end
    local removed = {}
    for id, row in pairs(self._rows) do if not known[id] then row:RemoveFromParent(); removed[#removed + 1] = id end end
    for _, id in ipairs(removed) do self._rows[id] = nil end
    if self._selected and not known[self._selected] then self._selected = nil end
    self:RefreshDetail()
end
function UI:RefreshDetail()
    local config = self._selected and Task.GetTaskConfig(self._selected)
    self.Detail:SetVisibility(Visibility(config ~= nil))
    if not config then return end
    local state = Task.GetTaskState(PC(), self._selected)
    self.TitleText:SetText(config.name)
    self.StateText:SetText(labels[state.state] or state.state)
    self.DescriptionText:SetText(config.description)
    local lines = {}
    for _, goal in ipairs(config.objectives) do
        local count = math.min(goal.count, state.progress[goal.id] or 0)
        lines[#lines + 1] = string.format("%s  %s    %d / %d", count >= goal.count and "✓" or "○",
            goal.label or goal.type .. "：" .. goal.target, count, goal.count)
    end
    self.ObjectivesText:SetText(table.concat(lines, "\n"))
    if self._rewardTask ~= self._selected then
        self.RewardsBox:ClearChildren(); self._rewardWidgets = {}
        for _, reward in ipairs(config.rewards) do
            local widget = Make("UMG_TaskReward")
            if widget then
                self.RewardsBox:AddChild(widget)
                widget:SetReward(reward)
                self._rewardWidgets[#self._rewardWidgets + 1] = widget
            end
        end
        self.NoRewardText:SetVisibility(Visibility(#config.rewards == 0))
        self._rewardTask = self._selected
    end
    local text = self._pending and "处理中…" or state.state == "available" and "接取任务"
        or state.state == "completed" and "领取奖励" or state.state == "claim_pending" and "确认领取结果"
        or labels[state.state] or "暂不可操作"
    self.ActionText:SetText(text)
    self.ActionButton:SetIsEnabled(not self._pending and (state.state == "available"
        or state.state == "completed" or state.state == "claim_pending"))
end
function UI:Submit()
    if self._pending or not self._selected then return end
    local state = Task.GetTaskState(PC(), self._selected)
    local action = state.state == "available" and "accept"
        or (state.state == "completed" or state.state == "claim_pending") and "claim"
    if not action then return end
    self._pending, self._elapsed = true, 0
    self.FeedbackText:SetText("")
    self:RefreshDetail()
    local ok, code = Task.Request(PC(), action, self._selected)
    if not ok then self._result(PC(), false, code) end
end
-- 仅处理请求超时，不轮询任务进度；数据刷新由复制通知和结果事件触发。
function UI:Tick(_, deltaTime)
    if not self._pending then return end
    self._elapsed = (self._elapsed or 0) + deltaTime
    if self._elapsed > 12 then
        self._pending = false
        self.FeedbackText:SetText("请求超时，请重试")
        self:RefreshDetail()
    end
end
function UI:Destruct()
    for _, binding in ipairs(self._bindings or {}) do binding[1].OnClicked:Remove(binding[2]) end
    if self._changed then Bus:RemoveListener(events.changed, self._changed, nil) end
    if self._result then Bus:RemoveListener(events.result, self._result, nil) end
    self._bindings, self._rows, self._rewardTask, self._pending = nil, nil, nil, false
end
return UI
