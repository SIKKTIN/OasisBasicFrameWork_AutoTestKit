# TaskExample（仅测试）

提供独立模拟奖励 provider 和服务端目标推进接口，不改变正式金币/物品。依赖 TaskSystem；与示例 Config_Task.lua 一起显式选装，不在正式 manifest.files 中。

在服务端调用 `Registry_TaskExample.Advance(pc)` 可各推进一次示例击杀、收集和区域目标；必须先在任务 UI 接取任务。其 task_example_data 包保存模拟 balance、领取 receipts 和事件序号。可选的开发指令 `TaskExample.Advance` 由已有 GM/CommandSystem 转发；正式项目不安装该指令。

测试完成后，示例可以单独移除；不要自动清除玩家存档中的示例数据或其他业务数据。
