# UGCTimerUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCTimerUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCTimerUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCTimerUtility](https://developer.gp.qq.com/api/#/searchContent/UGCTimerUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCTimerUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCTimerUtility)

类

全文搜索

计时器工具类

---


## 函数

- **GCLuaTimerInstanceCreateLuaTimer**(numberTimeOffset, functionCallback, booleanbLoop, stringTimerName, numberInitDelay, booleanbLog, booleanbCoroutine) — 创建 Lua 计时器 1. TimeOffset > 0，则 TimeOffset 单位是秒。 2. TimeOffset == 0，遇到 tick 就会执行。 3. TimeOffset < 0，是负数如 -N 的话，会在间隔 N 帧后执行第一次。如果传入了 InitDelay，则此条略过，按下面 InitDelay 参数说明来执行： a) 如果 InitDelay ~= nil(即传入 InitDelay 参数)，则计时器会在 InitDelay 秒后执行第一次；后面根据 TimeOffset 的设置，循环调用。 b) 如果 InitDelay == 0，则 InsertTimer 时，会
- **LuaTimer**(UGCLuaTimerInstanceTimerInstance) — 移除 Lua 计时器 生效范围：服务器&客户端 params TimerInstance -计时器实例
- **LuaTimerByName**(stringTimerName) — 根据名称移除 Lua 计时器 生效范围：服务器&客户端 params TimerName -计时器名称
- **IsLuaTimerExistByName**(stringTimerName) — 根据名称判断 Lua 计时器是否存在 生效范围：服务器&客户端 return -是否存在 params TimerName -计时器名称
- **LuaSingleDelegateCreateUETimer**(LuaFunctionCallbackFunction, numberTime, booleanIsLooping) — 设置 UE 计时器 生效范围：服务器&客户端 return FTimerHandle, -计时器句柄，计时器回调 params CallbackFunction -Lua 回调函数 params Time -定时时长 params IsLooping -是否循环
- **UETimer**(FTimerHandleTimerHandle) — 移除 UE 计时器 生效范围：服务器&客户端 params TimerHandle -计时器句柄 CreateLuaTimer RemoveLuaTimer RemoveLuaTimerByName IsLuaTimerExistByName CreateUETimer RemoveUETimer