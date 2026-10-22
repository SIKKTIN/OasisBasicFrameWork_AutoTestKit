# 常用类索引

> 本文件为常用类的快速索引，每个条目包含：类名、简短描述、文档链接。
> 搜索常用类时优先查看此文件。
>
> **编辑说明**：每新增一个类，按字母顺序插入对应位置，保持列表有序。

---

## U

### UGCBackpackSystemV2

**描述**：UGC V2 背包系统接口库，需启用 `GP_BackpackV2` GamePart 并配合新物品编辑器使用，包含物品背包、装备栏、仓库的增删查改、容量管理与货币系统。

**所属文件**：`prefix_UG.md`

**在线文档**：[UGCBackpackSystemV2](https://developer.gp.qq.com/api/#/searchContent/UGCBackpackSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCBackpackSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBackpackSystemV2)

**快速函数**：

| 操作 | 函数 |
|------|------|
| 按 ItemID 添加物品 | `AddItemV2(PlayerPawn, ItemID, Count)` |
| 按 DefineID 添加物品 | `AddItemByDefineIDV2(PlayerPawn, DefineID, Count, AllowMerge)` |
| 按 DefineID 移除物品 | `RemoveItemByDefineIDV2(PlayerPawn, DefineID, Count)` |
| 使用物品 | `UseItemV2(PlayerPawn, DefineID)` |
| 查询物品数量 | `GetItemCountV2(PlayerPawn, ItemID)` |
| 装备物品到槽位 | `EquipItemV2(PlayerPawn, SlotName, DefineID)` |
| 卸下装备 | `UnEquipItemV2(PlayerPawn, SlotName)` |
| 打开背包主界面（全屏/半屏 + 模式） | `OpenBackpackPanelStyle(Style, Mode)` |
| 启用仓库并打开（Mode=5 半屏：背包+仓库） | `OpenBackpackPanel(Mode)` |
| 增加格子容量（持久化） | `AddCellCapacity(PlayerPawn, AddCount)` |
| 临时扩容（不持久化） | `AddMaxCellCapacity(PlayerPawn, AddCount)` |
| 显隐背包按钮 | `SetBackpackButtonVisible(Visible)` |
| 获取背包 UI 选中态变化委托 | `GetUISelectItemChangeDelegate` |

**使用示例**：

```lua
-- 给玩家添加物品（GM 面板常用）
UGCBackpackSystemV2.AddItemV2(PlayerPawn, ItemID, Num)

-- 启用仓库
UGCBackpackSystemV2.OpenBackpackPanel(5)
```

---

### UGCMultiMode

**描述**：多模式匹配通用接口库。

**所属文件**：`prefix_UG.md`

**在线文档**：[UGCMultiMode](https://developer.gp.qq.com/api/#/searchContent/UGCMultiMode?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCMultiMode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMultiMode)

**快速函数**：

| 操作 | 函数 |
|------|------|
| 设置模式选择 UI 显示/隐藏 | `ModeChooseUIVisible(Visible)` |
| 设置子模式可选择状态 | `SetModeState(ModeID, ModeAvailability)` |
| 获取当前模式 ID | `GetModeID` |
| 设置模式选择打开按钮显示/隐藏 | `SetModeChooseButtonVisible(Visible)` |
| 开启/关闭补人 | `PlayerFill(bPlayerFill)` |
| 开始匹配 | `RequestMatch(SubModeID, ResCallBack, Obj, IsTeamUnfill)` |
| 请求取消匹配 | `RequestCancelMatch` |
| 请求进入准备匹配状态 | `ReadyMatch(bReady)` |

**使用示例**：

```lua
UGCMultiMode.ModeChooseUIVisible(true)
UGCMultiMode.RequestMatch(1002, nil, nil, true)
```

---

### UGCPlayerControllerSystem

**描述**：玩家控制器系统，提供对玩家的移动、控制、旋转、传送等操作接口。

**所属文件**：`prefix_UG.md`

**在线文档**：[UGCPlayerControllerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPlayerControllerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPlayerControllerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerControllerSystem)

**快速函数**：

| 操作 | 函数 |
|------|------|
| 禁用摇杆疾跑 | `DisableJoyStickSprint` |
| 启用摇杆疾跑 | `EnableJoyStickSprint` |
| 获取队伍 ID | `GetTeamID` |
| 获取玩家角色 | `GetPlayerCharacter` |
| 瞬移到坐标 | `TeleportTo(X, Y, Z)` |
| 设置控制旋转 | `SetControlRotation(Rotation)` |
| 启用子弹尾迹 | `EnableBulletTrackEffect` |
| 跳过 loading | `BattleBeginPlay` |

**使用示例**：

```lua
local character = UGCPlayerControllerSystem.GetPlayerCharacter(playerController)
UGCPlayerControllerSystem.TeleportTo(playerController, 100, 200, 50)
```

---

## G

### UGCWidgetManagerSystem

**描述**：UI 控件管理器系统，客户端 UI 核心接口库。负责所有 UMG 控件的创建、销毁、挂载到 UI 槽位、显示/隐藏控制，头顶 UI 管理，HUD 元素（准星、摇杆、小地图）控制，视口坐标转换等。

**所属文件**：`prefix_UG.md`

**在线文档**：[UGCWidgetManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCWidgetManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2FUI%20%E7%95%8C%E9%9D%A2%2FUGCWidgetManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWidgetManagerSystem)

**快速函数**：

| 操作 | 函数 |
|------|------|
| 异步创建控件 | `CreateWidgetAsync` |
| 同步创建控件 | `CreateWidget` |
| 销毁控件 | `DestroyWidget` |
| 挂载到槽位 | `AddToSlot(Widget, SlotName, ZOrder, AnchorData)` |
| 从槽位移除 | `RemoveFromSlot` |
| 切换布局 | `SetWidgetLayout` |
| 显示控件 | `ShowWidget` |
| 隐藏控件 | `HideWidget` |
| 添加头顶 UI | `AddObjectPositionUI` |
| 世界→控件坐标 | `ProjectWorldLocationToWidgetPosition` |

**使用示例**：

```lua
UGCWidgetManagerSystem.CreateWidgetAsync("WidgetBlueprintPath",
    function(widget)
        UGCWidgetManagerSystem.AddToSlot(widget, "UI.UISlot.MainUISlot_Low", 0, anchorData)
        UGCWidgetManagerSystem.ShowWidget(widget)
    end
)
```

---
