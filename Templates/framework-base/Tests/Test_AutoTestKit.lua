-- 在工具仓库运行：lua Templates/framework-base/Tests/Test_AutoTestKit.lua
local testDir = assert(arg[0]:gsub("\\", "/"):match("^(.*)/[^/]+$"))
package.path = testDir .. "/../Project/?.lua"
package.cpath = ""
local indexPath = "Script.Setting.AutoTestSuiteIndex"
local fixturePath = "TemplateTests.Suite"
local fixture, indexMode, notifications, logs, loads, rpcError
local function fresh(mode)
    local clear = {}
    for name in pairs(package.loaded) do
        if name:find("Script.Core.AutoTestKit", 1, true) == 1
            or name == indexPath or name == fixturePath then clear[#clear + 1] = name end
    end
    for _, name in ipairs(clear) do package.loaded[name] = nil end
    Global_AutoTestKit, TAssert = nil, nil
    indexMode, notifications, logs, loads, rpcError = mode, {}, {}, 0, false
    package.preload[indexPath] = mode and function()
        if indexMode == "missing" then error("index unavailable") end
        if indexMode == "invalid" then return "invalid" end
        if indexMode == "bad-suite" then return {"TemplateTests.Missing"} end
        if indexMode == "sparse" then return {[1] = fixturePath, [3] = fixturePath} end
        if indexMode == "multiple" then return {fixturePath, "TemplateTests.Second"} end
        return {fixturePath}
    end or nil
    package.preload[fixturePath] = function() loads = loads + 1; return fixture end
    ugcprint = function(msg) logs[#logs + 1] = msg end
    UnrealNetwork = {CallUnrealRPC = function(...)
        if rpcError then error("notification unavailable") end
        notifications[#notifications + 1] = {...}
    end}
    return require("Script.Core.AutoTestKit.Global_AutoTestKit"),
        require("Script.Core.AutoTestKit.TestRunner.TestManager")
end
local function drain(g)
    for _ = 1, 100 do
        if not g.IsRunning() then return end
        g.Tick(10)
    end
    error("queue did not finish")
end
local function suite(cases, setup, teardown)
    fixture = {name = "Probe", cases = cases, setup = setup, teardown = teardown}
end
local function case(name, run) return {name = name, run = run} end
local function passing() return TAssert.equals(2, 1 + 1) end
local passed, failed = 0, 0
local function check(name, fn)
    local ok, err = pcall(fn)
    if ok then passed = passed + 1; print("PASS " .. name)
    else failed = failed + 1; print("FAIL " .. name .. ": " .. tostring(err)) end
end

check("bundled empty index initializes but does not pass tests", function()
    local g = fresh()
    assert(g.BeginPlay())
    assert(#g.GetSuiteDescriptors() == 0 and not g.RunAll(nil))
    local r = g.GetReport()
    assert(r.status == "no-tests" and r.totalCases == 0 and not r.allPassed)
    assert(not g.IsRunning() and #notifications == 0)
end)
check("missing index fails initialization and supports retry", function()
    local g = fresh("missing")
    assert(not g.BeginPlay() and g.GetReport().status == "load-failed")
    suite({case("pass", passing)})
    indexMode = "fixture"
    assert(g.BeginPlay() and #g.GetSuiteDescriptors() == 1)
end)
check("invalid index and missing suite block partial runs", function()
    for _, mode in ipairs({"invalid", "bad-suite", "sparse"}) do
        local g = fresh(mode)
        assert(not g.RunAll(nil))
        assert(g.GetReport().status == "load-failed" and #g.GetReport().errors > 0)
    end
end)
check("malformed cases fail loading instead of partially running", function()
    for _, cases in ipairs({
        {[1] = case("one", passing), [3] = case("three", passing)},
        {case("same", passing), case("same", passing)},
        {{name = "missing-run"}},
    }) do
        suite(cases)
        local g = fresh("fixture")
        assert(not g.RunAll(nil) and g.GetReport().status == "load-failed")
    end
end)
check("pass failure and runtime error are independently recorded", function()
    suite({case("pass", passing), case("fail", function() TAssert.equals(1, 2) end),
        case("error", function() error("case error") end)})
    local g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    local r = g.GetReport()
    assert(r.totalCases == 3 and r.passedCases == 1 and r.failedCases == 2)
    assert(r.status == "failed" and not r.allPassed and #notifications == 0)
end)
check("false nil and invalid result do not pass", function()
    suite({case("false", function() return false end), case("nil", function() end),
        case("invalid", function() return {passed = "true"} end)})
    local g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    local r = g.GetReport()
    assert(r.failedCases == 3 and r.passedCases == 0 and not r.allPassed)
end)
check("first failure survives later assertions and explicit success", function()
    suite({case("locked", function()
        TAssert.equals(1, 2, "first")
        TAssert.equals(3, 4, "second")
        return TAssert.equals(5, 5, "last")
    end)})
    local g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    assert(g.GetReport().results["Probe.locked"].msg == "first")
    assert(not g.GetReport().allPassed)
end)
check("assertion success cannot override return false", function()
    suite({case("false", function() passing(); return false end)})
    local g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    assert(g.GetReport().failedCases == 1)
end)
check("implicit assertion and explicit boolean/table success work", function()
    suite({case("implicit", function() passing() end), case("true", function() return true end),
        case("table", function() return {passed = true, msg = "checked"} end)})
    local g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    assert(g.GetReport().allPassed and g.GetReport().passedCases == 3)
end)
check("setup failure skips cases and still cleans up", function()
    local ran, cleaned = 0, 0
    suite({case("skip", function() ran = ran + 1; return true end)},
        function() error("setup error") end, function() cleaned = cleaned + 1 end)
    local g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    local r = g.GetReport()
    assert(ran == 0 and cleaned == 1 and r.skippedCases == 1 and r.failedCases == 1)
    assert(r.status == "failed" and r.errors[1].phase == "setup")
end)
check("teardown failure prevents all-passed result", function()
    suite({case("pass", passing)}, nil, function() error("cleanup error") end)
    local g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    local r = g.GetReport()
    assert(r.passedCases == 1 and r.status == "failed" and not r.allPassed)
    assert(#r.errors == 1 and r.errors[1].phase == "teardown")
end)
check("hooks returning false fail and cleanup errors remain visible", function()
    suite({case("skip", passing)}, function() return false, "setup rejected" end,
        function() return false, "cleanup rejected" end)
    local g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    local r = g.GetReport()
    assert(#r.errors == 2 and r.errors[1].message == "setup rejected")
    assert(r.errors[2].message == "cleanup rejected" and not r.allPassed)
end)
check("single case includes setup and teardown", function()
    local setup, teardown = 0, 0
    suite({case("one", passing), case("two", function() error("not selected") end)},
        function() setup = setup + 1 end, function() teardown = teardown + 1 end)
    local g = fresh("fixture")
    assert(g.RunSingleCase(nil, "Suite_Probe", "one")); drain(g)
    assert(setup == 1 and teardown == 1 and g.GetReport().totalCases == 1)
    assert(g.GetReport().allPassed)
end)
check("Stop before setup does not clean up an unstarted suite", function()
    local cleaned = 0
    suite({case("one", passing)}, nil, function() cleaned = cleaned + 1 end)
    local g = fresh("fixture")
    assert(g.RunAll(nil)); g.Stop(); g.Tick(10)
    assert(cleaned == 0 and not g.IsRunning() and g.GetReport().status == "stopped")
    assert(not g.GetReport().allPassed)
end)
check("Stop cleans an active suite exactly once", function()
    local cleaned = 0
    suite({case("one", passing)}, nil, function() cleaned = cleaned + 1 end)
    local g = fresh("fixture")
    assert(g.RunAll(nil)); g.Tick(0); g.Stop(); g.Stop(); g.Tick(10)
    assert(cleaned == 1 and not g.IsRunning() and g.GetReport().status == "stopped")
end)
check("Stop cleanup rejects reentrant startup and preserves errors", function()
    local g, attempted
    suite({case("one", passing)}, nil, function()
        attempted = g.RunAll(nil)
        error("stop cleanup error")
    end)
    g = fresh("fixture")
    assert(g.RunAll(nil)); g.Tick(0); g.Stop()
    assert(attempted == false and not g.IsRunning())
    assert(g.GetReport().status == "stopped" and #g.GetReport().errors == 1)
end)
check("Stop inside a case cannot restart the queue", function()
    local g, cleaned
    cleaned = 0
    suite({case("stop", function() g.Stop(); return true end),
        case("never", function() error("not reached") end)}, nil,
        function() cleaned = cleaned + 1 end)
    g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    assert(cleaned == 1 and g.GetReport().status == "stopped" and not g.GetReport().allPassed)
end)
check("busy queue rejects a new run without reload or result loss", function()
    suite({case("one", passing), case("two", passing)})
    local g = fresh("fixture")
    assert(g.RunAll(nil)); g.Tick(0); g.Tick(10)
    local before = loads
    assert(not g.RunSuite(nil, "Probe") and loads == before)
    assert(g.GetReport().results["Probe.one"].passed)
    drain(g)
    assert(g.GetReport().allPassed and g.GetReport().totalCases == 2)
end)
check("empty suite does not run hooks or count as passed", function()
    suite({}, function() error("should not run") end)
    local g = fresh("fixture")
    assert(g.BeginPlay() and not g.RunAll(nil))
    assert(g.GetReport().status == "no-tests" and #g.GetReport().errors == 0)
end)
check("no-tests after a completed run resets old progress", function()
    suite({case("one", passing)})
    local g = fresh("fixture")
    assert(g.RunAll(nil)); drain(g)
    suite({})
    assert(not g.RunAll(nil))
    local index, total, phase = g.GetProgress()
    assert(index == 0 and total == 0 and phase == "idle")
    assert(g.GetReport().totalCases == 0 and not g.GetReport().allPassed)
end)
check("one failing suite does not prevent the next suite or its cleanup", function()
    local skipped, cleaned, secondRan = false, 0, false
    suite({case("skip", function() skipped = true; return true end)},
        function() error("first setup failed") end, function() cleaned = cleaned + 1 end)
    package.preload["TemplateTests.Second"] = function()
        return {name = "Second", cases = {case("run", function() secondRan = true; return true end)},
            teardown = function() cleaned = cleaned + 1 end}
    end
    package.loaded["TemplateTests.Second"] = nil
    local g = fresh("multiple")
    assert(g.RunAll(nil)); drain(g)
    assert(not skipped and secondRan and cleaned == 2)
    assert(g.GetReport().failedCases == 1 and g.GetReport().passedCases == 1)
    assert(not g.GetReport().allPassed)
end)
check("Tick observes configured wait in seconds", function()
    local ran = 0
    suite({case("one", function() ran = ran + 1; return true end)})
    local g = fresh("fixture")
    assert(g.RunAll(nil)); g.Tick(0); g.Tick(0.5)
    assert(ran == 0)
    g.Tick(0.5); assert(ran == 1)
    drain(g); assert(g.GetReport().allPassed)
end)
check("controller notification and notification failure do not change case results", function()
    suite({case("one", passing)})
    local g = fresh("fixture")
    local pc = {}
    assert(g.RunAll(pc)); drain(g)
    assert(#notifications > 0 and g.GetReport().allPassed)
    for _, call in ipairs(notifications) do
        assert(call[1] == pc and call[2] == pc and call[3] == "Client_TipContent")
    end
    rpcError = true
    assert(g.RunAll(pc)); drain(g)
    assert(g.GetReport().allPassed)
end)
check("client sandbox without package.loaded can initialize and run suites", function()
    suite({case("one", passing)})
    local g = fresh("fixture")
    local realPackage = package
    package = {}
    local ok, err = pcall(function()
        assert(g.BeginPlay() and g.RunAll(nil))
        drain(g)
        assert(g.GetReport().allPassed and g.GetReport().totalCases == 1)
    end)
    package = realPackage
    assert(ok, err)
end)
print(string.format("%d passed, %d failed; template modules only, engine notifications mocked.", passed, failed))
if failed > 0 then os.exit(1) end
