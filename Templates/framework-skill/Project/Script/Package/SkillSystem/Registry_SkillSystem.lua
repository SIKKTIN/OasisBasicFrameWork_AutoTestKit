local Registry_SkillSystem = {}
local Events = require("Script.Event.EventType")
local Bus = require("Script.Core.EventSystem.UGCEventSystem")

local Define_Skill = require(
    "Script.Package.SkillSystem.Data.Define_Skill")
local PlayerData_Skill = require(
    "Script.Package.SkillSystem.Data.PlayerData_Skill")
local Query_Skill = require(
    "Script.Package.SkillSystem.Query.Query_Skill")
local System_Skill = require(
    "Script.Package.SkillSystem.System.System_Skill")

local _initialized = false
local listeners = {
    {Events.Server_OnPlayerDataLoaded, System_Skill.OnPlayerDataLoaded},
    {Events.Server_OnPlayerPawnInit, System_Skill.OnPlayerPawnInit},
    {Events.Server_OnPlayerEnd, System_Skill.OnPlayerEnd},
    {Events.Lifecycle_PC_End, System_Skill.OnControllerEnd},
}

function Registry_SkillSystem.BeginPlay()
    if not UGCGameSystem.IsServer() then return true end
    if _initialized then return true end

    for _, entry in ipairs(listeners) do
        local ok, result = pcall(Bus.AddListener, Bus, entry[1], entry[2], nil)
        if not ok or result ~= true then
            for _, added in ipairs(listeners) do
                pcall(Bus.RemoveListener, Bus, added[1], added[2], nil)
            end
            ugcprint("[SkillSystem] listener-registration-failed")
            return false, "listener-registration-failed"
        end
    end
    _initialized = true
    return true
end

function Registry_SkillSystem.EndPlay()
    if _initialized then
        for _, entry in ipairs(listeners) do Bus:RemoveListener(entry[1], entry[2], nil) end
    end
    _initialized = false
    return System_Skill.EndPlay()
end

Registry_SkillSystem.RegisterSkill = Define_Skill.RegisterSkill
Registry_SkillSystem.InitSkillData = PlayerData_Skill.InitSkillData

Registry_SkillSystem.GetSkillConfig = Query_Skill.GetSkillConfig
Registry_SkillSystem.GetSkillAssetPath = Query_Skill.GetSkillAssetPath
Registry_SkillSystem.GetAllSkillTypes = Query_Skill.GetAllSkillTypes
Registry_SkillSystem.GetPlayerSkills = Query_Skill.GetPlayerSkills
Registry_SkillSystem.IsSkillActive = Query_Skill.IsSkillActive
Registry_SkillSystem.IsSkillLoaded = Query_Skill.IsSkillLoaded

Registry_SkillSystem.SetSkillState = System_Skill.SetSkillState
Registry_SkillSystem.RestoreActiveSkills = System_Skill.RestoreActiveSkills
Registry_SkillSystem.SyncPlayer = System_Skill.SyncPlayer
Registry_SkillSystem.GetStatus = System_Skill.GetStatus
Registry_SkillSystem.FormatSkillData = PlayerData_Skill.Format

return Registry_SkillSystem
