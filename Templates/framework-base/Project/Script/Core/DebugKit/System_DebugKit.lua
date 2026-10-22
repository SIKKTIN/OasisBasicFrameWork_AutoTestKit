local System_DebugKit = {}

local Const_DebugKit = require("Script.Const.Core.Const_DebugKit")

local records = {}
local predictionConfig
local pendingPlayerNodes = {}

local function IsServer()
    return UGCGameSystem.IsServer()
end

local function ResolveLine(idOrName)
    local line = Const_DebugKit.Resolve(idOrName)
    if not line then
        ugcprint("[DebugKit] 未配置的检测线: " .. tostring(idOrName))
    end
    return line
end

local function NormalizePlayerKey(playerKey)
    if playerKey == nil then return nil end
    local value = tostring(playerKey)
    if value == "" or value == "0" or value == "-1" then return nil end
    return value
end

local function TryResolveOwnerWith(apiName, owner)
    local api = UGCGameSystem[apiName]
    if type(api) ~= "function" or owner == nil then return nil end
    local ok, key = pcall(api, owner)
    if not ok then return nil end
    return NormalizePlayerKey(key)
end

local function ResolvePlayerKeyFromOwner(owner, allowClientAuto)
    if type(owner) == "string" or type(owner) == "number" then
        return NormalizePlayerKey(owner)
    end

    local value = TryResolveOwnerWith("GetPlayerKeyByPlayerController", owner)
        or TryResolveOwnerWith("GetPlayerKeyByPlayerPawn", owner)
    if value then return value end

    if owner == nil and allowClientAuto and not IsServer()
        and type(UGCGameSystem.GetLocalPlayerController) == "function" then
        local pc = UGCGameSystem.GetLocalPlayerController()
        return TryResolveOwnerWith("GetPlayerKeyByPlayerController", pc)
            or NormalizePlayerKey(pc and pc.PlayerKey)
    end
    return nil
end

local function PlayerLabel(recordOrKey)
    local key = recordOrKey
    if type(recordOrKey) == "table" then
        key = recordOrKey.playerKey
    end
    return key and string.format(" [playerKey=%s]", tostring(key)) or ""
end

local function IsSamePendingNode(pending, lineId, owner, nodeName, target)
    return pending.lineId == lineId
        and pending.owner == owner
        and pending.nodeName == nodeName
        and pending.target == target
end

local function AddPendingPlayerNode(line, owner, nodeName, target)
    for _, pending in ipairs(pendingPlayerNodes) do
        if IsSamePendingNode(pending, line.id, owner, nodeName, target) then
            return
        end
    end

    pendingPlayerNodes[#pendingPlayerNodes + 1] = {
        lineId = line.id,
        owner = owner,
        nodeName = nodeName,
        target = target,
    }
    ugcprint(string.format(
        "[DebugKit] %s playerKey 尚未就绪，暂存节点: %s",
        type(owner) == "userdata" and "Owner" or "Player",
        tostring(nodeName)))
end

local function PendingMatches(pending, line, owner, playerKey)
    if pending.lineId ~= line.id then return false end
    if pending.owner == owner then return true end
    return playerKey ~= nil
        and ResolvePlayerKeyFromOwner(pending.owner, false) == playerKey
end

local function AppendNode(record, nodeName, target)
    local elapsed = os.clock() - record.startClock
    local actualPort = IsServer() and "Server" or "Client"
    local targetNodes = IsServer() and record.serverNodes or record.clientNodes
    targetNodes[#targetNodes + 1] = {
        node = tostring(nodeName),
        elapsed = elapsed,
        target = target,
    }

    local targetLabel = target and string.format(" [%s]", target) or ""
    ugcprint(string.format("[%s]%s [%s] [+%.4fs] %s%s",
        record.name, PlayerLabel(record), actualPort, elapsed,
        tostring(nodeName), targetLabel))
end

local function FlushPendingPlayerNodes(line, owner, playerKey, record)
    local index = 1
    while index <= #pendingPlayerNodes do
        local pending = pendingPlayerNodes[index]
        if PendingMatches(pending, line, owner, playerKey) then
            AppendNode(record, pending.nodeName, pending.target)
            table.remove(pendingPlayerNodes, index)
        else
            index = index + 1
        end
    end
end

local function ClearPendingPlayerNodes(lineId, playerKey)
    local index = 1
    while index <= #pendingPlayerNodes do
        local pending = pendingPlayerNodes[index]
        local matches = pending.lineId == lineId
        if matches and playerKey ~= nil then
            matches = ResolvePlayerKeyFromOwner(pending.owner, false) == playerKey
        end
        if matches then
            table.remove(pendingPlayerNodes, index)
        else
            index = index + 1
        end
    end
end

