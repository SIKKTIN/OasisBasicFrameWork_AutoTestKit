# TaskSystem 可选部署包

依赖 framework-base，与 GM、AttributeSystem、SkillSystem 独立选装。默认空任务配置；基础 UI 默认随包部署，也支持仅逻辑包。正式包不发放金币/物品/经验，不含特定项目任务和测试指令。

运行接口、数据结构和奖励协议见 [包说明](Project/Script/Package/TaskSystem/README.md)。蓝色面板提供任务入口、滚动列表、详情、目标进度、奖励与状态按钮；示例图中的内容不属于默认业务配置。基础奖励图形使用可配置短文本，不要求导入项目图标。

## 部署

1. 读取 manifest 和已选 UI 定义，校验内容哈希，预检实际工程、已有文件/资产/表行/PC 绑定与 MCP 能力。展示新增、保留、更新及冲突；用户确认后备份再执行。
2. 复制 files。仅逻辑模式跳过 manifest 中 uiOnly 文件，并将 UI 配置 enabled=false；保留用户既有配置，不直接覆盖。
3. UI 模式通过 `PackageKit/editor/task_template.py` 的 create_widget 逐资产创建三个本项目 UGCWidgetBlueprint；不复制其他项目的内部 WidgetTree。使用 UGCWidgetBlueprintFactory，控件由 Definitions/UI JSON 定义，独立编译保存并验证 Lua 路径。每次 MCP PRV 只处理一个资产。已有结构匹配资产保留，不重建；冲突先报告。
4. 在实际 PC 最终 return 前 Attach Controller_TaskSystem，保留现有 GM 适配、RPC 与复制声明。merge_row 合并六字段 DT_UI_Config，保留其他行；默认 1010 冲突时需明确新 ID，并同步 UI 配置。
5. 使用目标 GenKit 生成 Package_Registry、Package_Meta_Index、Const_Data、Event_DataChange、Project_Globals；核对 TASK_DATA="task_data" 与分类变更事件，实际 PC 使用生成键复制。不改通用 Core、LifeCycle 或 PropertyComponent，不修改工具 setting.json。
6. 新启动 PIE，读取当次两端日志，确认框架、玩家数据、任务包与 UI 状态。正式空包必须正常启动；实际奖励接口和示例另验。结束停止 PIE，清理临时探针并保留正式接入。

## 独立示例

Examples/ 中的配置和 TaskExample Package 仅用于验证。项目明确选用后单独部署，不能进入正式 files 清单。示例 provider 使用自己的 task_example_data 记录模拟余额与回执，并通过同一存档保存，完全不调用真实货币或背包 API。

TempleTest 可保留示例供用户体验，正式项目不自动安装。示例目标通过服务端 Registry_TaskExample.Advance(pc) 或独立开发指令逐步推进；不在正式任务 RPC 中开放客户端加进度。

## 本地检查

```text
lua Templates/framework-task/Tests/Test_TaskSystem.lua
python Templates/framework-task/Tests/Test_TaskEditor.py
lua Templates/framework-task/Tests/Test_Generation.lua
```

Lua 测试的引擎与存档为替身；编辑器辅助测试使用替身检查冲突和工程边界。实际 GenKit 检查和真实 TempleTest 验收结果另行记录，不能用静态检查替代运行验收。

## TempleTest 试用

TempleTest 已显式安装 Examples 的五条任务配置和模拟奖励。实机左侧点击“任务”，接取“初次挑战”；GM 的指令页输入以下命令，每执行一次推进一轮目标，执行三次可完成首条任务：

```text
cmd -s default -t server -TaskExample -Advance
```

回到任务面板手动领取。模拟奖励为示例金币 500、示例经验 100、示例急救包 2，不影响正式货币或背包。默认正式 Config_Task 仍为空；正式接入应提供自己的业务事实与奖励 provider。

[实际验收与限制](../../Docs/framework/TaskSystem_Integration_Verification.md) 包含实机截图、日志标记与验证范围。引擎文档明确 PIE 不支持跨对局存档；同局保存/恢复已验，发布环境的跨局恢复另验。
