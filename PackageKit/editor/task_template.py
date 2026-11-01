"""TaskSystem UI builder. Execute one asset per MCP PRV, after target confirmation."""
import json
from pathlib import Path


def load_definition(template_directory, name):
    if name not in ('UMG_TaskPanel', 'UMG_TaskRow', 'UMG_TaskReward'):
        raise ValueError('Unknown TaskSystem widget')
    return json.loads((Path(template_directory) / 'Definitions/UI' / (name + '.json')).read_text(encoding='utf-8'))


def _target(project_directory, expected_project):
    import unreal_engine as ue
    project = Path(project_directory).resolve()
    if ue.get_project_root() != expected_project or project.name != expected_project.lstrip('/'):
        raise RuntimeError('Editor project mismatch')
    if not (project / (project.name + '.ugcproj')).is_file():
        raise ValueError('Target project marker missing')
    return project


def inspect_widget(template_directory, project_directory, expected_project, name):
    import unreal_engine as ue
    project = _target(project_directory, expected_project)
    definition = load_definition(template_directory, name)
    relative = definition['assetPath']
    disk = project / (relative + '.uasset')
    if not disk.exists():
        return {'status': 'missing', 'path': expected_project + '/' + relative}
    bp = ue.load_object(ue.find_class('UGCWidgetBlueprint'), expected_project + '/' + relative)
    objects = {o.get_name(): o for o in bp.WidgetTree.AllWidgets}
    required = {entry['name']: entry['type'] for entry in definition['nodes']}
    errors = [key for key, kind in required.items() if key not in objects or objects[key].get_class().get_name() != kind]
    if errors or bp.WidgetTree.RootWidget.get_class().get_name() != definition['rootType']:
        raise RuntimeError('Existing widget conflict; preserve asset: ' + str(errors))
    return {'status': 'existing-preserved', 'path': bp.get_path_name(), 'compileStatus': bp.Status,
            'lua': ue.bp_lua_get_path(expected_project + '/' + relative)}


def _properties(ue, bp, widget, values):
    # Discover every EditCondition first; all gates are opened before gated values.
    gates = set()
    for key in values:
        prop = widget.get_uproperty(key)
        if prop.has_metadata('EditCondition'):
            condition = prop.get_metadata('EditCondition').strip()
            if condition and condition.replace('_', '').isalnum():
                gates.add(condition)
            elif condition:
                raise ValueError('Unsupported EditCondition: ' + condition)
    for gate in sorted(gates):
        ue.widget_set_property(bp, widget.get_name(), gate, 'True')
    for key, value in values.items():
        ue.widget_set_property(bp, widget.get_name(), key, value)


