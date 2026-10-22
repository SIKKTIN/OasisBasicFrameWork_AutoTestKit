# GM 接入验收

目标：TempleTest。来源 DayBreakDefenseDemoV1 保持不变。

## 已部署内容

- Templates/framework-gm 独立可选模板：GM 包、面板脚本、UMG 资产、GM 指令配置、JSON UI 登记。
- 控制器只增加 Controller_GM.Attach 调用；RPC 声明、转发和退出包裹位于可选适配器。LifeCycle 不依赖 GM。
- 通过 GenKit 生成目标 Package_Registry、Package_Meta_Index、CommandConfigIndex 和 CommandList。工具 setting.json 未改变。
- DT_UI_Config 使用目标工程本地行结构，六字段保留，新增 1001 GM 行。没有复制来源表或结构体。

## 验证

GM 隔离检查 17 项、编辑器 JSON 行合并检查 6 项通过；既有框架 115 项回归通过。
第二次完整 PIE 会话 `_dkfy0shtqkfouj` 在退出方法热更前，18 项客户端、9 项服务端检查通过：自动打开、真实按钮事件、两页七套件、空状态、跨端指令、权限拒绝、运行/停止、真实重生、面板显式解绑和光标恢复。服务端全部七 Case 由真实 Tick 完成，allPassed=true。

最终文件在干净启动 `_dkfy0shtqkgfpy` 中通过 25 项检查：客户端 16、服务端 9，零失败。再次覆盖 UI、绑定、光标、指令 RPC、真实重生和单 Suite。直接调用实际控制器 ReceiveEndPlay，确认客户端面板释放和 LifeCycle 退出，服务端本人活动队列停止；单独确认已完成的测试报告仍保持 passed/allPassed。该会话不使用热更新。

## 迭代说明

首轮关闭探针同时检查了解绑和假定为 false 的原光标状态。实现增加主动 ReleaseBindings；验收改为分别验证原光标 false、true 的恢复。第二轮干净启动关闭/重开检查通过。
首轮 DS 指令探针没有指定 server 执行端，修正后通过。后续 Probe.Request 未转发 Suite 参数造成额外探针误报，修正后实际单 Suite 通过。此类探针失败未算作产品通过项。
退出方法热更后，保存完成报告检查通过，但活动队列停止断言失败；同文件中旧执行闭包和新退出闭包可能不共享测试 owner 状态。因此退出行为不以热更新结果判定，使用最终文件重新启动复查。

JSON 行写入 API 的实际约定与简略文档有差异：data_table_empty_row 返回 UScriptStruct，add_row 成功可能返回 None，as_dict 行值通过 get_field 读取。helper 和六项回归已固定该约定。as_json 同时包含行名 Name 和业务 Name 的重复键，不用于行名判断。

## 验收边界

真实网络使用一名玩家；多玩家互斥通过隔离测试，未进行多客户端真人联调。GM 数据打印的非空业务 DataFormat 由业务包提供，本次空项目不验证具体业务数据。控制器退出为真实对象上的显式接口调用，不等同真实网络断线测试。
Skill 官方 quick_validate.py 因本机缺少 PyYAML 无法运行；已检查 frontmatter、引用路径及辅助脚本。

## 收尾与证据

PIE 已停止；七个 Suite_GMProbe 临时脚本全部移除，AutoTestSuiteIndex 恢复为原空索引。GM 包、三个诊断指令、面板和 UI 登记保留。最终 GM 脚本均与 manifest 哈希及 TempleTest 文件一致。

所有会话的原始标记和路径见 `E:/Project/ProjectCache/TempleTest-gm-20261021/engine-results.json`；备份和部署清单也在该目录。最终客户端 TagLog 为 `2026.10.21-15.11.15_client__dkfy0shtqkgfpy_1_TagLog.log`，DS 以该 DebugID 定位。
