---
name: oasis-project-deploy
description: 为已创建的空白 UGC 工程先预检并展示结果，用户确认后完整接入 OasisBasicFrameWork_AutoTestKit，部署 Core、创建 UI 表与属性组件、同步实际入口、生成注册清单并完成启动验收；GM、AttributeSystem 和 SkillSystem 可选。用于向已创建的空白项目部署框架或接续未完成的部署；环境检查使用 oasis-environment，框架介绍使用 oasis-introduce。
---

# Oasis 框架部署

部署只有完整接入这一种流程，完成标准是目标工程通过实际启动验收。必需工作包括通用 Core、JSON UI 表、玩家属性组件、四个实际入口、生成注册清单和 PIE 验证。framework-base 是必需内容包的目录名；GM、AttributeSystem 和 SkillSystem 是独立可选内容包。

调用本 skill 或提出“部署框架”或“初始化项目”时，先执行只读预检，展示目标工程、环境和 MCP 实际连接结果及完整部署计划，等待用户二次确认后才开始接入。首次请求及其中的“开始部署”或“开始初始化”不能代替看过预检报告后的确认。部署仍只有完整接入流程；GM、AttributeSystem 和 SkillSystem 独立可选，未指定时分别在报告中明确列为“不安装”。用户明确要求“仅计划”时只读检查并输出计划，不执行部署；之后要求执行时仍须确认当前预检报告。

## 第一阶段：只读预检

- 本 skill 源目录向上三级为工具仓库；从用户级链接加载时先解析真实路径。
- 目标使用本次任务明确指定的工程目录；缺失时只补全目标信息，不静默采用旧 setting.json、聊天工作目录或未经确认的编辑器工程。核对 .ugcproj，再实际调用 MCP 读取 ctx:，确认项目目录与挂载根一致；仅发现工具名称不能算已连通。记录连接成功/失败、编辑器当前工程、挂载根和 PIE 状态；失败时保留错误摘要。
- 阅读 Templates/framework-base 的 manifest.json、README.md 和引用的定义；选择 GM、AttributeSystem 或 SkillSystem 时再读对应独立清单。模板清单用于定位各类输入及已验证范围，历史验收不能替代本次目标验收。
- 校验模板 SHA-256、目标路径、实际入口绑定及文件/资产冲突。相同内容跳过；已有业务改动保留，按功能合并，无法安全合并时报告具体冲突。空种子不覆盖现有非空注册清单。
- 核对可用 Lua 解释器以运行 GenKit；可从已确认配置读取 luaPath，缺失或不可用时补全。目标工程始终使用本次目录，不修改工具 setting.json。JSON 建表无需 CSV 或 dataTableCsvRoot。
- 此阶段只读取配置、文件与编辑器状态。不得复制或改写目标文件、创建或保存资产、创建缺失入口脚本、运行生成器写出、提交写入 PRV，或启动/停止 PIE。只规划项目外备份位置，实际备份和修改在确认后执行。

## 展示预检报告并等待确认

用简明表格输出本次实际检查结果，不只说“检查通过”：

- **目标工程**：绝对目录、工程名及 .ugcproj，明确与 MCP 当前工程是否一致。
- **MCP 服务**：实际请求是否成功，编辑器工程/挂载根、PIE 状态和关键资产操作能力是否可用；无法核对的项写“未验证”。
- **Lua 环境**：解释器实际路径、版本验证结果；版本检查须有超时，文件存在不能代替可执行验证。
- **模板与现有内容**：模板版本及哈希检查、四个实际入口与绑定检查结果、现有表/组件和文件冲突摘要、预计新增/更新/保留范围。
- **部署计划**：完整接入步骤、备份位置、GM、AttributeSystem、SkillSystem 各自是否安装，以及会进行生成器写出和新 PIE 启动验收。
- **阻碍**：缺失配置、连接失败、工程不匹配、正在 PIE 或未解决冲突。必需项未就绪时先让用户补全/处理，再刷新报告，不进入部署。

必需检查就绪后，请用户确认“对上述目标工程按此计划开始完整部署”。说明这是本 skill 要求的“展示预检报告并等待确认”，并链接本次读取的 SKILL.md。等待明确回复（如“确认”“可以，开始”）后再执行；没有回复、等待超时或仅提供了缺失路径均不算确认。可选包可在这次确认中选择；如新增包，先补齐该包的只读检查并更新计划。

确认覆盖报告中的整个接入流程，后续不逐步骤重复询问。目标工程或部署范围发生变化时重新展示对应信息并确认；同一会话中已确认且范围未变化的接续工作无需重复确认。执行前重查 MCP 仍指向已确认工程；不一致时停止写入并重新核对。

## 第二阶段：确认后完整接入

先在报告中的项目外位置备份将修改的入口、索引和已有资产。默认入口脚本可在备份后更新；业务代码保留并合并。


