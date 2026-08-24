-- Service 单元测试（原生 Lua + Mock）
-- 运行: lua54 Test_Service.lua
-- 当前目录为 WithDrawCache\TestHelper\Test\CountDown

-- 强制使用 UTF-8 输出（解决 Windows cmd GBK 乱码问题）
-- Lua 的 print 默认写到 stdout，bat 已经 chcp 65001 但 Lua 启动时仍是 GBK
-- 通过 os.execute 在 bat 调用 chcp 之外，再让 Lua 把字符串以 UTF-8 写出
-- （cmd 已切到 UTF-8 代码页，所以这里不需要额外处理，直接 print 即可）



-- 项目根目录（硬编码配置，请根据实际项目修改）
local projectRoot = [[E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Withdraw]]
package.path = projectRoot .. [[\?.lua;]] .. package.path

print("=" .. string.rep("=", 60))
print("Service.ActivateRandomEvacuateAreas 单元测试")
print("=" .. string.rep("=", 60))

local passed = 0
local failed = 0

local function test(name, fn)
    local ok, err = pcall(fn)
    if ok then
        print("  ✅ " .. name)
        passed = passed + 1
    else
        print("  ❌ " .. name)
        print("     错误: " .. tostring(err))
        failed = failed + 1
    end
end

-- ========== Mock 设置（使用元表拦截 _G 访问，避免污染全局命名）==========
local mockActors = {}
local mockActivatedCount = 0

-- Mock 数据表（用于元表拦截）
local mockGlobals = {
    UGCGameSystem = {
        IsServer = function() return true end,
        GetGameState = function() return {} end,
    },
    GameplayStatics = {
        GetAllActorsWithTag = function(gameState, tag)
            return mockActors
        end
    },
    ugcprint = function(msg)
        io.write("     [LOG] " .. tostring(msg) .. "\n")
        io.flush()
    end,
    Util_EnumManager = {
        TagKey = {
            RANDOM_EVACUATE_AREA = "RandomEvacuateArea"
        },
        GameModeKey = {
            HALL = 1
        }
    },
    UGCEventSystem = {
        SendEvent = function() end,
        AddListener = function() end,
    },
    UGCMultiMode = {
        GetModeID = function() return 2 end  -- 非大厅模式
    },
}

-- Mock UGCEventSystem require (Adapter.lua 第3行 require)
-- 需要用 preload 拦截，否则 require 会尝试加载文件
package.preload['Script.EventSystem.UGCEventSystem'] = function()
    return {}
end

-- 保存原始元表
local originalMetatable = debug.getmetatable(_G)

-- 设置元表拦截：读取时从 mockGlobals 获取，写入时记录到 mockGlobals
setmetatable(_G, {
    __index = function(_, key)
        return mockGlobals[key]
    end,
    __newindex = function(_, key, value)
        mockGlobals[key] = value
    end
})

-- Mock EvacuateArea
local MockEvacuateArea = {}
MockEvacuateArea.__index = MockEvacuateArea

function MockEvacuateArea:SetEvacuateAreaActive(active)
    mockActivatedCount = mockActivatedCount + 1
end

function CreateMockActor(index)
    return setmetatable({}, MockEvacuateArea)
end

-- ========== 加载 Service ==========
package.loaded['Script.Package.CountDown.Service'] = nil
local Service = require('Script.Package.CountDown.Service')

-- ========== 测试用例 ==========

print("\n[正常场景 - 3个区域]")
test("应该随机选择并激活2个区域", function()
    mockActors = {CreateMockActor(1), CreateMockActor(2), CreateMockActor(3)}
    mockActivatedCount = 0

    Service.ActivateRandomEvacuateAreas()

    assert(mockActivatedCount == 2, "期望激活 2 个，实际 " .. mockActivatedCount)
end)

print("\n[边界场景 - 只有1个区域]")
test("只有1个区域时应该激活1个", function()
    mockActors = {CreateMockActor(1)}
    mockActivatedCount = 0

    Service.ActivateRandomEvacuateAreas()

    assert(mockActivatedCount == 1, "期望激活 1 个，实际 " .. mockActivatedCount)
end)

print("\n[边界场景 - 0个区域]")
test("没有区域时不应该激活", function()
    mockActors = {}
    mockActivatedCount = 0

    Service.ActivateRandomEvacuateAreas()

    assert(mockActivatedCount == 0, "期望激活 0 个，实际 " .. mockActivatedCount)
end)

print("\n[客户端场景 - 不应该激活]")
test("客户端不应该激活任何区域", function()
    _G.UGCGameSystem.IsServer = function() return false end
    mockActors = {CreateMockActor(1), CreateMockActor(2), CreateMockActor(3)}
    mockActivatedCount = 0

    Service.ActivateRandomEvacuateAreas()

    assert(mockActivatedCount == 0, "客户端不应该激活任何区域，实际 " .. mockActivatedCount)

    -- 恢复
    _G.UGCGameSystem.IsServer = function() return true end
end)

-- ========== 结果统计 ==========
print("\n" .. string.rep("=", 62))
print(string.format("结果: %d 通过, %d 失败, 共 %d 个测试", passed, failed, passed + failed))
print(string.rep("=", 62))

-- ========== 清理 Mock ==========
setmetatable(_G, originalMetatable)
package.loaded['Script.EventSystem.UGCEventSystem'] = nil

if failed > 0 then
    os.exit(1)
end
