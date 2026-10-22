# AttributeSystem 可选模板

用户选择时读取工具仓库 Templates/framework-attribute/manifest.json 与 README.md。依赖 framework-base，与 GM 独立选装。先把是否安装、现有配置冲突及生成范围列入部署预检报告，取得确认后写入；未选择时跳过。

- 按 manifest.files 校验和复制七个 Lua；保留已有 Config_Attribute.lua 与业务改动，同名包不同实现须先报告冲突，不覆盖来源或目标业务包。
- persistedAttributes 默认空、resetHealthOnSpawn=false。保持编辑器原生属性和出生/重生行为；不要擅自填入 HealthMax=100、移动倍率=1 或启用满血。项目明确指定属性规则后才配置。
- 包仍声明 attribute_data 空容器。生成 Package_Registry、Package_Meta_Index、Const_Data 和 Event_DataChange，核对 ATTRIBUTE_DATA 常量、分类事件与实际控制器复制字段。空容器走正常存档，不是零数据包状态。
- 无 UI、表格或额外蓝图组件，不改通用 Core、LifeCycle 或 PropertyComponent。不复制来源 game_attribute_type.lua；显式配置的枚举和 resetHealthOnSpawn 需要按目标编辑器定义核对。
- 监听 Server_OnPlayerPawnInit 后同步 Pawn，退出清理状态。GetStatus(pc) 查询结果，SyncPawn(pc) 显式重试。默认值补全保存失败后仍保留 pendingSave；普通属性修改不自动存档。
- 列表输入先校验，Pawn 写入失败不提交玩家数据，并尝试恢复；rollback-incomplete 需保留实际失败证据，不能宣称完全回滚。事件总线不汇总业务返回值，框架 ready 不代表本包同步成功。
- 新 PIE 验证两端启动、属性组件数据就绪、包状态 ready，并检查空配置出生/重生没有覆盖血量和移动倍率。不得硬套 Engine_Smoke 的零数据包断言；临时测试索引在启动前固定，验收后恢复。

隔离检查包含实际模板 PlayerDataCore、LifeCycle、PropertyComponent 与控制器复制，以及真实 GenKit 扫描和内存生成，共 24 项。引擎与存档为替身，目前未在真实工程部署或 PIE 验收；历史隔离结果不能替代本次目标验收。
