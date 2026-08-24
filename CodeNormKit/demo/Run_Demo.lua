-- ============================================================
-- Run_Demo.lua
-- CodeNormKit 自带 fixture 验证入口
--
-- 用途：
--   - 验证 CodeNormKit 自身规则正确性
--   - 作为"如何使用 Kit"的最小示例
--
-- 用法：
--   lua demo/Run_Demo.lua
--   .\demo\Run_Demo.ps1  （双击也可）
--
-- 与 testsuite/Run_All.lua 的区别：
--   - testsuite/ 跑业务包（如 CountDown），日常检测用
--   - demo/      跑 Kit 自带 fixture，验证 Kit 本身 + 示例用
--   两者互不耦合。
-- ============================================================

-- 让 require("init") 能找到 TestHelper/CodeNormKit/init.lua
package.path = package.path
    .. ";./TestHelper/CodeNormKit/?.lua"
    .. ";./?.lua"

local CodeNorm = require("init")

-- ============================================================
-- Step 1: 注册 fixture 包
-- systemDir / privatesPath 都指向本目录 demo/（CodeNormKit 自带）
--
-- 注意：fixture 跟 CodeNormKit 本体在一起（WithDrawCache 下），
-- 不在业务项目（Withdraw）里。parser 支持绝对路径，所以这里直接传
-- 解析后的绝对路径，避免与 PROJECT_ROOT 耦合。
-- ============================================================

local function scriptDir()
    local info = debug.getinfo(1, "S")
    local p = info.source:match("@(.*)") or ""
    -- 加 cwd 转绝对（如果还没盘符）
    if not p:match("^%a:") and not p:match("^[/\\]") then
        local pwd = io.popen("cd"):read("*all"):gsub("[\r\n]", "")
        p = pwd .. "\\" .. p
    end
    return (p:gsub("/", "\\"):match("(.*\\)") or ".\\")
end
local kitDemoDir = (scriptDir():gsub("\\", "/")):gsub("/$", "")

CodeNorm.RegisterPackage("Task", {
    systemDir    = kitDemoDir,
    privatesPath = kitDemoDir .. "/Task_Privates.lua",
})
CodeNorm.RegisterPackage("Player", {
    systemDir    = kitDemoDir,
    privatesPath = kitDemoDir .. "/Multi_Privates.lua",
})

-- ============================================================
-- Step 2: 注册测试期望（4 个 demo 用例）
-- ============================================================

CodeNorm.Expect("Task",   "System_Task_Bad.lua",     { count = 6, label = "Demo 1: Task Bad 文件 6 处违规" })
CodeNorm.Expect("Task",   "System_Task_Clean.lua",   { count = 0, label = "Demo 2: Task Clean 文件零违规" })
CodeNorm.Expect("Task",   "System_Task_Comment.lua", { count = 0, label = "Demo 3: Task Comment 注释豁免" })
CodeNorm.Expect("Player", "System_Player_Bad.lua",   { count = 7, label = "Demo 4: 多 owner Player 文件 7 处违规" })

-- ============================================================
-- Step 3: 跑 + 打印
-- ============================================================

local results = CodeNorm.Run()
CodeNorm.PrintReport(results)

if results.allOk then
    print("\n[PASS] CodeNormKit 自带 demo 全部通过")
    os.exit(0)
else
    print(string.format("\n[FAIL] %d 个 demo 用例失败", results.fail))
    os.exit(1)
end
