-- 在工具仓库运行：lua Templates/framework-base/Tests/Test_GameDataCore.lua
local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(source:match("^(.*)/[^/]+$"))
package.path = dir .. "/../Project/?.lua"
package.cpath = ""
local logs, gameState
local function fresh(definitions)
    for _, path in ipairs({
        "Script.Core.GameDataCore.Global_GameDataCore",
        "Script.Core.GameDataCore.System_GameDataCore",
        "Script.Setting.Package_Meta_Index",
    }) do package.loaded[path] = nil end
    Global_GameDataCore = nil
    logs, gameState = {}, {}
    ugcprint = function(message) logs[#logs + 1] = tostring(message) end
    UGCGameSystem = { GetGameState = function() return gameState end }
    local index = require("Script.Setting.Package_Meta_Index")
    if definitions then
        index.Load = function()
            return {{packageName = "Example", gameData = definitions}}
        end
    end
    return require("Script.Core.GameDataCore.Global_GameDataCore")
end
local function contains(part)
    for _, message in ipairs(logs) do
        if message:find(part, 1, true) then return true end
    end
    return false
end
local passed, failed = 0, 0
local function check(name, fn)
    local ok, err = pcall(fn)
    if ok then passed = passed + 1; print("PASS " .. name)
    else failed = failed + 1; print("FAIL " .. name .. ": " .. tostring(err)) end
end
check("bundled empty Meta index initializes", function()
    local global = fresh()
    assert(global.BeginPlay() == true and #global.GetAllKeys() == 0)
end)
check("explicit true succeeds and receives the GameState", function()
    local calls = 0
    local global = fresh({{dataKey = "sample", DataInit = function(state)
        assert(state == gameState); calls = calls + 1; return true
    end}})
    assert(global.BeginPlay() == true and calls == 1)
end)
check("explicit false fails BeginPlay with fallback diagnostic", function()
    local global = fresh({{dataKey = "sample", DataInit = function() return false end}})
    assert(global.BeginPlay() == false)
    assert(contains("sample") and contains("DataInit 返回 false"))
end)
check("false preserves optional failure detail", function()
    local global = fresh({{dataKey = "sample", DataInit = function() return false, "not ready" end}})
    assert(global.BeginPlay() == false and contains("not ready"))
end)
check("nil return remains compatible", function()
    local global = fresh({{dataKey = "sample", DataInit = function(state) state.initialized = true end}})
    assert(global.BeginPlay() == true and gameState.initialized)
end)
check("thrown error remains a failure without escaping", function()
    local global = fresh({{dataKey = "sample", DataInit = function() error("init exploded") end}})
    assert(global.BeginPlay() == false and contains("init exploded"))
end)
check("public InitAllData propagates a later false result", function()
    local succeeds = true
    local global = fresh({{dataKey = "sample", DataInit = function() return succeeds end}})
    assert(global.BeginPlay() == true)
    succeeds = false
    assert(global.InitAllData(gameState) == false)
    succeeds = true
    assert(global.InitAllData(gameState) == true)
end)
check("one failure does not skip the remaining data initializers", function()
    local calls = 0
    local global = fresh({
        {dataKey = "first", DataInit = function() calls = calls + 1; return false end},
        {dataKey = "second", DataInit = function() calls = calls + 1; return true end},
    })
    assert(global.BeginPlay() == false and calls == 2)
end)
print(string.format("%d passed, %d failed; template modules only, GameState mocked.", passed, failed))
if failed > 0 then os.exit(1) end
