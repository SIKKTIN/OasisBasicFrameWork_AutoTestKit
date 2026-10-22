-- ============================================================
-- System_GameDataCore
-- Core 层 gameData 注册表 + 统一 Format / Init / 复制属性 入口
-- ============================================================
--
-- 与 System_PlayerDataCore 完全对称的设计，区别仅宿主：
--   System_PlayerDataCore  → 宿主是 PlayerController (pc)
--   System_GameDataCore    → 宿主是 GameState (gameState)
--
-- 流程：
--   1. BeginPlay 扫描 Package_Meta_Index，提取所有 meta.gameData 注册项
--   2. GenKit 将 gameData 的 dataKey 生成到 Const_Data.GAME_DATA_TYPE
--   3. UGCGameState.GetReplicatedProperties() 在 Core 初始化前读取 Const_Data 自动注册
--   4. 玩家进入/读档时，可调用 InitAllData(gameState) 让每个包各自初始化自己那一段
--   5. 调试打印时，FormatAllData(gameState) / FormatByKey / FormatPackage
--
-- 与 PlayerData 的关键区别：
--   - GameState 生命周期早于 PC，所有玩家共享一份数据
--   - GameState 字段命名直接作为 BP UPROPERTY/Replicated 字段名（不像 PC 字段那样必须
--     与 Package Meta 的 dataKey 配对）
--   - Init 触发时机是 Lifecycle_GameState_Init，而非玩家加入事件
-- ============================================================
local System_GameDataCore = {}

local Package_Meta_Index = require("Script.Setting.Package_Meta_Index")
local Event_DataChange = require("Script.Event.Event_DataChange")


-- { [dataKey] = dataDef }        以 gameState 字段名作为 key（与 BP 对齐）
-- { [packageName] = dataKey }    反向索引：按包名查 dataKey
local _registry  = {}
local _pkgToKey = {}
local _keyToPkg = {}
local _initialized = false
local _beginPlaySucceeded = false

local function DispatchChange(gameState, dataKey)
    UGCEventSystem:SendEvent(
        Event_DataChange.ON_GAME_DATA_CHANGE,
        gameState,
        dataKey
    )

    local fieldName = tostring(dataKey):gsub("[^%w]+", "_"):upper()
    local eventType = Event_DataChange["ON_GAME_" .. fieldName .. "_CHANGE"]
    if eventType then
        UGCEventSystem:SendEvent(eventType, gameState)
    else
        ugcprint("[GameDataCore] 未找到数据变更事件: " .. tostring(dataKey))
    end
end

-- ============================================================
-- GameState 数据读写工具
-- ============================================================

local function GetDataPackage(gameState, dataKey)
    if not gameState then
        ugcprint("[GameDataCore] GameState 不存在")
        return nil
    end
    if not dataKey then
        ugcprint("[GameDataCore] dataKey 为空")
        return nil
    end
    return gameState[dataKey]
end

local function EnsureDataPackage(gameState, dataKey)
    if not gameState then
        ugcprint("[GameDataCore] GameState 不存在")
        return nil
    end
    if not dataKey then
        ugcprint("[GameDataCore] dataKey 为空")
        return nil
    end
    gameState[dataKey] = gameState[dataKey] or {}
    return gameState[dataKey]
end

local function WriteOne(gameState, dataKey, key, value)
    local data = EnsureDataPackage(gameState, dataKey)
    if not data then return false end

    local oldValue = data[key]
    if type(value) ~= "table" and oldValue == value then
        return false
    end

    data[key] = value
    return true
end

--- 客户端&服务端读取 GameState 数据
---@param gameState userdata GameState
---@param dataKey string 数据包字段名
---@param key string|number 数据键
---@return any
function System_GameDataCore.Query(gameState, dataKey, key)
    local data = GetDataPackage(gameState, dataKey)
    if not data then
        ugcprint("[GameDataCore] 数据包不存在: " .. tostring(dataKey))
        return nil
    end
    if data[key] == nil then
        ugcprint("[GameDataCore] 数据键不存在: " .. tostring(dataKey) .. "." .. tostring(key))
        return nil
    end
    return data[key]
end

