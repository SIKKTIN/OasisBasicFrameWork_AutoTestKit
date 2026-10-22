-- 根据脚本位置加载工具，支持从任意工作目录直接运行。
local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local root = (source:match("^(.*)/[^/]+$") or ".") .. "/../.."
package.path = root .. "/?.lua;" .. root .. "/GenKit/?.lua;" .. package.path
local GenKit = require("GenKit.init")
local function Build(nameCase, names)
    local rows = { { "---", "ConstName" } }
    for i, name in ipairs(names) do rows[#rows + 1] = { tostring(i), name } end
    return GenKit.buildTableConstArtifact({
        name = "Item", source = "fixture.csv", enumType = "ItemID",
        keyColumn = "---", nameColumn = "ConstName", nameCase = nameCase,
    }, rows, "fixture.csv", "fixture.lua")
end
local preserved = Build("preserve", { "GOLD", "Bandage", "HelmetLV1" })
assert(#preserved.errors == 0)
local values = assert(load(preserved.content))()
assert(values.GOLD == 1 and values.Bandage == 2 and values.HelmetLV1 == 3)
local default = Build(nil, { "Bandage" })
assert(assert(load(default.content))().BANDAGE == 1)
assert(#Build("preserve", { "Bandage", "Bandage" }).errors > 0)
assert(#Build("preserve", { "end" }).errors > 0)
assert(#Build("preserve", { "1bad" }).errors > 0)
assert(#Build("preserve", { "Bandage", "BANDAGE" }).errors == 0)
print("Test_TableConstNameCase: 6 checks passed")
