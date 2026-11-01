-- Real GenKit scanners and writers, captured output only; no project writes.
local source = debug.getinfo(1, "S").source:sub(2):gsub("\\", "/")
local dir = assert(source:match("^(.*)/[^/]+$"))
local root = dir .. "/../../.."
package.path = root .. "/?.lua;" .. root .. "/GenKit/?.lua;" .. package.path
local gen = require("GenKit.init")
gen.PROJECT_ROOT = dir .. "/../Project"
gen.SCRIPT_DIR = gen.PROJECT_ROOT .. "/Script"
gen.getProjectGenKitConfigPath = function() return root .. "/Templates/framework-base/Project/Script/Setting/GenKit_Config.lua" end
local checks = {
    {preview = gen.previewPackageRegistry, write = gen.writePackageRegistry, find = "Script.Package.TaskSystem.Registry_TaskSystem"},
    {preview = gen.previewPackageMetaIndex, write = gen.writePackageMetaIndex, find = "Script.Package.TaskSystem.Package_Meta"},
    {preview = gen.previewConstData, write = gen.writeConstData, find = 'TASK_DATA'},
    {preview = gen.previewEventDataChange, write = gen.writeEventDataChange, find = 'ON_PLAYER_TASK_DATA_CHANGE'},
}
for _, check in ipairs(checks) do
    local previewOK, previewReason, result = check.preview()
    assert(previewOK, previewReason)
    assert(result.success ~= false)
    local chunks, oldOpen = {}, io.open
    io.open = function(_, mode)
        assert(mode == 'w', 'writer must only request output')
        return {write = function(_, text) chunks[#chunks + 1] = text end, close = function() end}
    end
    local ok, saved = pcall(check.write, result)
    io.open = oldOpen
    assert(ok, saved); assert(saved == true)
    local text = table.concat(chunks)
    assert(text:find(check.find, 1, true), check.find)
    assert(not text:find('condition_data', 1, true) and not text:find('backitem_data', 1, true))
    assert(load(text), 'generated Lua must compile')
end
local structure = require('PackageKit.tools.check_package_structure').run(gen.PROJECT_ROOT)
assert(structure.totalPackages == 1 and structure.errors == 0)
local modules = require('PackageKit.tools.check_local_modules').run(gen.PROJECT_ROOT)
assert(modules.errors == 0)
gen.PROJECT_ROOT = dir .. '/../Examples/Project'
gen.SCRIPT_DIR = gen.PROJECT_ROOT .. '/Script'
local ok, reason, command = gen.previewCommandSystemArtifacts()
assert(ok, reason)
assert(#command.list.commands == 1)
assert(command.list.commands[1].namespace == 'TaskExample' and command.list.commands[1].action == 'Advance')
local captured, oldOpen = {}, io.open
io.open = function(path, mode)
    assert(mode == 'w')
    captured[path] = ''
    return {write = function(_, text) captured[path] = captured[path] .. text end, close = function() end}
end
local called, saved = pcall(gen.writeCommandSystemArtifacts, command)
io.open = oldOpen
assert(called and saved)
local count = 0
for _, text in pairs(captured) do assert(load(text)); count = count + 1 end
assert(count == 2)
print('TaskSystem generation: 6 real scanner/writer outputs and 2 PackageKit checks passed; no target writes.')