local function ValidatePlayerKey(line, playerKey, allowClientAuto)
    if line.type == Const_DebugKit.LineType.GAME then
        if playerKey ~= nil then
            ugcprint(string.format(
                "[DebugKit] 游戏检测线 '%s' 不接受 playerKey", line.name))
            return nil, false
        end
        return nil, true
    end

    local normalized = ResolvePlayerKeyFromOwner(playerKey, allowClientAuto)
    if not normalized then
        ugcprint(string.format(
            "[DebugKit] 玩家检测线 '%s' 必须指定 playerKey", line.name))
        return nil, false
    end
    return normalized, true
end

local function GetLineState(line)
    local state = records[line.id]
    if not state then
        state = {
            config = line,
            game = nil,
            players = {},
        }
        records[line.id] = state
    end
    return state
end

local function NewRecord(line, playerKey)
    return {
        lineId = line.id,
        name = line.name,
        lineType = line.type,
        playerKey = playerKey,
        started = true,
        startClock = os.clock(),
        clientNodes = {},
        serverNodes = {},
        errors = {},
    }
end

local function WarnNotStarted(line, playerKey)
    ugcprint(string.format(
        "[DebugKit] 警告: 检测线 '%s'%s 未启动，请先调用 Start()",
        line.name, PlayerLabel(playerKey)))
end

local function GetStartedRecord(line, playerKey)
    local state = records[line.id]
    local record
    if state then
        record = line.type == Const_DebugKit.LineType.GAME
            and state.game or state.players[playerKey]
    end
    if not record or not record.started then
        WarnNotStarted(line, playerKey)
        return nil
    end
    return record
end

local function CollectRecords(line, playerKeyOrOwner)
    local state = records[line.id]
    if line.type == Const_DebugKit.LineType.GAME then
        if type(playerKeyOrOwner) == "string" or type(playerKeyOrOwner) == "number" then
            ugcprint(string.format(
                "[DebugKit] 游戏检测线 '%s' 不接受 playerKey", line.name))
            return nil
        end
        if not state or not state.game or not state.game.started then
            WarnNotStarted(line)
            return nil
        end
        return { state.game }
    end

    local resolvedKey = ResolvePlayerKeyFromOwner(playerKeyOrOwner, true)
    if not resolvedKey then
        ugcprint(string.format(
            "[DebugKit] 无法确定玩家检测线 '%s' 的当前玩家", line.name))
        return nil
    end
    if not state or not state.players[resolvedKey]
        or not state.players[resolvedKey].started then
        WarnNotStarted(line, resolvedKey)
        return nil
    end
    return { state.players[resolvedKey] }
end

local function GetPredictionConfig()
    if predictionConfig ~= nil then return predictionConfig end
    local ok, loaded = pcall(require, "Script.Setting.DebugKitPrediction")
    if not ok or type(loaded) ~= "table" then
        predictionConfig = false
        ugcprint("[DebugKit] 预测配置加载失败: " .. tostring(loaded))
        return predictionConfig
    end

    predictionConfig = {}
    for key, prediction in pairs(loaded) do
        local line = Const_DebugKit.Resolve(prediction.id or key or prediction.name)
        if line then predictionConfig[line.id] = prediction end
    end
    return predictionConfig
end

local function StartInternal(idOrName, playerKey, clearPending)
    local line = ResolveLine(idOrName)
    if not line then return false end

    local resolvedKey, valid = ValidatePlayerKey(line, playerKey, true)
    if not valid then return false end

    if clearPending and line.type == Const_DebugKit.LineType.PLAYER then
        ClearPendingPlayerNodes(line.id, resolvedKey)
    end

    local state = GetLineState(line)
    local previous = line.type == Const_DebugKit.LineType.GAME
        and state.game or state.players[resolvedKey]
    local record = NewRecord(line, resolvedKey)
    if line.type == Const_DebugKit.LineType.GAME then
        state.game = record
    else
        state.players[resolvedKey] = record
    end

    local action = previous and "已重启并清空" or "已启动"
    ugcprint(string.format("[DebugKit] 检测线%s: %s%s",
        action, line.name, PlayerLabel(resolvedKey)))
    return true
end

function System_DebugKit.Start(idOrName, playerKey)
    return StartInternal(idOrName, playerKey, true)
end

function System_DebugKit.EnsureStarted(idOrName, playerKey)
    local line = ResolveLine(idOrName)
    if not line then return false end
    local resolvedKey, valid = ValidatePlayerKey(line, playerKey, true)
    if not valid then return false end

    local state = records[line.id]
    local record = state and (line.type == Const_DebugKit.LineType.GAME
        and state.game or state.players[resolvedKey]) or nil
    if record and record.started then return true end
    return StartInternal(line.id, resolvedKey, false)
end

