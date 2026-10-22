# UGCGenericMessageSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGenericMessageSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGenericMessageSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGenericMessageSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGenericMessageSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGenericMessageSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGenericMessageSystem)

类

全文搜索

广播信息接口库

---


## 函数

- **ListenObjectMessage**(UObjectListenedObject, stringMessage, UObjectListener, functionCallback) — 监听对象的广播信息，作用包含ListenUserDefinedObjectMessage，正常仅调用本接口即可 生效范围：服务器&客户端 return -返回监听ID params ListenedObject -被监听对象 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params Listener -监听对象 params Callback -监听对象监听到广播后调用的回调函数
- **UserDefinedObjectMessage**(UObjectListenedObject, stringMessage, any...) — 广播自定义的对象消息 生效范围：服务器&客户端 params ListenedObject -被监听对象 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params ... -自定义事件参数
- **ListenGlobalMessage**(UObjectWorldContextObject, stringMessage, UObjectListener, functionCallback) — 监听全局的广播信息，作用包含ListenUserDefinedGlobalMessage，正常仅调用本接口即可 生效范围：服务器&客户端 return -返回监听ID params WorldContextObject -世界上下文对象 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params Listener -监听对象 params Callback -监听对象监听到广播后调用的回调函数
- **ListenUserDefinedGlobalMessage**(UObjectWorldContextObject, stringMessage, UObjectListener, functionCallback) — 监听自定义的全局广播信息 生效范围：服务器&客户端 return -返回监听ID params WorldContextObject -世界上下文对象 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params Listener -监听对象 params Callback -监听对象监听到广播后调用的回调函数
- **UserDefinedGlobalMessage**(stringMessage, any...) — 广播自定义的全局消息 生效范围：服务器&客户端 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params ... -自定义事件参数
- **ListenMessage**(UObject) — numberListener, stringMessage
- **RegisterUserDefinedMessage**(stringMessage) — 注册自定义消息 生效范围：服务器&客户端 return -返回注册后的Message，与输入的Message相同 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 ListenObjectMessage BroadcastUserDefinedObjectMessage ListenGlobalMessage ListenUserDefinedGlobalMessage BroadcastUserDefinedGlobalMessage UnListenMessage RegisterUserDefinedMessage

## 属性

- **PlayerKey** — number @玩家的 PlayerKey UGCGenericMessageSystem.Messages.UGC.Player.PlayerExit 玩家退出游戏 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey UGCGenericMessageSystem.Messages.UGC.Player.PlayerLost 玩家掉线 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey UGCGenericMessag