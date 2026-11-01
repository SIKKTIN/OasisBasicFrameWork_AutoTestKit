-- Isolated engine/archive doubles, real template DataCore and event bus.
local path = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(path:match("^(.*)/[^/]+$"))
local root = dir .. "/../../.."
package.path = dir .. "/../Project/?.lua;" .. dir .. "/../Examples/Project/?.lua;"
    .. root .. "/Templates/framework-base/Project/?.lua;" .. root .. "/?.lua"
package.cpath = ""
local ctx, api, core, define, data, bus
local function copy(x)
    if type(x) ~= "table" then return x end
    local y = {}; for k, v in pairs(x) do y[k] = copy(v) end; return y
end
local function task(id, rewards, prereqs)
    return {id = id or 1, name = "Test", description = "Description", prerequisites = prereqs,
        objectives = {{id = "kills", type = "kill", target = "enemy", count = 3},
            {id = "items", type = "collect", target = "supply", count = 2}}, rewards = rewards or {}}
end
local function fresh(list, options)
    for key in pairs(package.loaded) do if key:match("^Script%.") then package.loaded[key] = nil end end
    for key in pairs(package.preload) do if key:match("^Script%.") then package.preload[key] = nil end end
    Global_PlayerDataCore, UGCEventSystem, EventType = nil, nil, nil
    ctx = {pc = {PlayerKey = 7}, server = true, saves = 0, grants = 0, effects = 0, receipts = {}, uiOpens = 0}
    for k, v in pairs(options or {}) do ctx[k] = v end
    ugcprint = function() end
    UGCGameSystem = {IsServer = function() return ctx.server end,
        GetPlayerControllerByPlayerKey = function(key) if key == 7 then return ctx.pc end end,
        GetPlayerKeyByPlayerController = function(pc) return pc.PlayerKey end,
        GetUIDByPlayerController = function(pc) return pc.PlayerKey + 100 end,
        GetLocalPlayerController = function() return ctx.pc end}
    UGCPlayerStateSystem = {GetPlayerArchiveData = function() return copy(ctx.archive) end,
        GetPlayerDataSize = function() return ctx.archive and 100 or 0 end,
        SavePlayerArchiveData = function(_, archive)
            ctx.saves = ctx.saves + 1
            if ctx.failSave or ctx.failSaveAt == ctx.saves then return false end
            ctx.archive = copy(archive); return true
        end}
    Global_UI = {Open = function() ctx.uiOpens = ctx.uiOpens + 1; return true end}
    package.preload["Script.Const.Data.Const_Data"] = function()
        local types = ctx.missingConstant and {} or {TASK_DATA = "task_data"}
        if ctx.withExample then types.TASK_EXAMPLE_DATA = "task_example_data" end
        return {PLAYER_DATA_TYPE = types, GAME_DATA_TYPE = {}}
    end
    package.preload["Script.Event.Event_DataChange"] = function()
        return {ON_PLAYER_DATA_CHANGE = 5000, ON_PLAYER_TASK_DATA_CHANGE = 5002, ON_PLAYER_TASK_EXAMPLE_DATA_CHANGE = 5003}
    end
    package.preload["Script.Config.Package.TaskSystem.Config_Task"] = function()
        return {tasks = list or {}, ui = {enabled = true, id = "1010"}}
    end
    package.preload["Script.Setting.Package_Meta_Index"] = function()
        return {Load = function()
            local list = {(require("Script.Package.TaskSystem.Package_Meta"))}
            if ctx.withExample then list[#list + 1] = require("Script.Package.TaskExample.Package_Meta") end
            return list, {}
        end}
    end
    require("Script.Event.EventType")
    bus = require("Script.Core.EventSystem.UGCEventSystem")
    core = require("Script.Core.PlayerDataCore.Global_PlayerDataCore"); assert(core.BeginPlay())
    api = require("Script.Package.TaskSystem.Registry_TaskSystem")
    define = require("Script.Package.TaskSystem.Data.Define_Task")
    data = require("Script.Package.TaskSystem.Data.PlayerData_Task")
    bus = require("Script.Core.EventSystem.UGCEventSystem")
end
local function init()
    assert(api.BeginPlay()); assert(core.InitAllData(7)); assert(api.SyncPlayer(ctx.pc))
end
local function complete()
    assert(api.AcceptTask(ctx.pc, 1))
    assert(api.ReportProgress(ctx.pc, "kill", "enemy", 3, "kill-001"))
    assert(api.ReportProgress(ctx.pc, "collect", "supply", 2, "collect-001"))
    assert(api.GetTaskState(ctx.pc, 1).state == "completed")
end
local function rewardProvider()
    return {name = "test-v1", idempotent = true,
        Validate = function(_, rewards)
            if ctx.invalidReward then return false, "capacity-full" end
            return rewards[1].type == "test"
        end,
        Query = function(_, id)
            if ctx.queryException then error("query error") end
            return copy(ctx.receipts[id] or {status = "not-found"})
        end,
        Grant = function(_, id, rewards)
            ctx.grants = ctx.grants + 1
            if ctx.grantException then error("grant error") end
            if ctx.reentrant then ctx.reentrantResult = api.ClaimReward(ctx.pc, 1) end
            if not ctx.receipts[id] then
                ctx.effects = ctx.effects + rewards[1].amount
                ctx.receipts[id] = {status = ctx.pendingReward and "pending" or "granted"}
            end
            if ctx.loseReply then return {status = "unknown"} end
            return copy(ctx.receipts[id])
        end}
end
local function withReward()
    fresh({task(1, {{type = "test", amount = 5}})})
    init(); assert(api.RegisterRewardProvider(rewardProvider())); complete()
end
local passed, failed = 0, 0
local function check(name, fn)
    local ok, reason = pcall(fn)
    if ok then passed = passed + 1; print("PASS " .. name)
    else failed = failed + 1; print("FAIL " .. name .. ": " .. tostring(reason)) end
end

check("empty configuration initializes versioned data and requires no rewards", function()
    fresh(); init(); assert(#api.GetTaskList(ctx.pc) == 0)
    assert(ctx.pc.task_data.version == 1 and api.GetStatus(ctx.pc).phase == "ready")
end)
check("invalid and cyclic configuration is rejected without partial replacement", function()
    fresh(); assert(define.Configure({task()}))
    assert(not define.Configure({task(), task()}))
    assert(#define.List() == 1)
    assert(not define.Configure({task(1, {}, {2}), task(2, {}, {1})}))
    assert(not define.Configure({task(1, {}, {9})}))
    local bad = task(); bad.objectives[1].count = 0; assert(not define.Configure({bad}))
    bad = task(); bad.rewards = {{type = "test", amount = 0/0}}; assert(not define.Configure({bad}))
    bad = task(); bad.callback = function() end; assert(not define.Configure({bad}))
end)
check("missing constants and unsupported archives are preserved", function()
    fresh(nil, {missingConstant = true}); assert(not core.InitAllData(7))
    fresh(); assert(api.BeginPlay()); ctx.pc.task_data = {version = 99, tasks = {}}
    assert(not api.SyncPlayer(ctx.pc)); assert(ctx.pc.task_data.version == 99)
end)
check("restored empty data is migrated and saved without new-player initialization", function()
    fresh(); assert(api.BeginPlay()); ctx.pc.task_data = {}
    assert(api.SyncPlayer(ctx.pc)); assert(ctx.archive.task_data.version == 1)
end)
check("accept and progress are server only; configuration queries are isolated", function()
    fresh({task()}); init(); ctx.server = false
    assert(not api.AcceptTask(ctx.pc, 1)); assert(not api.ReportProgress(ctx.pc, "kill", "enemy", 1, "x"))
    local list = api.GetTaskList(ctx.pc); list[1].config.name = "changed"
    assert(api.GetTaskConfig(1).name == "Test")
end)
check("prerequisites require claimed predecessor and acceptance is idempotent", function()
    fresh({task(), task(2, {}, {1})}); init()
    assert(api.GetTaskState(ctx.pc, 2).state == "locked" and not api.AcceptTask(ctx.pc, 2))
    complete(); assert(not api.AcceptTask(ctx.pc, 2)); assert(api.ClaimReward(ctx.pc, 1))
    assert(api.AcceptTask(ctx.pc, 2)); local saves = ctx.saves
    assert(api.AcceptTask(ctx.pc, 2) and ctx.saves == saves)
end)
check("only accepted tasks progress, targets filter, events deduplicate and counts clamp", function()
    fresh({task()}); init()
    assert(api.ReportProgress(ctx.pc, "kill", "enemy", 1, "early")); assert(api.AcceptTask(ctx.pc, 1))
    assert(api.GetTaskState(ctx.pc, 1).progress.kills == 0)
    assert(api.ReportProgress(ctx.pc, "kill", "other", 2, "other"))
    assert(api.ReportProgress(ctx.pc, "kill", "enemy", 2, "same"))
    assert(api.ReportProgress(ctx.pc, "kill", "enemy", 2, "same"))
    assert(api.GetTaskState(ctx.pc, 1).progress.kills == 2)
    assert(api.ReportProgress(ctx.pc, "kill", "enemy", 999, "last"))
    assert(api.GetTaskState(ctx.pc, 1).progress.kills == 3 and api.GetTaskState(ctx.pc, 1).state == "active")
    assert(not api.ReportProgress(ctx.pc, "kill", "enemy", -1, "bad"))
    assert(not api.ReportProgress(ctx.pc, "kill", "enemy", 1, nil))
end)
check("one fact can advance multiple accepted tasks", function()
    fresh({task(), task(2)}); init(); assert(api.AcceptTask(ctx.pc, 1) and api.AcceptTask(ctx.pc, 2))
    assert(api.ReportProgress(ctx.pc, "kill", "enemy", 1, "shared"))
    assert(api.GetTaskState(ctx.pc, 1).progress.kills == 1 and api.GetTaskState(ctx.pc, 2).progress.kills == 1)
end)
check("empty rewards complete and claim without a provider", function()
    fresh({task()}); init(); complete(); assert(api.ClaimReward(ctx.pc, 1))
    assert(api.GetTaskState(ctx.pc, 1).state == "claimed")
    local n = ctx.saves; assert(api.ClaimReward(ctx.pc, 1) and ctx.saves == n)
end)
check("missing provider or failed validation never consumes claim", function()
    fresh({task(1, {{type = "test", amount = 5}})}); init(); complete()
    assert(not api.ClaimReward(ctx.pc, 1) and api.GetTaskState(ctx.pc, 1).state == "completed")
    assert(not api.RegisterRewardProvider({name = "bad"}))
    assert(api.RegisterRewardProvider(rewardProvider())); ctx.invalidReward = true
    local ok, reason = api.ClaimReward(ctx.pc, 1)
    assert(not ok and reason == "capacity-full" and ctx.effects == 0)
end)
check("reward snapshot is persisted before grant and repeated claims do not pay twice", function()
    withReward(); assert(api.ClaimReward(ctx.pc, 1))
    assert(ctx.effects == 5 and ctx.grants == 1 and ctx.archive.task_data.tasks['1'].state == "claimed")
    assert(api.ClaimReward(ctx.pc, 1) and ctx.effects == 5 and ctx.grants == 1)
end)
check("failed acceptance save is explicit and recovery does not reset progress", function()
    fresh({task()}); init(); ctx.failSave = true
    local ok, reason = api.AcceptTask(ctx.pc, 1); assert(not ok and reason == "save-failed")
    assert(api.GetStatus(ctx.pc).pendingSave)
    assert(not api.ReportProgress(ctx.pc, "kill", "enemy", 1, "one"))
    ctx.failSave = false; assert(api.SyncPlayer(ctx.pc))
    assert(api.ReportProgress(ctx.pc, "kill", "enemy", 1, "one"))
    assert(ctx.archive.task_data.tasks['1'].progress.kills == 1)
end)
check("failed pre-grant save never calls external rewards", function()
    withReward(); ctx.failSave = true
    assert(not api.ClaimReward(ctx.pc, 1) and ctx.grants == 0)
    ctx.failSave = false; assert(api.ClaimReward(ctx.pc, 1)); assert(ctx.effects == 5)
end)
check("successful payout with failed final save is persisted on retry without regrant", function()
    withReward(); ctx.failSaveAt = ctx.saves + 2
    assert(not api.ClaimReward(ctx.pc, 1)); assert(ctx.effects == 5 and api.GetStatus(ctx.pc).pendingSave)
    ctx.failSaveAt = nil; assert(api.ClaimReward(ctx.pc, 1))
    assert(ctx.effects == 5 and ctx.grants == 1 and ctx.archive.task_data.tasks['1'].state == "claimed")
end)
check("lost reply resolves by receipt query, never blind regrant", function()
    withReward(); ctx.loseReply = true
    assert(not api.ClaimReward(ctx.pc, 1)); assert(ctx.effects == 5)
    assert(api.ClaimReward(ctx.pc, 1)); assert(ctx.effects == 5 and ctx.grants == 1)
end)
check("unknown query and partially pending payout remain pending", function()
    withReward(); ctx.queryException = true
    assert(not api.ClaimReward(ctx.pc, 1) and ctx.grants == 0)
    ctx.queryException = false; ctx.pendingReward = true
    assert(not api.ClaimReward(ctx.pc, 1) and ctx.effects == 5)
    assert(not api.ClaimReward(ctx.pc, 1) and ctx.grants == 1)
end)
check("provider exception does not turn claim into success", function()
    withReward(); ctx.grantException = true
    assert(not api.ClaimReward(ctx.pc, 1))
    assert(api.GetTaskState(ctx.pc, 1).state == "claim_pending")
end)
check("reentrant reward callback cannot run a second claim", function()
    withReward(); ctx.reentrant = true; assert(api.ClaimReward(ctx.pc, 1))
    assert(ctx.reentrantResult == false and ctx.effects == 5)
end)
check("recovery checks existing receipts without issuing new grants", function()
    withReward(); ctx.loseReply = true; assert(not api.ClaimReward(ctx.pc, 1))
    ctx.pc.task_data = copy(ctx.archive.task_data)
    assert(api.SyncPlayer(ctx.pc)); assert(ctx.pc.task_data.tasks['1'].state == "claimed" and ctx.grants == 1)
end)
check("pending snapshot survives changed task definition", function()
    withReward(); ctx.queryException = true; assert(not api.ClaimReward(ctx.pc, 1))
    assert(define.Configure({task(1, {{type = "test", amount = 999}})}))
    ctx.queryException = false; assert(api.ClaimReward(ctx.pc, 1)); assert(ctx.effects == 5)
end)
check("restore round trip includes progress and event deduplication", function()
    fresh({task()}); init(); assert(api.AcceptTask(ctx.pc, 1))
    assert(api.ReportProgress(ctx.pc, "kill", "enemy", 1, "roundtrip"))
    ctx.pc.task_data = nil; assert(core.RestoreArchiveData(ctx.pc))
    assert(api.SyncPlayer(ctx.pc)); assert(api.ReportProgress(ctx.pc, "kill", "enemy", 1, "roundtrip"))
    assert(api.GetTaskState(ctx.pc, 1).progress.kills == 1)
end)
check("client lifecycle opens entry, rollback and repeated BeginPlay do not duplicate listeners", function()
    fresh({task()}); ctx.server = false
    local original, calls = bus.AddListener, 0
    bus.AddListener = function(...) calls = calls + 1; if calls == 1 then return false end; return original(...) end
    assert(not api.BeginPlay()); assert(api.BeginPlay()); assert(api.BeginPlay())
    bus:SendEvent(EventType.Client_OnPlayerControllerInit, ctx.pc); assert(ctx.uiOpens == 1)
    assert(api.EndPlay()); bus:SendEvent(EventType.Client_OnPlayerControllerInit, ctx.pc); assert(ctx.uiOpens == 1)
end)
check("controller adapter preserves existing RPCs and never exposes progress", function()
    fresh({task()}); init()
    local adapter = require("Script.Package.TaskSystem.Controller_TaskSystem")
    local controller = {GetAvailableServerRPCs = function() return "Existing_RPC" end}
    assert(adapter.Attach(controller) and adapter.Attach(controller))
    local list = {controller:GetAvailableServerRPCs()}; assert(#list == 2 and list[1] == "Existing_RPC")
    assert(list[2] == "Server_TaskAction" and controller.Server_TaskProgress == nil)
    assert(not api.Request(ctx.pc, "progress", 1))
end)

local function makeUI()
    local Widget = {}
    function Widget:SetText(v) self.text = v end
    function Widget:SetVisibility(v) self.visibility = v end
    function Widget:SetIsEnabled(v) self.enabled = v end
    function Widget:AddChild(v) self.children = self.children or {}; self.children[#self.children + 1] = v end
    function Widget:ClearChildren() self.children = {} end
    function Widget:RemoveFromParent() end
    local function widget()
        local value = setmetatable({}, {__index = Widget})
        value.OnClicked = {Add = function(_, cb) value.click = cb end, Remove = function() value.click = nil end}
        return value
    end
    ESlateVisibility = {Visible = 1, Collapsed = 2, SelfHitTestInvisible = 3}
    UGCMapInfoLib = {GetRootLongPackagePath = function() return "/Probe/" end}
    UE = {LoadClass = function(p) return p end}
    UGCWidgetManagerSystem = {CreateWidget = function()
        local value = widget()
        function value:SetTask(name, status, selected, callback) self.name, self.status, self.selected, self.select = name, status, selected, callback end
        function value:SetReward(reward) self.reward = reward end
        return value
    end}
    UnrealNetwork = {CallUnrealRPC = function(_, _, name, action, id)
        ctx.lastRequest = {name, action, id}
    end}
    local UI = require("Script.UI.TaskSystem.UMG_TaskPanel")
    local panel = setmetatable(widget(), {__index = function(_, key) return UI[key] or Widget[key] end})
    for _, name in ipairs({'EntryButton','EntryText','CloseButton','ActionButton','Window','FeedbackText','TaskList',
        'EmptyText','Detail','TitleText','StateText','DescriptionText','ObjectivesText','RewardsBox','NoRewardText','ActionText'}) do panel[name] = widget() end
    panel:Construct(); panel:OnOpen()
    return panel
end
check("empty UI opens safely and preserves a compact entry", function()
    fresh(); init(); ctx.server = false; local ui = makeUI()
    assert(not ui._open and ui.Window.visibility == 2 and ui.EntryText.text == "任务")
    ui.EntryButton.click(); assert(ui.EmptyText.visibility == 1 and ui.Detail.visibility == 2)
    ui.CloseButton.click(); assert(ui.Window.visibility == 2)
end)
check("UI submits only task ID and waits for authoritative result", function()
    fresh({task()}); init(); ctx.server = false; local ui = makeUI(); ui.EntryButton.click()
    assert(ui.ActionText.text == "接取任务" and ui.ActionButton.enabled)
    local row = ui._rows['1']; ui.ActionButton.click()
    assert(ctx.lastRequest[1] == "Server_TaskAction" and ctx.lastRequest[2] == "accept" and ctx.lastRequest[3] == '1')
    assert(ui._pending and not ui.ActionButton.enabled)
    ctx.server = true; assert(api.AcceptTask(ctx.pc, 1)); ctx.server = false
    assert(api.AcceptResult(ctx.pc, true, "ok")); assert(not ui._pending and ui.StateText.text == "进行中")
    assert(ui._rows['1'] == row) -- 状态更新不重建列表或引起首次点击布局跳动。
end)
check("UI timeout unlocks action and destruction releases listeners", function()
    fresh({task()}); init(); ctx.server = false; local ui = makeUI(); ui.EntryButton.click(); ui.ActionButton.click()
    ui:Tick(nil, 13); assert(not ui._pending and ui.ActionButton.enabled)
    assert(ui.FeedbackText.text == "请求超时，请重试")
    ui:Destruct(); assert(ui.EntryButton.click == nil)
    assert(api.AcceptResult(ctx.pc, false, "save-failed"))
end)
check("standalone example receipts and balances save together without native rewards", function()
    fresh({task(1, {{type = "example", id = "gold", amount = 500}})}, {withExample = true})
    init(); assert(require("Script.Package.TaskExample.Registry_TaskExample").BeginPlay()); complete()
    assert(api.ClaimReward(ctx.pc, 1)); assert(ctx.archive.task_example_data.balance.gold == 500)
    assert(api.ClaimReward(ctx.pc, 1) and ctx.pc.task_example_data.balance.gold == 500)
end)
check("example payout save failure restores simulated balance and can recover", function()
    fresh({task(1, {{type = "example", id = "gold", amount = 500}})}, {withExample = true})
    init(); assert(require("Script.Package.TaskExample.Registry_TaskExample").BeginPlay()); complete()
    ctx.failSaveAt = ctx.saves + 2
    assert(not api.ClaimReward(ctx.pc, 1)); assert(ctx.pc.task_example_data.balance.gold == nil)
    ctx.failSaveAt = nil; assert(api.ClaimReward(ctx.pc, 1)); assert(ctx.pc.task_example_data.balance.gold == 500)
end)
print(string.format("TaskSystem: %d passed, %d failed", passed, failed))
os.exit(failed == 0 and 0 or 1)
