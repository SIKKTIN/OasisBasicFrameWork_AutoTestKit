---@class TestManager
--- 通过 Global_AutoTestKit 对外调用；不依赖业务模块或 UI 资产。
local TestManager = { results = {}, allPassed = false }
local TAssert = require("Script.Core.AutoTestKit.TestRunner.Assert")
local Config = require("Script.Core.AutoTestKit.Config.Config_AutoTestKit")
local SUITE_INDEX_MODULE = "Script.Setting.AutoTestSuiteIndex"
local _suites, _suiteFileNames = {}, {}
local _errors = {}
local _status = "idle"
local _cleaning = false
local function EmptyQueue()
    return { running = false, pc = nil, tasks = {}, currentTaskIdx = 0,
        waitTime = 0, phase = "idle", suites = {} }
end
local _queueState = EmptyQueue()

local function Notify(pc, message)
    if not pc then return end
    local ok, err = pcall(function()
        UnrealNetwork.CallUnrealRPC(pc, pc, "Client_TipContent", message)
    end)
    if not ok then ugcprint("[TestManager] 客户端通知失败: " .. tostring(err)) end
end

local function RecordError(suiteName, phase, message)
    _errors[#_errors + 1] = { suiteName = suiteName, phase = phase, message = tostring(message) }
    TestManager.allPassed = false
    ugcprint(string.format("[TestManager] %s %s 失败: %s",
        tostring(suiteName or "索引"), phase, tostring(message)))
end

local function ResetResults()
    TestManager.results = {}
    TestManager.allPassed = false
    _errors = {}
end

function TestManager.GetSummary()
    local total, passed = 0, 0
    for _, result in pairs(TestManager.results) do
        total = total + 1
        if result.passed then passed = passed + 1 end
    end
    return total, passed, total - passed
end

function TestManager.GetResult(suiteName, caseName)
    return TestManager.results[suiteName .. "." .. caseName]
end

function TestManager.GetAllResults()
    return TestManager.results
end

--- failedCases 包含因 setup 失败而跳过的 Case；生命周期错误单独保存在 errors。
function TestManager.GetReport()
    local total, passed, failed = TestManager.GetSummary()
    local skipped = 0
    for _, result in pairs(TestManager.results) do
        if result.skipped then skipped = skipped + 1 end
    end
    return { status = _status, allPassed = TestManager.allPassed,
        totalCases = total, passedCases = passed, failedCases = failed, skippedCases = skipped,
        results = TestManager.results, errors = _errors }
end

local function ValidateSuite(suite)
    if type(suite) ~= "table" or type(suite.name) ~= "string" or suite.name == "" then
        return false, "suite.name 必须为非空字符串"
    end
    if type(suite.cases) ~= "table" then return false, "suite.cases 必须为数组" end
    for _, hook in ipairs({"setup", "teardown"}) do
        if suite[hook] ~= nil and type(suite[hook]) ~= "function" then
            return false, hook .. " 必须为函数"
        end
    end
    local names, count = {}, 0
    for key, tc in pairs(suite.cases) do
        count = count + 1
        if type(key) ~= "number" or key % 1 ~= 0 or key < 1 or key > #suite.cases then
            return false, "suite.cases 必须为连续数组"
        end
        if type(tc) ~= "table" or type(tc.name) ~= "string" or tc.name == ""
            or type(tc.run) ~= "function" then
            return false, "Case 必须提供非空 name 和 run 函数"
        end
        if names[tc.name] then return false, "Case 名称重复: " .. tc.name end
        names[tc.name] = true
    end
    if count ~= #suite.cases then return false, "suite.cases 必须为连续数组" end
    return true
end

local function RegisterAllSuites()
    local suites, files = {}, {}
    -- 客户端 UGC 沙箱不暴露 package.loaded；文件更新由编辑器 reloadlua 负责。
    if package and package.loaded then package.loaded[SUITE_INDEX_MODULE] = nil end
    local ok, list = pcall(require, SUITE_INDEX_MODULE)
    if not ok or type(list) ~= "table" then
        RecordError(nil, "load", ok and "索引必须返回数组" or list)
        _suites, _suiteFileNames = {}, {}
        return false
    end
    local valid, count = true, 0
    for key, path in pairs(list) do
        count = count + 1
        if type(key) ~= "number" or key % 1 ~= 0 or key < 1 or key > #list
            or type(path) ~= "string" or path == "" then
            RecordError(nil, "load", "索引必须为连续模块路径数组")
            valid = false
        end
    end
    if count ~= #list then
        RecordError(nil, "load", "索引必须为连续模块路径数组")
        valid = false
    end
    if valid then
        for _, path in ipairs(list) do
            if package and package.loaded then package.loaded[path] = nil end
            local loaded, suite = pcall(require, path)
            local accepted, message = false, suite
            if loaded then accepted, message = ValidateSuite(suite) end
            if not accepted then
                RecordError(path, "load", message)
                valid = false
            elseif suites[suite.name] then
                RecordError(suite.name, "load", "Suite 名称重复")
                valid = false
            else
                suites[suite.name], files[suite.name] = suite, path
            end
        end
    end
    if not valid then
        _suites, _suiteFileNames = {}, {}
        return false
    end
    _suites, _suiteFileNames = suites, files
    return true
end

function TestManager.RegisterSuite(suite)
    local ok, message = ValidateSuite(suite)
    if not ok then ugcprint("[TestManager] RegisterSuite: " .. tostring(message)); return false end
    _suites[suite.name], _suiteFileNames[suite.name] = suite, suite.fileName
    return true
end

function TestManager.UnregisterSuite(suiteName)
    _suites[suiteName], _suiteFileNames[suiteName] = nil, nil
end

function TestManager.GetSuiteNames()
    local names = {}
    for name in pairs(_suites) do names[#names + 1] = name end
    table.sort(names)
    return names
end

function TestManager.GetSuiteDescriptors()
    local descs = {}
    for _, name in ipairs(TestManager.GetSuiteNames()) do
        local cases = {}
        for index, tc in ipairs(_suites[name].cases) do
            cases[#cases + 1] = { name = tc.name, index = index }
        end
        descs[#descs + 1] = { name = name, fileName = _suiteFileNames[name],
            caseCount = #cases, cases = cases }
    end
    return descs
end

local function ResolveSuiteKey(name)
    if type(name) ~= "string" then return nil end
    if _suites[name] then return name end
    local short = name:match("^Suite_(.+)$")
    if short and _suites[short] then return short end
    return nil
end

local function RunHook(state, entry, phase)
    if phase == "teardown" then
        if entry.cleaned then return true end
        -- 先标记，保证 Stop 或 hook 内重入时只清理一次。
        entry.cleaned = true
    end
    local hook = entry.suite[phase]
    if not hook then return true end
    local ok, value, message = pcall(hook, state.pc)
    if not ok or value == false or (type(value) == "table" and value.passed == false) then
        RecordError(entry.suite.name, phase, not ok and value
            or message or (type(value) == "table" and value.msg) or "hook 返回失败")
        return false
    end
    return true
end

local function Start(pc, suiteName, caseName)
    -- 不重载正在执行的套件，也不清空本轮结果。
    if _queueState.running or _cleaning then
        ugcprint("[TestManager] 队列正在运行或清理中")
        return false
    end
    _queueState = EmptyQueue()
    ResetResults()
    _status = "idle"
    if not RegisterAllSuites() then _status = "load-failed"; return false end
    local key = suiteName and ResolveSuiteKey(suiteName) or nil
    if suiteName and not key then
        RecordError(suiteName, "selection", "Suite 未注册")
        _status = "selection-failed"
        return false
    end
    local tasks, entries, caseCount = {}, {}, 0
    for _, name in ipairs(TestManager.GetSuiteNames()) do
        if not key or name == key then
            local suite = _suites[name]
            local selected = {}
            for _, tc in ipairs(suite.cases) do
                if not caseName or tc.name == caseName then selected[#selected + 1] = tc end
            end
            -- 没有 Case 的套件不执行 setup/teardown，也不产生通过结果。
            if #selected > 0 then
                local entry = { suite = suite, started = false, cleaned = false, setupFailed = false }
                entries[#entries + 1] = entry
                tasks[#tasks + 1] = { type = "setup", entry = entry }
                for _, tc in ipairs(selected) do
                    tasks[#tasks + 1] = { type = "case", entry = entry, tc = tc }
                    caseCount = caseCount + 1
                end
                tasks[#tasks + 1] = { type = "teardown", entry = entry }
            end
        end
    end
    if caseName and caseCount == 0 then
        RecordError(suiteName, "selection", "Case 不存在")
        _status = "selection-failed"
        return false
    end
    if caseCount == 0 then
        _status = "no-tests"
        ugcprint("[TestManager] 没有可运行的 Case")
        return false
    end
    _queueState = { running = true, pc = pc, tasks = tasks, currentTaskIdx = 1,
        waitTime = 0, phase = "running", suites = entries }
    _status = "running"
    Notify(pc, "===== 自动化测试开始 =====")
    return true
end

function TestManager.StartQueue(pc)
    return Start(pc)
end

function TestManager.RunSuite(pc, suiteName)
    if type(suiteName) ~= "string" or suiteName == "" then return false end
    return Start(pc, suiteName)
end

function TestManager.RunSingleCase(pc, suiteName, caseName)
    if type(suiteName) ~= "string" or suiteName == "" or type(caseName) ~= "string"
        or caseName == "" then return false end
    return Start(pc, suiteName, caseName)
end

function TestManager.Stop()
    local state = _queueState
    if not state.running then return end
    state.running, state.phase = false, "idle"
    _status = "stopped"
    TestManager.allPassed = false
    _cleaning = true
    for _, entry in ipairs(state.suites) do
        if entry.started and not entry.cleaned then RunHook(state, entry, "teardown") end
    end
    _cleaning = false
    state.tasks, state.currentTaskIdx, state.waitTime = {}, 0, 0
    ugcprint("[TestManager] 已停止并清理已启动的套件")
end

function TestManager.IsQueueRunning()
    return _queueState.running
end

function TestManager.GetProgress()
    return _queueState.currentTaskIdx, #_queueState.tasks, _queueState.phase
end

local function EvaluateCase(tc, pc)
    TAssert.ResetLastResult()
    local ok, value = pcall(tc.run, pc)
    if not ok then
        return { passed = false, msg = "运行时错误: " .. tostring(value),
            expected = "no error", actual = value }
    end
    local assertion = TAssert.GetLastResult()
    -- 当前 Case 的任何失败断言，优先于显式返回的成功结果。
    if assertion and assertion.passed == false then return assertion end
    if value == false then return { passed = false, msg = "Case 返回 false" } end
    if type(value) == "table" and type(value.passed) == "boolean" then return value end
    if value == true then return { passed = true, msg = "Case 返回 true" } end
    if value == nil and assertion then return assertion end
    return { passed = false, msg = "Case 未产生有效断言结果；请调用 TAssert 或返回明确的测试结果" }
end

local function Finish(state)
    local total, passed, failed = TestManager.GetSummary()
    TestManager.allPassed = total > 0 and failed == 0 and #_errors == 0
    _status = TestManager.allPassed and "passed" or "failed"
    state.running, state.phase = false, "idle"
    local message = string.format("===== 测试%s ===== 通过: %d/%d，错误: %d",
        TestManager.allPassed and "通过" or "失败", passed, total, #_errors)
    ugcprint("[TestManager] " .. message)
    Notify(state.pc, message)
end

function TestManager.Tick(deltaTime)
    local state = _queueState
    if not state.running then return end
    if state.phase == "waiting" then
        state.waitTime = state.waitTime - deltaTime
        if state.waitTime > 0 then return end
        state.waitTime = 0
        state.currentTaskIdx = state.currentTaskIdx + 1
        state.phase = "running"
    end
    local task = state.tasks[state.currentTaskIdx]
    if not task then Finish(state); return end
    local entry, wait = task.entry, Config.GetSetupWait()
    if task.type == "setup" then
        entry.started = true
        Notify(state.pc, ">>> 套件: " .. entry.suite.name)
        entry.setupFailed = not RunHook(state, entry, "setup")
    elseif task.type == "case" then
        local name = entry.suite.name .. "." .. task.tc.name
        local result
        if entry.setupFailed then
            result = { passed = false, skipped = true, msg = "setup 失败，跳过 Case" }
        else
            Notify(state.pc, "执行: " .. task.tc.name)
            result = EvaluateCase(task.tc, state.pc)
        end
        TestManager.results[name] = result
        if not result.passed then TestManager.allPassed = false end
        ugcprint(string.format("[TestManager] %s: %s | %s", name,
            result.passed and "PASS" or "FAIL", tostring(result.msg or "")))
        wait = Config.GetCaseWait()
    elseif task.type == "teardown" then
        RunHook(state, entry, "teardown")
    end
    -- hook/Case 可以调用 Stop，不能在其返回后重新恢复队列。
    if state ~= _queueState or not state.running then return end
    state.waitTime, state.phase = wait or 0, "waiting"
end

function TestManager.BeginPlay()
    if _queueState.running or _cleaning then return false end
    _queueState = EmptyQueue()
    ResetResults()
    if not RegisterAllSuites() then _status = "load-failed"; return false end
    _status = "idle"
    ugcprint(string.format("[TestManager] BeginPlay: 已注册 %d 个 suite", #TestManager.GetSuiteNames()))
    return true
end

function TestManager.Reset()
    if _cleaning then return false end
    TestManager.Stop()
    _suites, _suiteFileNames = {}, {}
    ResetResults()
    _status = "idle"
    _queueState = EmptyQueue()
end

return TestManager
