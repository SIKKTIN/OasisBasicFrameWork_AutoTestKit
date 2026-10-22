# SkillSystem 可选模板

用户选择时读取工具仓库 Templates/framework-skill/manifest.json 与 README.md，依赖 framework-base，与 GM、AttributeSystem 独立选装。先把包选择、现有实现冲突与生成范围列入预检报告，等待用户确认后写入。

- 按 manifest.files 校验并复制六个 Lua，默认无技能 ID、蓝图或业务资源。已有同名技能包需比较并保留业务实现，不直接替换。
- skill_data 新玩家初始化为空表；安装后是有数据包的工程，使用现有 PropertyComponent 存档与实际控制器复制，不修改通用 Core、LifeCycle 或组件来硬编码此包。
- 生成 Package_Registry、Package_Meta_Index、Const_Data 和 Event_DataChange，核对 SKILL_DATA="skill_data"、分类变更事件和控制器复制字段。GenKit_Config 保留显式空 additionalPlayerDataKeys，避免历史业务回退。
- 监听 Server_OnPlayerDataLoaded 和 Server_OnPlayerPawnInit，后者参数为 playerKey，支持模板直接调用 LifeCycle.OnPawnInit 的入口。不得改回监听原始 Pawn 创建事件。
- 监听失败撤销并返回失败，迁移保存失败保留 pendingSave；GetStatus(pc) 检查同步结果，SyncPlayer(pc) 显式重试。waiting-pawn 表示正常等待，不能当作已经完成实例恢复。
- 空列表不调用技能引擎 API，无需创建额外技能资产。用户实际配置技能时，核对本项目 Asset/ 相对类路径、引擎 AddSkillByClass/RemoveSkillInstance 等 API 和 Pawn 对新技能组件的支持；不要猜组件名称或迁入来源技能资源。
- 普通查询允许两端，技能实例及状态修改只在服务端；SetSkillState 的引擎、数据、存档全部成功才算成功。失败仅为尽力回滚，保留回滚/退出清理失败的日志，不宣称通用事务保证。
- 新 PIE 验收两端框架、组件就绪和技能包状态；空表场景确认无实例添加。有实际技能另验证真实蓝图加载、启停、保存和重生恢复；临时 Suite 不写入正式部署清单，结束后恢复索引。

隔离回归共 29 项，包括实际模板 DataCore、LifeCycle、PropertyComponent、重生、退出、AttributeSystem 空配置共存，以及真实 GenKit 扫描和内存输出。引擎/存档为替身，此包尚未在真实工程部署或完成 PIE；不能以隔离结果替代本次目标验收。
