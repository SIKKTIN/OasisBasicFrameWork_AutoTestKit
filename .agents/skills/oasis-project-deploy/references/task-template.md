# TaskSystem 可选包

选择任务包时读取 `Templates/framework-task/manifest.json`、README、包内 README 和已选 UI 定义。默认空任务配置；选包后默认带基础 UI，也可明确仅逻辑。示例独立选择，不能静默安装业务任务或奖励。

## 已有框架的工程

以本次目标和实际 MCP 上下文预检，不重新复制基础框架或 GM。检查实际 PC 的 Lua/RPC/复制声明、生成索引、任务文件、三个 UI 资产和 DT_UI_Config。展示报告取得确认后，备份将变更的文件和已有表；已有配置与业务改动合并保留。

## 接入

1. 按 manifest 校验并复制正式 files。仅逻辑跳过 uiOnly 文件、控件和 UI 行，并设置 ui.enabled=false；逻辑包与 RPC 仍须接入。
2. 在实际绑定 PC 最终 return 前 Attach Controller_TaskSystem，保留 GM 适配、既有 RPC、OnRep_task_data 和 EndPlay。服务端只有接取/领奖 RPC，不开放增加进度。
3. 基础 UI 使用 Definitions/UI 和 `PackageKit/editor/task_template.py`。先 inspect_widget；结构冲突停止，已有匹配资产保留。确认后每次单资产 PRV 调用 create_widget；使用 UGCWidgetBlueprintFactory，内部 WidgetTree 属于本资产，禁止复用其他包的内部对象。字体原位设置，EditCondition 开关先于数值设置。编译保存并核对 Lua 关联。
4. inspect_row 检查 DT_UI_Config 六字段及 1010 行；merge_row 仅新增本行并保留 GM 等已有行。冲突时明确新 ID，再同步定义和 Config_Task，不覆盖其他用途的行。
5. GenKit 使用本次 PROJECT_ROOT/SCRIPT_DIR，生成 Package_Registry、Package_Meta_Index、Const_Data、Event_DataChange、Project_Globals。TASK_DATA 必须等于 task_data，实际 PC 复制键来自生成结果；不要修改通用 Core、LifeCycle 或属性组件来识别任务包。
6. 只有明确选择 Examples 才单独部署示例配置和 TaskExample 包；示例 task_example_data 也须进入生成结果。选装 GM 后可额外生成 TaskExample.Advance 开发指令。示例余额是模拟数据，不连接原生货币、物品或经验。

## 奖励与验收

正式包不附默认奖励提供者。项目提供 Validate / Query / Grant，并真正实现持久化去重与部分发放恢复。任务包先保存 claim_pending 的编号、provider 名称和奖励快照，再查询/发放；未知结果保留待确认，重复请求复用原编号。不能把 idempotent=true 标志当成已实现事务或去重。

新启动 PIE，读取当次真实 client/DS 日志：空配置正常启动、玩家数据/任务状态就绪；有 UI 时检查入口、空态、滚动和关闭；有示例时验证接取 RPC、服务端累计、客户端复制刷新、手动领奖及重复请求。只有实际覆盖才能记录回执恢复、跨会话持久化或奖励系统成功；派发 Lua 成功不能代替结果证据。

完成后停止 PIE，移除临时探针，保留正式配置与明确选用的独立示例。未完成运行验收时报告接续位置，不宣称完整部署成功。离线检查入口在模板 Tests；运行证据记录在 Docs/framework 与对应开发记录，不能用历史 TempleTest 结果替代新工程验收。
