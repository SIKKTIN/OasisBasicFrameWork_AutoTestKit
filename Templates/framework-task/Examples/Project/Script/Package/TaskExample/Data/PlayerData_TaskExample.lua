local Data = {}
local Core = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
function Data.Init(key)
    local pc = UGCGameSystem.GetPlayerControllerByPlayerKey(key)
    if not pc then return false end
    if pc.task_example_data == nil then pc.task_example_data = {} end
    if type(pc.task_example_data) ~= "table" then return false end
    if next(pc.task_example_data) then return true end
    return Core.ModifyPackage(pc, "task_example_data", {receipts = {}, balance = {}, sequence = 0})
end
return Data
