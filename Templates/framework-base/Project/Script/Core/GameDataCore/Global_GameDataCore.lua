-- ============================================================
-- Global_GameDataCore
-- GameDataCore 包注册表（命名规范与 Global_PlayerDataCore 一致）
-- 单一职责：暴露 System_GameDataCore 的公共接口
-- ============================================================

Global_GameDataCore = Global_GameDataCore or {}

local System_GameDataCore = require("Script.Core.GameDataCore.System_GameDataCore")

-- 由 Core_Registry.BeginPlay() 自动调用
Global_GameDataCore.BeginPlay = System_GameDataCore.BeginPlay

-- 外部可能需要调用的接口
Global_GameDataCore.InitAllData     = System_GameDataCore.InitAllData
Global_GameDataCore.FormatAllData   = System_GameDataCore.FormatAllData
Global_GameDataCore.FormatByKey     = System_GameDataCore.FormatByKey
Global_GameDataCore.FormatPackage   = System_GameDataCore.FormatPackage
Global_GameDataCore.Query           = System_GameDataCore.Query
Global_GameDataCore.QueryPackage    = System_GameDataCore.QueryPackage
Global_GameDataCore.ModifyList      = System_GameDataCore.ModifyList
Global_GameDataCore.ModifyPackage   = System_GameDataCore.ModifyPackage
Global_GameDataCore.GetAllKeys      = System_GameDataCore.GetAllKeys
Global_GameDataCore.GetKeyByPackage = System_GameDataCore.GetKeyByPackage

return Global_GameDataCore