--- 客户端&服务端读取整个 GameState 数据包
---@param gameState userdata GameState
---@param dataKey string 数据包字段名
---@return table|nil
function System_GameDataCore.QueryPackage(gameState, dataKey)
    local data = GetDataPackage(gameState, dataKey)
    if not data then
        ugcprint("[GameDataCore] 数据包不存在: " .. tostring(dataKey))
    end
    return data
end

--- 服务端批量修改多个字段
---@param changes table[] { { key = ..., value = ... }, ... }
function System_GameDataCore.ModifyList(gameState, dataKey, changes)
    if not UGCGameSystem.IsServer() then
        ugcprint("[GameDataCore] 只能在服务端修改数据")
        return false
    end
    if type(changes) ~= "table" then
        ugcprint("[GameDataCore] ModifyList changes 必须是 table")
        return false
    end

    local hasChange = false
    for _, change in ipairs(changes) do
        if type(change) == "table" and change.key ~= nil then
            if WriteOne(gameState, dataKey, change.key, change.value) then
                hasChange = true
            end
        end
    end
    if hasChange then DispatchChange(gameState, dataKey) end
    return hasChange
end

--- 服务端批量修改整个数据包
---@param data table { [key] = value }
function System_GameDataCore.ModifyPackage(gameState, dataKey, data)
    if not UGCGameSystem.IsServer() then
        ugcprint("[GameDataCore] 只能在服务端修改数据")
        return false
    end
    if type(data) ~= "table" then
        ugcprint("[GameDataCore] ModifyPackage data 必须是 table")
        return false
    end

    local hasChange = false
    for key, value in pairs(data) do
        if WriteOne(gameState, dataKey, key, value) then
            hasChange = true
        end
    end
    if hasChange then DispatchChange(gameState, dataKey) end
    return hasChange
end

--- 注册一个 gameData 声明
---@param packageName string
---@param dataDef table { dataKey, DataInit?, DataFormat? }
function System_GameDataCore.RegisterPackage(packageName, dataDef)
    if type(dataDef) ~= "table" or type(dataDef.dataKey) ~= "string"
        or dataDef.dataKey == "" then
        ugcprint(string.format(
            "[GameDataCore] %s 缺 dataKey，跳过", tostring(packageName)))
        return false
    end

    if _registry[dataDef.dataKey] then
        ugcprint(string.format(
            "[GameDataCore] dataKey 冲突: %s（原包=%s, 新包=%s）",
            dataDef.dataKey, tostring(_keyToPkg[dataDef.dataKey]),
            tostring(packageName)))
        return false
    end
    _registry[dataDef.dataKey] = dataDef
    _pkgToKey[packageName]     = dataDef.dataKey
    _keyToPkg[dataDef.dataKey] = packageName
    return true
end

--- 启动期：从 Package_Meta_Index 加载所有 Meta 并抽取 gameData
function System_GameDataCore.BeginPlay()
    if _initialized then return _beginPlaySucceeded end
    _registry, _pkgToKey, _keyToPkg = {}, {}, {}
    if type(Package_Meta_Index) ~= "table"
        or type(Package_Meta_Index.Load) ~= "function" then
        ugcprint("[GameDataCore] Package_Meta_Index 缺少 Load()")
        return false
    end

    local loadOk, metas, loadErrors = pcall(Package_Meta_Index.Load)
    if not loadOk or type(metas) ~= "table" then
        ugcprint("[GameDataCore] Meta 加载失败: " .. tostring(metas))
        return false
    end

    if type(loadErrors) == "table" and next(loadErrors) ~= nil then
        ugcprint("[GameDataCore] Meta 索引存在加载失败项")
        return false
    end

    local allSucceeded = true
    for _, meta in ipairs(metas) do
        if type(meta) ~= "table" or type(meta.packageName) ~= "string" then
            allSucceeded = false
            ugcprint("[GameDataCore] 忽略非法 Package Meta")
        elseif meta.gameData ~= nil and type(meta.gameData) ~= "table" then
            allSucceeded = false
            ugcprint("[GameDataCore] " .. meta.packageName .. " 的 gameData 必须是 table")
        elseif meta.gameData then
            for _, dataDef in ipairs(meta.gameData) do
                if not System_GameDataCore.RegisterPackage(meta.packageName, dataDef) then
                    allSucceeded = false
                end
            end
        end
    end
    local n = 0
    for _ in pairs(_registry) do n = n + 1 end
    ugcprint("[GameDataCore] 已注册 " .. n .. " 个 gameData")

    local gameState = UGCGameSystem.GetGameState()
    if not System_GameDataCore.OnGameStateInit(gameState) then
        allSucceeded = false
    end
    _initialized = allSucceeded
    _beginPlaySucceeded = allSucceeded
    return _beginPlaySucceeded
