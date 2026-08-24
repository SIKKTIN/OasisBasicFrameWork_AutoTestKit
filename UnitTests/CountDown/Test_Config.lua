-- Config_CountDown 单元测试
-- 运行: lua54 Test_Config.lua
-- 当前目录为 WithDrawCache\TestHelper\Test\CountDown

local projectRoot = [[E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Withdraw]]
package.path = projectRoot .. [[\Script\?.lua;]] .. package.path

print("=" .. string.rep("=", 60))
print("Config_CountDown 单元测试")
print("=" .. string.rep("=", 60))

local passed = 0
local failed = 0

local function test(name, fn)
    local ok, err = pcall(fn)
    if ok then
        print("  [通过] " .. name)
        passed = passed + 1
    else
        print("  [失败] " .. name)
        print("         错误: " .. tostring(err))
        failed = failed + 1
    end
end

-- 加载模块
local Config = require('Package.CountDown.Config.Config_CountDown')

-- ========== GetThreshold 测试 ==========
print("\n[GetThreshold]")

test("应该返回 RandomEvacuateShow 的阈值 600", function()
    local result = Config.GetThreshold("RandomEvacuateShow")
    assert(result == 600, "期望 600，实际 " .. tostring(result))
end)

test("应该返回 EvacuateFail 的阈值 1500", function()
    local result = Config.GetThreshold("EvacuateFail")
    assert(result == 1500, "期望 1500，实际 " .. tostring(result))
end)

test("应该返回不存在的名称的 nil", function()
    local result = Config.GetThreshold("不存在的名称")
    assert(result == nil, "期望 nil，实际 " .. tostring(result))
end)

test("应该返回空字符串的 nil", function()
    local result = Config.GetThreshold("")
    assert(result == nil, "期望 nil，实际 " .. tostring(result))
end)

-- ========== Milestones 测试 ==========
print("\n[Milestones]")

test("应该有 2 个里程碑配置", function()
    assert(#Config.Milestones == 2, "期望 2 个里程碑，实际 " .. #Config.Milestones)
end)

test("每个里程碑应该有 name 和 threshold 字段", function()
    for i, m in ipairs(Config.Milestones) do
        assert(m.name ~= nil, "第 " .. i .. " 个里程碑缺少 name")
        assert(m.threshold ~= nil, "第 " .. i .. " 个里程碑缺少 threshold")
        assert(type(m.threshold) == "number", "threshold 应该是数字")
    end
end)

-- ========== 结果统计 ==========
print("\n" .. string.rep("=", 62))
print(string.format("结果: %d 通过, %d 失败, 共 %d 个测试", passed, failed, passed + failed))
print(string.rep("=", 62))

if failed > 0 then
    os.exit(1)
end
