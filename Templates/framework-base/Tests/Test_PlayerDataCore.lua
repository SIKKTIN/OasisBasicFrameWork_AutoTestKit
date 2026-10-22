-- 在工具仓库运行：lua Templates/framework-base/Tests/Test_PlayerDataCore.lua
local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(source:match("^(.*)/[^/]+$"))
package.path = dir .. "/../Project/?.lua"
package.cpath = ""
local archive, saved, saves, reads, server, logs
local function fresh(keys, definitions)
    for _, path in ipairs({
        "Script.Core.PlayerDataCore.Global_PlayerDataCore",
        "Script.Core.PlayerDataCore.System_PlayerDataCore",
        "Script.Setting.Package_Meta_Index", "Script.Const.Data.Const_Data",
        "Script.Event.EventType", "Script.Core.EventSystem.UGCEventSystem",
    }) do package.loaded[path] = nil end
    Global_PlayerDataCore, EventType, UGCEventSystem = nil, nil, nil
    archive, saved, saves, reads, server, logs = {}, nil, 0, 0, true, {}
    ugcprint = function(message) logs[#logs + 1] = tostring(message) end
    UGCGameSystem = {
        IsServer = function() return server end,
        GetUIDByPlayerController = function() return 88 end,
        GetPlayerKeyByPlayerController = function() return 7 end,
    }
    UGCPlayerStateSystem = {
        GetPlayerArchiveData = function() reads = reads + 1; return archive end,
        SavePlayerArchiveData = function(uid, data)
            assert(uid == 88); saves = saves + 1; saved = data; archive = data; return true
        end,
    }
    require("Script.Event.EventType")
    require("Script.Core.EventSystem.UGCEventSystem")
    local constants = require("Script.Const.Data.Const_Data")
    constants.PLAYER_DATA_TYPE = keys or {}
    local index = require("Script.Setting.Package_Meta_Index")
    if definitions then
        index.Load = function() return {{packageName = "Example", playerData = definitions}} end
    end
    return require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
end
local function marked(data)
    data = data or {}
    data.__oasisArchive = {version = 1}
    return data
end
local passed, failed = 0, 0
local function check(name, fn)
    local ok, err = pcall(fn)
    if ok then passed = passed + 1; print("PASS " .. name)
    else failed = failed + 1; print("FAIL " .. name .. ": " .. tostring(err)) end
end
check("empty bundled metadata initializes without business packages", function()
    local p = fresh()
    assert(p.BeginPlay() == true and #p.GetAllKeys() == 0)
end)
check("BeginPlay only registers; direct initialization receives playerKey", function()
    local calls = 0
    local p = fresh(nil, {{dataKey = "stats", DataInit = function(key)
        assert(key == 7); calls = calls + 1; return true
    end}})
    assert(p.BeginPlay() and calls == 0)
    assert(p.InitAllData(7) and calls == 1)
end)
check("false and exception fail without skipping other initializers", function()
    local calls = 0
    local p = fresh(nil, {
        {dataKey = "first", DataInit = function() calls = calls + 1; return false, "not ready" end},
        {dataKey = "second", DataInit = function() calls = calls + 1; error("broken init") end},
        {dataKey = "third", DataInit = function() calls = calls + 1; return true end},
    })
    assert(p.BeginPlay() and p.InitAllData(7) == false and calls == 3)
    local text = table.concat(logs, "\n")
    assert(text:find("not ready", 1, true) and text:find("broken init", 1, true))
end)
check("nil initialization result remains compatible", function()
    local p = fresh(nil, {{dataKey = "stats", DataInit = function() end}})
    assert(p.BeginPlay() and p.InitAllData(7))
end)
check("business-independent archive round trip", function()
    local p = fresh({STATS = "stats"})
    local pc = {stats = {level = 10}}
    assert(p.SaveArchiveData(pc) and saves == 1)
    assert(saved.__oasisArchive.version == 1 and saved.stats.level == 10)
    assert(pc.__oasisArchive == nil)
    local exists, reason = p.CheckArchiveData(pc)
    assert(exists == true and reason == "exists")
    pc.stats = nil
    assert(p.RestoreArchiveData(pc) and pc.stats.level == 10)
end)
check("only empty table indicates no archive", function()
    local p = fresh()
    local exists, reason = p.CheckArchiveData({})
    assert(exists == false and reason == "missing" and reads == 1)
end)
check("nil or scalar archive is an error rather than new player", function()
    local p = fresh()
    for _, value in ipairs({false, 123, "broken"}) do
        archive = value
        local exists, reason = p.CheckArchiveData({})
        assert(exists == nil and reason == "invalid-archive")
    end
    archive = nil
    local exists, reason = p.CheckArchiveData({})
    assert(exists == nil and reason == "invalid-archive")
end)
check("legacy condition data is not silently treated as missing", function()
    local p = fresh({STATS = "stats"})
    archive = {condition_data = {}, stats = {level = 10}}
    local exists, reason = p.CheckArchiveData({})
    assert(exists == nil and reason == "unrecognized-archive" and saves == 0)
end)
check("nil archive with engine-confirmed zero bytes is missing", function()
    local p = fresh(); archive = nil
    UGCPlayerStateSystem.GetPlayerDataSize = function(uid) assert(uid == 88); return 0 end
    local exists, reason = p.CheckArchiveData({})
    assert(exists == false and reason == "missing" and saves == 0)
end)
check("nil archive with nonzero invalid or failed size stays an error", function()
    local p = fresh(); archive = nil
    for _, value in ipairs({1, -1, "0", false}) do
        UGCPlayerStateSystem.GetPlayerDataSize = function() return value end
        local exists, reason = p.CheckArchiveData({})
        assert(exists == nil and reason == "invalid-archive" and saves == 0)
    end
    UGCPlayerStateSystem.GetPlayerDataSize = function() error("size unavailable") end
    assert(p.CheckArchiveData({}) == nil and saves == 0)
end)
check("unsupported version is an error", function()
    local p = fresh()
    archive = {__oasisArchive = {version = 2}}
    local exists, reason = p.CheckArchiveData({})
    assert(exists == nil and reason == "unsupported-version")
end)
check("read exception does not become missing or trigger a save", function()
    local p = fresh()
    UGCPlayerStateSystem.GetPlayerArchiveData = function() error("read unavailable") end
    local exists, reason = p.CheckArchiveData({})
    assert(exists == nil and reason == "read-failed" and saves == 0)
    local ok, err = p.RestoreArchiveData({})
    assert(ok == false and err == "read-failed")
end)
check("client and unavailable UID are errors", function()
    local p = fresh()
    server = false
    local exists, reason = p.CheckArchiveData({})
    assert(exists == nil and reason == "server-only" and reads == 0)
    server = true
    UGCGameSystem.GetUIDByPlayerController = function() return nil end
    exists, reason = p.CheckArchiveData({})
    assert(exists == nil and reason == "uid-unavailable" and reads == 0)
end)
check("no declared packages never submits an empty save", function()
    local p = fresh()
    archive = marked({stats = {level = 10}})
    local ok, reason = p.SaveArchiveData({})
    assert(ok == false and reason == "no-data-packages" and saves == 0)
    assert(archive.stats.level == 10)
end)
check("reserved metadata key cannot be a business data key", function()
    local p = fresh({BAD = "__oasisArchive"})
    local ok, reason = p.SaveArchiveData({})
    assert(ok == false and reason == "invalid-data-key" and saves == 0)
end)
check("invalid package is not sent to storage", function()
    local p = fresh({STATS = "stats"})
    assert(p.SaveArchiveData({stats = 123}) == false and saves == 0)
end)
check("save false or exception propagates failure", function()
    local p = fresh({STATS = "stats"})
    UGCPlayerStateSystem.SavePlayerArchiveData = function() return false end
    assert(p.SaveArchiveData({stats = {}}) == false)
    UGCPlayerStateSystem.SavePlayerArchiveData = function() error("save unavailable") end
    local ok, reason = p.SaveArchiveData({stats = {}})
    assert(ok == false and reason == "save-failed")
end)
check("restore validates all package types before updating player", function()
    local p = fresh({STATS = "stats", BAG = "bag"})
    archive = marked({stats = {level = 10}, bag = 123})
    local oldStats, oldBag = {level = 1}, {items = {}}
    local pc = {stats = oldStats, bag = oldBag}
    assert(p.RestoreArchiveData(pc) == false)
    assert(pc.stats == oldStats and pc.bag == oldBag)
end)
check("missing package keeps existing empty-table fallback without DataInit", function()
    local calls = 0
    local p = fresh({STATS = "stats", BAG = "bag"}, {
        {dataKey = "bag", DataInit = function() calls = calls + 1 end},
    })
    assert(p.BeginPlay())
    archive = marked({stats = {level = 10}})
    local pc = {}
    assert(p.RestoreArchiveData(pc) and pc.stats.level == 10)
    assert(type(pc.bag) == "table" and calls == 0 and pc.__oasisArchive == nil)
end)
check("component contract saves only after initialization succeeds", function()
    local succeeds = false
    local pc = {}
    local p = fresh({STATS = "stats"}, {{dataKey = "stats", DataInit = function()
        if not succeeds then return false end
        pc.stats = {level = 1}; return true
    end}})
    assert(p.BeginPlay())
    local function firstLoad()
        local exists, reason = p.CheckArchiveData(pc)
        if exists == nil then return false, reason end
        if exists then return p.RestoreArchiveData(pc) end
        if not p.InitAllData(7) then return false end
        return p.SaveArchiveData(pc)
    end
    assert(firstLoad() == false and saves == 0)
    succeeds = true
    assert(firstLoad() and saves == 1)
    assert(firstLoad() and saves == 1 and pc.stats.level == 1)
end)
print(string.format("%d passed, %d failed; template modules only, engine/archive mocked.", passed, failed))
if failed > 0 then os.exit(1) end
