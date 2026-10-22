# GM

可选开发工具包，通过 Package_Registry.BeginPlay 订阅客户端控制器就绪事件打开 UI。
Config/Config_GM.lua 控制 Enabled、AutoOpen、ShowMouseCursor、UIID 和 CanUse。
Enabled/CanUse 在服务端每次请求时重新检查，项目可自行限制玩家身份。

Controller_GM.Attach 为实际控制器增加薄 RPC 适配器，合并已有 ServerRPC 白名单；同名方法冲突时拒绝安装。
安装只在控制器 return 前增加 Attach 调用，不改变 LifeCycle 或基础 Core。
控制器退出关闭面板、恢复光标并停止该控制器拥有的测试。

面板支持指令、框架状态、DataCore 打印、自动测试分页、运行全部与停止。
Suite 来自 AutoTestKit，六个一页；空列表明确提示，无数据包时不读业务组件。
服务端测试排队为全局共享，一次仅执行一队列，其他玩家不能停止当前请求者的测试。
TEST_STARTED 仅表示启动成功，测试通过必须检查 Global_AutoTestKit.GetReport().allPassed。

自带诊断指令：cmd -s default -GM -Status；可追加 -t server/both 于解释器之后，例如
cmd -s default -t server -GM -Status。数据指令为 -PlayerData、-GameData。
UI 脚本只调用本包及通用 Core，不依赖 GameStatus、ItemSystem 或 ConditionData。
