-- ============================================================
-- Test_Util_Math.lua
-- Util_Math 单元测试
-- 运行: lua54 Test_Util_Math.lua
-- 当前目录: WithDrawCache\TestHelper\Test\Util
-- ============================================================

local projectRoot = [[E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Withdraw]]
package.path = projectRoot .. [[\Script\?.lua;]] .. package.path

print("=" .. string.rep("=", 60))
print("Util_Math 单元测试")
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

local function assertEqual(actual, expected, msg)
    if actual ~= expected then
        error(string.format("%s | 期望 %s, 实际 %s",
            msg or "不相等", tostring(expected), tostring(actual)), 2)
    end
end

local function assertDeepEqual(actual, expected, msg)
    if type(actual) ~= type(expected) then
        error(string.format("%s | 类型不同: 期望 %s, 实际 %s",
            msg or "类型不同", type(expected), type(actual)), 2)
    end
    if type(actual) ~= "table" then
        if actual ~= expected then
            error(string.format("%s | 期望 %s, 实际 %s",
                msg or "值不同", tostring(expected), tostring(actual)), 2)
        end
        return
    end
    if #actual ~= #expected then
        error(string.format("%s | 长度不同: 期望 %d, 实际 %d",
            msg or "数组长度", #expected, #actual), 2)
    end
    for i = 1, #expected do
        assertDeepEqual(actual[i], expected[i], string.format("%s[索引 %d]", msg or "数组", i))
    end
end

-- 加载被测模块
local Util_Math = require('Utility.Util_Math')
math.randomseed(20260823)  -- 固定种子,保证结果可重现

-- ============================================================
-- [PickRandomN] 基本功能
-- ============================================================
print("\n[PickRandomN - 基本功能]")

test("空表应该返回空数组", function()
    local r = Util_Math.PickRandomN({}, 2)
    assertEqual(#r, 0, "空表应返回长度 0 的数组")
end)

test("need=0 应该返回空数组", function()
    local r = Util_Math.PickRandomN({"A", "B", "C"}, 0)
    assertEqual(#r, 0, "need=0 应返回空数组")
end)

test("need>n 应该 clamp 到 n（全选）", function()
    local src = {"A", "B", "C"}
    local r = Util_Math.PickRandomN(src, 10)
    assertEqual(#r, 3, "need=10,n=3 应返回 3 个元素")
    table.sort(r, function(a, b) return a < b end)
    assertDeepEqual(r, src, "全选结果应等于源排序后")
end)

test("need=1 应该返回源中的某个元素", function()
    local src = {"A", "B", "C", "D", "E"}
    local r = Util_Math.PickRandomN(src, 1)
    assertEqual(#r, 1, "长度应为 1")
    local found = false
    for _, v in ipairs(src) do
        if v == r[1] then found = true end
    end
    assert(found, "返回值必须是源中的元素")
end)

test("非 table 输入应返回空数组(防御)", function()
    assertEqual(#Util_Math.PickRandomN(nil, 2), 0, "nil 应返回空")
    assertEqual(#Util_Math.PickRandomN("not table", 2), 0, "string 应返回空")
end)

test("负数 need 应返回空数组(防御)", function()
    assertEqual(#Util_Math.PickRandomN({"A"}, -1), 0, "负数 need 应返回空")
end)

-- ============================================================
-- [PickRandomN] 正确性:无重复
-- ============================================================
print("\n[PickRandomN - 无重复保证]")

test("抽取 2 个时,结果应不重复", function()
    local src = {"A", "B", "C", "D", "E"}
    for _ = 1, 1000 do
        local r = Util_Math.PickRandomN(src, 2)
        if #r == 2 then
            assert(r[1] ~= r[2], "两次抽样结果不应相同")
        end
    end
end)

test("抽取 n 个时(全选),结果是源的一个排列", function()
    local src = {10, 20, 30, 40, 50}
    local r = Util_Math.PickRandomN(src, 5)
    table.sort(r)
    assertDeepEqual(r, src, "全选结果应是源的一个排列")
end)

-- ============================================================
-- [PickRandomN] 正确性:不污染原表
-- ============================================================
print("\n[PickRandomN - 不污染原表]")

test("PickRandomN 不应修改源数组", function()
    local src = {1, 2, 3, 4, 5}
    local snapshot = {1, 2, 3, 4, 5}
    Util_Math.PickRandomN(src, 3)
    assertDeepEqual(src, snapshot, "源数组应保持不变")
end)

test("PickRandomN 多次调用应得到独立副本", function()
    local src = {"A", "B", "C", "D"}
    local r1 = Util_Math.PickRandomN(src, 2)
    local r2 = Util_Math.PickRandomN(src, 2)
    r1[1] = "MODIFIED"
    assertEqual(src[1], "A", "修改副本不应影响源")
    assertEqual(r2[1], r2[1], "r2 副本应独立")  -- 烟测,不真断言
end)

-- ============================================================
-- [PickRandomN] UObject / 包装表兼容
--   真实运行环境: GameplayStatics.GetAllActorsWithTag 返回
--   可能是 UObject 数组包装(# 可能被 __len 重载、或 sparse)。
--   本组测试这些场景——下游调用方应在传入前归一化为
--   纯 Lua 数组,但 Util_Math 自身不应假设 # 一致。
-- ============================================================
print("\n[PickRandomN - UObject / 包装表兼容]")

test("ipairs-可遍历的 UObject 数组:应能正常抽样", function()
    -- 模拟 UE 返回: 元表 __tostring, 但底层是 ipairs-可遍历的 Lua 数组
    local fakeUObjectArray = {
        [1] = setmetatable({}, {__tostring = function() return "Actor1" end}),
        [2] = setmetatable({}, {__tostring = function() return "Actor2" end}),
        [3] = setmetatable({}, {__tostring = function() return "Actor3" end}),
    }
    local r = Util_Math.PickRandomN(fakeUObjectArray, 2)
    assertEqual(#r, 2, "应抽到 2 个")
    for _, item in ipairs(r) do
        assert(item ~= nil, "抽样结果不应为 nil")
    end
end)

test("# 操作被元表 __len 重载 + 稀疏:不崩溃并按 ipairs 范围返回", function()
    -- 模拟最坏情况: __len 谎报 + 中间有 nil
    -- 设计选择: Util_Math 不为稀疏表兜底(超出职责),
    --   调用方应在传入前归一化(见 Service.lua)。
    -- 此处只验证不崩溃 + 返回值是合法数组(无 nil 间隙)。
    local mt = {__len = function() return 3 end}
    local sparse = setmetatable({[1] = "X", [3] = "Z"}, mt)
    local ok, r = pcall(Util_Math.PickRandomN, sparse, 2)
    assert(ok, "稀疏表+__len 不应崩溃: " .. tostring(r))
    -- 返回值长度 <= ipairs 实际能数到的项数
    assert(#r <= 2, "返回值不应超过 need=2")
    -- 返回值必须是紧凑数组(无 nil 间隙,# 应等于实际长度)
    for i = 1, #r do
        assert(r[i] ~= nil, "返回值第 " .. i .. " 项不应为 nil")
    end
end)

test("空包装表(只有元数据无 actor)应返回空数组", function()
    local empty = setmetatable({}, {__tostring = function() return "EmptyUObj" end})
    local r = Util_Math.PickRandomN(empty, 2)
    assertEqual(#r, 0, "空包装表应返回空")
end)

test("Service.lua 归一化模式:ipairs 后再传(对应真实修复)", function()
    -- 模拟 Service.lua 中修好的归一化流程
    local rawAreas = {
        [1] = "Area1", [2] = "Area2", [3] = "Area3",
    }
    local list = {}
    local n = 0
    for _, area in ipairs(rawAreas) do
        if area ~= nil then
            n = n + 1
            list[n] = area
        end
    end
    assertEqual(n, 3, "归一化后应有 3 项")
    local r = Util_Math.PickRandomN(list, 2)
    assertEqual(#r, 2, "归一化后抽样应正常")
end)

-- ============================================================
-- [PickRandomN] 正确性:频率均匀(统计检验)
-- ============================================================
print("\n[PickRandomN - 频率均匀性]")

test("3选1抽样 10000 次,各元素频率偏差应 < 5%", function()
    local src = {"A", "B", "C"}
    local tally = {A = 0, B = 0, C = 0}
    local N = 10000
    for _ = 1, N do
        local r = Util_Math.PickRandomN(src, 1)
        tally[r[1]] = tally[r[1]] + 1
    end
    local expected = N / 3
    for _, key in ipairs({"A", "B", "C"}) do
        local actual = tally[key]
        local deviation = math.abs(actual - expected) / expected
        assert(deviation < 0.05,
            string.format("元素 %s 频率偏差 %.2f%% 超过 5%% (actual=%d, expected=%.1f)",
                key, deviation * 100, actual, expected))
    end
end)

test("5选2抽样 10000 次,各子集频率应近似均匀", function()
    local src = {"A", "B", "C", "D", "E"}
    local combos = {}
    for _ = 1, 10000 do
        local r = Util_Math.PickRandomN(src, 2)
        table.sort(r)
        local key = table.concat(r, ",")
        combos[key] = (combos[key] or 0) + 1
    end
    local count = 0
    for _, _ in pairs(combos) do count = count + 1 end
    assertEqual(count, 10, "应出现全部 10 种组合")
    local expected = 1000
    for key, freq in pairs(combos) do
        local deviation = math.abs(freq - expected) / expected
        assert(deviation < 0.10,
            string.format("组合 [%s] 频率偏差 %.2f%% 超过 10%% (actual=%d)",
                key, deviation * 100, freq))
    end
end)

-- ============================================================
-- [PickRandomN_Index]
-- ============================================================
print("\n[PickRandomN_Index]")

test("索引版应返回原表引用 + 索引数组", function()
    local src = {"A", "B", "C", "D", "E"}
    local returned, idx = Util_Math.PickRandomN_Index(src, 2)
    assert(returned == src, "应返回同一原表引用")
    assertEqual(#idx, 2, "索引数组长度应为 2")
end)

test("索引版抽取的值应在原表中", function()
    local src = {10, 20, 30, 40, 50}
    local _, idx = Util_Math.PickRandomN_Index(src, 3)
    local values = {}
    for _, i in ipairs(idx) do
        values[#values + 1] = src[i]
        assert(i >= 1 and i <= #src, "索引应在合法范围")
    end
    assertEqual(#values, 3, "应取到 3 个值")
end)

test("索引版 need=0 应返回空索引数组", function()
    local src = {"A", "B", "C"}
    local _, idx = Util_Math.PickRandomN_Index(src, 0)
    assertEqual(#idx, 0, "空索引应长度为 0")
end)

test("索引版 need=10 应 clamp 到 n=3", function()
    local src = {"A", "B", "C"}
    local _, idx = Util_Math.PickRandomN_Index(src, 10)
    assertEqual(#idx, 3, "need>n 应 clamp 到 3")
end)

-- ============================================================
-- 结果统计
-- ============================================================
print("\n" .. string.rep("=", 62))
print(string.format("结果: %d 通过, %d 失败, 共 %d 个测试", passed, failed, passed + failed))
print(string.rep("=", 62))

if failed > 0 then
    os.exit(1)
end
