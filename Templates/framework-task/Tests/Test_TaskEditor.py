"""Editor helper boundary/merge tests; no live editor or project changes."""
import importlib.util
import json
from pathlib import Path
import sys
import tempfile
import types
import unittest

ROOT = Path(__file__).resolve().parents[3]
TEMPLATE = ROOT / 'Templates/framework-task'
spec = importlib.util.spec_from_file_location('task_template', ROOT / 'PackageKit/editor/task_template.py')
helper = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)


class Row:
    def __init__(self, values=None): self.values = dict(values or {})
    def get_field(self, key): return self.values[key]
    def set_field(self, key, value): self.values[key] = value


class Table:
    def __init__(self):
        self.rows, self.saved = {'1001': Row({'Name': 'Existing GM'})}, 0
        self.fields = json.loads((TEMPLATE / 'Definitions/UI/TaskSystem.json').read_text(encoding='utf-8'))['row']
    def data_table_get_row_struct(self): return self
    def struct_get_variables(self):
        return [types.SimpleNamespace(FriendlyName=k, Category='bool' if isinstance(v, bool) else 'string')
                for k, v in self.fields.items()]
    def data_table_as_dict(self): return self.rows
    def data_table_empty_row(self): return Row()
    def data_table_add_row(self, key, row): self.rows[key] = row
    def save_package(self): self.saved += 1


class Tests(unittest.TestCase):
    def setUp(self):
        self.table = Table()
        self.ue = types.ModuleType('unreal_engine')
        self.ue.get_project_root = lambda: '/TempleTest'
        self.ue.load_object = lambda *args: self.table
        self.ue.find_class = lambda name: name
        classes = types.ModuleType('unreal_engine.classes'); classes.DataTable = object
        sys.modules['unreal_engine'], sys.modules['unreal_engine.classes'] = self.ue, classes

    def test_merge_preserves_existing_rows_and_repeat_is_read_only(self):
        old = self.table.rows['1001']
        self.assertEqual(helper.merge_row(TEMPLATE, '/TempleTest')['status'], 'added')
        self.assertIs(self.table.rows['1001'], old)
        self.assertEqual(helper.merge_row(TEMPLATE, '/TempleTest')['status'], 'matched')
        self.assertEqual(self.table.saved, 1)

    def test_row_conflict_does_not_overwrite(self):
        values = dict(self.table.fields); values['Name'] = 'Another UI'
        self.table.rows['1010'] = Row(values)
        with self.assertRaises(RuntimeError): helper.merge_row(TEMPLATE, '/TempleTest')
        self.assertEqual(self.table.rows['1010'].values['Name'], 'Another UI')
        self.assertEqual(self.table.saved, 0)

    def test_schema_mismatch_does_not_write(self):
        self.table.fields['Zorder'] = False
        with self.assertRaises(ValueError): helper.merge_row(TEMPLATE, '/TempleTest')
        self.assertNotIn('1010', self.table.rows)

    def test_wrong_editor_project_rejected_before_asset_access(self):
        self.ue.get_project_root = lambda: '/Other'
        with self.assertRaises(RuntimeError): helper.merge_row(TEMPLATE, '/TempleTest')
        self.assertEqual(self.table.saved, 0)

    def test_missing_widget_is_inspected_without_creating(self):
        with tempfile.TemporaryDirectory() as directory:
            project = Path(directory) / 'TempleTest'; project.mkdir()
            (project / 'TempleTest.ugcproj').write_text('[Root]')
            result = helper.inspect_widget(TEMPLATE, project, '/TempleTest', 'UMG_TaskPanel')
            self.assertEqual(result['status'], 'missing')
            self.assertFalse((project / 'Asset').exists())

    def test_existing_unrelated_widget_is_preserved(self):
        with tempfile.TemporaryDirectory() as directory:
            project = Path(directory) / 'TempleTest'; project.mkdir()
            (project / 'TempleTest.ugcproj').write_text('[Root]')
            asset = project / 'Asset/UI/TaskSystem/UMG_TaskPanel.uasset'
            asset.parent.mkdir(parents=True); asset.write_bytes(b'keep-me')
            self.ue.load_object = lambda *args: types.SimpleNamespace(WidgetTree=types.SimpleNamespace(AllWidgets=[]))
            with self.assertRaises(RuntimeError): helper.inspect_widget(TEMPLATE, project, '/TempleTest', 'UMG_TaskPanel')
            self.assertEqual(asset.read_bytes(), b'keep-me')


if __name__ == '__main__': unittest.main()
