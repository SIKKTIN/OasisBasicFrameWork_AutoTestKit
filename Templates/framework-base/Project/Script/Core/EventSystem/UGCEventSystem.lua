-- 同步通知总线；监听返回值不是业务调用结果。单个监听异常不阻断其他监听。
UGCEventSystem = UGCEventSystem or { Events = {} }
local unpackArgs = table.unpack or unpack

function UGCEventSystem:AddListener(eventType, fn, object)
    if eventType == nil or type(fn) ~= "function" then return false end
    local listeners = self.Events[eventType] or {}
    self.Events[eventType] = listeners
    for _, entry in ipairs(listeners) do
        if entry.Func == fn and entry.Object == object then return true end
    end
    listeners[#listeners + 1] = {Func = fn, Object = object}
    return true
end

function UGCEventSystem:RemoveListener(eventType, fn, object)
    local listeners = self.Events[eventType]
    if not listeners then return false end
    local removed = false
    for i = #listeners, 1, -1 do
        if listeners[i].Func == fn and listeners[i].Object == object then
            table.remove(listeners, i)
            removed = true
        end
    end
    return removed
end

function UGCEventSystem:SendEvent(eventType, ...)
    if eventType == nil then return false end
    local snapshot = {}
    for _, entry in ipairs(self.Events[eventType] or {}) do
        snapshot[#snapshot + 1] = entry
    end
    local args, n, success = {...}, select("#", ...), true
    -- 本轮使用快照；回调中增删监听仅影响下一轮。
    for _, entry in ipairs(snapshot) do
        local ok, err = pcall(function()
            if entry.Object ~= nil then
                entry.Func(entry.Object, unpackArgs(args, 1, n))
            else
                entry.Func(unpackArgs(args, 1, n))
            end
        end)
        if not ok then
            success = false
            (type(ugcprint) == "function" and ugcprint or print)(
                "[UGCEventSystem] 监听异常: " .. tostring(eventType) .. " | " .. tostring(err))
        end
    end
    return success
end

return UGCEventSystem