end

--- GameState 初始化完成回调：对所有 dataDef 执行 DataInit(gameState)
---@param gameState userdata
function System_GameDataCore.OnGameStateInit(gameState)
    return System_GameDataCore.InitAllData(gameState)
end

--- 对所有 dataDef 执行 DataInit(gameState)
--- 抛异常或明确返回 false 视为失败；无返回值兼容既有初始化函数。
---@param gameState userdata
function System_GameDataCore.InitAllData(gameState)
    local allSucceeded = true
    for dataKey, dataDef in pairs(_registry) do
        if type(dataDef.DataInit) == "function" then
            local ok, result, message = pcall(dataDef.DataInit, gameState)
            if not ok or result == false then
                allSucceeded = false
                local reason = not ok and result or message or "DataInit 返回 false"
                ugcprint(string.format(
                    "[GameDataCore] DataInit 失败: %s | %s",
                    tostring(dataKey), tostring(reason)))
            end
        end
    end
    return allSucceeded
end

--- 调试打印时：对所有 dataDef 执行 DataFormat(gameState)
---@param gameState userdata
function System_GameDataCore.FormatAllData(gameState)
    local allSucceeded = true
    for dataKey, dataDef in pairs(_registry) do
        if type(dataDef.DataFormat) == "function" then
            local ok, err = pcall(dataDef.DataFormat, gameState)
            if not ok then
                allSucceeded = false
                ugcprint(string.format(
                    "[GameDataCore] DataFormat 失败: %s | %s",
                    tostring(dataKey), tostring(err)))
            end
        end
    end
    return allSucceeded
end

--- 按 dataKey 触发 Format（按需）
---@param gameState userdata
---@param dataKey string
function System_GameDataCore.FormatByKey(gameState, dataKey)
    local dataDef = _registry[dataKey]
    if dataDef and type(dataDef.DataFormat) == "function" then
        local ok, err = pcall(dataDef.DataFormat, gameState)
        if not ok then
            ugcprint("[GameDataCore] DataFormat 失败: " .. tostring(err))
            return false
        end
        return true
    else
        ugcprint("[GameDataCore] FormatByKey 未找到: " .. tostring(dataKey))
        return false
    end
end

--- 按 packageName 触发 Format（按需）
---@param gameState userdata
---@param packageName string
function System_GameDataCore.FormatPackage(gameState, packageName)
    local dataKey = _pkgToKey[packageName]
    if dataKey then
        local dataDef = _registry[dataKey]
        if dataDef and type(dataDef.DataFormat) == "function" then
            local ok, err = pcall(dataDef.DataFormat, gameState)
            if not ok then
                ugcprint("[GameDataCore] DataFormat 失败: " .. tostring(err))
                return false
            end
            return true
        else
            ugcprint("[GameDataCore] FormatPackage 未找到 dataDef: " .. tostring(packageName))
            return false
        end
    else
        ugcprint("[GameDataCore] FormatPackage 未注册: " .. tostring(packageName))
        return false
    end
end

--- 查询接口：返回 Core BeginPlay 后已经注册的全部 dataKey，供运行时查询和诊断。
--- 复制属性注册发生得更早，应读取 GenKit 生成的 Const_Data，而不是调用本接口。
---@return string[]
function System_GameDataCore.GetAllKeys()
    local keys = {}
    for k in pairs(_registry) do keys[#keys+1] = k end
    table.sort(keys)
    return keys
end

--- 查询接口：按 packageName 取 dataKey
---@return string|nil
function System_GameDataCore.GetKeyByPackage(packageName)
    return _pkgToKey[packageName]
end

return System_GameDataCore
