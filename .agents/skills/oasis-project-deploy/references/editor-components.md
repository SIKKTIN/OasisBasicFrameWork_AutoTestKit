# 玩家属性组件

读取 manifest.componentDefinitions 的 definition，校验 definitionSha256 和 Lua 的 luaSha256；辅助代码使用工具仓库 PackageKit/editor/blueprint_components.py，在编辑器 ue_py 内加载执行。Definitions 不复制到目标，Lua 随 manifest.files 部署。

先用 ue_read ctx: 核对目标工程、挂载根、非 PIE 状态，发现 create_blueprint、compile_blueprint、get_blueprint_all_components、add_component_to_blueprint、bp_lua_find_or_create、save_package、resolve_asset 等 API。不要使用 import unreal，应使用 unreal_engine。

从目标 .ugcproj 实际 GameModePath 读取 GameMode，调用 resolve_controller(expected_project, game_mode_path) 取得实际 PlayerController 蓝图。禁止猜 UGCPlayerController 名称或改动其他工程/父蓝图。使用 inspect_component(definition, expected_project, project_directory, controller_path) 检查资产、关联 Lua、类、全部自有及继承组件；同名异类或多份匹配必须保留并报告。

两个写阶段各自提交 PRV，保留快照，不用 skip_prv：

1. 组件资产路径为目标挂载根加 definition.assetPath。计划声明 ParentClass=ActorComponent 与 AssociatedLua，API 包括 create_blueprint、compile_blueprint、save_package、bp_lua_find_or_create。调用 create_component(definition, expected_project, project_directory, controller_path, lua_text)，lua_text 从工具仓库 luaTemplate 读取。已有不同 Lua 会停止；只有本次新建的默认脚本能替换。成功编译状态是 EBlueprintStatus 3 或 5，5 表示有警告，应报告。
2. 以实际控制器资产路径提交另一份计划，声明 SCS 下 componentName 对应新组件 GeneratedClass，API 包括 add_component_to_blueprint、compile_blueprint、save_package。调用 attach_component(definition, expected_project, project_directory, controller_path)。不要挂原生 ActorComponent 代替蓝图类，不写继承组件原型。

重新 inspect，核对组件类、Lua 哈希、保存文件、控制器编译状态和唯一挂载；可重跑匹配检查，不能重复添加。阶段失败或编辑器失联时先检查已保存状态再接续。辅助代码不会替换已有不同脚本，不替用户修复同名冲突。

运行前必须完成 LifeCycle、PlayerDataCore、事件、Setting 等依赖、实际注册清单及四个入口接线，见 [入口、注册清单与验收](startup.md)。GetPlayerStatus 只是只读补接，不会初始化 PC。四个入口按实际绑定同步是每次部署的必需步骤；资产部署成功只是中间状态，缺少依赖或入口时继续完成接入，无法完成则报告部署未完成。

组件仅服务端操作 Owner，CheckArchiveData 只有 false 才初始化并首次保存，true 恢复，nil 报错。无声明键时跳过存档；有登记键但缺少生成常量时失败。成功后 NotifyPlayerDataLoaded，失败不释放 Pawn；显式 RetryLoad，EndPlay 移除监听。不会周期或退出自动保存，不迁入 ConditionData 或来源 uasset。