function System_DebugKit.Log(idOrName, nodeName, target, playerKey, owner)
    local line = ResolveLine(idOrName)
    if not line then return false end

    local resolvedKey
    if line.type == Const_DebugKit.LineType.GAME then
        local _, valid = ValidatePlayerKey(line, playerKey, true)
        if not valid then return false end
    else
        resolvedKey = ResolvePlayerKeyFromOwner(playerKey, true)
            or ResolvePlayerKeyFromOwner(owner, false)
        if not resolvedKey then
            if owner ~= nil then
                AddPendingPlayerNode(line, owner, nodeName, target)
            else
                ugcprint(string.format(
                    "[DebugKit] 玩家检测线 '%s' 必须指定 playerKey 或 owner",
                    line.name))
            end
            return false
        end

        if owner ~= nil then
            System_DebugKit.EnsureStarted(line.id, resolvedKey)
        else
            local _, valid = ValidatePlayerKey(line, resolvedKey, false)
            if not valid then return false end
        end
    end

    local record = GetStartedRecord(line, resolvedKey)
    if not record then return false end
    if not target then
        ugcprint(string.format(
            "[DebugKit] 警告: 节点 '%s' 未指定 Target 参数", tostring(nodeName)))
    end

    if line.type == Const_DebugKit.LineType.PLAYER and owner ~= nil then
        FlushPendingPlayerNodes(line, owner, resolvedKey, record)
    end
    AppendNode(record, nodeName, target)
    return true
end

