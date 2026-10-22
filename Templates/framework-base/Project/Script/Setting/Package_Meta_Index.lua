-- ============================================================
-- Package_Meta_Index.lua
-- Package_Meta 索引（由 GenKit 自动生成，请勿手动编辑）
-- ============================================================
--
-- 作用：
--   按需加载所有 Package_Meta，每次调用 require，遵循 Lua 模块缓存。
--   Core 层（如 PlayerDataCore、EventCore 等）通过此文件
--   统一访问所有包的 Meta 声明（playerData / listensTo / 等）。
--
-- 使用方式:
--   local Package_Meta_Index = require("Script.Setting.Package_Meta_Index")
--   for _, meta in ipairs(Package_Meta_Index.Load()) do ... end
--
-- 生成规则:
--   扫描 Script/Package/{Name}/Package_Meta.lua
-- ============================================================

local Package_Meta_Index = {
    -- 全部 Package_Meta 的 require 路径（点分隔）
    paths = {
    },
}

--- 加载全部 Meta（每次调用 require，遵循 Lua 模块缓存）
--- 失败路径会打 ugcprint 错误日志，通过第二返回值反馈错误，整体不会抛错。
---@return table[] 成功加载的 Meta 列表
function Package_Meta_Index.Load()
    local metas, errors = {}, {}
    for _, path in ipairs(Package_Meta_Index.paths) do
        local ok, meta = pcall(require, path)
        if ok and type(meta) == "table" then
            metas[#metas+1] = meta
        else
            errors[#errors+1] = {path = path, error = tostring(meta)}
            (type(ugcprint) == "function" and ugcprint or print)(
                "[Package_Meta_Index] Meta 加载失败: " .. tostring(path))
        end
    end
    return metas, errors
end

return Package_Meta_Index
