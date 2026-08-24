-- ============================================================
-- registry/AutoTestKit.lua
-- AutoTestKit 包专属 Lint 用例（基于 CodeNormKit）
--
-- 本文件本身只负责声明"测什么 / 期望几条违规"。
-- 真正执行在 Run_All.lua → Cases/Index.lua → 这里。
--
-- 用 Cases/Index.lua 的手动 require 注册进来。
-- 想禁用某个包：注释 Cases/Index.lua 里那一行 require 即可。
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
local registryDir = scriptAbsDir()                    -- .../testsuite/registry/
local kitDir      = registryDir .. "../../"            -- .../CodeNormKit/

package.path = package.path .. ";" .. kitDir .. "?.lua"

local CodeNorm = require("init")

-- 声明被测包：自动推导 privates / system 路径
CodeNorm.RegisterPackage("AutoTestKit")

-- TestManager.lua 不在 System/ 下，路径直接给完整相对路径。
-- 期望 5 违规：所有 Config 字段读取必须走 Config_AutoTestKit 的 getter。
CodeNorm.Expect("AutoTestKit", {
    path  = "Script/Package/AutoTestKit/TestRunner/TestManager.lua",
    count = 5,
    label = "AutoTestKit / TestManager.lua (走 Config getter)",
})
