"""JSON empty-table deployment helpers, executed inside Oasis via ue_py."""

import json
import re
from pathlib import Path


def validate_schema(schema):
    if schema.get("formatVersion") != 1 or schema.get("mode") != "empty":
        raise ValueError("Expected formatVersion=1 and mode=empty")
    identifier = re.compile(r"[A-Za-z][A-Za-z0-9_]*\Z")
    if not identifier.fullmatch(schema.get("tableName", "")):
        raise ValueError("Invalid tableName")
    base = "Asset/Data/Table/Customized"
    directory = schema.get("assetDirectory", "")
    if not (directory == base or directory.startswith(base + "/")):
        raise ValueError("assetDirectory must be under " + base)
    if any(not identifier.fullmatch(part) for part in directory.split("/")):
        raise ValueError("Invalid assetDirectory")
    expected_template = {
        "editorType": "DataTable", "assetType": "自定义表格", "templateName": "空表格"
    }
    if schema.get("creationTemplate") != expected_template:
        raise ValueError("Unsupported creationTemplate")
    fields = schema.get("fields", [])
    if not fields:
        raise ValueError("At least one field is required")
    names = []
    for field in fields:
        name = field.get("name", "")
        if not identifier.fullmatch(name) or name.startswith("MemberVar_"):
            raise ValueError("Invalid field name: " + str(name))
        if field.get("category") not in ("string", "bool"):
            raise ValueError("Unsupported category for " + name)
        names.append(name.casefold())
    if len(set(names)) != len(names):
        raise ValueError("Duplicate field names")
    return schema


def _context(schema, expected_project):
    import unreal_engine as ue
    validate_schema(schema)
    root = ue.get_project_root()
    if root != expected_project or not re.fullmatch(r"/[^/]+", root):
        raise RuntimeError("Editor project mismatch: " + str(root))
    path = root + "/" + schema["assetDirectory"] + "/" + schema["tableName"]
    return ue, path


def _table(schema, expected_project):
    from unreal_engine.classes import DataTable
    ue, path = _context(schema, expected_project)
    table = ue.load_object(DataTable, path)
    if table is None:
        raise RuntimeError("Table unavailable: " + path)
    struct = table.data_table_get_row_struct()
    struct_path = path.rsplit("/", 1)[0] + "/UGCTemplateRowStruct_" + schema["tableName"]
    if struct.get_path_name().split(".")[0] != struct_path:
        raise RuntimeError("Table does not use its generated local structure")
    rows = json.loads(table.data_table_as_json())
    if rows:
        raise RuntimeError("Expected an empty table; existing rows were preserved")
    return table, struct


def _fields(struct):
    return [{"name": v.FriendlyName, "category": v.Category}
            for v in struct.struct_get_variables()]


def create_table(schema, expected_project, project_directory):
    """Phase 1: create a fresh table and its generated local structure."""
    ue, path = _context(schema, expected_project)
    project_dir = Path(project_directory).resolve()
    if project_dir.name != expected_project[1:] or not (project_dir / (project_dir.name + ".ugcproj")).is_file():
        raise ValueError("project_directory does not match expected_project")
    directory = project_dir / schema["assetDirectory"]
    for name in (schema["tableName"], "UGCTemplateRowStruct_" + schema["tableName"]):
        if (directory / (name + ".uasset")).exists():
            raise FileExistsError("Asset exists; validate and skip it without recreating: " + name)
    sub_dir = schema["assetDirectory"][len("Asset/Data/Table/Customized"):].strip("/")
    template = schema["creationTemplate"]
    created = ue.objed_create_asset(template["editorType"], template["assetType"],
                                   template["templateName"], schema["tableName"], sub_dir)
    if created != path:
        raise RuntimeError("Creation did not return expected asset: " + str(created))
    table, struct = _table(schema, expected_project)
    return {"status": "created", "table": table.get_path_name(),
            "structure": struct.get_path_name(), "fields": _fields(struct)}


def configure_structure(schema, expected_project):
    """Phase 2: edit and save the generated structure, never rebind RowStruct."""
    ue, _ = _context(schema, expected_project)
    _, struct = _table(schema, expected_project)
    desired = [{"name": f["name"], "category": f["category"]} for f in schema["fields"]]
    current = _fields(struct)
    if current == desired:
        return {"status": "unchanged", "structure": struct.get_path_name(), "fields": current}
    if len(current) != 1 or current[0] != {"name": "MemberVar_0", "category": "bool"}:
        raise RuntimeError("Unexpected or partially configured structure; no changes made")
    placeholder = struct.struct_get_variables()[0]
    for field in desired:
        variable = ue.find_struct("UGCStructVariableDescription")()
        variable.VarName = field["name"]
        variable.FriendlyName = field["name"]
        variable.Category = field["category"]
        struct.struct_add_variable(variable)
    if not struct.struct_remove_variable(placeholder.VarGuid):
        raise RuntimeError("Could not remove the generated placeholder")
    if _fields(struct) != desired:
        raise RuntimeError("Structure validation failed")
    struct.save_package()
    return {"status": "configured", "structure": struct.get_path_name(), "fields": _fields(struct)}


def save_table(schema, expected_project):
    """Phase 3: validate and save the empty table referencing its local structure."""
    table, struct = _table(schema, expected_project)
    desired = [{"name": f["name"], "category": f["category"]} for f in schema["fields"]]
    if _fields(struct) != desired:
        raise RuntimeError("Table structure does not match JSON definition")
    table.save_package()
    return {"status": "saved", "table": table.get_path_name(),
            "structure": struct.get_path_name(), "fields": _fields(struct), "rowCount": 0}
