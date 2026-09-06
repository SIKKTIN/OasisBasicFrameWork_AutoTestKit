local Csv = {}

local function IsBlankRow(row)
    for _, value in ipairs(row) do
        if value ~= "" then return false end
    end
    return true
end

---@param content string
---@return table[]|nil, string|nil
function Csv.Parse(content)
    if type(content) ~= "string" then
        return nil, "CSV 内容必须是 string"
    end
    if content:sub(1, 3) == "\239\187\191" then
        content = content:sub(4)
    end

    local rows = {}
    local row = {}
    local fieldParts = {}
    local fieldStarted = false
    local inQuotes = false
    local quoteClosed = false
    local line = 1
    local index = 1

    local function FinishField()
        row[#row + 1] = table.concat(fieldParts)
        fieldParts = {}
        fieldStarted = false
        quoteClosed = false
    end

    local function FinishRow()
        FinishField()
        if not IsBlankRow(row) then rows[#rows + 1] = row end
        row = {}
    end

    while index <= #content do
        local char = content:sub(index, index)
        if inQuotes then
            if char == '"' then
                if content:sub(index + 1, index + 1) == '"' then
                    fieldParts[#fieldParts + 1] = '"'
                    index = index + 2
                else
                    inQuotes = false
                    quoteClosed = true
                    index = index + 1
                end
            else
                fieldParts[#fieldParts + 1] = char
                if char == "\n" then line = line + 1 end
                index = index + 1
            end
        elseif quoteClosed then
            if char == "," then
                FinishField()
                index = index + 1
            elseif char == "\r" or char == "\n" then
                FinishRow()
                if char == "\r" and content:sub(index + 1, index + 1) == "\n" then
                    index = index + 1
                end
                line = line + 1
                index = index + 1
            else
                return nil, string.format(
                    "CSV 第 %d 行：引号字段结束后只能是分隔符或换行", line)
            end
        elseif char == '"' then
            if fieldStarted then
                return nil, string.format(
                    "CSV 第 %d 行：字段中存在未转义引号", line)
            end
            fieldStarted = true
            inQuotes = true
            index = index + 1
        elseif char == "," then
            FinishField()
            index = index + 1
        elseif char == "\r" or char == "\n" then
            FinishRow()
            if char == "\r" and content:sub(index + 1, index + 1) == "\n" then
                index = index + 1
            end
            line = line + 1
            index = index + 1
        else
            fieldParts[#fieldParts + 1] = char
            fieldStarted = true
            index = index + 1
        end
    end

    if inQuotes then
        return nil, string.format("CSV 第 %d 行：引号字段未结束", line)
    end
    if fieldStarted or quoteClosed or #row > 0 then FinishRow() end
    return rows, nil
end

---@param path string
---@return table[]|nil, string|nil
function Csv.Read(path)
    local file, openError = io.open(path, "rb")
    if not file then
        return nil, "无法读取 CSV: " .. tostring(openError)
    end
    local content = file:read("*all")
    file:close()
    return Csv.Parse(content)
end

return Csv
