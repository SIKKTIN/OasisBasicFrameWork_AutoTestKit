---@class System_ClientCache
local System_ClientCache = {}

---@type table<string, table> 收件箱：{ [typeName] = { payload = any, received_at = number } }
local g_inbox = {}

---@type table<string, function[]> 订阅者：{ [typeName] = { fn, fn, ... } }
local g_listeners = {}

--- Push 一个缓存包到收件箱（仅客户端执行）
---@param typeName string
---@param payload any
function System_ClientCache.Push(typeName, payload)
    if UGCGameSystem.IsServer() then
        return
    end

    g_inbox[typeName] = {
        payload = payload,
        received_at = os.clock(),
    }

    ugcprint("[ClientCache] Push type=" .. tostring(typeName) .. " payload_len=" .. tostring(payload and #payload or 0))

    -- 触发订阅者
    local listeners = rawget(g_listeners, typeName)
    if listeners then
        for _, fn in ipairs(listeners) do
            local ok, err = pcall(fn, payload)
            if not ok then
                ugcprint("[ClientCache] Subscribe callback error type=" .. tostring(typeName) .. " err=" .. tostring(err))
            end
        end
    end
end

--- Peek 查缓存但不删除（重开 UI 仍可见）
---@param typeName string
---@return any payload
function System_ClientCache.Peek(typeName)
    local entry = g_inbox[typeName]
    if entry then
        return entry.payload
    end
    return nil
end

--- Pop 取走并清空缓存（确认消费）
---@param typeName string
---@return any payload
function System_ClientCache.Pop(typeName)
    local entry = g_inbox[typeName]
    g_inbox[typeName] = nil
    if entry then
        return entry.payload
    end
    return nil
end

--- Subscribe 订阅某 type 的回调（可选，不影响主流程）
---@param typeName string
---@param fn fun(payload: any)
function System_ClientCache.Subscribe(typeName, fn)
    if not g_listeners[typeName] then
        g_listeners[typeName] = {}
    end
    table.insert(g_listeners[typeName], fn)
end

--- Clear 清空所有缓存（新一局 / 重连时调用）
function System_ClientCache.Clear()
    g_inbox = {}
    g_listeners = {}
    ugcprint("[ClientCache] Clear")
end

return System_ClientCache