1. **复制必需文件。** 按 manifest.files 部署 Project/ 的 Core、Event、数据常量、组件 Lua 与 Setting 初始结构，校验哈希并创建必要目录；Definitions 和工具代码留在工具仓库。空注册表只是生成前输入，不能作为完成状态。
2. **创建 UI 表。** 按 dataTableDefinitions 和 [JSON 建表流程](references/editor-tables.md) 创建目标本地表及结构体。已有字段匹配的表保留所有行；不复制来源数据表或结构体，不直接重绑 RowStruct。六字段及类型按 JSON 保留。
3. **创建属性组件。** 按 componentDefinitions 和 [组件创建与挂载](references/editor-components.md)，定位实际控制器，创建组件蓝图、关联 Lua、挂载 GeneratedClass，编译保存并复查唯一挂载。
4. **同步四个入口。** entryScriptDefinitions 全部为必需步骤；按 [入口、注册清单与验收](references/startup.md) 从实际 GameMode 解析 GameState、PlayerController、Pawn，更新各自已绑定的 Lua。不得仅按模板文件名猜目标或另造入口蓝图。保留父类、公共枚举、复制声明和目标类名；选择 GM 时保留其适配调用。
5. **安装已选可选包。** GM 按 [GM 模板](references/gm-template.md) 部署包与控件、合并 JSON UI 行并接入控制器 RPC 适配；AttributeSystem 按 [空配置属性包](references/attribute-template.md) 部署 Lua，保留空属性配置、不创建资产。SkillSystem 按 [空注册表技能包](references/skill-template.md) 部署六个 Lua，不登记默认技能或创建业务资源。各包独立选择；未选择的包跳过，必需框架照常接入。
6. **生成目标注册清单。** 使用本仓库 GenKit，以本次 PROJECT_ROOT、SCRIPT_DIR 生成实际 Core、Package、Meta、指令与测试索引、数据常量，核对所有输出均在目标内。LifeCycle 显式加载，不加入 Core_Registry。具体生成范围和空输入处理见 startup.md。选装 GM 后其包与命令须进入生成结果；选装 AttributeSystem 或 SkillSystem 后须生成对应包、Meta、ATTRIBUTE_DATA / SKILL_DATA 常量及分类变更事件。
7. **完成实际启动验收。** 检查文件、绑定、编译及清单后，新启动 PIE，读取本次真实 client/DS 日志，验证框架、组件、玩家/Pawn 就绪和 Tick；选装 GM 时验证面板、RPC 和开关；选装 AttributeSystem 时验证包同步状态及空配置出生/重生不覆盖属性；选装 SkillSystem 时检查数据就绪、包状态和空技能列表，配置有技能时再验证实际启停与重生恢复。修复本次接入引起的问题并复验，不能停在文件或资产复制成功。
8. **收尾。** 停止 PIE；恢复临时测试索引、移除本次临时探针，保留正式配置及用户原有套件。汇总通过项、证据和仍未验证的范围。

编辑器写入遵循服务的单资产 PRV。发生失败或失联，先检查实际已保存状态再恢复工作，不盲目重建资产、删表或重绑。无法完成必需步骤时明确报告“部署未完成”、具体阻碍和接续位置，不把部分部署列为另一种成功模式。除首次预检报告后的确认，以及目标或范围变化后的重新确认外，只就实际缺失信息或无法安全合并的冲突询问用户。

## 必须保留的运行契约

- 十个 Core 为 ClientCache、EventSystem、DebugKit、UISystem、TipSystem、CommandSystem、AutoTestKit、GameDataCore、PlayerDataCore、LifeCycle。入口显式加载 EventType、事件总线与 LifeCycle；Global Core 由实际清单初始化。
- GameState 只通过 LifeCycle.Tick 驱动 Core.Tick 与 Package.GameStateTick，PC 单独驱动 Package.PlayerTick，避免重复 Tick。PC Begin/End、两端 Pawn Begin 均必须接线；服务端 Pawn 等待玩家数据就绪。FrameworkReady 表示框架启动成功，不等于业务地图或玩家数据加载完成。
- PropertyComponent 只处理 Owner；无玩家数据声明时跳过存档并通知就绪。CheckArchiveData 的 true/false/nil 分别是已有/不存在/错误；只有 false 才初始化并首次保存。独立 __oasisArchive.version=1 不属于业务数据、常量或复制字段；不迁入 ConditionData，不覆写无法识别的存档。成功后由组件通知 LifeCycle，EndPlay 清理监听。
- UI 空表、零业务数据包、零业务指令和零测试套件允许框架启动。没有套件是 no-tests，不能称为测试通过；测试完成以 GetReport().allPassed 为准。用于验收的临时探针与业务 Suite 分开记录。
- TipSystem 的 Tick 已在完整入口中驱动；服务端通知和开发指令 RPC 由可选 GM 适配提供。未装 GM 不影响框架启动，也不宣称这些可选跨端入口已接入。
- AttributeSystem 默认 persistedAttributes 为空、resetHealthOnSpawn=false，不登记默认血量或速度、不强制满血。它仍拥有 attribute_data 空数据容器，须走正常存档与复制流程；不在 Core、LifeCycle 或 PropertyComponent 中写包专用判断。
- SkillSystem 默认无技能定义或资源，skill_data 为空容器并走正常存档和复制；通过权威 Server_OnPlayerPawnInit 恢复，GetStatus 检查结果，SyncPlayer 显式重试。配置实际技能才需要核对目标 Pawn 技能组件和蓝图，不硬编码到通用 Core 或 PropertyComponent。
- GenKit_Config 的 additionalPlayerDataKeys、tableConsts 默认显式为空，避免历史业务键回退；保留已有项目配置。不要迁入来源 CSV、业务 GameMode、业务包或旧 PropertyComponent。

## 验收与报告

使用本次 PIE session resource 的真实日志路径。派发 doluastring 成功不代表执行成功；phase=running 也不代表客户端已就绪。索引在启动前固定，不热更空数组到非空；共享局部状态的启动/执行/清理方法变更以干净启动复验。

报告目标工程、已接入模块和实际入口、表与组件、生成清单、各可选包是否安装、两端启动结果和日志证据。只在所有必需步骤及本次运行验收通过后报告完整部署成功。业务包、真实断线和跨对局存档持久化等未覆盖范围单独说明。

既有验证和探针使用方式见工具仓库 Docs/framework/Template_Startup_Verification.md；GM 见 Docs/framework/GM_Integration_Verification.md。这些是参考证据，不是新工程的自动通过凭据。
