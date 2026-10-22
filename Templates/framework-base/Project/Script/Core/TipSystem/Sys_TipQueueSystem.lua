local Sys_TipQueueSystem = {}

local Const_Tip = require("Script.Const.Core.Const_Tip")

Sys_TipQueueSystem.DEFAULT_DELAY_FRAMES = 90  -- 1.5秒（假设60fps）
Sys_TipQueueSystem.FIRST_DELAY_FRAMES = 30     -- 0.5秒，第一个也延迟显示以便排序
Sys_TipQueueSystem.GLOBAL_KEY = "__tipqueue_global__"

Sys_TipQueueSystem._queues = {}
Sys_TipQueueSystem._has_pending = false  -- 全局跳过标志，队列空时跳过 Tick

local function EnsureQueue(key)
    local q = Sys_TipQueueSystem._queues[key]
    if not q then
        q = {
            items = {},  -- { text = string, delay = number, first_shown = boolean, priority = number, seq = number }
            owner = nil,
        }
        Sys_TipQueueSystem._queues[key] = q
    end
    return q
end

-- 全局序列号，用于同优先级内的 FIFO 排序
Sys_TipQueueSystem._seq_counter = 0

--- 入队一条 Tip
---@param owner userdata|nil
---@param content string|number|boolean
---@param priority number|nil 优先级，默认 MEDIUM
function Sys_TipQueueSystem.Enqueue(owner, content, priority)
    if content == nil then return end
    local text = tostring(content)
    if text == "" then return end

    local key
    if owner and owner.PlayerKey ~= nil then
        key = tostring(owner.PlayerKey)
    elseif owner ~= nil then
        key = tostring(owner)
    else
        key = Sys_TipQueueSystem.GLOBAL_KEY
    end

    local q = EnsureQueue(key)
    priority = priority or Const_Tip.PRIORITY.MEDIUM
    Sys_TipQueueSystem._seq_counter = Sys_TipQueueSystem._seq_counter + 1

    local item = {
        text = text,
        delay = Sys_TipQueueSystem.FIRST_DELAY_FRAMES,  -- 队首也延迟，以便高优先级消息插入
        first_shown = false,  -- 队首不再立即显示，统一走 Tick
        priority = priority,
        seq = Sys_TipQueueSystem._seq_counter,
    }

    -- 按优先级插入：同优先级内保持 FIFO
    local insert_pos = #q.items + 1
    for i = 1, #q.items do
        local existing = q.items[i]
        if priority > existing.priority or (priority == existing.priority and item.seq < existing.seq) then
            insert_pos = i
            break
        end
    end
    table.insert(q.items, insert_pos, item)

    if owner then q.owner = owner end

    ugcprint("[TipQueue] Enqueue key=" .. tostring(key) .. " text=" .. tostring(text)
        .. " priority=" .. tostring(priority)
        .. " queue_len=" .. tostring(#q.items)
        .. " first_shown=" .. tostring(item.first_shown))

    Sys_TipQueueSystem._has_pending = true
end

--- 每帧调用（挂载到 GameState 的 Tick）
---@param deltaTime number 帧间隔（秒）
function Sys_TipQueueSystem.Tick(deltaTime)
    if not Sys_TipQueueSystem._has_pending then return end

    local has_any = false

    for key, q in pairs(Sys_TipQueueSystem._queues) do
        if #q.items > 0 then
            has_any = true
            local front = q.items[1]
            front.delay = front.delay - 1
            if front.delay <= 0 then
                ugcprint("[TipQueue] Tick pop key=" .. tostring(key) .. " text=" .. tostring(front.text)
                    .. " priority=" .. tostring(front.priority) .. " first_shown=" .. tostring(front.first_shown))
                table.remove(q.items, 1)
                if q.owner and q.owner.IsValidLowLevel and not q.owner:IsValidLowLevel() then
                    Sys_TipQueueSystem._queues[key] = nil
                elseif not front.first_shown then
                    UGCWidgetManagerSystem.ShowTipsUI(front.text)
                end
                -- 新队首的 delay 重置为完整间隔（而不是接着扣）
                local new_front = q.items[1]
                if new_front then
                    new_front.delay = Sys_TipQueueSystem.DEFAULT_DELAY_FRAMES
                    ugcprint("[TipQueue] Tick new_front delay reset to=" .. tostring(new_front.delay)
                        .. " text=" .. tostring(new_front.text) .. " priority=" .. tostring(new_front.priority))
                end
            end
        end
    end

    Sys_TipQueueSystem._has_pending = has_any
end

--- 清空指定 owner 的队列
---@param owner userdata|nil
function Sys_TipQueueSystem.Clear(owner)
    if not owner then return end
    local key
    if owner.PlayerKey ~= nil then
        key = tostring(owner.PlayerKey)
    else
        key = tostring(owner)
    end
    Sys_TipQueueSystem._queues[key] = nil
end

return Sys_TipQueueSystem