function System_DebugKit.LogError(idOrName, errorMessage, target, playerKey)
    local line = ResolveLine(idOrName)
    if not line then return false end
    local resolvedKey, valid = ValidatePlayerKey(line, playerKey, true)
    if not valid then return false end

    local record = GetStartedRecord(line, resolvedKey)
    if not record then return false end
    local elapsed = os.clock() - record.startClock
    local actualPort = IsServer() and "Server" or "Client"
    local errorInfo = {
        message = tostring(errorMessage),
        elapsed = elapsed,
        port = actualPort,
        target = target,
    }
    record.errors[#record.errors + 1] = errorInfo

    local targetLabel = target and string.format(" [%s]", target) or ""
    ugcprint(string.format("[DebugKit][Error] [%s]%s [%s] [+%.4fs]%s %s",
        line.name, PlayerLabel(record), actualPort, elapsed,
        targetLabel, errorInfo.message))
    return true
end

function System_DebugKit.PrintPrediction(idOrName, playerKey)
    local line = ResolveLine(idOrName)
    if not line then return false end
    local selected = CollectRecords(line, playerKey)
    if not selected then return false end

    local config = GetPredictionConfig()
    local prediction = config and config[line.id] or nil
    if not prediction then
        for _, record in ipairs(selected) do
            ugcprint(string.format("[DebugKit][Prediction] %s%s: 未找到预测配置",
                line.name, PlayerLabel(record)))
        end
        return false
    end

    local expected = IsServer() and (prediction.server or 0) or (prediction.client or 0)
    for _, record in ipairs(selected) do
        local actual = IsServer() and #record.serverNodes or #record.clientNodes
        local result
        if actual < expected then
            result = string.format("缺少 %d", expected - actual)
        elseif actual > expected then
            result = string.format("超出 %d", actual - expected)
        else
            result = "匹配"
        end
        local port = IsServer() and "Server" or "Client"
        ugcprint(string.format("[DebugKit][Prediction] %s%s",
            prediction.name or line.name, PlayerLabel(record)))
        ugcprint(string.format("  %s: 预测 %d，实际 %d，%s",
            port, expected, actual, result))
    end
    return true
end

function System_DebugKit.PrintRecord(idOrName, playerKey)
    local line = ResolveLine(idOrName)
    if not line then return false end
    local selected = CollectRecords(line, playerKey)
    if not selected then return false end

    for _, record in ipairs(selected) do
        local totalTime = os.clock() - record.startClock
        local clientCount = #record.clientNodes
        local serverCount = #record.serverNodes
        local totalCount = clientCount + serverCount

        ugcprint("")
        ugcprint("========================================")
        ugcprint(string.format("[DebugKit] %s%s (总耗时: %.3fs)",
            line.name, PlayerLabel(record), totalTime))
        ugcprint(string.format("  [Client] %d 个节点 / [Server] %d 个节点 (共 %d 个)",
            clientCount, serverCount, totalCount))
        ugcprint(string.format("  [Error] %d 条", #record.errors))
        ugcprint("========================================")

        local function printNodes(label, nodes)
            if #nodes == 0 then return end
            ugcprint("  [" .. label .. " 节点]")
            for index, node in ipairs(nodes) do
                local targetLabel = node.target and string.format(" [%s]", node.target) or ""
                ugcprint(string.format("    [%d] [+%.4fs] %s%s",
                    index, node.elapsed, node.node, targetLabel))
            end
        end
        printNodes("Client", record.clientNodes)
        printNodes("Server", record.serverNodes)
        ugcprint("")
    end
    return true
end

local function AllActiveEntries(playerKeyOrOwner)
    local entries = {}
    local resolvedKey = ResolvePlayerKeyFromOwner(playerKeyOrOwner, true)
    local hasPlayerRecords = false
    for _, line in ipairs(Const_DebugKit.GetAllLines()) do
        local state = records[line.id]
        if state then
            if state.game and state.game.started then
                entries[#entries + 1] = { line = line, record = state.game }
            end
            if next(state.players) ~= nil then hasPlayerRecords = true end
            local playerRecord = resolvedKey and state.players[resolvedKey] or nil
            if playerRecord and playerRecord.started then
                entries[#entries + 1] = { line = line, record = playerRecord }
            end
        end
    end
    if not resolvedKey and hasPlayerRecords then
        ugcprint("[DebugKit] 无法确定当前玩家，仅输出游戏检测线")
    end
    return entries
end

function System_DebugKit.Summary(idOrName, playerKey)
    if idOrName ~= nil then
        local line = ResolveLine(idOrName)
        if not line then return false end
        local selected = CollectRecords(line, playerKey)
        if not selected then return false end
        for _, record in ipairs(selected) do
            System_DebugKit.PrintRecord(line.id, record.playerKey)
            System_DebugKit.PrintPrediction(line.id, record.playerKey)
        end
        return true
    end

    local entries = AllActiveEntries(playerKey)
    if #entries == 0 then
        ugcprint("[DebugKit] 当前没有已启动的检测线")
        return false
    end
    for _, entry in ipairs(entries) do
        System_DebugKit.PrintRecord(entry.line.id, entry.record.playerKey)
        System_DebugKit.PrintPrediction(entry.line.id, entry.record.playerKey)
    end
    return true
end

function System_DebugKit.PrintAllErrors(idOrName, playerKey)
    local entries = {}
    if idOrName ~= nil then
        local line = ResolveLine(idOrName)
        if not line then return false end
        local selected = CollectRecords(line, playerKey)
        if not selected then return false end
        for _, record in ipairs(selected) do
            entries[#entries + 1] = { line = line, record = record }
        end
    else
        entries = AllActiveEntries(playerKey)
    end

    local total = 0
    for _, entry in ipairs(entries) do total = total + #entry.record.errors end
    ugcprint("")
    ugcprint("========================================")
    ugcprint(string.format("[DebugKit] 错误汇总（共 %d 条）", total))
    ugcprint("========================================")
    if total == 0 then
        ugcprint("  暂无错误")
    else
        for _, entry in ipairs(entries) do
            if #entry.record.errors > 0 then
                ugcprint(string.format("  [%s]%s %d 条错误",
                    entry.line.name, PlayerLabel(entry.record), #entry.record.errors))
                for index, errorInfo in ipairs(entry.record.errors) do
                    local targetLabel = errorInfo.target
                        and string.format(" [%s]", errorInfo.target) or ""
                    ugcprint(string.format("    [%d] [%s] [+%.4fs]%s %s",
                        index, errorInfo.port, errorInfo.elapsed,
                        targetLabel, errorInfo.message))
                end
            end
        end
    end
    ugcprint("========================================")
    ugcprint("")
    return true
end

function System_DebugKit.Clear(idOrName, playerKey)
    if idOrName == nil then
        ugcprint("[DebugKit] Clear 必须指定检测线")
        return false
    end

    local line = ResolveLine(idOrName)
    if not line then return false end
    local state = records[line.id]
    if line.type == Const_DebugKit.LineType.GAME then
        if type(playerKey) == "string" or type(playerKey) == "number" then
            ugcprint(string.format(
                "[DebugKit] 游戏检测线 '%s' 不接受 playerKey", line.name))
            return false
        end
        if not state or not state.game or not state.game.started then
            WarnNotStarted(line)
            return false
        end
        state.game = nil
        ugcprint("[DebugKit] 已清除检测线: " .. line.name)
        return true
    end

    local resolvedKey = ResolvePlayerKeyFromOwner(playerKey, true)
    if not resolvedKey then
        ugcprint(string.format(
            "[DebugKit] 清除玩家检测线 '%s' 必须指定 playerKey", line.name))
        return false
    end
    if not state or not state.players[resolvedKey]
        or not state.players[resolvedKey].started then
        WarnNotStarted(line, resolvedKey)
        return false
    end
    state.players[resolvedKey] = nil
    ClearPendingPlayerNodes(line.id, resolvedKey)
    ugcprint(string.format("[DebugKit] 已清除检测线: %s%s",
        line.name, PlayerLabel(resolvedKey)))
    return true
end

return System_DebugKit
