local Define = {}
Define.VERSION = 1
Define.CHANGED = "TaskSystem.Changed"
Define.RESULT = "TaskSystem.Result"
local configs, ordered = {}, {}

function Define.Copy(value, seen)
    if type(value) ~= "table" then return value end
    seen = seen or {}
    if seen[value] then error("cyclic-task-value") end
    seen[value] = true
    local result = {}
    for k, v in pairs(value) do result[k] = Define.Copy(v, seen) end
    seen[value] = nil
    return result
end

function Define.ID(id)
    if type(id) == "number" and id > 0 and id % 1 == 0 then id = tostring(id) end
    if type(id) ~= "string" or #id == 0 or #id > 80 or not id:match("^[%w_-]+$") then return nil end
    return id
end

function Define.Positive(value)
    return type(value) == "number" and value > 0 and value < math.huge and value % 1 == 0
end

local function Array(value)
    if type(value) ~= "table" then return false end
    local count = 0
    for k in pairs(value) do
        if type(k) ~= "number" or k < 1 or k % 1 ~= 0 then return false end
        count = count + 1
    end
    return count == #value
end

local function Serializable(value, seen, depth)
    local kind = type(value)
    if kind == "string" or kind == "boolean" then return true end
    if kind == "number" then return value == value and math.abs(value) < math.huge end
    if kind ~= "table" or depth > 10 or seen[value] then return false end
    seen[value] = true
    for k, v in pairs(value) do
        if (type(k) ~= "string" and type(k) ~= "number") or not Serializable(v, seen, depth + 1) then return false end
    end
    seen[value] = nil
    return true
end

function Define.Normalize(raw)
    if type(raw) ~= "table" or not Serializable(raw, {}, 0) then return nil, "invalid-task-config" end
    local task = Define.Copy(raw)
    task.id = Define.ID(task.id)
    if not task.id or type(task.name) ~= "string" or task.name == "" then return nil, "invalid-task-identity" end
    task.description = task.description or ""
    if type(task.description) ~= "string" then return nil, "invalid-description" end
    task.prerequisites, task.rewards = task.prerequisites or {}, task.rewards or {}
    if not Array(task.objectives) or #task.objectives == 0 or not Array(task.rewards)
        or not Array(task.prerequisites) then return nil, "invalid-task-arrays" end
    local ids = {}
    for _, goal in ipairs(task.objectives) do
        if type(goal) ~= "table" then return nil, "invalid-objective" end
        goal.id, goal.target = Define.ID(goal.id), Define.ID(goal.target)
        if not goal.id or ids[goal.id] or not goal.target or not Define.ID(goal.type)
            or not Define.Positive(goal.count) or (goal.label ~= nil and type(goal.label) ~= "string") then
            return nil, "invalid-objective"
        end
        ids[goal.id] = true
    end
    ids = {}
    for i, id in ipairs(task.prerequisites) do
        id = Define.ID(id)
        if not id or id == task.id or ids[id] then return nil, "invalid-prerequisite" end
        task.prerequisites[i], ids[id] = id, true
    end
    for _, reward in ipairs(task.rewards) do
        if type(reward) ~= "table" or not Define.ID(reward.type) then return nil, "invalid-reward" end
        reward.amount = reward.amount or 1
        if not Define.Positive(reward.amount) then return nil, "invalid-reward-amount" end
        if reward.label ~= nil and type(reward.label) ~= "string" then return nil, "invalid-reward-label" end
        if reward.iconText ~= nil and type(reward.iconText) ~= "string" then return nil, "invalid-reward-icon" end
    end
    return task
end

-- 整份配置先验证再替换，失败时保留此前有效配置。运行中不热改任务定义。
function Define.Configure(list)
    if not Array(list) then return false, "invalid-task-list" end
    local nextConfigs, nextOrder = {}, {}
    for _, raw in ipairs(list) do
        local task, reason = Define.Normalize(raw)
        if not task then return false, reason end
        if nextConfigs[task.id] then return false, "duplicate-task-id" end
        nextConfigs[task.id], nextOrder[#nextOrder + 1] = task, task.id
    end
    local visiting, visited = {}, {}
    local function visit(id)
        if visiting[id] then return false, "cyclic-prerequisites" end
        if visited[id] then return true end
        visiting[id] = true
        for _, dependency in ipairs(nextConfigs[id].prerequisites) do
            if not nextConfigs[dependency] then return false, "missing-prerequisite" end
            local ok, reason = visit(dependency)
            if not ok then return false, reason end
        end
        visiting[id], visited[id] = nil, true
        return true
    end
    for _, id in ipairs(nextOrder) do local ok, reason = visit(id); if not ok then return false, reason end end
    configs, ordered = nextConfigs, nextOrder
    return true
end

function Define.Get(id) return Define.Copy(configs[Define.ID(id)]) end
function Define.List()
    local result = {}
    for _, id in ipairs(ordered) do result[#result + 1] = Define.Get(id) end
    return result
end
return Define
