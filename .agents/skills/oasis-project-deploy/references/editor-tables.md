# JSON 建空表

使用工具仓库中的 PackageKit/editor/data_table_schema.py。此文件在编辑器 ue_py 环境执行，不能用本机 Python 替代引擎执行。先读取当前服务的工具文档；编辑器必须打开目标 UGC 工程。

## 输入与预检

读取 manifest.dataTableDefinitions[].schema 并验证 schemaSha256。schema 路径相对模板目录；目标资产路径由 schema.assetDirectory、tableName 和编辑器挂载根拼接。

目前 schema.formatVersion=1、mode=empty，只支持已验证的 string、bool 字段。辅助函数 validate_schema(schema) 可在本机先做输入校验。遇到其他类型时停止该表的部署并说明不支持，不能猜测字段类型。

创建前确认目标表和同名生成结构体不存在，包括编辑器已加载但尚未保存的资产。若已有表则只读比较字段顺序、类型和本项目结构体引用，匹配时跳过并保留已有行；不调用创建辅助函数清空表。结构体损坏、残留单独结构体或部分创建结果应作为冲突报告。

## 三个阶段

将辅助文件的完整源码放入 ue_py.code，再追加参数和一次函数调用。参数用 JSON 或 Python 字符串字面量编码，不拼接未经编码的路径、项目名或 JSON 文本。expected_project 来自已确认的编辑器挂载根，project_directory 是已确认的目标工程绝对路径。

每次调用只执行一个阶段，并绑定对应资产的 PRV 计划：

| 阶段 | 调用 | 计划 asset_path | 实际操作 |
| --- | --- | --- | --- |
| 创建 | create_table(schema, expected_project, project_directory) | 表的长包名 | objed_create_asset 创建表及配套本地结构体 |
| 字段 | configure_structure(schema, expected_project) | 自动生成结构体的长包名 | struct_add_variable、struct_remove_variable、save_package |
| 保存 | save_table(schema, expected_project) | 表的长包名 | 验证结构、零行并 save_package |

结构体长包名与表同目录，名称为 UGCTemplateRowStruct_ 加 tableName。每阶段等待成功返回后继续；只在创建后确认为默认单个 MemberVar_0 bool 字段时改造结构。辅助脚本不会重新绑定 RowStruct，也不会覆盖磁盘已有资产。

PRV 计划包含 intent、asset_path、pre_write_snapshot: true 和 mutations；apis_to_call 列出本阶段真实 API。字段阶段的 mutations 描述 JSON 中的字段及移除默认占位字段，保存阶段描述保存已验证的零行表。不要使用 skip_prv。

schemaJsonText 为读取的完整 JSON 文本时，构造 code 的方式为：

    helperSource
    + "\nschema = json.loads(" + repr(schemaJsonText) + ")"
    + "\n__askq_result = configure_structure(schema, " + repr(expectedProject) + ")"

其他阶段同理，创建阶段还需编码 projectDirectory。不要把创建和配置写到同一计划中。

## 验收

- 表和生成结构体的实际路径均在目标项目挂载根中。
- 结构字段顺序、友好名称及类别与 JSON 完全一致，默认占位字段已移除。
- 新表为零行，表与结构体两个 .uasset 均已保存到预期目录。
- 保存后重新查询结构和数据；这不等同于编辑器重启后的重新加载，也不等同于 PIE 验证。
- 若需要给用户查看，使用已发现的 objed_open_asset 打开新表。

只记录有证据支持的验证状态。复制旧表曾导致 RowStruct 丢失，重绑尝试期间曾崩溃；部署采用本项目新建结构，CSV 导入不再参与。
