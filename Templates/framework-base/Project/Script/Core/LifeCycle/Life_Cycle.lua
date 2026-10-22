-- 通用生命周期。业务启动、地图、GM UI 与存档均由 Package/接入组件处理。
local EventType = require("Script.Event.EventType")
local Bus = require("Script.Core.EventSystem.UGCEventSystem")
local DebugKit = require("Script.Core.DebugKit.Global_DebugKit")
local Core = require("Script.Setting.Core_Registry")
local Packages = require("Script.Setting.Package_Registry")

LifeCycle = LifeCycle or {}
local LC = LifeCycle
local status, failure, gameState = "idle", nil, nil
local listenersReady, binding = false, false
local pendingPC, pendingPawn, players = {}, {}, {}
local endedPC = setmetatable({}, {__mode = "k"})
local clock = 0
-- 等待框架、有效玩家键、PC/Pawn 关联与数据加载完成，不以时间流逝代表成功。
LC.WAIT_TIMEOUT_SECONDS = 30

local function Log(message)
    (type(ugcprint) == "function" and ugcprint or print)("[LifeCycle] " .. message)
end
local function Server() return UGCGameSystem.IsServer() end
local function Valid(object)
    if object == nil then return false end
    if UGCObjectUtility and type(UGCObjectUtility.IsObjectValid) == "function" then
        local ok, valid = pcall(UGCObjectUtility.IsObjectValid, object)
        return ok and valid == true
    end
    return type(object) == "table" or type(object) == "userdata"
end
local function Key(pc)
    local ok, key = pcall(function()
        return UGCGameSystem.GetPlayerKeyByPlayerController(pc)
    end)
    if not ok or key == nil then
        ok, key = pcall(function() return pc.PlayerKey end)
    end
    if not ok or (type(key) ~= "number" and type(key) ~= "string")
        or (type(key) == "number" and (key ~= key or math.abs(key) == math.huge))
        or tostring(key):match("^%s*$") or tostring(key) == "0"
        or tostring(key) == "-1" then return nil end
    return key
end
local function LocalPC(pc)
    local ok, localPC = pcall(UGCGameSystem.GetLocalPlayerController)
    return ok and localPC == pc, ok and localPC ~= nil
end
local function Node(name, owner)
    -- 调试记录失败不改变生命周期结果。
    pcall(DebugKit.Log, DebugKit.ID.PLAYER_LIFECYCLE, name,
        DebugKit.Target.BOTH, nil, owner)
end
local function PhaseNode(name)
    pcall(DebugKit.Log, DebugKit.ID.LIFECYCLE, name, DebugKit.Target.BOTH)
end
local function Emit(event, ...)
    local ok = Bus:SendEvent(event, ...)
    if not ok then Log("事件监听执行失败: " .. tostring(event)) end
    return ok
end

function LC.GetStatus()
    local pcCount, pawnCount = 0, 0
    for _ in pairs(pendingPC) do pcCount = pcCount + 1 end
    for _ in pairs(pendingPawn) do pawnCount = pawnCount + 1 end
    return {phase = status, reason = failure, pendingControllers = pcCount,
        pendingPawns = pawnCount, listenersReady = listenersReady}
end

local function ProcessPC(pc)
    if not Valid(pc) or endedPC[pc] then pendingPC[pc] = nil; return false, "invalid-controller" end
    if status ~= "ready" then return false, "framework-not-ready" end
    if not Server() then
        local isLocal, known = LocalPC(pc)
        if not isLocal then
            if known then pendingPC[pc] = nil end
            return false, "not-local-controller"
        end
    end
    local key = Key(pc)
    if key == nil then return false, "player-key-unavailable" end
    local id = tostring(key)
    local player = players[id]
    if player and player.pc ~= pc then return false, "player-key-in-use" end
    if player then pendingPC[pc] = nil; return true end
    players[id] = {pc = pc, key = key, dataReady = false}
    pendingPC[pc] = nil
    Node("PlayerController 初始化开始", pc)
    if Server() then
        Emit(EventType.Server_OnPlayerControllerInit, key)
    else
        Emit(EventType.Client_OnPlayerControllerInit, pc)
    end
    Node("PlayerController 初始化完成", pc)
    return true
