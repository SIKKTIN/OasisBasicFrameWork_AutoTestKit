Global_DebugKit = Global_DebugKit or {}

local System_DebugKit = require("Script.Core.DebugKit.System_DebugKit")
local Const_DebugKit = require('Script.Const.Core.Const_DebugKit')

Global_DebugKit.ID = Const_DebugKit.ID
Global_DebugKit.LineType = Const_DebugKit.LineType
Global_DebugKit.Lines = Const_DebugKit.Lines

Global_DebugKit.Target = {
    CLIENT = "Client",
    SERVER = "Server",
    BOTH = "Both",
}

Global_DebugKit.Start          = System_DebugKit.Start
Global_DebugKit.EnsureStarted  = System_DebugKit.EnsureStarted
Global_DebugKit.Log            = System_DebugKit.Log
Global_DebugKit.LogWithPlayerKey = System_DebugKit.Log
Global_DebugKit.LogError       = System_DebugKit.LogError
Global_DebugKit.Summary        = System_DebugKit.Summary
Global_DebugKit.PrintAllErrors = System_DebugKit.PrintAllErrors
Global_DebugKit.Clear          = System_DebugKit.Clear

return Global_DebugKit
