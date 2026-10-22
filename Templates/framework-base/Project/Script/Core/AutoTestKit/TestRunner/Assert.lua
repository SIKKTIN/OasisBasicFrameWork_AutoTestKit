---@class TAssert
TAssert = {}

--- 创建一条测试结果记录
---@param passed boolean
---@param msg string  期望值描述
---@param expected any
---@param actual any
---@return table
local function make_result(passed, msg, expected, actual)
    local r = {
        passed = passed,
        msg = msg or "",
        expected = expected,
        actual = actual
    }
    -- 缓存最近一次断言结果，供 TestManager 在 case 未显式 return 时兜底使用
    -- 规则：
    --   1. 若当前 PASS 且尚未锁定失败，则 _lastResult 更新为当前（覆盖）
    --   2. 若当前 FAIL，则 _lastResult 更新为当前并锁定，后续 PASS 不再覆盖
    -- 效果：case 内首个 FAIL 被锁住作为 case 结果；全 PASS 时取最后一条
    if passed then
        if not TAssert._lastResultLocked then
            TAssert._lastResult = r
        end
    elseif not TAssert._lastResultLocked then
        TAssert._lastResult = r
        TAssert._lastResultLocked = true
    end
    return r
end

--- 获取最近一次断言结果（用于 case 函数未 return 时的兜底）
---@return table|nil
function TAssert.GetLastResult()
    return TAssert._lastResult
end

--- 重置最近一次断言结果（在每个 case 开始时由 TestManager 调用，避免串台）
function TAssert.ResetLastResult()
    TAssert._lastResult = nil
    TAssert._lastResultLocked = false
end

--- 相等断言
---@param expected any
---@param actual any
---@param msg string|nil
function TAssert.equals(expected, actual, msg)
    local ok = (expected == actual)
    if not ok then
        ugcprint(string.format("[TAssert] FAIL: %s | expected=%s, actual=%s",
            msg or "", tostring(expected), tostring(actual)))
    end
    return make_result(ok, msg, expected, actual)
end

--- 不等断言
---@param expected any
---@param actual any
---@param msg string|nil
function TAssert.not_equals(expected, actual, msg)
    local ok = (expected ~= actual)
    if not ok then
        ugcprint(string.format("[TAssert] FAIL: %s | expected NOT=%s, but got=%s",
            msg or "", tostring(expected), tostring(actual)))
    end
    return make_result(ok, msg, "not " .. tostring(expected), actual)
end

--- 为真断言
---@param condition boolean
---@param msg string|nil
function TAssert.is_true(condition, msg)
    local result = TAssert.equals(true, condition, msg)
    ugcprint(string.format("[TAssert DEBUG] is_true msg=%s | result.passed=%s", tostring(msg), tostring(result.passed)))
    return result
end

--- 为假断言
---@param condition boolean
---@param msg string|nil
function TAssert.is_false(condition, msg)
    return TAssert.equals(false, condition, msg)
end

--- 非空断言
---@param value any
---@param msg string|nil
function TAssert.is_not_nil(value, msg)
    local ok = (value ~= nil)
    if not ok then
        ugcprint(string.format("[TAssert] FAIL: %s | expected not nil, actual=nil", msg or ""))
    end
    return make_result(ok, msg, "not nil", value)
end

--- 空断言
---@param value any
---@param msg string|nil
function TAssert.is_nil(value, msg)
    local ok = (value == nil)
    if not ok then
        ugcprint(string.format("[TAssert] FAIL: %s | expected nil, actual=%s",
            msg or "", tostring(value)))
    end
    return make_result(ok, msg, nil, value)
end

--- 大于断言
---@param expected number
---@param actual number
---@param msg string|nil
function TAssert.greater_than(expected, actual, msg)
    local ok = (actual > expected)
    if not ok then
        ugcprint(string.format("[TAssert] FAIL: %s | expected > %s, actual=%s",
            msg or "", tostring(expected), tostring(actual)))
    end
    return make_result(ok, msg, ">" .. tostring(expected), actual)
end

--- 错误断言：fn() 应抛出错误
---@param fn function
---@param msg string|nil
function TAssert.error(fn, msg)
    local ok, err = pcall(fn)
    local has_error = not ok
    if not has_error then
        ugcprint(string.format("[TAssert] FAIL: %s | expected error, but fn() succeeded", msg or ""))
    end
    return make_result(has_error, msg, "error", err or "no error")
end

return TAssert