end

local function ProcessPawn(pawn)
    if not Valid(pawn) then pendingPawn[pawn] = nil; return false, "invalid-pawn" end
    if status ~= "ready" then return false, "framework-not-ready" end
    local ok, pc = pcall(UGCGameSystem.GetPlayerControllerByPlayerPawn, pawn)
    if not ok or not Valid(pc) then return false, "controller-unavailable" end
    if endedPC[pc] then pendingPawn[pawn] = nil; return false, "player-ended" end
    if not Server() then
        local isLocal, known = LocalPC(pc)
        if not isLocal then
            if known then pendingPawn[pawn] = nil end
            return false, "not-local-controller"
        end
    end
    local key = Key(pc)
    local player = key ~= nil and players[tostring(key)] or nil
    if not player or player.pc ~= pc then return false, "controller-not-ready" end
    -- 客户端的新 Pawn 可先 BeginPlay，PC.Pawn 的网络复制稍后才切换。
    local currentOk, current = pcall(UGCGameSystem.GetPlayerPawnByPlayerController, pc)
    if not currentOk or current == nil then return false, "pawn-association-unavailable" end
    if current ~= pawn then
        if not Server() and player.pawn ~= pawn then return false, "pawn-association-pending" end
        pendingPawn[pawn] = nil
        return false, "stale-pawn"
    end
    -- 只保留每个玩家当前已通知的 Pawn，直到重生或退出。
    -- 弱键会随 Lua userdata 包装被 GC，底层 Actor 仍存活时也会丢失去重标记。
    if player.pawn == pawn then pendingPawn[pawn] = nil; return true end
    if Server() and not player.dataReady then return false, "player-data-not-ready" end
    player.pawn, pendingPawn[pawn] = pawn, nil
    if Server() then
        Node("PawnServer 初始化开始", pawn)
        Emit(EventType.Server_OnPlayerPawnInit, key)
        Node("PawnServer 初始化完成", pawn)
    else
        Node("PawnClient 初始化开始", pawn)
        Emit(EventType.Client_OnPlayerPawnInit, pawn)
        Node("PawnClient 初始化完成", pawn)
    end
    return true
end

