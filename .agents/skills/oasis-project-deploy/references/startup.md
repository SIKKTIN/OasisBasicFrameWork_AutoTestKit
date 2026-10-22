# 实际入口、注册清单与启动验收

这些步骤是每次部署的必需部分。预检阶段仅只读解析入口及绑定，展示结果和计划并取得用户确认后，才允许创建脚本、修改入口、写出清单和启动 PIE。用户明确仅计划时只读核对并列入计划。

## 从实际绑定定位入口

读取目标 .ugcproj 的 GameModePath，使用编辑器 Blueprint 和 GeneratedClass.get_cdo() 获取 GameMode。按该 CDO 的 GameStateClass、PlayerControllerClass、DefaultPawnClass 解析三个实际类，先通过 ue_read 确认当前引擎的字段/API。沿真实类路径加载本项目蓝图，再用 bp_lua_get_path 核对关联 Lua，缺失默认脚本在预检报告中列为待创建项，用户确认后才使用 bp_lua_find_or_create 创建。不要按 UGCGameState 等默认文件名猜目标；实际类不在本项目、绑定不明确或父类不兼容时报告具体问题。

manifest.entryScriptDefinitions 是独立的必需输入，不放入普通 manifest.files 是为了按绑定定位目标。按其 SHA-256 读取四个模板，备份目标默认脚本后更新。若实际类名不同，替换模板的类表名、注解、SuperClass 引用及返回表，保持一致。目标已有业务逻辑时保留并合并；无法合并时只询问具体冲突。保留目标编辑器提供的 Script.Common.ue_enum_custom 和 Pawn __SubObjectRepList 声明。

- GameMode 保持通用骨架，不强制加载业务 Registry_GameMode。业务包可自行订阅 FrameworkReady。
- GameState BeginPlay 调用 LifeCycle.BeginPlay、OnGameStateInit，Tick 仅调用 LifeCycle.Tick；数据复制按生成 Const_Data 的类型及 ORDER。
- PlayerController BeginPlay 通知 OnPCInit，Tick 调用 Package.PlayerTick，EndPlay 在父类之前 OnPCEnd；复制键来自生成常量，不在类原型上创建共享数据表。
- Pawn 两端 BeginPlay 通知 OnPawnInit，保留父类与子对象复制约定；等待关联及服务器数据就绪由 LifeCycle 处理。

选装 GM 后，控制器最终 return 之前只有一次 Controller_GM.Attach。升级入口或重新部署时保留该调用，适配器合并原 RPC 白名单，不覆盖已有同名业务方法。

## 生成本次目标的实际清单

使用工具仓库 GenKit/init.lua 和已核对的 Lua 解释器。package.path 包含工具根的 ?.lua 和 GenKit/?.lua。加载模块后显式指定 gen.PROJECT_ROOT=目标绝对路径、gen.SCRIPT_DIR=目标/Script；不把工具 setting.json 的旧 projectRoot 当成本次目标，也不改写该配置。

在写出前检查各 get...OutputPath 返回值均位于目标内，备份原生成文件，先 preview 再对应 write，检查各返回值。匹配的已有生成结果可跳过；目标确有声明时重新扫描生成，不用空种子覆盖非空索引。以下生成属于部署：

| 输出 | GenKit preview / write |
| --- | --- |
| Core_Registry | previewCoreRegistry / writeCoreRegistry |
| Package_Registry | previewPackageRegistry / writePackageRegistry |
| Package_Meta_Index | previewPackageMetaIndex / writePackageMetaIndex |
| CommandConfigIndex | previewCommandConfigIndex / writeCommandConfigIndex |
| CommandList | previewCommandList / writeCommandList |
| AutoTestSuiteIndex | previewAutoTestSuiteIndex / writeAutoTestSuiteIndex |
| Const_Data | previewConstData / writeConstData |

模板中的这些文件只是可解析的初始结构，部署结束必须与本次扫描结果一致。当前十个 Core 中八个 Global 模块应进入 Core_Registry；EventSystem 和 LifeCycle 显式加载，LifeCycle 不重复登记。没有包、命令、Suite 或业务数据时，对应结果可以为空；选择 GM 时其 Registry、Meta、命令声明应进入相应索引。选择 AttributeSystem 时将其 Registry 和 Meta 纳入索引，并生成 ATTRIBUTE_DATA="attribute_data" 及 ON_PLAYER_ATTRIBUTE_DATA_CHANGE；配置为空仍有该数据容器，不能按零数据包跳过存档。选择 SkillSystem 时同样生成其包、Meta、SKILL_DATA="skill_data" 及 ON_PLAYER_SKILL_DATA_CHANGE，空技能表仍是有效的数据包。

Project_Globals 和 DebugKitPrediction 在没有额外声明时可保持已提供的有效空结构；目标需要白名单或预测时使用各自生成器。存在业务数据声明时按 GenKit 生成分类数据事件，并保留已有业务事件定义；不盲目覆盖自定义 EventType。不要运行无本次输入的 CSV 常量生成。

GenKit_Config 是手工配置，不属于可随意重写的产物；保留显式空 additionalPlayerDataKeys 和 tableConsts。已有非空配置按目标声明处理，不导入来源项目业务字段。

## 启动前检查

核对四个实际入口、必需文件/字段、Core 清单、Meta、UI 表本地结构、组件唯一挂载和 Lua 路径。蓝图编译状态 3 为成功，5 为有警告的成功，2 等失败必须处理。缺少必需接入时任务未完成，先修复，不能以“资产已部署”结束部署。

## 运行与收尾

启动新的正常单玩家 PIE。通过 session resource 取得真实 DebugID 和日志路径，等客户端 Lua console 和框架启动就绪后，再派发验证。至少确认两端 FrameworkReady、所有必需 Core 初始化、控制器就绪、无待处理 PC/Pawn、服务端属性组件加载成功及数据就绪、Pawn 初始化去重，以及持续 Tick 未重复调用。

UI 无登记、零数据包、零业务 Suite 是有效空工程状态。用临时探针或 Suite 验证关键行为时，启动前固定索引，使用 nil owner 或已接入的通知通道；保留用户套件，不导入来源业务 Suite。现有 Engine_Smoke 需要结合当前 UI 行数和临时 Suite 配置使用，不能把零 UI/零数据包的旧断言硬套到已选 GM、AttributeSystem 或 SkillSystem 的工程。

选装 GM 时验证面板、重复绑定、指令 RPC 真正回传和禁用/权限拒绝；Suite 运行只在报告 allPassed 时计为通过。客户端实际显示、服务端运行与离线隔离测试分别记录。

选装 AttributeSystem 时同时检查 GetStatus(pc).phase 为 ready；默认配置下记录出生、重生前后的血量上限、当前血量和移动倍率，确认包没有覆盖它们。配置有声明时再验收对应属性的持久化与回写，不能把空配置检查当作非空配置的运行证明。

选装 SkillSystem 时检查组件就绪、GetStatus(pc).phase 为 ready、空技能注册表和空 skill_data。存在实际技能时另外验证目标技能类、启停、存档结果与重生实例恢复；默认空包启动不得代替实际技能效果验证。

停止 PIE 后恢复临时索引、移除仅本次添加的探针；正式包及其生成清单保留。更新共享局部状态或完整启动链后使用干净启动复查，避免编辑器热更保留旧闭包。无法启动或验收失败时记录本次阻碍与证据，报告“部署未完成”，后续接续完整流程。
