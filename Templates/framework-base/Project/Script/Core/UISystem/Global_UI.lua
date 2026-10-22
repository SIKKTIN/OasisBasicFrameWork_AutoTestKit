Global_UI = Global_UI or {}

local Sys_UIManager = require("Script.Core.UISystem.Sys_UIManager")

function Global_UI.BeginPlay()
    return Sys_UIManager.BeginPlay()
end

--- 打开 UI
--- @param uiID string  UI 名称
--- @return bool 是否成功
function Global_UI.Open(uiID, ...)
    ugcprint("[Global_UI] OpenUI: " .. tostring(uiID))

    local instance = Sys_UIManager.GetUI(uiID)
    if not instance then
        ugcprint("[Global_UI] OpenUI: 创建实例失败 " .. tostring(uiID))
        return false
    end
    Sys_UIManager.ShowUI(uiID, instance, ...)

    return true
end

--- 调试函数
function Global_UI.TestOpenUI(uiID, instance, ...)
    ugcprint("[Global_UI] OpenUI: " .. tostring(uiID))

    local instance = Sys_UIManager.GetUI(uiID)
    if not instance then
        ugcprint("[Global_UI] OpenUI: 创建实例失败 " .. tostring(uiID))
        return false
    end
    Sys_UIManager.TestShowUI(uiID, instance, ...)

    return true
end

--- 异步打开 UI
--- @param uiID string  UI 名称
--- @param callback function|nil 回调函数
--- @param ... any 参数
--- @return bool 实例
function Global_UI.Open_Async(uiID, callback, ...)
    ugcprint("[Global_UI] OpenUI_Async: " .. tostring(uiID))

    Sys_UIManager.GetUI_Async(uiID,
        function(instance, ...)
            ugcprint("[Global_UI] OpenUI_Async: 创建实例成功 " .. tostring(uiID))
            if not instance then
                ugcprint("[Global_UI] OpenUI_Async: 创建实例失败 " .. tostring(uiID))
                if callback then callback(nil) end
                return
            end

            local params = {...}
            ugcprint("[Global_UI] OpenUI_Async: 创建实例成功 " .. tostring(params))

            Sys_UIManager.ShowUI(uiID, instance, ...)
            if callback then callback(instance, ...) end
        end, ...)

    --return Sys_UIManager.OpenUI_Async(uiID, callback, ...)
end

--- 关闭 UI
--- @param uiID string  UI 名称
function Global_UI.Close(uiID, instance)
    ugcprint("[Global_UI] CloseUI: " .. tostring(uiID) .. " 非单例UI指定实例: " .. tostring(instance))
    return Sys_UIManager.CloseUI(uiID, instance)
end

--- 销毁 UI
--- @param uiID string  UI 名称
function Global_UI.Destroy(uiID, instance)
    ugcprint("[Global_UI] DestroyUI: " .. tostring(uiID) .. " 非单例UI指定实例: " .. tostring(instance))
    return Sys_UIManager.DestroyUI(uiID, instance)
end

function Global_UI.PreLoadUI()
    ugcprint("[Global_UI] PreLoadUI")
    Sys_UIManager.PreLoadUI()
end

--- 根据 UI ID 获取 UI 名称
--- @param uiID string UI ID
--- @return string UI 名称
function Global_UI.GetUINameByID(uiID)
    return Sys_UIManager.GetUINameByID(uiID)
end

--- 触发 UI 事件
--- @param uiID string UI ID
--- @param instance userdata UI 实例
--- @param funcName string 事件名称
--- @param ... any 参数
--- @return any 返回值
function Global_UI.TriggerFunc(uiID, instance, funcName, ...)
    Sys_UIManager.TriggerFunc(uiID, instance, funcName, ...)
end

--- 根据 UI ID 创建 UI 实例 (创建一个无任何维护的UI实例，需要手动销毁)
--- @param uiID string UI ID
--- @return userdata|nil UI 实例
function Global_UI.CreateWidget(uiID)
    return Sys_UIManager.CreateWidget(uiID)
end

return Global_UI