def create_widget(template_directory, project_directory, expected_project, name, resume_asset=None, update_existing=False):
    import unreal_engine as ue
    from unreal_engine.classes import UGCWidgetBlueprintFactory
    project = _target(project_directory, expected_project)
    definition = load_definition(template_directory, name)
    inspected = inspect_widget(template_directory, project_directory, expected_project, name)
    existing = inspected['status'] != 'missing'
    if existing and not update_existing:
        return inspected
    relative = definition['assetPath']
    path = expected_project + '/' + relative
    if existing:
        bp = ue.load_object(ue.find_class('UGCWidgetBlueprint'), path)
    elif resume_asset is not None:
        # Explicit recovery only for this operation's inspected, unsaved asset.
        if resume_asset.get_path_name() != path + '.' + name:
            raise RuntimeError('Recovery asset mismatch')
        bp = resume_asset
    else:
        factory = ue.new_object(UGCWidgetBlueprintFactory)
        bp = ue.create_asset(name, path.rsplit('/', 1)[0], factory.SupportedClass, factory)
    # Never reuse an inner WidgetTree from another blueprint or change its outer.
    tree = bp.WidgetTree
    root = tree.RootWidget
    if root is None or root.get_class().get_name() != definition['rootType']:
        root = ue.new_object(ue.find_class(definition['rootType']), tree, 'TaskRoot')
        tree.RootWidget = root
    root.bIsVariable = True
    _properties(ue, bp, root, definition.get('rootProperties', {}))
    objects = {root.get_name(): root}
    for entry in definition['nodes']:
        parent = root.get_name() if entry['parent'] == '$root' else entry['parent']
        widget = None
        if existing or resume_asset is not None:
            try:
                widget = ue.load_object(ue.find_class(entry['type']), tree.get_path_name() + '.' + entry['name'])
            except Exception:
                pass
        if widget is None:
            ue.widget_add(bp, entry['type'], entry['name'], parent)
            # AllWidgets is a compiled cache, empty for freshly added widgets.
            widget = ue.load_object(ue.find_class(entry['type']), tree.get_path_name() + '.' + entry['name'])
        if widget.get_class().get_name() != entry['type']:
            raise RuntimeError('Widget type conflict: ' + entry['name'])
        objects[entry['name']] = widget
        widget.bIsVariable = True
        _properties(ue, bp, widget, entry.get('properties', {}))
        if entry.get('fontSize'):
            # Mutate in place: assigning a self-aliased Font struct can zero it in UEP.
            widget.Font.Size = entry['fontSize']
        if widget.get_class().get_name() == 'TextBlock' and not entry.get('fontSize'):
            widget.Font.Size = 24
        if 'layout' in entry:
            x, y, w, h = entry['layout']['offsets']
            a, b, c, d = entry['layout']['anchors']
            layout = ('(Offsets=(Left=%s,Top=%s,Right=%s,Bottom=%s),'
                      'Anchors=(Minimum=(X=%s,Y=%s),Maximum=(X=%s,Y=%s)),'
                      'Alignment=(X=0,Y=0))') % (x, y, w, h, a, b, c, d)
            ue.widget_slot(bp, entry['name'], 'LayoutData', layout)
        for prop, value in entry.get('slot', {}).items():
            ue.widget_slot(bp, entry['name'], prop, value)
        if entry['type'] == 'CanvasPanel' and entry['parent'] != '$root':
            owner = objects.get(parent)
            if owner and owner.get_class().get_name() in ('Button', 'Border', 'SizeBox'):
                ue.widget_slot(bp, entry['name'], 'HorizontalAlignment', 'HAlign_Fill')
                ue.widget_slot(bp, entry['name'], 'VerticalAlignment', 'VAlign_Fill')
                ue.widget_slot(bp, entry['name'], 'Padding', '(Left=0,Top=0,Right=0,Bottom=0)')
    ue.compile_blueprint(bp)
    if bp.Status != 3:
        raise RuntimeError('Widget not up to date; inspect partial asset before retry')
    bp.save_package()
    # Lua payload is copied by manifest; do not generate and overwrite it here.
    info = ue.bp_lua_get_path(path)
    if not info or not info['exists']:
        raise RuntimeError('Widget Lua payload missing: ' + path)
    result = inspect_widget(template_directory, project_directory, expected_project, name)
    result['status'] = 'updated' if existing else 'created'
    return result


def inspect_row(template_directory, expected_project):
    import unreal_engine as ue
    from unreal_engine.classes import DataTable
    if ue.get_project_root() != expected_project:
        raise RuntimeError('Editor project mismatch')
    definition = json.loads((Path(template_directory) / 'Definitions/UI/TaskSystem.json').read_text(encoding='utf-8'))
    table = ue.load_object(DataTable, expected_project + '/Asset/Data/Table/Customized/DT_UI_Config')
    fields = {v.FriendlyName: v.Category for v in table.data_table_get_row_struct().struct_get_variables()}
    for key, value in definition['row'].items():
        if fields.get(key) != ('bool' if isinstance(value, bool) else 'string'):
            raise ValueError('UI field mismatch: ' + key)
    rows = table.data_table_as_dict()
    current = rows.get(definition['rowName'])
    if current is not None:
        for key, value in definition['row'].items():
            if current.get_field(key) != value:
                raise RuntimeError('UI row conflict: ' + key)
    return table, definition, current, len(rows)


def merge_row(template_directory, expected_project):
    table, definition, current, count = inspect_row(template_directory, expected_project)
    if current is not None:
        return {'status': 'matched', 'rows': count}
    row = table.data_table_empty_row()
    for key, value in definition['row'].items():
        row.set_field(key, value)
    table.data_table_add_row(definition['rowName'], row)
    _, _, current, after = inspect_row(template_directory, expected_project)
    if current is None or after != count + 1:
        raise RuntimeError('UI row readback mismatch')
    table.save_package()
    return {'status': 'added', 'rows': after}
