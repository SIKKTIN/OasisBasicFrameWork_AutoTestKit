-- 根据脚本位置加载工具，支持从任意工作目录直接运行。
local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local root = (source:match("^(.*)/[^/]+$") or ".") .. "/../.."
package.path = root .. "/?.lua;" .. root .. "/GenKit/?.lua;" .. package.path

local Csv = require("Csv")
local GenKit = require("GenKit.init")

local passed = 0
local failed = 0

local function Test(name, fn)
    local ok, err = pcall(fn)
    if ok then
        print("  [通过] " .. name)
        passed = passed + 1
    else
        print("  [失败] " .. name .. " | " .. tostring(err))
        failed = failed + 1
    end
end

local function AssertEqual(actual, expected, message)
    if actual ~= expected then
        error(string.format(
            "%s | 期望=%s 实际=%s",
            message or "值不相等", tostring(expected), tostring(actual)), 2)
    end
end

local function Build(csv, overrides)
    local rows, csvError = Csv.Parse(csv)
    assert(rows, csvError)
    local spec = {
        name = "Item",
        source = "Item/DT_Item_Config.csv",
        keyColumn = "---",
        nameColumn = "ConstName",
        enumType = "ItemID",
        output = "Script/Const/Generate/Const_Item.lua",
    }
    for key, value in pairs(overrides or {}) do spec[key] = value end
    return GenKit.buildTableConstArtifact(
        spec, rows, "fixture.csv", "Const_Item.lua")
end

Test("解析 UE CSV 并生成常量", function()
    local artifact = Build(
        '---,ConstName,IsEntity,Describe\r\n'
        .. '8310000,"Test","False",""\r\n')
    AssertEqual(#artifact.errors, 0)
    AssertEqual(#artifact.entries, 1)
    AssertEqual(artifact.entries[1].name, "TEST")
    AssertEqual(artifact.entries[1].id, 8310000)
    assert(artifact.content:find("TEST = 8310000", 1, true))
    assert(artifact.content:find("---@enum ItemID", 1, true))
end)

Test("正确解析引号内逗号和转义引号", function()
    local rows, err = Csv.Parse(
        '---,ConstName,Describe\n1,GOLD,"金币,通用"\n'
        .. '2,QUOTE,"带""引号"""\n')
    assert(rows, err)
    AssertEqual(rows[2][3], "金币,通用")
    AssertEqual(rows[3][3], '带"引号"')
end)

Test("支持 UTF-8 BOM", function()
    local artifact = Build(
        "\239\187\191---,ConstName\n8310000,Gold\n")
    AssertEqual(#artifact.errors, 0)
    AssertEqual(artifact.entries[1].name, "GOLD")
end)

Test("输出按常量名稳定排序", function()
    local artifact = Build(
        "---,ConstName\n2,WOOD\n1,GOLD\n")
    AssertEqual(#artifact.errors, 0)
    AssertEqual(artifact.entries[1].name, "GOLD")
    AssertEqual(artifact.entries[2].name, "WOOD")
end)

Test("拒绝重复 ID", function()
    local artifact = Build(
        "---,ConstName\n1,GOLD\n1,WOOD\n")
    assert(#artifact.errors > 0)
    assert(table.concat(artifact.errors, "\n"):find("ID 重复", 1, true))
end)

Test("拒绝规范化后重复的常量名", function()
    local artifact = Build(
        "---,ConstName\n1,Gold\n2,GOLD\n")
    assert(#artifact.errors > 0)
    assert(table.concat(artifact.errors, "\n"):find(
        "常量名重复", 1, true))
end)

Test("拒绝非法常量名", function()
    local artifact = Build(
        "---,ConstName\n1,Gold Coin\n")
    assert(#artifact.errors > 0)
    assert(table.concat(artifact.errors, "\n"):find(
        "必须符合", 1, true))
end)

Test("拒绝非正整数 ID", function()
    local artifact = Build(
        "---,ConstName\n0,ZERO\n1.5,FRACTION\n")
    AssertEqual(#artifact.errors, 2)
end)

Test("拒绝缺少必需列", function()
    local artifact = Build("ID,Name\n1,GOLD\n")
    assert(#artifact.errors >= 2)
end)

Test("拒绝未闭合引号", function()
    local rows, err = Csv.Parse('---,ConstName\n1,"GOLD\n')
    assert(rows == nil)
    assert(err:find("引号字段未结束", 1, true))
end)

Test("实际项目配置可以完成预览", function()
    local result = GenKit.genTableConsts()
    AssertEqual(#result.errors, 0, table.concat(result.errors, "\n"))
    local config = assert(loadfile(GenKit.getProjectGenKitConfigPath(), "t", {}))()
    AssertEqual(#result.artifacts, #config.tableConsts)
    for index, artifact in ipairs(result.artifacts) do
        AssertEqual(artifact.spec.name, config.tableConsts[index].name)
        local values = assert(load(artifact.content, "generated-table-const", "t", {}))()
        for _, entry in ipairs(artifact.entries) do
            AssertEqual(values[entry.name], entry.id)
            assert(entry.id > 0 and math.tointeger(entry.id))
        end
    end
    if #config.tableConsts == 0 then
        assert(#result.warnings > 0, "未登记表时应提示空预览")
    end
end)

print(string.format(
    "结果: %d 通过, %d 失败, 共 %d 个测试",
    passed, failed, passed + failed))
if failed > 0 then os.exit(1) end
