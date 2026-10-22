local Const_DebugKit = {}

Const_DebugKit.LineType = {
    GAME = "Game",
    PLAYER = "Player",
}

Const_DebugKit.Lines = {
    LIFECYCLE = {
        id = 1001,
        name = "Lifecycle",
        type = Const_DebugKit.LineType.GAME,
    },
    PLAYER_LIFECYCLE = {
        id = 1002,
        name = "PlayerLifecycle",
        type = Const_DebugKit.LineType.PLAYER,
    },
}

Const_DebugKit.ID = {}

local byID = {}
local byName = {}
for key, line in pairs(Const_DebugKit.Lines) do
    if type(line.id) ~= "number" then
        error("[Const_DebugKit] 检测线 ID 必须是 number: " .. tostring(key))
    end
    if type(line.name) ~= "string" or line.name == "" then
        error("[Const_DebugKit] 检测线 name 不能为空: " .. tostring(key))
    end
    if line.type ~= Const_DebugKit.LineType.GAME
        and line.type ~= Const_DebugKit.LineType.PLAYER then
        error("[Const_DebugKit] 未知检测线类型: " .. tostring(line.type))
    end
    if byID[line.id] then
        error("[Const_DebugKit] 检测线 ID 重复: " .. tostring(line.id))
    end
    local nameKey = string.lower(line.name)
    if byName[nameKey] then
        error("[Const_DebugKit] 检测线 name 重复: " .. line.name)
    end

    line.key = key
    Const_DebugKit.ID[key] = line.id
    byID[line.id] = line
    byName[nameKey] = line
end

function Const_DebugKit.Resolve(idOrName)
    if type(idOrName) == "number" then
        return byID[idOrName]
    end
    if type(idOrName) == "string" then
        local numericID = tonumber(idOrName)
        if numericID and byID[numericID] then
            return byID[numericID]
        end
        return byName[string.lower(idOrName)]
    end
    return nil
end

function Const_DebugKit.GetAllLines()
    local lines = {}
    for _, line in pairs(byID) do
        lines[#lines + 1] = line
    end
    table.sort(lines, function(a, b) return a.id < b.id end)
    return lines
end

return Const_DebugKit
