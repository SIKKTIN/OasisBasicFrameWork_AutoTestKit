local Query_Skill = {}

local Define_Skill = require(
    "Script.Package.SkillSystem.Data.Define_Skill")
local PlayerData_Skill = require(
    "Script.Package.SkillSystem.Data.PlayerData_Skill")

Query_Skill.GetSkillConfig = Define_Skill.GetSkillConfig
Query_Skill.GetSkillAssetPath = Define_Skill.GetSkillAssetPath
Query_Skill.GetAllSkillTypes = Define_Skill.GetAllSkillTypes
Query_Skill.GetPlayerSkills = PlayerData_Skill.GetPlayerSkills
Query_Skill.IsSkillActive = PlayerData_Skill.IsSkillActive

--- 运行时实例缓存只在服务端维护。
function Query_Skill.IsSkillLoaded(pc, skillType)
    if not UGCGameSystem.IsServer() or not pc then return false end
    local normalized = Define_Skill.NormalizeSkillType(skillType)
    if not normalized then return false end

    local pawn = UGCGameSystem.GetPlayerPawnByPlayerController(pc)
    local record = PlayerData_Skill.GetRuntimeInstance(pc, normalized)
    local loaded = pawn ~= nil
        and record ~= nil
        and record.instance ~= nil
        and record.pawn == pawn
    if loaded and UGCObjectUtility and type(UGCObjectUtility.IsObjectValid) == "function" then
        local ok, valid = pcall(UGCObjectUtility.IsObjectValid, record.instance)
        return ok and valid == true
    end
    return loaded
end

return Query_Skill
