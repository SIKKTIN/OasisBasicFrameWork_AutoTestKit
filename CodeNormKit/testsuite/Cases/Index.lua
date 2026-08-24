-- ============================================================
-- Cases/Index.lua
-- 业务包用例注册表（手动 require）
--
-- 这是唯一一个文件记录"测了哪些被测包"。
-- 新增被测包：在 registry/ 下加一个 <Pkg>.lua，然后在这里 require 一行。
-- 临时禁用某个包：注释对应 require 行即可。
--
-- 文件名选 Index 而非 Cases：
--   避免 Cases/Cases.lua 这种"目录与文件同名"导致的隐式 init.lua 依赖。
--   现在 100% 显式 require。
--
-- 路径：用绝对路径（基于 __FILE__）加 package.path，避免依赖 cwd。
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

-- 把 CodeNormKit 根加进 path，让 require("init") / "registry.CountDown" 等都能解析
--   require("init")                  → kitRoot/init.lua
--   require("registry.CountDown")     → kitRoot/../testsuite/registry/CountDown.lua
--                                      （实际上 Run_All.lua 已经把 testsuite/?.lua 加进 path）
package.path = package.path
    .. ";" .. kitRoot .. "?.lua"

require("init")

require("registry.CountDown")
require("registry.AutoTestKit")
require("registry._DemoOrchestrator")
-- require("registry.Player")  -- 未来加
-- require("registry.Task")    -- 未来加

return require("init")
