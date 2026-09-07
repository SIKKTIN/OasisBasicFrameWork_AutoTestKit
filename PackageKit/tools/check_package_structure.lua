-- 检查每个 Package 的核心文件是否完整。

local M = {}

local function listPackageDirectories(packageDir)
    local packages = {}
    local handle = io.popen('dir /b /ad "' .. packageDir .. '" 2>nul')
    if not handle then return packages end
    for line in (handle:read("*a") or ""):gmatch("[^\r\n]+") do
        local name = line:gsub("^%s*(.-)%s*$", "%1")
        if name ~= "" then packages[#packages + 1] = name end
    end
    handle:close()
    table.sort(packages, function(a, b) return a:lower() < b:lower() end)
    return packages
end

local function isFile(path)
    local file = io.open(path, "r")
    if not file then return false end
    file:close()
    return true
end

function M.run(projectRoot)
    local packageDir = projectRoot .. [[\Script\Package]]
    local result = { packageDir = packageDir, totalPackages = 0, errors = 0, warnings = 0, packages = {} }
    for _, packageName in ipairs(listPackageDirectories(packageDir)) do
        local packagePath = packageDir .. [[\]] .. packageName
        local required = { "Package_Meta.lua", "Registry_" .. packageName .. ".lua", "README.md" }
        local missing = {}
        for _, fileName in ipairs(required) do
            if not isFile(packagePath .. [[\]] .. fileName) then missing[#missing + 1] = fileName end
        end
        result.packages[#result.packages + 1] = {
            packageName = packageName, path = packagePath, missing = missing, valid = #missing == 0,
        }
        result.errors = result.errors + #missing
    end
    result.totalPackages = #result.packages
    return result
end

function M.printReport(result)
    print("  扫描目录: " .. result.packageDir)
    print("  Package 数: " .. result.totalPackages)
    for _, item in ipairs(result.packages) do
        if #item.missing == 0 then
            print("  ✓ " .. item.packageName .. " 核心文件完整")
        else
            print("  ✗ " .. item.packageName .. " 缺少:")
            for _, fileName in ipairs(item.missing) do
                print("      " .. fileName)
                print("      请创建: " .. item.path .. "\\" .. fileName)
            end
        end
    end
    print(string.format("  总结: %d 个错误, %d 个警告", result.errors, result.warnings))
end

return M
