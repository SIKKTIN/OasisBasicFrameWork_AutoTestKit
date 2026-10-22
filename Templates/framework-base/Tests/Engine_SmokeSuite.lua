-- 仅供测试工程的临时 AutoTestSuiteIndex 引用，验收后恢复空索引。
return {
    name = "OasisEngineSmoke",
    setup = function() OasisEngineSmoke.setup = (OasisEngineSmoke.setup or 0) + 1 end,
    cases = {
        {name = "framework", run = function() return LifeCycle.GetStatus().phase == "ready" end},
        {name = "player", run = function()
            local state = LifeCycle.GetPlayerStatus(OasisEngineSmoke.pc)
            return state.controllerReady and (not UGCGameSystem.IsServer() or state.dataReady)
        end},
    },
    teardown = function() OasisEngineSmoke.teardown = (OasisEngineSmoke.teardown or 0) + 1 end,
}
