---@class UMG_GMControl_C:UUserWidget
local GM = require("Script.Package.GM.Registry_GM")
local UI = {}
local PAGE_SIZE = 6
local subButtons = {"Order_Manager", "Module_Test", "AutoTest_Manager", "WaitDevelopment2", "Resource_Manager", "Player_Manager"}
local function PC() return UGCGameSystem.GetLocalPlayerController() end
local function Feedback(result)
    GM.AcceptResult(PC(), result.success, result.code, result.message)
    return result
end
function UI:Bind(name, callback)
    local button = self[name]
    if not button then return end
    button.OnClicked:Add(callback)
    self._bindings[#self._bindings + 1] = {button = button, callback = callback}
end
function UI:SetExpanded(expanded)
    self._expanded = expanded
    for _, name in ipairs(subButtons) do
        self[name]:SetVisibility(expanded and ESlateVisibility.Visible or ESlateVisibility.Collapsed)
    end
    self.WidgetSwitcher_0:SetActiveWidgetIndex(0)
    self._tab = 0
end
function UI:SwitchTab(index)
    self._tab = self._tab == index and 0 or index
    self.WidgetSwitcher_0:SetActiveWidgetIndex(self._tab)
end
function UI:RunSuiteSlot(slot)
    local descriptor = self._suites[(self._page - 1) * PAGE_SIZE + slot]
    if descriptor then return Feedback(GM.Request(PC(), "run-suite", descriptor.name)) end
end
function UI:RefreshAutoTestPage()
    local count = #self._suites
    self._pages = math.max(1, math.ceil(count / PAGE_SIZE))
    self._page = math.max(1, math.min(self._page, self._pages))
    for slot = 1, PAGE_SIZE do
        local descriptor = self._suites[(self._page - 1) * PAGE_SIZE + slot]
        self["Test" .. slot .. "Name"]:SetText(descriptor and descriptor.name or "")
        self["Test" .. slot]:SetVisibility(descriptor and ESlateVisibility.Visible or ESlateVisibility.Collapsed)
    end
    self.CurPageText:SetText(count == 0 and "尚未登记测试套件" or string.format("第 %d / %d 页", self._page, self._pages))
    self.LastPageBtn:SetIsEnabled(self._page > 1)
    self.NextPageBtn:SetIsEnabled(self._page < self._pages)
end
function UI:OpenAutoTests()
    self._suites = Global_AutoTestKit.GetSuiteDescriptors() or {}
    self._page = 1
    self:RefreshAutoTestPage()
    self:SwitchTab(6)
end
function UI:Construct()
    if self._bindings then return end
    self._bindings, self._suites, self._page = {}, {}, 1
    self:Bind("GMButton", function() self:SetExpanded(not self._expanded) end)
    self:Bind("Order_Manager", function() self:SwitchTab(1) end)
    self:Bind("Module_Test", function() self:SwitchTab(3) end)
    self:Bind("Player_Manager", function() self:SwitchTab(5) end)
    self:Bind("Module_Print", function() Feedback(GM.ExecuteLocal(PC(), "status")); Feedback(GM.ExecuteLocal(PC(), "game-data")) end)
    self:Bind("Module_Server_Print", function() Feedback(GM.Request(PC(), "status")); Feedback(GM.Request(PC(), "game-data")) end)
    self:Bind("Player_Data_Check", function() Feedback(GM.ExecuteLocal(PC(), "player-data")); Feedback(GM.Request(PC(), "player-data")) end)
    self:Bind("RunCommand", function() Feedback(GM.ExecuteLocal(PC(), "command", tostring(self.CommandInput:GetText()))) end)
    self:Bind("AutoTest_Manager", function() self:OpenAutoTests() end)
    self:Bind("WaitDevelopment2", function() Feedback(GM.Request(PC(), "run-all")) end)
    self:Bind("Resource_Manager", function() Feedback(GM.Request(PC(), "stop")) end)
    self:Bind("LastPageBtn", function() self._page = self._page - 1; self:RefreshAutoTestPage() end)
    self:Bind("NextPageBtn", function() self._page = self._page + 1; self:RefreshAutoTestPage() end)
    for slot = 1, PAGE_SIZE do self:Bind("Test" .. slot, function() self:RunSuiteSlot(slot) end) end
    self:RefreshAutoTestPage()
    self:SetExpanded(false)
end
function UI:ReleaseBindings()
    for _, binding in ipairs(self._bindings or {}) do binding.button.OnClicked:Remove(binding.callback) end
    self._bindings = nil
end
function UI:Destruct() self:ReleaseBindings() end
return UI
