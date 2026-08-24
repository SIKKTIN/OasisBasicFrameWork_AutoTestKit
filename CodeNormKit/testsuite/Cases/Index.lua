-- ============================================================
-- Cases/Index.lua
-- 测试用例入口（基于外部配置）
--
-- 使用 CodeNorm.LoadTests() 从外部配置加载测试用例
-- 配置文件位于 TestHelper/ExternalConfig/tests.lua
--
-- 旧的手动 require 方式已废弃，所有测试配置统一在 tests.lua 中管理
-- ============================================================

local function scriptAbsDir()
    local info = debug.getinfo(1, "S")
    local p = info.source:match("@(.*)") or ""
    if not p:match("^%a:") and not p:match("^[/\\]") then
        local pwd = io.popen("cd"):read("*all"):gsub("[\r\n]", "")
        p = pwd .. "\\" .. p
    end
    return (p:gsub("\\", "/"):match("(.*/)") or "./")
end
local casesDir = scriptAbsDir()                            -- .../testsuite/Cases/
local kitRoot  = casesDir .. "../../"                       -- .../CodeNormKit/
local testHelperRoot = kitRoot .. ".." .. "\\"             -- .../TestHelper/

package.path = package.path
    .. ";" .. kitRoot .. "?.lua"

CodeNorm = require("init")

-- 从外部配置加载测试用例
local configPath = testHelperRoot .. "ExternalConfig\\tests.lua"
CodeNorm.LoadTests(configPath)

return CodeNorm
