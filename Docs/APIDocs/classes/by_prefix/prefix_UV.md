# Vector 矢量 / 场  (前缀: UV)
_共 11 个类_
---
## UVectorFieldAnimated

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVectorFieldAnimated?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVectorFieldAnimated.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVectorFieldAnimated](https://developer.gp.qq.com/api/#/searchContent/UVectorFieldAnimated?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVectorFieldAnimated.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVectorFieldAnimated)

类

全文搜索

---


## 属性

- **texture** — from which to create the vector field. The operation used to construct the vector field. The size of the volume. Valid sizes: 16, 32, 64. The size of the volume. Valid sizes: 16, 32, 64. The size of the volume. Valid sizes: 16, 32, 64. The number of horizontal subimages in the texture atlas. The num

## UVectorFieldComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVectorFieldComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVectorFieldComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVectorFieldComponent](https://developer.gp.qq.com/api/#/searchContent/UVectorFieldComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVectorFieldComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVectorFieldComponent)

类

全文搜索

A Component referencing a vector field.

---


## 函数

- **SetIntensity**(floatNewIntensity) — Set the intensity of the vector field. params NewIntensity -- The new intensity of the vector field. SetIntensity

## 属性

- **vector** — field asset. The intensity at which the vector field is applied. How tightly particles follow the vector field. If true, the vector field is only used for preview visualizations. VectorField Intensity Tightness bPreviewVectorField

## UVectorFieldStatic

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVectorFieldStatic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVectorFieldStatic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVectorFieldStatic](https://developer.gp.qq.com/api/#/searchContent/UVectorFieldStatic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVectorFieldStatic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVectorFieldStatic)

类

全文搜索

---


## 属性

- **of** — the vector field volume. Size of the vector field volume. Size of the vector field volume. UAssetImportData *AssetImportData SizeX SizeY SizeZ SourceFilePath_DEPRECATED AssetImportData

## UVehicleCommonComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVehicleCommonComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVehicleCommonComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVehicleCommonComponent](https://developer.gp.qq.com/api/#/searchContent/UVehicleCommonComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVehicleCommonComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVehicleCommonComponent)

类

全文搜索

载具通用逻辑组件类

---


## 委托

- voidUGC_OnVehicleHPChangedDelegate(floatHP, floatHPMax)
- 载具血量变化
- 生效范围C
- params HP
- -当前血量
- params HPMax
- -最大血量
- voidUGC_OnVehicleFuelChangedDelegate(floatFuel, floatFuelMax)
- 载具油量变化
- 生效范围C
- params Fuel
- -当前血量
- params FuelMax
- -最大血量
- voidUGC_OnVehicleWheelsHPChangedDelegate()
- 生效范围C
- 载具轮子血量发生变化
- voidUGC_OnVehicleFuelUsedUpDelegate()
- 生效范围CS
- 油量消耗完
- UGC_OnVehicleHPChangedDelegate
- UGC_OnVehicleFuelChangedDelegate
- UGC_OnVehicleWheelsHPChangedDelegate
- UGC_OnVehicleFuelUsedUpDelegate

## UVehicleSeatComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVehicleSeatComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVehicleSeatComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVehicleSeatComponent](https://developer.gp.qq.com/api/#/searchContent/UVehicleSeatComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVehicleSeatComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVehicleSeatComponent)

类

全文搜索

载具座位组件类

---


## 委托

- voidUGC_OnSeatAttachedDelegate(ASTExtraPlayerCharacter*Character, ESTExtraVehicleSeatTypeSeatType, int32SeatIdx)
- 使用座位
- 生效范围S
- params Character
- -乘客
- params SeatType
- -座位类型
- params SeatIdx
- -座位Index
- voidUGC_OnSeatDetachedDelegate(ASTExtraPlayerCharacter*Character, ESTExtraVehicleSeatTypeSeatType, int32SeatIdx)
- 离开座位
- 生效范围S
- params Character
- -乘客
- params SeatType
- -座位类型
- params SeatIdx
- -座位Index
- voidUGC_OnSeatChangedDelegate(ASTExtraPlayerCharacter*Character, ESTExtraVehicleSeatTypeLastSeatType, int32LastSeatIdx, ESTExtraVehicleSeatTypeNewSeatType, int32NewSeatIdx)
- 离开座位
- 生效范围S
- params Character
- -乘客
- params LastSeatType
- -旧座位类型
- params LastSeatIdx
- -旧座位Index
- params NewSeatType
- -新座位类型
- params NewSeatIdx
- -新座位Index
- voidOnDriverChange(ASTExtraPlayerCharacter*OldChara, ASTExtraPlayerCharacter*NewChara)
- 驾驶员变更事件Delegate
- UGC_OnSeatAttachedDelegate
- UGC_OnSeatDetachedDelegate
- UGC_OnSeatChangedDelegate
- OnDriverChange

## UVerticalBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVerticalBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVerticalBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVerticalBox](https://developer.gp.qq.com/api/#/searchContent/UVerticalBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVerticalBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVerticalBox)

类

全文搜索

A vertical box widget is a layout panel allowing child widgets to be automatically laid out vertically. Many Children Flows Vertical

---


## 函数

- **AddChildToVerticalBox**(UWidget *Content)
- **InsertChild**(UWidget* Content, int32Index) — AddChildToVerticalBox InsertChild

## UVerticalBoxSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVerticalBoxSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVerticalBoxSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVerticalBoxSlot](https://developer.gp.qq.com/api/#/searchContent/UVerticalBoxSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVerticalBoxSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVerticalBoxSlot)

类

全文搜索

The Slot for the UVerticalBox, contains the widget that is flowed vertically

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetSize**(FSlateChildSizeInSize)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetSize SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. How much space this slot should occupy in the direction of the panel. The alignment of the object horizontally. The alignment of the object vertically. Padding Size HorizontalAlignment VerticalAlignment

## UViewport

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UViewport?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUViewport.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UViewport](https://developer.gp.qq.com/api/#/searchContent/UViewport?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUViewport.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UViewport)

类

全文搜索

---


## 函数

- **GetViewportWorld**()
- **VectorGetViewLocation**()
- **SetViewLocation**(FVectorLocation)
- **RotatorGetViewRotation**()
- **SetViewRotation**(FRotatorRotation)
- **Spawn**(TSubclassOf < AActor >ActorClass) — GetViewportWorld GetViewLocation SetViewLocation GetViewRotation SetViewRotation Spawn

## UVisualLoggerKismetLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVisualLoggerKismetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVisualLoggerKismetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVisualLoggerKismetLibrary](https://developer.gp.qq.com/api/#/searchContent/UVisualLoggerKismetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVisualLoggerKismetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVisualLoggerKismetLibrary)

类

全文搜索

---


## 函数

- **LogText**(UObject* WorldContextObject, FString Text, FNameLogCategory) — Logs simple text string with Visual Logger - recording for Visual Logs has to be enabled to record this data
- **LogLocation**(UObject* WorldContextObject, FVector Location, FString Text, FLinearColor ObjectColor, float Radius, FNameLogCategory) — Logs location as sphere with given radius - recording for Visual Logs has to be enabled to record this data
- **LogBox**(UObject* WorldContextObject, FBox BoxShape, FString Text, FLinearColor ObjectColor, FNameLogCategory) — Logs box shape - recording for Visual Logs has to be enabled to record this data LogText LogLocation LogBox

## UVolumetricFogBoxComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVolumetricFogBoxComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVolumetricFogBoxComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVolumetricFogBoxComponent](https://developer.gp.qq.com/api/#/searchContent/UVolumetricFogBoxComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVolumetricFogBoxComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVolumetricFogBoxComponent)

类

全文搜索

Used to create local volumetric fog.

---


## 函数

- **SetVolumetricFogExtinctionScale**(floatNewValue)
- **SetVolumetricFogAlbedo**(FColorNewValue)
- **SetVolumetricFogEmissive**(FLinearColorNewValue) — SetVolumetricFogExtinctionScale SetVolumetricFogAlbedo SetVolumetricFogEmissive

## 属性

- **height** — fog particle reflectiveness used by volumetric fog. Water particles in air have an albedo near white, while dust has slightly darker value. Light emitted by height fog. This is a density so more light is emitted the further you are looking through the fog. In most cases skylight is a better choice,

## UVolumetricFogSphereComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVolumetricFogSphereComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVolumetricFogSphereComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVolumetricFogSphereComponent](https://developer.gp.qq.com/api/#/searchContent/UVolumetricFogSphereComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVolumetricFogSphereComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVolumetricFogSphereComponent)

类

全文搜索

Used to create local volumetric fog.

---


## 函数

- **SetVolumetricFogExtinctionScale**(floatNewValue)
- **SetVolumetricFogAlbedo**(FColorNewValue)
- **SetVolumetricFogEmissive**(FLinearColorNewValue) — SetVolumetricFogExtinctionScale SetVolumetricFogAlbedo SetVolumetricFogEmissive

## 属性

- **height** — fog particle reflectiveness used by volumetric fog. Water particles in air have an albedo near white, while dust has slightly darker value. Light emitted by height fog. This is a density so more light is emitted the further you are looking through the fog. In most cases skylight is a better choice,

