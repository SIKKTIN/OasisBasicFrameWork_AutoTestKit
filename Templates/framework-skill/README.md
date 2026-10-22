# SkillSystem 可选模板

依赖 `framework-base`，与 GM、AttributeSystem 独立选装。提供项目技能注册、玩家激活状态、引擎技能实例管理和 Pawn 重生恢复。默认技能注册表为空，不携带技能 ID、技能蓝图、UI、表格或其他业务资源。

## 空项目行为

包通过 Meta 声明 `skill_data`，新玩家初始化为 `{}`；没有技能时不调用技能引擎 API，也不自动装备任何技能。空容器由现有 PlayerDataCore、PropertyComponent 和实际控制器入口负责存档、复制；安装此包后不再是零数据包工程。

查询和实例缓存分离：存档只包含 `[skillType] = boolean`，运行时实例及 Pawn 引用不写入存档。空配置不需要自定义技能资产或额外创建组件；项目真正使用技能前，必须核对目标 Pawn 支持新技能组件，以及技能引擎 API 和蓝图类可用。

## 注册与公共接口

入口为 `require("Script.Package.SkillSystem.Registry_SkillSystem")`。业务包在自己的 BeginPlay 阶段调用 `RegisterSkill(skillType, config)`：

- skillType 为稳定的正整数。
- config 为 `{name=string, desc=string|nil, assetPath=string}`，资源使用 `Asset/` 开头的本项目相对蓝图类路径。相同定义重复注册成功，同 ID 不同定义失败。
- 框架不替项目选择技能编号或资源，也不复制来源项目技能资产。

公共查询为 `GetSkillConfig`、`GetSkillAssetPath`、`GetAllSkillTypes`、`GetPlayerSkills`、`IsSkillActive`、`IsSkillLoaded`。配置与玩家数据返回副本；缺失状态等价于关闭。客户端只查询，实例与持久化修改仅服务端执行。

`SetSkillState(pc, skillType, state)` 管理引擎实例、玩家数据和存档，全部成功才返回 true。失败时尽力恢复数据及运行时状态；引擎操作和业务监听副作用不具备通用事务保证，不能把失败等同于一定完整回滚。重复设置相同状态不重复添加或保存，缺失/失效实例可重新恢复。

`RestoreActiveSkills(pc)` 只按当前数据恢复实例；完整的迁移、待保存重试及恢复使用 `SyncPlayer(pc)`。`GetStatus(pc)` 返回 `phase`、`reason`、`pendingSave`；phase 为 idle、waiting-pawn、ready 或 failed。没有 Pawn 时等待权威 Pawn 就绪事件，不把正常创建时序当成保存失败。

## 生命周期与修复

- `BeginPlay` 显式加载 EventType、事件总线。服务端监听 Server_OnPlayerDataLoaded、Server_OnPlayerPawnInit 和退出事件；注册失败返回 false 并回滚本次监听，修复后可重试；重复成功调用不重复注册。
- 新玩家由包初始化自己的 skill_data 容器，不要求外部提前创建。已有非法非表数据报错，不直接覆盖。
- 监听 LifeCycle 已核对关联和数据就绪的 Server_OnPlayerPawnInit，而非原始 Lifecycle_Pawn_Init。支持模板直接调用 OnPawnInit 的入口，避免重生漏恢复。
- 已注册技能的历史数字字符串键迁移为数字键，数字键优先；未注册键保留，不擅自清除其他历史数据。迁移保存失败保留 pendingSave，之后事件或显式 SyncPlayer 会再次保存。
- 旧 Pawn 的有效实例移除失败时保留记录并返回恢复失败，修复后再 SyncPlayer，不静默丢弃缓存；已失效对象允许直接清除记录。
- 框架 ready 不代表本包技能恢复成功，事件总线也不汇总业务返回值；验收必须检查包状态。失败后显式重试，不自动无限循环。
- 退出尝试移除属于本包的实例，清理运行时缓存与状态；移除失败会记录，不能据缓存已清除声称引擎副作用已移除。`EndPlay()` 可显式卸载监听并清理已跟踪玩家。

## 初始化接入

oasis-project-deploy 在预检报告中列出此可选包，用户确认后复制 manifest.files 中六个 Lua；不改通用 Core、LifeCycle、PropertyComponent 或控制器代码来硬编码此包。

针对目标生成 Package_Registry、Package_Meta_Index、Const_Data、Event_DataChange，核对 `SKILL_DATA="skill_data"` 和 `ON_PLAYER_SKILL_DATA_CHANGE`。实际控制器按生成常量复制字段，保留 GenKit_Config 的显式空 additionalPlayerDataKeys，不回退历史业务数据键。

新 PIE 验收两端框架、属性组件数据就绪和包状态，空列表不得添加实例。有业务技能时另外验证实际蓝图加载、启停、保存和重生恢复，以及目标 Pawn 技能组件；空包启动不能替代真实技能效果验证。

## 验证范围

[Test_SkillSystem.lua](Tests/Test_SkillSystem.lua) 包含 29 项隔离检查，覆盖空容器、技能注册/查询、监听失败与重试、客户端只读、实例与存档失败、键迁移保存重试、真实模板 LifeCycle/PropertyComponent 衔接、重生、退出和 AttributeSystem 共存。还使用真实 GenKit 扫描模板并在内存中生成注册表、数据常量和事件，检查控制器复制契约。

```text
lua Templates/framework-skill/Tests/Test_SkillSystem.lua
```

引擎、角色和存档使用内存替身。此可选模板尚未部署到真实工程或通过 PIE；初始化目标时必须单独完成运行验收。正式部署清单不包含测试文件和说明文档。
