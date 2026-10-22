-- ============================================================
-- System_PlayerDataCore
-- Core 层 playerData 注册、读写、变更通知与存档入口
-- ============================================================

local Package_Meta_Index = require("Script.Setting.Package_Meta_Index")
local Const_Data = require("Script.Const.Data.Const_Data")
local Event_DataChange = require("Script.Event.Event_DataChange")

local System_PlayerDataCore = {}

-- { [dataKey] = dataDef }      以 PlayerController 字段名作 key
-- { [packageName] = dataKey }  按包名反查 dataKey
local _registry = {}
local _pkgToKey = {}
local _keyToPkg = {}
local _initialized = false
local _beginPlaySucceeded = false

-- 框架存档标记不属于业务数据包，不登记到 Const_Data 或玩家复制字段。
local ARCHIVE_META_KEY = "__oasisArchive"
local ARCHIVE_VERSION = 1

local function SplitPath(key)
    if type(key) == "number" then
        return { key }
    end
    if type(key) ~= "string" or key == "" then
        return nil
    end

    local parts = {}
    for part in string.gmatch(key, "[^%.]+") do
        parts[#parts + 1] = part
    end
    if #parts == 0 then return nil end
    return parts
end

--- 优先沿用表中已经存在的原始键；字符串数字仅在原始键不存在时回退到数字键。
local function ResolveExistingKey(container, key)
    if container[key] ~= nil then return key end
    if type(key) == "string" then
        local numericKey = tonumber(key)
        if numericKey ~= nil and container[numericKey] ~= nil then
            return numericKey
        end
    end
    return key
end

local function GetDataPackage(pc, dataKey)
    if not pc then
        ugcprint("[PlayerDataCore] PlayerController 不存在")
        return nil
    end
    if type(dataKey) ~= "string" or dataKey == "" then
        ugcprint("[PlayerDataCore] dataKey 为空")
        return nil
    end
    return pc[dataKey]
end

local function EnsureDataPackage(pc, dataKey)
    if not pc then
        ugcprint("[PlayerDataCore] PlayerController 不存在")
        return nil
    end
    if type(dataKey) ~= "string" or dataKey == "" then
        ugcprint("[PlayerDataCore] dataKey 为空")
        return nil
    end
    pc[dataKey] = pc[dataKey] or {}
    if type(pc[dataKey]) ~= "table" then
        ugcprint("[PlayerDataCore] 数据包不是 table: " .. tostring(dataKey))
        return nil
    end
    return pc[dataKey]
end

local function GetDataAtPath(pc, dataKey, key)
    local current = GetDataPackage(pc, dataKey)
    if type(current) ~= "table" then return nil end

    local parts = SplitPath(key)
    if not parts then return nil end
    for _, part in ipairs(parts) do
        local resolvedKey = ResolveExistingKey(current, part)
        current = current[resolvedKey]
        if current == nil then return nil end
    end
    return current
end

local function WriteOneAtPath(pc, dataKey, key, value)
    local current = EnsureDataPackage(pc, dataKey)
    if not current then return false end

    local parts = SplitPath(key)
    if not parts then
        ugcprint("[PlayerDataCore] 数据键为空")
        return false
    end

    for index = 1, #parts - 1 do
        local part = ResolveExistingKey(current, parts[index])
        local nextValue = current[part]
        if nextValue == nil then
            nextValue = {}
            current[part] = nextValue
        elseif type(nextValue) ~= "table" then
            ugcprint(string.format(
                "[PlayerDataCore] 嵌套路径不是 table: %s.%s",
                tostring(dataKey), tostring(parts[index])))
            return false
        end
        current = nextValue
    end

    local leaf = ResolveExistingKey(current, parts[#parts])
    local oldValue = current[leaf]
    if type(value) ~= "table" and oldValue == value then
        return false
    end

    current[leaf] = value
    return true
end

local function DispatchChange(pc, dataKey)
    UGCEventSystem:SendEvent(
        Event_DataChange.ON_PLAYER_DATA_CHANGE,
        pc,
        dataKey
    )

    local fieldName = tostring(dataKey):gsub("[^%w]+", "_"):upper()
    local eventType = Event_DataChange["ON_PLAYER_" .. fieldName .. "_CHANGE"]
    if eventType then
        UGCEventSystem:SendEvent(eventType, pc)
    else
        ugcprint("[PlayerDataCore] 未找到数据变更事件: " .. tostring(dataKey))
    end
end

--- 客户端和服务端读取 PlayerController 数据。
function System_PlayerDataCore.Query(pc, dataKey, key)
    local data = GetDataPackage(pc, dataKey)
    if type(data) ~= "table" then
        ugcprint("[PlayerDataCore] 数据包不存在: " .. tostring(dataKey))
        return nil
    end

    local value = GetDataAtPath(pc, dataKey, key)
    if value == nil then
        ugcprint("[PlayerDataCore] 数据键不存在: "
            .. tostring(dataKey) .. "." .. tostring(key))
    end
    return value
end

--- 客户端和服务端读取完整数据包。
function System_PlayerDataCore.QueryPackage(pc, dataKey)
    local data = GetDataPackage(pc, dataKey)
    if not data then
        ugcprint("[PlayerDataCore] 数据包不存在: " .. tostring(dataKey))
    end
    return data
end

--- 服务端批量修改字段。changes = { { key = ..., value = ... }, ... }
function System_PlayerDataCore.ModifyList(pc, dataKey, changes)
    if not UGCGameSystem.IsServer() then
        ugcprint("[PlayerDataCore] 只能在服务端修改数据")
        return false
    end
    if type(changes) ~= "table" then
        ugcprint("[PlayerDataCore] ModifyList changes 必须是 table")
        return false
    end

    local hasChange = false
    for _, change in ipairs(changes) do
        if type(change) == "table" and change.key ~= nil then
            if WriteOneAtPath(pc, dataKey, change.key, change.value) then
                hasChange = true
            end
        end
    end
    if hasChange then DispatchChange(pc, dataKey) end
    return hasChange
end

--- 服务端批量修改完整数据包中的字段。
function System_PlayerDataCore.ModifyPackage(pc, dataKey, data)
    if not UGCGameSystem.IsServer() then
        ugcprint("[PlayerDataCore] 只能在服务端修改数据")
        return false
    end
    if type(data) ~= "table" then
        ugcprint("[PlayerDataCore] ModifyPackage data 必须是 table")
        return false
    end

    local hasChange = false
    for key, value in pairs(data) do
        if WriteOneAtPath(pc, dataKey, key, value) then
            hasChange = true
        end
    end
    if hasChange then DispatchChange(pc, dataKey) end
    return hasChange
end

local function GetUID(pc)
    if not pc then
        ugcprint("[PlayerDataCore] PlayerController 不存在")
        return nil
    end
    local uid = UGCGameSystem.GetUIDByPlayerController(pc)
    if uid == nil then
        ugcprint("[PlayerDataCore] 无法获取玩家 UID")
        return nil
    end
    return uid
end

local function BuildArchiveData(pc)
    local archiveData = {
        [ARCHIVE_META_KEY] = { version = ARCHIVE_VERSION },
    }
    local count = 0
    for _, dataKey in pairs(Const_Data.PLAYER_DATA_TYPE or {}) do
        if type(dataKey) ~= "string" or dataKey == "" or dataKey == ARCHIVE_META_KEY then
            return nil, "invalid-data-key"
        end
        if pc[dataKey] ~= nil and type(pc[dataKey]) ~= "table" then
            return nil, "invalid-data-package: " .. dataKey
        end
        archiveData[dataKey] = pc[dataKey] or {}
        count = count + 1
    end
    if count == 0 then return nil, "no-data-packages" end
    return archiveData
end

local function IsArchiveValid(archiveData)
    if type(archiveData) ~= "table" then return nil, "invalid-archive" end
    if next(archiveData) == nil then return false, "missing" end
    local meta = archiveData[ARCHIVE_META_KEY]
    if type(meta) ~= "table" then return nil, "unrecognized-archive" end
    if meta.version ~= ARCHIVE_VERSION then return nil, "unsupported-version" end
    return true, "exists"
end

local function ReadArchiveData(pc)
    if not UGCGameSystem.IsServer() then return nil, nil, "server-only" end
    local uidOk, uid = pcall(GetUID, pc)
    if not uidOk or uid == nil then return nil, nil, "uid-unavailable" end
    local ok, archiveData = pcall(function()
        return UGCPlayerStateSystem.GetPlayerArchiveData(uid)
    end)
    if not ok then
        ugcprint("[PlayerDataCore] 读取存档失败: " .. tostring(archiveData))
        return nil, nil, "read-failed"
    end
    -- 真实 PIE 新玩家可能返回 nil；只有大小接口同时确认零字节才认作无存档。
    -- 无接口、异常或非零大小时仍保持错误，不能把未知读取状态当成新玩家覆盖。
    if archiveData == nil and type(UGCPlayerStateSystem.GetPlayerDataSize) == "function" then
        local sizeOk, bytes = pcall(UGCPlayerStateSystem.GetPlayerDataSize, uid)
        if sizeOk and bytes == 0 then return {}, false, "missing" end
    end
    local exists, reason = IsArchiveValid(archiveData)
    return archiveData, exists, reason
end

--- 服务端保存 Const_Data 中声明的全部玩家数据包。
function System_PlayerDataCore.SaveArchiveData(pc)
    if not UGCGameSystem.IsServer() then
        ugcprint("[PlayerDataCore] 只能在服务端存档")
        return false
    end
    local uid = GetUID(pc)
    if uid == nil then return false end

    local archiveData, reason = BuildArchiveData(pc)
    if not archiveData then
        ugcprint("[PlayerDataCore] 不保存存档: " .. tostring(reason))
        return false, reason
    end
    local ok, success = pcall(function()
        return UGCPlayerStateSystem.SavePlayerArchiveData(uid, archiveData)
    end)
    if not ok or success ~= true then
        ugcprint("[PlayerDataCore] SaveArchiveData: 存档失败 | " .. tostring(success))
        return false, "save-failed"
    end
    return true
end

--- 返回 true,"exists" / false,"missing" / nil,错误原因。
--- 调用方仅在结果明确为 false 时初始化；nil 不能当成新玩家。
function System_PlayerDataCore.CheckArchiveData(pc)
    local _, exists, reason = ReadArchiveData(pc)
    return exists, reason
end

--- 服务端恢复 Const_Data 中声明的全部玩家数据包。
function System_PlayerDataCore.RestoreArchiveData(pc)
    local archiveData, exists, reason = ReadArchiveData(pc)
    if exists ~= true then
        ugcprint("[PlayerDataCore] RestoreArchiveData: " .. tostring(reason))
        return false, reason
    end
    -- 先检查所有待恢复包，再写入玩家字段，避免类型错误造成部分恢复。
    local restored = {}
    for _, dataKey in pairs(Const_Data.PLAYER_DATA_TYPE or {}) do
        if type(dataKey) ~= "string" or dataKey == "" or dataKey == ARCHIVE_META_KEY then
            return false, "invalid-data-key"
        end
        local data = archiveData[dataKey]
        if data ~= nil and type(data) ~= "table" then
            return false, "invalid-data-package: " .. dataKey
        end
        restored[dataKey] = data or {}
    end
    for dataKey, data in pairs(restored) do pc[dataKey] = data end
    return true
end

function System_PlayerDataCore.GetPlayerKey(pc)
    if not pc then return nil end
    return UGCGameSystem.GetPlayerKeyByPlayerController(pc)
end

--- 注册一个 playerData 声明。
function System_PlayerDataCore.RegisterPackage(packageName, dataDef)
    if type(dataDef) ~= "table" or type(dataDef.dataKey) ~= "string"
        or dataDef.dataKey == "" then
        ugcprint(string.format(
            "[PlayerDataCore] %s 缺 dataKey，跳过", tostring(packageName)))
        return false
    end

    if _registry[dataDef.dataKey] then
        ugcprint(string.format(
            "[PlayerDataCore] dataKey 冲突: %s（原包=%s, 新包=%s）",
            dataDef.dataKey, tostring(_keyToPkg[dataDef.dataKey]),
            tostring(packageName)))
        return false
    end
    _registry[dataDef.dataKey] = dataDef
    _pkgToKey[packageName] = dataDef.dataKey
    _keyToPkg[dataDef.dataKey] = packageName
    return true
end

--- 启动期加载全部 Package Meta，并绑定新玩家数据初始化事件。
function System_PlayerDataCore.BeginPlay()
    if _initialized then return _beginPlaySucceeded end
    _registry, _pkgToKey, _keyToPkg = {}, {}, {}
    if type(Package_Meta_Index) ~= "table"
        or type(Package_Meta_Index.Load) ~= "function" then
        ugcprint("[PlayerDataCore] Package_Meta_Index 缺少 Load()")
        return false
    end

    local loadOk, metas, loadErrors = pcall(Package_Meta_Index.Load)
    if not loadOk or type(metas) ~= "table" then
        ugcprint("[PlayerDataCore] Meta 加载失败: " .. tostring(metas))
        return false
    end

    if type(loadErrors) == "table" and next(loadErrors) ~= nil then
        ugcprint("[PlayerDataCore] Meta 索引存在加载失败项")
        return false
    end

    local allSucceeded = true
    for _, meta in ipairs(metas) do
        if type(meta) ~= "table" or type(meta.packageName) ~= "string" then
            allSucceeded = false
            ugcprint("[PlayerDataCore] 忽略非法 Package Meta")
        elseif meta.playerData ~= nil and type(meta.playerData) ~= "table" then
            allSucceeded = false
            ugcprint("[PlayerDataCore] " .. meta.packageName
                .. " 的 playerData 必须是 table")
        elseif meta.playerData then
            for _, dataDef in ipairs(meta.playerData) do
                if not System_PlayerDataCore.RegisterPackage(meta.packageName, dataDef) then
                    allSucceeded = false
                end
            end
        end
    end

    local count = 0
    for _ in pairs(_registry) do count = count + 1 end
    ugcprint("[PlayerDataCore] 已注册 " .. count .. " 个 playerData")

    local eventType = type(EventType) == "table" and EventType.Server_Delegate_PlaerDataLoad or nil
    if eventType == nil then
        allSucceeded = false
        ugcprint("[PlayerDataCore] 缺少 Server_Delegate_PlaerDataLoad 事件")
    else
        local listenerOk, listenerError = pcall(function()
            return UGCEventSystem:AddListener(
                eventType,
                System_PlayerDataCore.InitAllData,
                nil
            )
        end)
        if not listenerOk or listenerError == false then
            allSucceeded = false
            ugcprint("[PlayerDataCore] 初始化事件监听失败: "
                .. tostring(listenerError))
        end
    end

    _initialized = allSucceeded
    _beginPlaySucceeded = allSucceeded
    return _beginPlaySucceeded
end

function System_PlayerDataCore.InitAllData(playerKey)
    local allSucceeded = true
    for dataKey, dataDef in pairs(_registry) do
        if type(dataDef.DataInit) == "function" then
            local ok, result, message = pcall(dataDef.DataInit, playerKey)
            if not ok or result == false then
                allSucceeded = false
                local reason = not ok and result or message or "DataInit 返回 false"
                ugcprint(string.format(
                    "[PlayerDataCore] DataInit 失败: %s | %s",
                    tostring(dataKey), tostring(reason)))
            end
        end
    end
    return allSucceeded
end

function System_PlayerDataCore.FormatAllData(pc)
    local allSucceeded = true
    for dataKey, dataDef in pairs(_registry) do
        if type(dataDef.DataFormat) == "function" then
            local ok, err = pcall(dataDef.DataFormat, pc)
            if not ok then
                allSucceeded = false
                ugcprint(string.format(
                    "[PlayerDataCore] DataFormat 失败: %s | %s",
                    tostring(dataKey), tostring(err)))
            end
        end
    end
    return allSucceeded
end

function System_PlayerDataCore.FormatByKey(pc, dataKey)
    local dataDef = _registry[dataKey]
    if dataDef and type(dataDef.DataFormat) == "function" then
        local ok, err = pcall(dataDef.DataFormat, pc)
        if not ok then
            ugcprint("[PlayerDataCore] DataFormat 失败: " .. tostring(err))
            return false
        end
        return true
    end
    ugcprint("[PlayerDataCore] FormatByKey 未找到: " .. tostring(dataKey))
    return false
end

function System_PlayerDataCore.FormatPackage(pc, packageName)
    local dataKey = _pkgToKey[packageName]
    if not dataKey then
        ugcprint("[PlayerDataCore] FormatPackage 未注册: "
            .. tostring(packageName))
        return false
    end
    return System_PlayerDataCore.FormatByKey(pc, dataKey)
end

--- 返回 Core BeginPlay 后已经注册的全部 dataKey，供运行时查询和诊断。
--- 复制属性注册发生得更早，应读取 GenKit 生成的 Const_Data，而不是调用本接口。
function System_PlayerDataCore.GetAllKeys()
    local keys = {}
    for key in pairs(_registry) do keys[#keys + 1] = key end
    table.sort(keys)
    return keys
end

function System_PlayerDataCore.GetKeyByPackage(packageName)
    return _pkgToKey[packageName]
end

return System_PlayerDataCore
