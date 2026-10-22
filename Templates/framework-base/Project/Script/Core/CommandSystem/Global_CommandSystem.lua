Global_CommandSystem = Global_CommandSystem or {}

local System_CommandSystem = require("Script.Core.CommandSystem.System_CommandSystem")

function Global_CommandSystem.BeginPlay()
    return System_CommandSystem.Initialize()
end

Global_CommandSystem.Reload              = System_CommandSystem.Reload
Global_CommandSystem.Execute             = System_CommandSystem.Execute
Global_CommandSystem.RegisterInterpreter = System_CommandSystem.RegisterInterpreter

return Global_CommandSystem
