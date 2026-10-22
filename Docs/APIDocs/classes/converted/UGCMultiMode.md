# UGCMultiMode

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMultiMode?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCMultiMode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMultiMode](https://developer.gp.qq.com/api/#/searchContent/UGCMultiMode?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCMultiMode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMultiMode)

类

全文搜索

多模式匹配通用接口库

---


## 函数

- **ModeChooseUIVisible**(booleanVisible) — 设置模式选择 UI 的显示/隐藏 生效范围：客户端 params Visible -设置为显示/隐藏
- **SetModeState**(numberModeID, booleanModeAvailability) — 设置模式选择 UI 的子模式可选择状态 生效范围：客户端 return -操作是否成功 params ModeID -模式 ID params ModeAvailability -设置为可用/不可用
- **GetModeID**(获取当前模式 ID 生效范围：服务器&客户端 return -当前模式 ID，若不存在则返回 0)
- **SetModeChooseButtonVisible**(booleanVisible) — 设置模式选择打开按钮的显示/隐藏 生效范围：客户端 return -操作是否成功 params Visible -设置为显示/隐藏
- **PlayerFill**(booleanbPlayerFill) — 开启/关闭补人 生效范围：服务器 params bPlayerFill -目标状态
- **RequestMatch**(numberSubModeID, functionResCallBack, UObjectObj, booleanIsTeamUnfill) — 开始匹配 生效范围：客户端 return -是否请求匹配成功 params SubModeID -子模式 ID params ResCallBack -一个接受 bool 入参的回调函数，发起匹配的结果返回后会调用该函数 params Obj -回调函数所属的对象 params IsTeamUnfill -是否允许不匹配队友开始匹配
- **RequestCancelMatch**(请求取消匹配 生效范围：客户端 return -请求是否发送成功)
- **ReadyMatch**(booleanbReady) — 请求进入准备匹配状态 生效范围：客户端 params bReady -是否准备匹配
- **StatusOfReadyMatchQueryStatusOfReadyMatch**(numberUID) — 查询准备匹配的状态 生效范围：客户端 return -准备匹配的状态 params UID -玩家 UID，可选，如果传入 nil 或者不传入，那么获取自己的准备匹配状态
- **SettingGetModeSetting**(numberModeID) — 获取指定ModeID的配置 生效范围：服务器&客户端 return -ModeID对应的设置 params ModeID -ModeID SetModeChooseUIVisible SetModeState GetModeID SetModeChooseButtonVisible SetPlayerFill RequestMatch RequestCancelMatch RequestReadyMatch QueryStatusOfReadyMatch GetModeSetting

## 属性

- **bSuccess** — boolean @是否匹配成功。通常来说 true 则把匹配界面切换到匹配中的状态，false 则把匹配界面切换到尚未开始匹配的状态 UGCMultiMode.NotifyMatchSucceededDelegate 通知在“匹配中”的玩家，匹配成功，即将进入新的对局游戏 生效范围：客户端 UGCMultiMode.NotifyStatusOfReadyMatchChangedDelegate 通知准备匹配的状态变化 生效范围：客户端 @param UID number @玩家 UID @param NewStatus EStatusOfReadyMatch @新的准备匹配的状态 @param