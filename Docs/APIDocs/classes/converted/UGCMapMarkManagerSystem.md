# UGCMapMarkManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMapMarkManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2FUI%20%E7%95%8C%E9%9D%A2%2FUGCMapMarkManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMapMarkManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMapMarkManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2FUI%20%E7%95%8C%E9%9D%A2%2FUGCMapMarkManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMapMarkManagerSystem)

类

全文搜索

地图标记管理器系统接口库

---


## 函数

- **AddCustomMark**(stringWidgetClassPath, EMarkDispatchRangeRangeType, numberRangeRad, PlayerStateOwnerPlayerState) — 添加一个自定义 Mark，需要自行管理位置（Widget 需继承自 MapUIMarkBaseWidget） 必须先调用一次 UpdateMarkLocation，调用 GetMarkLocation 才有效（Rotation 同理） 生效范围：服务器 return -标记 ID params WidgetClassPath -控件类路径，Widget 需继承自 MapUIMarkBaseWidget params RangeType -标记同步范围 params RangeRad -标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm） params OwnerPlayerState
- **AddLocalCustomMark**(stringWidgetClassPath, numberRangeRad) — 添加一个自定义 Mark，需要自行管理位置（Widget 需继承自 MapUIMarkBaseWidget） 必须先调用一次 UpdateMarkLocation，调用 GetMarkLocation 才有效（Rotation 同理） 生效范围：客户端 return -标记 ID params WidgetClassPath -控件类路径，Widget 需继承自 MapUIMarkBaseWidget params RangeRad -标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm）
- **AddPlayerMark**(stringWidgetClassPath, EMarkDispatchRangeRangeType, numberRangeRad, PlayerStateOwnerPlayerState) — 添加一个玩家 Mark，会根据玩家位置实时更新位置。（Widget 需继承自 UGCMapUIMarkDynamicWidget） 生效范围：服务器 return -标记 ID params WidgetClassPath -控件类路径，Widget 需继承自 UGCMapUIMarkDynamicWidget params RangeType -标记同步范围 params RangeRad -标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm） params OwnerPlayerState -标记目标 PlayerState
- **AddLocalPlayerMark**(stringWidgetClassPath, PlayerStateOwnerPlayerState, numberRangeRad) — 添加一个玩家Mark，会根据玩家位置实时更新位置。（Widget 需继承自 UGCMapUIMarkDynamicWidget） 生效范围：客户端 return -标记 ID params WidgetClassPath -控件类路径，Widget 需继承自 UGCMapUIMarkDynamicWidget params OwnerPlayerState -标记目标 PlayerState params RangeRad -标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm）
- **Mark**(numberInstanceID) — 移除一个标记，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 params InstanceID -标记 ID
- **MarkLocation**(numberInstanceID, VectorMarkLocation, booleanbNeedPrintLog) — 更新标记位置，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 params InstanceID -标记 ID params MarkLocation -新 Location params bNeedPrintLog -是否输出日志
- **MarkRotation**(numberInstanceID, RotatorNewRotation) — 更新标记旋转，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 params InstanceID -标记 ID params NewRotation -新 Rotator 可使用 Rotator.New(Roll,Pitch,Yaw) 创建，结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw}
- **GetMarkLocation**(numberInstanceID) — 获取标记位置，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 return -标记点 Location params InstanceID -标记 ID
- **GetMarkRotation**(numberInstanceID) — 获取标记旋转，此接口的调用者同传入的 InstanceID 匹配。 调用此接口来更新通过 UGCMapMarkManagerSystem.Add[Local]CustomMark 创建的小地图标记控件时，须确保该控件的 Rotate Widget to Angle 选项已勾选。 生效范围：服务器&客户端 return -标记点 Rotator 可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw} params InstanceID -标记 ID
- **StateGetMarkOwner**(numberInstanceID) — 获取标记 Owner，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 return -标记点对应的 PlayerState params InstanceID -标记 ID
- **MapMarkGraph**(FVector[]WorldCorners, FColorMarkColor, numberRadiusOrLineWidth, booleanbRecolorOrBlending, EAddMarkFlagAddMarkFlag) — 在地图上画图 生效范围：客户端 params WorldCorners -世界坐标点，按顺序绘制，1个点画圆，2个点画直线，3个点或以上画多边形 params MarkColor -图像颜色 params RadiusOrLineWidth -半径或直线宽度 params bRecolorOrBlending -覆盖颜色或Alpha混合 params AddMarkFlag -生效地图类型
- **MapMarkGraph**(EAddMarkFlagClearMarkFlag) — 清除地图上的图案 生效范围：客户端 params ClearMarkFlag -生效地图类型
- **VoiceVisualization**(EVoiceVisualizationFlagInFlag, booleanbIsEnable) — 开关小地图上的指定类型音效图标 生效范围：服务端&客户端 params InFlag -指定音效类型 params bIsEnable -开关控制
- **IsVoiceVisualizationFlagEnable**(EVoiceVisualizationFlagInFlag) — 获取小地图上指定类型音效图标的开关状态 生效范围：服务端&客户端 return -是否开启 params InFlag -指定音效类型
- **GetMapMarkLocation**(ASTExtraPlayerStatePlayerState) — 获取和平原生小地图标点位置 生效范围：客户端 return -标记点位置 params PlayerState -玩家状态
- **MapByMapID**(numberMapID) — 根据地图ID修改右上角地图 生效范围：客户端 params MapID -地图ID
- **DrawGuidePathToTarget**(FGuidePathDrawParamsParams, FOnGuidePathResultOnResult) — 请求绘制引导线 生效范围：客户端 return -请求ID params Params -绘制参数 params OnResult -结果回调 AddCustomMark AddLocalCustomMark AddPlayerMark AddLocalPlayerMark RemoveMark UpdateMarkLocation UpdateMarkRotation GetMarkLocation GetMarkRotation GetMarkOwner MakeMapMarkGraph ClearMapMarkGraph SetVoiceVisualization IsVoiceVisu