---@class BP_PlayerPropertyComponent_C:UActorComponent
local BP_PlayerPropertyComponent = {}
local Data, LC, Bus, Events, Const

local function Dependencies()
    Events = require("Script.Event.EventType")
    Bus = require("Script.Core.EventSystem.UGCEventSystem")
    LC = require("Script.Core.LifeCycle.Life_Cycle")
    Data = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
    Const = require("Script.Const.Data.Const_Data")
end
local function Log(reason)
    (type(ugcprint) == "function" and ugcprint or print)("[PlayerProperty] " .. tostring(reason))
end
local function Active(self, pc)
    return not self._ended and self:GetOwner() == pc and LC.GetPlayerStatus(pc).controllerReady
end
local function Load(self, pc, key)
    if not Active(self, pc) then return false, "controller-not-ready" end
    if not self._dataComplete then
        local ready, reason = Data.BeginPlay()
        if ready ~= true then return false, reason or "data-core-initialization-failed" end
        local declared = {}
        for _, value in pairs(Const.PLAYER_DATA_TYPE) do
            if type(value) ~= "string" or value == "" then return false, "invalid-data-key" end
            declared[value] = true
        end
        local keys = Data.GetAllKeys()
        for _, value in ipairs(keys) do
            if not declared[value] then return false, "data-constants-outdated: " .. value end
        end
        if next(declared) == nil and #keys == 0 then
            self._archiveMode = "no-data-packages"
        else
            local exists, checkReason = Data.CheckArchiveData(pc)
            if exists == nil then return false, checkReason end
            if exists == false then
                local initialized, detail = Data.InitAllData(key)
                if initialized ~= true then return false, detail or "data-init-failed" end
                if not Active(self, pc) then return false, "controller-ended" end
                local saved, saveReason = Data.SaveArchiveData(pc)
                if saved ~= true then return false, saveReason end
                self._archiveMode = "created"
            elseif exists == true then
                local restored, detail = Data.RestoreArchiveData(pc)
                if restored ~= true then return false, detail end
                self._archiveMode = "restored"
            else
                return false, "invalid-archive-check-result"
            end
        end
        self._dataComplete = true
    end
    if not Active(self, pc) then return false, "controller-ended" end
    return LC.NotifyPlayerDataLoaded(pc)
end

-- 显式重试入口；成功和正在执行时均不会再次读写存档。
function BP_PlayerPropertyComponent:RetryLoad()
    if self._ended then return false, "component-ended" end
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if self._loadState == "loaded" then return true end
    if self._loadState == "loading" then return false, "loading" end
    if not self._listening then return self:ReceiveBeginPlay() end
    local pc = self:GetOwner()
    local state = LC.GetPlayerStatus(pc)
    if not state.controllerReady then return false, "controller-not-ready" end
    if state.dataReady then self._loadState = "loaded"; return true end
    self._loadState = "loading"
    local ok, result, reason = pcall(Load, self, pc, state.playerKey)
    if self._ended then return false, "component-ended" end
    self._loadState = ok and result == true and "loaded" or "failed"
    self._loadReason = ok and reason or result
    if self._loadState == "failed" then Log(self._loadReason) end
    return self._loadState == "loaded", self._loadReason
end

function BP_PlayerPropertyComponent:OnPlayerDataLoad(playerKey)
    if self._ended then return end
    local state = LC.GetPlayerStatus(self:GetOwner())
    if state.controllerReady and tostring(state.playerKey) == tostring(playerKey) then
        return self:RetryLoad()
    end
    return false, "other-controller"
end

function BP_PlayerPropertyComponent:ReceiveBeginPlay()
    if self._ended then return false, "component-ended" end
    if not self._parentBegun then
        self._parentBegun = true
        if self.SuperClass and self.SuperClass.ReceiveBeginPlay then self.SuperClass.ReceiveBeginPlay(self) end
    end
    if not UGCGameSystem.IsServer() then return true end
    if not self._listening then
        local ok, err = pcall(Dependencies)
        if not ok then self._loadState, self._loadReason = "failed", err; Log(err); return false, err end
        local added, result = pcall(Bus.AddListener, Bus, Events.Server_OnPlayerControllerInit,
            self.OnPlayerDataLoad, self)
        if not added or result ~= true then return false, "listener-registration-failed" end
        self._listening = true
    end
    -- 组件 BeginPlay 可能晚于 PC 就绪事件；只读查询用于补接，不重发 PC 事件。
    return self:RetryLoad()
end

function BP_PlayerPropertyComponent:ReceiveEndPlay(reason)
    if self._ended then return end
    self._ended = true
    if self._listening then
        Bus:RemoveListener(Events.Server_OnPlayerControllerInit, self.OnPlayerDataLoad, self)
        self._listening = false
    end
    self._loadState = "ended"
    if self.SuperClass and self.SuperClass.ReceiveEndPlay then self.SuperClass.ReceiveEndPlay(self, reason) end
end

return BP_PlayerPropertyComponent
