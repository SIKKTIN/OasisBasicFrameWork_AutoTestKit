# AttributeSystem 可选模板

依赖 `framework-base`，与 GM 独立选装。提供玩家属性查询、修改、持久化配置和 Pawn 同步，不携带 UI、数据表或蓝图资产。

## 默认行为

[Config_Attribute.lua](Project/Script/Package/AttributeSystem/Config/Config_Attribute.lua) 默认：

```lua
return {
    persistedAttributes = {},
    resetHealthOnSpawn = false,
}
```

空配置不登记任何持久化属性，不设置最大生命值、移动倍率或当前生命值，不在出生、重生时强制满血，保留编辑器和其他系统的属性值。调用方仍可显式调用通用属性修改接口。

包仍通过 Meta 声明一个 `attribute_data` 数据容器，初始为 `{}`，纳入框架存档和控制器复制。因此安装此包后不再是“零数据包”工程；通用 PropertyComponent 会按正常协议处理这个空容器。没有自定义属性定义、来源项目业务字段或额外组件。

## 项目配置

`persistedAttributes` 为 `[属性枚举值] = 默认值` 的映射，默认值必须为有限数字。项目需要时自行登记原生或本项目自定义属性；包不复制来源项目的 `game_attribute_type.lua`。该文件及自定义属性由目标编辑器维护。字符串属性键不能含点号，以免被 PlayerDataCore 当作嵌套路径。

默认值只补缺失字段，不覆盖已存值。Pawn 就绪和重生时仅把已登记属性同步到当前 Pawn。`resetHealthOnSpawn=true` 才会按目标引擎的 HealthMax 设置 Health；开启前核对目标原生属性枚举。修改配置后使用新 PIE 验证，不靠模块热更切换声明。

## 接口与失败处理

包外入口：`require("Script.Package.AttributeSystem.Registry_AttributeSystem")`。

- 查询：`GetAttributeData` 返回数据副本，`GetAttributeValue` 读取 Pawn，`GetPersistedAttributeValue` 读取数据容器；`GetPersistedAttributeTypes` 返回配置键的副本。
- 服务端修改：`SetAttributeValue`、`AddAttributeValue`、`ModifyAttributeList`。白名单属性同时更新数据；其他属性只更新 Pawn。成功返回 true，失败返回 false、原因。普通修改不自动保存，业务提交点调用 PlayerDataCore.SaveArchiveData。
- 监听注册失败返回失败并撤销本次监听，修复后可以重复 BeginPlay；成功后重复调用不重复监听。
- 写入前校验整个列表并读取旧值；Pawn 写入失败不提交玩家数据，并尝试恢复 Pawn。数据提交失败也尝试恢复；回滚失败明确返回 `rollback-incomplete`。引擎属性写入与业务监听副作用不具备通用事务保证。
- 默认值补全后的保存失败会保留待保存标记。`GetStatus(pc)` 查询 Pawn 同步状态，`SyncPawn(pc)` 显式重试；不会因默认值已在内存存在而漏掉重试保存。事件总线不收集业务返回值，不能只凭 LifeCycle ready 判定此包同步成功。
- 服务端退出事件清理对应 PC 状态；`EndPlay()` 可显式卸载包监听。包无额外 Tick，不自动循环重试。

## 初始化接入

由 oasis-project-deploy 的预检报告列为可选包，用户确认后安装。按 manifest.files 复制脚本；已有 Config 或业务改动按冲突规则保留合并。无需为本包创建资产，也不修改通用 Core 或 PropertyComponent。

安装后针对目标生成 `Package_Registry`、`Package_Meta_Index`、`Const_Data`、`Event_DataChange`，核对 `ATTRIBUTE_DATA="attribute_data"` 和分类变更事件；实际控制器入口按生成常量复制该字段。保留 GenKit_Config 中显式空 additionalPlayerDataKeys，避免历史业务键回退。

新 PIE 至少检查两端框架启动、服务端组件数据就绪、包 Pawn 同步状态，以及空配置时出生和重生均无属性覆盖。使用临时 Suite 时在启动前固定索引，结束后清理。

## 验证范围

`Tests/Test_AttributeSystem.lua` 验证空配置、显式配置、存档协议、失败重试、客户端只读、引擎失败与回滚、实际模板 LifeCycle/PropertyComponent 衔接，以及真实 GenKit 扫描和内存生成输出。运行：

```text
lua Templates/framework-attribute/Tests/Test_AttributeSystem.lua
```

引擎与存档使用内存替身，不修改真实工程。此可选模板尚未部署到工程或通过真实 PIE；完成目标初始化时必须另做运行验收。
