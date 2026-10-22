Global_PlayerDataCore = Global_PlayerDataCore or {}

local System_PlayerDataCore = require("Script.Core.PlayerDataCore.System_PlayerDataCore")

-- 由 Core_Registry.BeginPlay() 自动调用
Global_PlayerDataCore.BeginPlay = System_PlayerDataCore.BeginPlay

-- 外部可能需要调用的接口
Global_PlayerDataCore.InitAllData    = System_PlayerDataCore.InitAllData
Global_PlayerDataCore.FormatAllData  = System_PlayerDataCore.FormatAllData
Global_PlayerDataCore.FormatByKey    = System_PlayerDataCore.FormatByKey
Global_PlayerDataCore.FormatPackage  = System_PlayerDataCore.FormatPackage

Global_PlayerDataCore.Query          = System_PlayerDataCore.Query
Global_PlayerDataCore.QueryPackage   = System_PlayerDataCore.QueryPackage
Global_PlayerDataCore.ModifyList     = System_PlayerDataCore.ModifyList
Global_PlayerDataCore.ModifyPackage  = System_PlayerDataCore.ModifyPackage

Global_PlayerDataCore.SaveArchiveData    = System_PlayerDataCore.SaveArchiveData
Global_PlayerDataCore.CheckArchiveData   = System_PlayerDataCore.CheckArchiveData
Global_PlayerDataCore.RestoreArchiveData = System_PlayerDataCore.RestoreArchiveData
Global_PlayerDataCore.GetPlayerKey       = System_PlayerDataCore.GetPlayerKey

Global_PlayerDataCore.GetAllKeys     = System_PlayerDataCore.GetAllKeys
Global_PlayerDataCore.GetKeyByPackage = System_PlayerDataCore.GetKeyByPackage

return Global_PlayerDataCore
