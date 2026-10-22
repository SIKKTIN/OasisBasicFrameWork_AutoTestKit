-- 新项目的数据变更事件初始定义。
-- 后续由 GenKit 根据目标项目 Package Meta 生成完整文件。
local Event_DataChange = {}

-- 参数分别为 PlayerController / GameState，以及 dataKey。
Event_DataChange.ON_PLAYER_DATA_CHANGE = 5000
Event_DataChange.ON_GAME_DATA_CHANGE = 5001

return Event_DataChange
