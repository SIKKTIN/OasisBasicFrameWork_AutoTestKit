# TaskSystem

独立任务包，包外统一使用 `require("Script.Package.TaskSystem.Registry_TaskSystem")`。仅依赖基础框架，不依赖 GM、背包、货币、经验、特定怪物或地图。配置由 `Script/Config/Package/TaskSystem/Config_Task.lua` 提供；默认 tasks 为空，ui.enabled=true。不安装 UI 时设置 false 并跳过 UI 文件/资产/表行。

## 配置

任务是有序数组：`{id, name, description, prerequisites={}, objectives={...}, rewards={...}}`。

- 任务、目标、行为类型和目标标识使用最长 80 字符的英数/下划线/连字符 ID；正整数 ID 统一为字符串。任务顺序沿用配置顺序。
- 目标：`{id="kill_enemy", type="kill", target="enemy", count=3, label="击败敌人"}`。count 是正整数；同任务目标 ID 唯一。所有目标完成才完成任务。
- prerequisites 引用已配置任务，不能循环；必须领取前置任务奖励后才能接取。任务只累计接取后的事实，不回溯历史。稳定 ID 不得用于另一条语义不同的任务；目标或任务规则发生不兼容变化时使用新 ID。
- 奖励：`{type="currency", id="gold", amount=500, label="金币", iconText="金"}`。仅 type 和正整数 amount 属于通用约束，其他可序列化字段交给项目解释；amount 缺省为 1。基础 UI 使用 label/iconText，不依赖某个物品表或贴图。没有额外 label 时显示 id/type。
- 配置和玩家查询均返回副本。任务定义在 BeginPlay 前配置，不支持同局热修改；已开始的领奖使用持久化快照。

## 公共 API

写操作返回 `true[, code]` 或 `false, reason`，仅服务端执行。pc 为目标 PlayerController。

| API | 契约 |
| --- | --- |
| BeginPlay / EndPlay | 校验配置、注册或移除监听；成功后重复 BeginPlay 不重复注册，失败可重试。 |
| AcceptTask(pc,id) | 检查前置并创建记录；已接取是幂等成功，不重置记录。 |
| ReportProgress(pc,type,target,amount,eventID) | 权威业务提交累计事实；每个事实的 eventID 必须稳定且唯一，同事实重试不重复累计。一次事实可推进多个已接取任务；进度不超过目标值。未匹配是 true,no-change。 |
| ClaimReward(pc,id) | 完成后手动领取；已领取是幂等成功。存在待确认记录时复用原编号、provider 和奖励快照。 |
| RegisterRewardProvider(provider) | 注册唯一项目奖励提供者；不可热替换为不同对象。 |
| GetTaskList(pc) | 有序数组，元素为 `{config,status}`。 |
| GetTaskConfig(id) / GetTaskState(pc,id) | 配置副本 / 状态副本；数据未就绪返回 waiting 状态及原因。 |
| SyncPlayer(pc) / GetStatus(pc) | 补齐旧空容器、重试本包待保存数据、仅查询待确认奖励回执；返回包状态。登录恢复不主动发放。 |
| Request(pc,action,id) | UI 使用；action 只有 accept/claim。客户端 true,pending 只表示 RPC 已派发，实际结果由事件返回。 |
| GetEvents() | 返回 changed/result 事件标识；result 参数 pc,success,code，changed 参数 pc。 |
| GetUIConfig() | 返回 UI 配置副本。 |

## 奖励接口

服务端项目接入示意（此处是协议，不是可直接发放的默认实现）：

```lua
Task.RegisterRewardProvider({
    name = "my-project-rewards-v1",
    idempotent = true,
    Validate = function(pc, rewards) -- 校验类型、目标、容量等
        return true -- 或 false, reason；不得在校验中发奖
    end,
    Query = function(pc, claimID, rewards) -- 查询持久化回执
        return {status = "not-found"}
    end,
    Grant = function(pc, claimID, rewards) -- 按同一 claimID 持久化去重
        return {status = "pending"}
    end,
})
```

Query/Grant 返回 `{status,reason?}`。granted 表示整份奖励已成功；not-found 只用于确定没有已生效奖励；pending/unknown 表示处理中、部分完成或结果不明，任务包不会再次盲目 Grant；failed 表示需处理的失败。项目应恢复部分发放并使 Query 最终返回 granted，或在确定无副作用、允许重新执行时返回 not-found。

**idempotent=true 是项目必须真实实现的契约，不能仅设置标志。** 每个领取编号基于玩家 UID 与稳定任务 ID；提供者要持久化回执，并处理自己的并发与副作用恢复。任务包不能保证原生货币、背包、经验接口一起原子成功。

处理顺序：Validate → 保存 claim_pending（含编号、provider 名称和奖励副本）→ Query → 只有 not-found 时 Grant → granted 后保存 claimed。保存失败有 pendingSave 标记，后续写操作先尝试保存；重复提交沿用原编号。提供者异常、返回值非法或名称不匹配均保留领取记录，不当作成功。

## 存档与生命周期

Meta 声明 task_data：`{version=1,tasks={[taskID]={state,progress={[objectiveID]=count},events={[eventID]=true},claim?}}}`。不保存 PC、Pawn、UI、函数或 provider 对象。运行态 pendingSave/busy 不进存档。未知版本和非法记录报错，不覆写。

DataCore 和通用 PropertyComponent 负责存档读取；本包监听 Server_OnPlayerDataLoaded 做自己的补全和恢复。新玩家由 Meta DataInit 创建数据，旧空容器在 SyncPlayer 补全并保存。监听事件的返回值不代表整个框架会失败，须用 GetStatus 判断。

控制器在最终 return 前调用 `require("Script.Package.TaskSystem.Controller_TaskSystem").Attach(实际控制器表)`，保留已有 RPC、OnRep_task_data 和 EndPlay。通用复制键由生成的 Const_Data 提供；客户端 OnRep_task_data 发出 changed。不开放 ReportProgress RPC。服务端应仅从已确认的玩法事实调用进度接口。

基础 UI 使用 UISystem 行 1010、三个本项目 UMG 资产及关联 Lua。行冲突必须处理，不能覆盖旧行。入口默认展开任务窗口前不拦截其余全屏区域；详情和奖励可滚动。UI 请求锁与超时只负责交互，服务端仍负责幂等与校验。

## 验证边界

离线测试使用真实模板 DataCore/事件总线，编辑器和存档为替身；不能据此宣称真实跨对局持久化已通过。每次目标部署仍须完成文件/生成/绑定检查及实际 PIE 验收。示例任务与模拟奖励提供者单独放在工具模板 Examples，不是正式包内容。
