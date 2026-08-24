# Package_Meta 规范

每个业务包的元数据契约文件，位于 `Script/Package/<PackageName>/Package_Meta.lua`。

**单一职责：** 描述包"对外是什么"，**不写运行时逻辑**。

---

## 顶层字段

| 字段 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `packageKind` | string | 是 | 包类型。`"owner"` = 拥有私有数据的业务包；`"orchestrator"` = 胶水包；未来可扩展 |
| `packageName` | string | 是 | 与目录名一致，可被 lint 校验 |
| `description` | string | 是 | 一句话描述，建议不超过 30 字 |
| `privates` | array | 是 | 数据所有者声明数组，lint 主数据来源 |

---

## `privates[]` 数组项

| 字段 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `owner` | string | 条件必填 | 拥有数据的 Config 模块名，如 `"Config_CountDown"` |
| `privateTables` | array | 条件必填 | 该 owner 下的私有表列表 |
| `privateTables[].name` | string | 是 | 表名，如 `"Milestones"` |
| `privateTables[].fields` | string[] | 是 | 该表的私有字段列表（直接访问会触发 lint） |
| `exposedVia` | string[] | 否 | 已通过 `Config_XXX.GetXxx()` 暴露的字段，仅作记录，暂无 lint 校验 |
| `kind` | string | 否 | 包类型（可省略，parser 会自动注入为 `"owner"`） |
| `deps` | string[] | 否 | 依赖的其他包名，仅作文档，不影响 lint |

---

## 注意事项

- **不得写运行时逻辑**：`Package_Meta.lua` 只 return 数据结构。
- **ipairs 兼容**：Lua `ipairs` 只遍历数字下标，顶层的 `packageKind`/`packageName`/`description` 不会被误遍历。
- **胶水包不豁免**：`packageKind = "orchestrator"` 的包同样必须遵守 lint 规则，lint 不会跳过。

---

## 示例

```lua
return {
    packageKind = "owner",
    packageName = "CountDown",
    description = "游戏时长倒计时，到达阈值触发里程碑事件",

    privates = {
        {
            owner = "Config_CountDown",
            privateTables = {
                { name = "Milestones", fields = { "name", "threshold" } },
            },
            -- 目前为空，待 Get 接口实现后补充
            exposedVia = {},
        },
    },
}
```

---

## 变更历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.0 | 2026-08-24 | 初始版本，引入顶层 `packageKind`/`packageName`/`description` + `privates` 包装格式 |