local function Drain(queue, process)
    local snapshot = {}
    for object in pairs(queue) do snapshot[#snapshot + 1] = object end
    for _, object in ipairs(snapshot) do
        local entry = queue[object]
        if entry then
            local done, reason = process(object)
            if not done and queue[object] and clock - entry.created >= LC.WAIT_TIMEOUT_SECONDS then
                queue[object] = nil
                Log("等待超时: " .. tostring(reason))
            end
        end
    end
end
local function Flush()
    Drain(pendingPC, ProcessPC)
    Drain(pendingPawn, ProcessPawn)
end

function LC.BeginPlay()
    if listenersReady then return true end
    if binding then return false, "binding" end
    binding = true
    pcall(DebugKit.Start, DebugKit.ID.LIFECYCLE)
    PhaseNode("生命周期监听注册开始")
    local subscriptions = {
        {EventType.Lifecycle_GameState_Init, LC.OnGameStateInit},
        {EventType.Lifecycle_PC_Init, LC.OnPCInit},
        {EventType.Lifecycle_Pawn_Init, LC.OnPawnInit},
        {EventType.Lifecycle_PC_End, LC.OnPCEnd},
    }
    local added = {}
    for _, pair in ipairs(subscriptions) do
        local ok, result = pcall(Bus.AddListener, Bus, pair[1], pair[2])
        if not ok or result ~= true then
            for _, previous in ipairs(added) do Bus:RemoveListener(previous[1], previous[2]) end
            binding = false
            PhaseNode("生命周期监听注册失败")
            return false, "listener-registration-failed"
        end
        added[#added + 1] = pair
    end
    listenersReady, binding = true, false
    PhaseNode("生命周期监听注册完成")
    return true
end

function LC.OnGameStateInit(state)
    if not Valid(state) then return false, "invalid-game-state" end
    if status == "ready" then
        if state == gameState then return true end
        return false, "different-game-state"
    end
    if status == "initializing" then return false, "initializing" end
    if gameState and gameState ~= state then return false, "different-game-state" end
    local bound, reason = LC.BeginPlay()
    if not bound then return false, reason end
    gameState, status, failure = state, "initializing", nil
    PhaseNode("GameState 初始化开始")
    for _, stage in ipairs({{Core, "core-initialization-failed"},
        {Packages, "package-initialization-failed"}}) do
        local ok, result, detail = pcall(stage[1].BeginPlay)
        if not ok or result ~= true then
            status, failure = "failed", stage[2]
            PhaseNode("GameState 初始化失败")
            Log(failure .. " | " .. tostring(ok and detail or result))
            return false, failure
        end
    end
    status = "ready"
    PhaseNode("GameState 初始化完成")
    -- 通知按端发送；监听的业务失败单独记录，不把框架阶段回退并重复执行所有监听。
    Emit(EventType.Lifecycle_FrameworkReady, state)
    if Server() then Emit(EventType.Server_OnGameInit) end
    Flush()
    return true
end

function LC.OnPCInit(pc)
    if not Valid(pc) or endedPC[pc] then return false, "invalid-controller" end
    if not pendingPC[pc] then pendingPC[pc] = {created = clock} end
    return ProcessPC(pc)
end
function LC.OnPawnInit(pawn)
    if not Valid(pawn) then return false, "invalid-pawn" end
    if not pendingPawn[pawn] then pendingPawn[pawn] = {created = clock} end
    return ProcessPawn(pawn)
end

--- 只读玩家快照，用于较晚开始的组件补接已发送的控制器事件。
function LC.GetPlayerStatus(pc)
    local key = Valid(pc) and Key(pc) or nil
    local player = key ~= nil and players[tostring(key)] or nil
    local ready = status == "ready" and not endedPC[pc] and player ~= nil and player.pc == pc
    return {controllerReady = ready == true, dataReady = ready and player.dataReady or false,
        playerKey = key, ended = endedPC[pc] == true, frameworkPhase = status}
end

--- 仅由数据加载方在确实完成初始化及首次保存，或恢复存档后调用。
function LC.NotifyPlayerDataLoaded(pc)
    if not Server() then return false, "server-only" end
    if status ~= "ready" or not Valid(pc) or endedPC[pc] then return false, "controller-not-ready" end
    local key = Key(pc)
    local player = key ~= nil and players[tostring(key)] or nil
    if not player or player.pc ~= pc then return false, "controller-not-ready" end
    if player.dataReady then return true end
    player.dataReady = true
    Emit(EventType.Server_OnPlayerDataLoaded, player.key)
    Drain(pendingPawn, ProcessPawn)
    return true
end

function LC.OnPCEnd(pc)
    if pc == nil then return false, "invalid-controller" end
    if endedPC[pc] then return true end
    endedPC[pc], pendingPC[pc] = true, nil
    for pawn in pairs(pendingPawn) do
        local ok, owner = pcall(UGCGameSystem.GetPlayerControllerByPlayerPawn, pawn)
        if not Valid(pawn) or (ok and owner == pc) then pendingPawn[pawn] = nil end
    end
    for id, player in pairs(players) do
        if player.pc == pc then
            players[id] = nil
            if Server() then Emit(EventType.Server_OnPlayerEnd, player.key) end
            break
        end
    end
    return true
end

function LC.Tick(deltaTime)
    if type(deltaTime) ~= "number" or deltaTime < 0 or deltaTime ~= deltaTime
        or deltaTime == math.huge then return false, "invalid-delta-time" end
    clock = clock + deltaTime
    Flush()
    if status == "ready" and Valid(gameState) then
        Core.Tick(deltaTime)
        Packages.GameStateTick(gameState, deltaTime)
    end
    return true
end

-- 兼容旧入口；接入方逐步改为统一的 OnPCInit / OnPawnInit。
LC.PC_Init_Handle = LC.OnPCInit
LC.Pawn_Client_Init_Handle = LC.OnPawnInit
LC.Pawn_Server_Init_Handle = LC.OnPawnInit
return LC
