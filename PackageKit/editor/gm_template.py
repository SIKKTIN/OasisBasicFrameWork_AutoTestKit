"""Optional GM asset installation and conflict-preserving UI registration (ue_py)."""
import json
import hashlib
import shutil
from pathlib import Path


def install_widget(template_directory, project_directory, expected_project):
    import unreal_engine as ue
    from unreal_engine.classes import Blueprint
    if ue.get_project_root() != expected_project:
        raise RuntimeError("Editor project mismatch")
    template, project = Path(template_directory).resolve(), Path(project_directory).resolve()
    if project.name != expected_project[1:] or not (project / (project.name + '.ugcproj')).is_file():
        raise ValueError('Project directory mismatch')
    manifest = json.loads((template / 'manifest.json').read_text(encoding='utf-8'))
    definition = json.loads((template / 'Definitions/UI/GM.json').read_text(encoding='utf-8'))
    relative = definition['assetPath']
    if relative != 'Asset/UI/GM/UMG_GMControl.uasset':
        raise ValueError('Unexpected widget destination')
    src, dst = template / 'Project' / relative, project / relative
    digest = hashlib.sha256(src.read_bytes()).hexdigest()
    if digest != manifest['widget']['sha256']:
        raise ValueError('Widget payload hash mismatch')
    if dst.exists():
        raise FileExistsError('Widget exists: validate and preserve; do not overwrite or recompile blindly')
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(str(src), str(dst))
    path = expected_project + '/' + relative[:-7]
    bp = ue.load_object(Blueprint, path)
    ue.compile_blueprint(bp)
    if bp.Status not in (3, 5):
        raise RuntimeError('Widget compile failed; preserve partial installation for inspection')
    bp.save_package()
    return {'path': bp.get_path_name(), 'status': bp.Status,
            'class': bp.GeneratedClass.get_path_name(), 'lua': ue.bp_lua_get_path(path)}


def inspect_ui_row(definition, expected_project):
    import unreal_engine as ue
    from unreal_engine.classes import DataTable
    if ue.get_project_root() != expected_project:
        raise RuntimeError('Editor project mismatch')
    if definition.get('table') != 'DT_UI_Config' or definition.get('formatVersion') != 1:
        raise ValueError('Invalid GM definition')
    table = ue.load_object(DataTable, expected_project + '/Asset/Data/Table/Customized/DT_UI_Config')
    fields = {v.FriendlyName: v.Category for v in table.data_table_get_row_struct().struct_get_variables()}
    for name, value in definition['row'].items():
        category = 'bool' if isinstance(value, bool) else 'string' if isinstance(value, str) else None
        if category is None or fields.get(name) != category:
            raise ValueError('UI field mismatch: ' + name)
    rows = table.data_table_as_dict()
    row_name = definition['rowName']
    existing = rows.get(row_name)
    if existing is not None:
        # data_table_as_dict preserves row names separately from the field named Name.
        for name, value in definition['row'].items():
            if existing.get_field(name) != value:
                raise RuntimeError('Existing UI row conflict: ' + row_name + '.' + name)
    return table, existing, len(rows)


def merge_ui_row(definition, expected_project):
    table, existing, count = inspect_ui_row(definition, expected_project)
    if existing is not None:
        table.save_package()
        return {'status': 'matched', 'rows': count}
    name, row = definition['rowName'], definition['row']
    new_row = table.data_table_empty_row()
    for field, value in row.items():
        new_row.set_field(field, value)
    result = table.data_table_add_row(name, new_row)
    # This editor build returns None on success; the persisted row is authoritative.
    if result is False:
        raise RuntimeError('Failed adding UI row')
    try:
        rows = table.data_table_as_dict()
        if len(rows) != count + 1 or any(rows[name].get_field(k) != v for k, v in row.items()):
            raise RuntimeError('UI row readback mismatch')
    except Exception:
        table.data_table_remove_row(name)
        raise
    table.save_package()
    return {'status': 'added', 'row': name, 'rows': count + 1}
