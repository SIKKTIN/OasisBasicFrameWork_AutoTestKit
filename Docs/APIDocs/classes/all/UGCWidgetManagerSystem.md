# UGCWidgetManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCWidgetManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2FUI%20%E7%95%8C%E9%9D%A2%2FUGCWidgetManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWidgetManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCWidgetManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2FUI%20%E7%95%8C%E9%9D%A2%2FUGCWidgetManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWidgetManagerSystem)

类

全文搜索

UI控件管理器系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Create | **WidgetAsync** | string|FSoftObjectPathWidgetClassPath, fun(Widget:UUserWidget | 异步创建一个控件，返回控件实例 params WidgetClassPath -控件类路径 params OnCreatedCallback -创建完成回调 |
| U | **UserWidgetCreateWidget** | UClassWidgetClass | 创建一个控件，返回控件实例 return -控件实例 params WidgetClass -控件蓝图类 |
| Destroy | **Widget** | UUserWidgetWidget | 销毁一个控件 params Widget -控件实例 |
| Add | **ToSlot** | UUserWidgetWidget, stringSlotName, numberZOrder, FAnchorDataAnchorData | 添加一个控件到指定 UI 挂点槽位 params Widget -控件实例 params SlotName -控件槽位名称，默认为 UI.UISlot.MainUISlot_Low params ZOrder -控件层级，默认为 0 params AnchorData -控件锚点，默认为 { Anchors = { Minimum = Vector2D.New(0, 0), Maximum = Vector2D.New(1, 1) } } |
| Remove | **FromSlot** | UUserWidgetWidget | 从 UI 挂点槽位移除控件 params Widget -控件实例 |
| Set | **WidgetLayout** | stringLayoutPath | 异步加载并设置当前的 WidgetLayout，同时只能设置一个，旧的 WidgetLayout 会被卸载。传入 “Default” 可卸载 WidgetLayout 回到默认状态。（主要用于可视化屏蔽玩法中不需要的和平 UI，UI 会强制隐藏） params LayoutPath -WidgetLayout 引用路径 |
| Show | **Widget** | UUserWidgetWidget | 显示一个控件，需要控件已经挂载到挂点槽上 params Widget -控件实例 |
| Hide | **Widget** | UUserWidgetWidget | 隐藏一个控件 params Widget -控件实例 |
| boolean | **IsWidgetAddedToSlot** | UUserWidgetWidget | 判断一个控件是否已经挂载在 UI 挂点上 return -是否已经挂载 params Widget -控件实例 |
| boolean | **IsWidgetVisible** | UUserWidgetWidget | 判断一个控件是否可见 return -是否可见 params Widget -控件实例 |
| U | **WidgetGetSubWidget** | UUserWidgetWidget, stringSubWidgetName | 获取子控件，可用于获取 UMG 蓝图里的子控件 return -子控件实例 params Widget -控件实例 params SubWidgetName -子控件名称 |
| UUserWidget[] | **GetAllWidgetsOfClass** | UClassWidgetClass, booleanbAddedToSlotOnly | 获取指定类别的所有控件，可筛选只获取已被添加到挂点的控件 生效范围：客户端 return -控件实例列表 params WidgetClass -控件类（UUserWidget） params bAddedToSlotOnly -是否只获取已添加到挂点的控件 |
| User | **WidgetGetMainUI** |  | 获取主 UI 面板实例（MainControlPanelTochButton） 生效范围：客户端 |
| User | **WidgetGetMainControlUI** |  | 获取主控制 UI 面板实例（MainControlBaseUI） 生效范围：客户端 |
| User | **WidgetGetShootingUIPanel** |  | 获取射击相关UI面板实例（ShootingUIPanel） 生效范围：客户端 |
| User | **WidgetGetSkillRootPanel** |  | 获取技能相关UI面板实例（SkillRootPanel_BP） 生效范围：客户端 |
| User | **WidgetGetUserWidgetByWidgetLayout** | stringWidgetLayoutPath, stringUserWidgetName | 获取通过WidgetLayout加载的自定义UserWidget 生效范围：客户端 params WidgetLayoutPath -控件 ClassPath, 控件需继承自 UUserWidgetLayout params UserWidgetName -控件 Name |
| Sub | **WidgetHiddenLayer** | UserWidgetWidget | 【废弃】请使用 UGCWidgetManagerSystem.ShowWidget SubWidgetHiddenLayer为控件减少隐藏层数（主要用于屏蔽玩法中不需要的和平 UI，HiddenLayer>=1，UI 会强制隐藏） 生效范围：客户端 |
| Set | **VirtualJoystickVisibility** | booleanIsVisibility | 设置摇杆是否可见 生效范围：客户端 params IsVisibility -是否可见（true 为显示，false 为隐藏） |
| Set | **CrosshairVisibility** | booleanIsVisibility | 设置准星是否可见 生效范围：客户端 params IsVisibility -是否可见（true 为显示，false 为隐藏，在没有被隐藏的情况下禁止将其显示） |
| bool | **Share** | functionCloseCallBack | 弹出分享界面 生效范围：客户端 return -分享调用是否成功 params CloseCallBack -关闭分享界面回调函数 |
| Add | **ChildToTochButton** | UserWidgetWidget | 把自定义 UI 挂到和平 UI 上并应用自定义布局 生效范围：客户端 |
| Load | **LobbyChatFrameUI** |  | 加载大厅聊天框 UI 生效范围：客户端 |
| number | **AddObjectPositionUI** | ActorActor, stringWidgetClassPath, FVectorOffset, booleanSizeAutoContent, booleanOutViewHide, booleanBeOcclusionHide, booleanShowSelf | 添加对象位置 UI,头顶 UI（类似血条，玩家名） 生效范围：服务器&客户端 return -实例 Index params Actor -需要添加位置 UI 的 Actor 对象 params WidgetClassPath -控件 ClassPath 控件需继承自 UObjectPositionWidget params Offset -偏移量 params SizeAutoContent -大小适配 params OutViewHide -控件离开镜头后是否隐藏（比如在背后） params BeOcclusionHide -被遮挡后是否隐藏 params ShowSelf -是否显示自己 |
| number | **AddObjectPositionUI_Custom** | ActorActor, stringWidgetClassPath, FObjectPosUIInfoObjectPosUIInfo | 添加对象位置 UI,头顶 UI（类似血条，玩家名），自定义版本，提供更多参数配置。（ObjectPosUIInfo 可在蓝图中添加参数使用带有默认值的版本） 生效范围：服务器&客户端 return -实例 Index params Actor -需要添加位置 UI 的 Actor 对象 params WidgetClassPath -控件 ClassPath 控件需继承自 UObjectPositionWidget params ObjectPosUIInfo -配置属性结构体，可以在蓝图中定义该变量传入 |
| Remove | **ObjectPositionUI** | UObjectWorldContent, numberInstanceIndex | 移除对象位置 UI 生效范围：服务器&客户端 params WorldContent -世界中对象 params InstanceIndex -实例 Index |
| @ | **WidgetGetObjectPositionUI** | UObjectWorldContent, numberInstanceIndex | 根据 InstanceIndex 获取 Widget 实例（Add 之后不能立刻获取到，Widget 有可能还在加载） 生效范围：客户端 return UObjectPositionWidget -实例 params WorldContent -世界中对象 params InstanceIndex -实例 Index |
| number | **SetPlayerStateUIVisibility** | booleanbVisible | 设置玩家状态 UI 可见性 生效范围：客户端 return -实际修改的控件数量 params bVisible -是否显示（true 为显示，false 为隐藏） |
| Show | **TipsUI** | stringTipsContent | 在屏幕中间上方显示 Tips 内容 生效范围：客户端 params TipsContent -Tips 文字内容 |
| Show | **TipsUIByServer** | stringTipsContent, PlayerControllerPlayerController | 在屏幕中间上方显示 Tips 内容，从DS发起，在传入的PC所属的客户端显示 生效范围：服务器 params TipsContent -Tips 文字内容 params PlayerController -玩家控制器 |
| User | **WidgetGetGlobalOBUI** |  | 获取全局观战 UI，仅全局观战模式下生效 生效范围：客户端 |
| Change | **Map** | stringMapPath, FVectorMapCentre, numberMapSize, numberMapScale | 修改右上角地图 生效范围：客户端 params MapPath -地图文件路径 params MapCentre -地图中心点坐标 params MapSize -地图实际大小 params MapScale -地图缩放比 |
| Change | **MapByMapID** | numberMapID | 根据地图ID修改右上角地图 生效范围：客户端 params MapID -地图ID |
| F | **Vector2DProjectWorldLocationToWidgetPosition** | FVectorWorldLocation | 将世界坐标转换为控件坐标 生效范围：客户端 return -控件坐标 params WorldLocation -世界坐标 |
| U | **CanvasPanelSlotSlotAsCanvasSlot** | UUserWidgetWidget | 获取 Canvas 插槽 生效范围：客户端 return - Canvas 插槽实例 params Widget -控件实例 |
| @ | **OverlaySlotAsOverlaySlot** | UUserWidgetWidget | 获取 Overlay 插槽 生效范围：客户端 return UOverlaySlot -插槽实例 params Widget -控件实例 |
| @ | **HorizontalBoxSlotAsVerticalBoxSlot** | UUserWidgetWidget | 获取 HorizontalBox 插槽 生效范围：客户端 return UVerticalBoxSlot -插槽实例 params Widget -控件实例 |
| number | **GetViewportScale** |  | 获取视口缩放比例 生效范围：客户端 return -缩放比例 |
| F | **Vector2DGetViewportSize** |  | 获取视口尺寸 生效范围：客户端 return -视口尺寸 |
| F | **GeometryGetViewportWidgetGeometry** |  | 获取视口 Widget 几何信息 生效范围：客户端 return -几何信息 |
| F | **Vector2DAbsoluteToLocal** | FGeometryGeometry, FVector2DAbsoluteCoordinate | 绝对坐标转本地坐标 生效范围：客户端 return -本地坐标 params Geometry -控件几何信息 params AbsoluteCoordinate -绝对坐标 |
| F | **Vector2DLocalToAbsolute** | FGeometryGeometry, FVector2DLocalCoordinate | 本地坐标转绝对坐标 生效范围：客户端 return -绝对坐标 params Geometry -控件几何信息 params LocalCoordinate -本地坐标 |
| F | **Vector2DGetLocalSize** | FGeometryGeometry | 获取控件的本地尺寸 生效范围：客户端 return -本地尺寸 params Geometry -控件几何信息 |
| F | **Vector2DGetAbsoluteSize** | FGeometryGeometry | 获取控件的绝对尺寸 生效范围：客户端 return -绝对尺寸 params Geometry -控件几何信息 |
| F | **Vector2DGetAbsolutePosition** | FGeometryGeometry | 获取控件的绝对位置 生效范围：客户端 return -绝对位置 params Geometry -控件几何信息 |
| User | **WidgetGetWidgetFromName** | UserWidgetWidget, stringUserWidgetName | 【废弃】请使用 UGCWidgetManagerSystem.GetSubWidget 通过控件名获取某一控件的子控件 生效范围：客户端 params UserWidgetName -控件 Name |
| Load | **MainUIWidgetLayoutByPath** | stringWidgetLayoutPath | 【废弃】请使用 UGCWidgetManagerSystem.SetWidgetLayout 可视化设置主 UI 控件是否可见（主要用于可视化屏蔽玩法中不需要的和平 UI，UI 会强制隐藏） 生效范围：客户端 params WidgetLayoutPath -控件 ClassPath, 控件需继承自 UUserWidgetLayout |
| Unload | **MainUIWidgetLayoutByPath** | stringWidgetLayoutPath | 【废弃】请使用 UGCWidgetManagerSystem.SetWidgetLayout 可视化设置主 UI 控件是否可见（主要用于可视化屏蔽玩法中不需要的和平 UI，UI 会强制隐藏） 生效范围：客户端 params WidgetLayoutPath -控件 ClassPath, 控件需继承自 UUserWidgetLayout |
| Promise | **FutureAddChildToUISlotByPath** | stringWidgetPath, stringUISlotName, numberZOrder, FAnchorDataAnchorData | 【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync() + UGCWidgetManagerSystem.AddToSlot() 把自定义 UI 挂到和平 UI 挂点上 生效范围：客户端 return -PromiseFuture对象 params WidgetPath -控件 ClassPath params UISlotName -挂点标识 params ZOrder -层级 params AnchorData -控件布局信息 |
| Add | **ChildToUISlotByWidget** | UserWidgetWidget, stringUISlotName, numberZOrder, FAnchorDataAnchorData | 【废弃】请使用 UGCWidgetManagerSystem.AddToSlot 把自定义 UI 挂到和平 UI 挂点上 生效范围：客户端 params Widget -UI params UISlotName -挂点标识 params ZOrder -层级 params AnchorData -控件布局信息 |
| Add | **WidgetHiddenLayer** | UserWidgetWidget | 【废弃】请使用 UGCWidgetManagerSystem.HideWidget 为控件添加隐藏层数（主要用于屏蔽玩法中不需要的和平 UI，HiddenLayer>=1，UI 会强制隐藏） 生效范围：客户端 |
| User | **WidgetAddNewUI** | stringWidgetClassPath, booleanIsAdaptation | 【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync() + UGCWidgetManagerSystem.AddToSlot() 添加新 UI，将会自动完成 AddViewport 显示 生效范围：客户端 params WidgetClassPath -Widget 路径 params IsAdaptation -是否屏幕适配 |
| User | **WidgetCreateNewWidget** | stringWidgetClassPath | 【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync 创建新控件 生效范围：客户端 params WidgetClassPath -Widget 路径 |
| Create | **NewWidgetAsync** | stringWidgetClassPath, ULuaSingleDelegateInCreatedDelegate | 【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync 异步创建新控件，并绑定回调 生效范围：客户端 params WidgetClassPath -Widget 路径 params InCreatedDelegate -回调 CreateWidgetAsync CreateWidget DestroyWidget AddToSlot RemoveFromSlot SetWidgetLayout ShowWidget HideWidget IsWidgetAddedToSlot IsWidgetVisible GetSubWidget GetAllWi |

