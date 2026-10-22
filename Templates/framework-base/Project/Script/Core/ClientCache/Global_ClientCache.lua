---@class Global_ClientCache
Global_ClientCache = Global_ClientCache or {}

local System_ClientCache = require("Script.Core.ClientCache.System_ClientCache")

--- 缓存类型枚举
Global_ClientCache.Type = {
    EVACUATE_SETTLE = "EvacuateSettle",  -- 撤离结算包
}

--- 透传 API
Global_ClientCache.Push      = System_ClientCache.Push
Global_ClientCache.Peek      = System_ClientCache.Peek
Global_ClientCache.Pop       = System_ClientCache.Pop
Global_ClientCache.Subscribe = System_ClientCache.Subscribe
Global_ClientCache.Clear     = System_ClientCache.Clear
