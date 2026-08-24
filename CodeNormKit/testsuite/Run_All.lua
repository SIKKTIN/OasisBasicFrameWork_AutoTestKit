-- ============================================================
-- Run_All.lua
-- CodeNormKit 唯一测试入口
--
-- 用法：
--   lua Run_All.lua            跑所有已注册的用例
--   lua Run_All.lua CountDown  只跑 CountDown 包（子集过滤）
--
-- 推荐启动方式：CodeNormKit_Runner.ps1（已设好 LUA_PATH）
-- 直接 lua 调用也行，但需 cd 到业务项目根（Withdraw），
-- 本文件会自动探测 CodeNormKit 目录并设置 package.path。
-- ============================================================

-- 把 CodeNormKit 根与 testsuite/ 加进 package.path
-- 注意 Lua 的 ? 是字符串替换：Cases.Index 替换 ? 后是 Cases\Index.lua，
-- 所以模板要放在父目录，让 ? 能展开成完整相对路径。
local function scriptAbsDir()
    local info = debug.getinfo(1, "S")
    local p = info.source:match("@(.*)") or ""
    if not p:match("^%a:") and not p:match("^[/\\]") then
        local pwd = io.popen("cd"):read("*all"):gsub("[\r\n]", "")
        p = pwd .. "\\" .. p
    end
    return (p:gsub("\\", "/"):match("(.*/)") or "./")
end
local here    = scriptAbsDir()                            -- .../testsuite/
local kitRoot = here .. "../"                              -- .../CodeNormKit/

package.path = package.path
    .. ";" .. kitRoot .. "?.lua"
    .. ";" .. here    .. "?.lua"

-- 通过 init.PROJECT_ROOT 拿到业务项目根，避免硬编码重复
local CodeNorm = require("init")
local projectRootSlash = CodeNorm.PROJECT_ROOT:gsub("\\", "/")
package.path = package.path .. ";" .. projectRootSlash .. "/?.lua"

-- 重新 require Cases.Index（用同一个 CodeNorm 实例）
package.loaded["Cases.Index"] = nil
CodeNorm = require("Cases.Index")

-- 解析可选参数：第一个 CLI 参数 = onlyPackage
local only = arg and arg[1]

local results = CodeNorm.Run(nil, only and { onlyPackage = only } or nil)
CodeNorm.PrintReport(results, { verbose = true })

if results.allOk then
    print("\n[OK] CodeNormKit 所有用例通过")
    os.exit(0)
else
    print(string.format("\n[FAIL] %d 个用例失败", results.fail))
    os.exit(1)
end