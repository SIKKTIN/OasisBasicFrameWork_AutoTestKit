# GM 可选模板

用户要求接入 GM 时读取工具仓库 Templates/framework-gm/manifest.json 与 README.md。GM 是独立模板，依赖 framework-base；完整部署未选择 GM 时不安装该可选包，其他必需步骤照常执行。

- 核对本次目标工程及实际控制器绑定；文件按 manifest.files 校验哈希、同内容跳过，不同内容保留。备份已授权修改的入口和生成索引。
- UMG 缺失时通过 MCP、单资产 PRV 调用 PackageKit/editor/gm_template.py 的 install_widget(template_directory, project_directory, expected_project)。模板资源仅有通用 UMG，无业务资产。复制后在目标挂载编译、保存并核对 GeneratedClass、Status、Lua 路径及依赖。已有资源先核对，不能直接覆盖或盲目重编译。
- 基础 UI 表先按 framework-base 的 schema 建立本地结构。对 Definitions/UI/GM.json 调用 inspect_ui_row / merge_ui_row，保留其他所有行；同一行 ID 不同内容是冲突。使用 data_table_empty_row 构造 UScriptStruct，再 set_field 后 data_table_add_row；该编辑器成功可能返回 None，依据读回结果，不据返回值误判。data_table_as_dict 的行值也是 UScriptStruct，用 get_field 校验。data_table_as_json 含业务 Name 和行名 Name 的重复键，不用于行名判断。保存匹配行后重复调用应返回 matched。
- 实际 PlayerController 的最终 return 前增加一次 require("Script.Package.GM.Controller_GM").Attach(UGCPlayerController)。适配器仅声明/转发 RPC 并包裹退出清理，合并旧白名单；同名方法冲突需显式合并，不能覆盖。基础入口模板无需知道 GM。GM 可选安装之后，升级四个基础入口时保留该 Attach 调用。
- 指定 GenKit.PROJECT_ROOT 与 SCRIPT_DIR 为本次目标，生成 Package_Registry、Package_Meta_Index、CommandConfigIndex、CommandList；保留其他项目内容，不改 setting.json。Config_Command_GM 使用静态声明，以便帮助索引识别。
- Config_GM 控制 Enabled、AutoOpen、ShowMouseCursor、UIID、CanUse；服务端每次请求重新检查。GM 包监听 Client_OnPlayerControllerInit，LifeCycle 不感知 GM。退出销毁自己的 UI、恢复光标、停止本控制器拥有且仍在运行的测试；保留已完成报告。
- 功能范围为指令、两端框架状态和数据打印、套件分页、运行全部/单套件/单 Case、停止测试。没有数据包或 Suite 要明确提示，不导入 GameStatus、ItemSystem、旧 PropertyComponent 调试接口。
- 真实验证面板创建和按钮事件、服务端返回结果、Enabled/CanUse 拒绝、六项分页、队列完成与停止、重复初始化与销毁重建。跨端请求派发成功只是 SERVER_DISPATCHED；TEST_STARTED 只是排队，最终通过必须依据 GetReport().allPassed。
- 启动前固定测试索引，不能在运行中热更空数组到非空。验收后停止 PIE，恢复临时 Suite 索引并移除本次临时脚本，保留用户已有套件。区分模拟测试、编辑器保存验证和真实 PIE 验收结果。

TempleTest 验收：GM 行为隔离 17 项、行合并 6 项通过；最终干净 PIE 会话 _dkfy0shtqkgfpy 为客户端 16、服务端 9，共 25 项通过，显式调用实际控制器退出入口。此前完整功能轮还验证七套件全部通过。具体范围、热更闭包混用的诊断历史和证据见 Docs/framework/GM_Integration_Verification.md。涉及同一模块共享局部状态的执行与清理方法变更时，热更结果可能混用旧闭包，应以最终文件的干净启动确认。
