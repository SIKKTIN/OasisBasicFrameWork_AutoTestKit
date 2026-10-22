# framework-gm

可选 GM 模板，依赖 framework-base，默认不随基础模板复制。用户选择 GM 后安装。

Project/ 包含独立 Package/GM、面板 Lua、通用 GM 指令声明，以及已在 TempleTest 编译验证的 UMG 控件。
不包含来源业务包、物品资产、数据表或行结构体。

安装流程：

1. 校验 manifest 文件哈希、目标工程、实际 PlayerController 绑定及文件冲突。
2. 复制 manifest.files 的脚本；已有同内容跳过，不同内容保留并报告冲突。
3. 通过编辑器为缺失 UMG 执行 PackageKit/editor/gm_template.py 的 install_widget，按目标挂载编译保存；已有控件保留并核对类型、编译状态、Lua 路径与依赖。
4. 基础六字段 UI 表缺失时先按 framework-base 的 schema 创建；再以 Definitions/UI/GM.json 执行 merge_ui_row。已有同名不同内容的行是冲突，不覆盖。行构造使用 data_table_empty_row + set_field；以 get_field 读回为准。不要解析含两个 Name 字段的 data_table_as_json 来恢复行名。
5. 在实际控制器 Lua 最后的 return 前增加唯一的 Attach 调用：require("Script.Package.GM.Controller_GM").Attach(UGCPlayerController)。已有方法冲突需合并处理，不覆盖已有 RPC 白名单或 EndPlay。纯脚本模板不改 GameMode、GameState、Pawn 或 LifeCycle。
6. 对本次目标运行 GenKit 生成 Package_Registry、Package_Meta_Index、CommandConfigIndex、CommandList，保留其他包与命令；不改变 setting.json。
7. 新启动 PIE 验证；初始化索引在启动前固定，不热更数组由空变为非空。临时测试套件在停止 PIE 后恢复。

服务端每次请求检查 Enabled、CanUse 与控制器就绪状态。请求派发成功和测试启动成功均不代表测试通过。
Config_GM 默认启用、自动打开并显示光标；关闭时恢复原光标状态。项目限制使用身份时修改 CanUse。

隔离验证：从仓库运行 lua Templates/framework-gm/Tests/Test_GM.lua。
真实引擎验收结果见 Docs/framework/GM_Integration_Verification.md。
