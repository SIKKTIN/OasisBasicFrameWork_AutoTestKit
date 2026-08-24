-- 临时验证文件: 跨多个 owner 的违规代码
local System_Player = {}

local Config_Player = require('Script.Package.Player.Config.Config_Player')

function System_Player.GetItemCount(idx)
    -- 违规1: Config_Player.Items[idx]
    local item = Config_Player.Items[idx]
    -- 违规2: item.count
    return item.count
end

function System_Player.GetItemType(idx)
    local item = Config_Player.Items[idx]
    -- 违规3: item.type
    return item.type
end

function System_Player.IsBuffActive(buffName)
    -- 违规4: #Config_Player.Buffs
    for i = 1, #Config_Player.Buffs do
        -- 违规5: buff.duration
        local buff = Config_Player.Buffs[i]
        if buff.name == buffName then
            return buff.duration > 0
        end
    end
    return false
end

return System_Player
