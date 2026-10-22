# BackpackUIComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/BackpackUIComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBackpackUIComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BackpackUIComponent](https://developer.gp.qq.com/api/#/searchContent/BackpackUIComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBackpackUIComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BackpackUIComponent)

类

全文搜索

UGC V2背包UI组件 需启用及配合新背包系统使用，具体参见https://developer.gp.qq.com/wikieditor/#/catalog/20104

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| U | **WidgetGetHUDBtn** |  | 获取背包按钮控件 生效范围：客户端 return -背包按钮控件 |
| number | **GetDefaultMode** |  | 获取默认背包模式 生效范围：客户端 return -背包模式 |
| Show | **HUDBtn** | boolbVisible | 显示背包按钮逻辑 生效范围：客户端 params bVisible -是否显示 |
| Close | **BattleMainPanel** |  | 关闭战斗背包界面 生效范围：客户端 |
| Close | **LobbyPanel** |  | 关闭大厅背包界面 生效范围：客户端 |
| Open | **LobbyBackpackMainUI** | numberMode | 打开大厅背包界面 生效范围：客户端 params Mode -1:背包+装备栏 2:背包+仓库 3:背包+装备栏+仓库 |
| Open | **BattleMainPanel** | numberStyle, numberMode | 打开战斗背包界面 生效范围：客户端 params Style -0全屏，1半屏 params Mode -1:背包+装备栏 2:背包+仓库 3:背包+装备栏+仓库 |
| On | **OpenBattleMainPanel** | UUserWidgetPanel | 背包UI打开后执行 params Panel -背包主界面控件 |
| On | **CloseBattleMainPanel** | UUserWidgetPanel | 背包UI关闭后执行 params Panel -背包主界面控件 |
| On | **OpenDeletePanel** | UUserWidgetPanel | 当打开删除弹窗时调用 params Panel -面板控件 |
| Click | **LockBackpackItem** | numbertype | 点击上锁格子的响应函数 生效范围：客户端 params type -类型 [0:背包数据, 1:仓库数据] |
| On | **ClickLockBackpackItem** | UUserWidgetPanel | 当打开解锁弹窗时调用 params Panel -面板控件 |
| boolean | **IsDiscardAreaVisible** |  | 是否显示丢弃区域 生效范围：客户端 return -是否显示丢弃区域 |
| On | **OpenSaveOrWithDrawPanel** | UUserWidgetPanel | 当打开存入取出代币时调用 params Panel -面板控件 |
| boolean | **CompareQuality** | tableData1, tableData2 | 默认排序函数 生效范围: 客户端 return -true:物品1在前, false:物品2在前 params Data1 -物品数据1 {DefineID:物品DefineID, Idx:格子索引} params Data2 -物品数据2 {DefineID:物品DefineID, Idx:格子索引} GetHUDBtn GetDefaultMode ShowHUDBtn CloseBattleMainPanel CloseLobbyPanel OpenLobbyBackpackMainUI OpenBattleMainPanel OnOpenBattleMainPanel OnCloseB |

