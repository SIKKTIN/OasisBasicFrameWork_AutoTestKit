"""Exercise real row merger with the editor's UScriptStruct/None-return contract."""
import importlib.util
import json
import sys
import types
import unittest
from pathlib import Path
from unittest.mock import patch

REPO = Path(__file__).resolve().parents[3]
spec = importlib.util.spec_from_file_location('gm_template', REPO / 'PackageKit/editor/gm_template.py')
helper = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
DEFINITION = json.loads((REPO / 'Templates/framework-gm/Definitions/UI/GM.json').read_text(encoding='utf-8'))


class Row:
    def __init__(self, values=None): self.values = dict(values or {})
    def set_field(self, name, value): self.values[name] = value
    def get_field(self, name): return self.values[name]


class Table:
    def __init__(self): self.rows, self.saved, self.corrupt = {}, 0, False
    def data_table_as_dict(self): return dict(self.rows)
    def data_table_get_row_struct(self):
        fields = [types.SimpleNamespace(FriendlyName=n, Category='bool' if isinstance(v, bool) else 'string')
                  for n, v in DEFINITION['row'].items()]
        return types.SimpleNamespace(struct_get_variables=lambda: fields)
    def data_table_empty_row(self): return Row()
    def data_table_add_row(self, name, row):
        assert isinstance(row, Row)
        self.rows[name] = row
        if self.corrupt: row.set_field('Slot', 'wrong')
        return None
    def data_table_remove_row(self, name): self.rows.pop(name)
    def save_package(self): self.saved += 1


class TestMerger(unittest.TestCase):
    def setUp(self):
        self.table = Table()
        ue, classes = types.ModuleType('unreal_engine'), types.ModuleType('unreal_engine.classes')
        ue.get_project_root = lambda: '/TempleTest'
        ue.load_object = lambda cls, path: self.table
        classes.DataTable = object
        self.patch = patch.dict(sys.modules, {'unreal_engine': ue, 'unreal_engine.classes': classes})
        self.patch.start()
        self.addCleanup(self.patch.stop)

    def test_add_uses_struct_and_accepts_none_result(self):
        result = helper.merge_ui_row(DEFINITION, '/TempleTest')
        self.assertEqual(result['status'], 'added')
        self.assertEqual(self.table.rows['1001'].values, DEFINITION['row'])
        self.assertEqual(self.table.saved, 1)

    def test_preserves_unrelated_ui_rows(self):
        other = Row({'Name': 'Inventory'})
        self.table.rows['2000'] = other
        helper.merge_ui_row(DEFINITION, '/TempleTest')
        self.assertIs(self.table.rows['2000'], other)

    def test_repeat_is_idempotent(self):
        helper.merge_ui_row(DEFINITION, '/TempleTest')
        self.assertEqual(helper.merge_ui_row(DEFINITION, '/TempleTest')['status'], 'matched')
        self.assertEqual(len(self.table.rows), 1)

    def test_conflict_preserved_without_save(self):
        other = Row(dict(DEFINITION['row'], Name='Other UI'))
        self.table.rows['1001'] = other
        with self.assertRaises(RuntimeError): helper.merge_ui_row(DEFINITION, '/TempleTest')
        self.assertIs(self.table.rows['1001'], other)
        self.assertEqual(self.table.saved, 0)

    def test_readback_failure_rolls_back_new_row(self):
        self.table.corrupt = True
        with self.assertRaises(RuntimeError): helper.merge_ui_row(DEFINITION, '/TempleTest')
        self.assertEqual(self.table.rows, {})
        self.assertEqual(self.table.saved, 0)

    def test_wrong_project_rejected(self):
        with self.assertRaises(RuntimeError): helper.merge_ui_row(DEFINITION, '/Other')
        self.assertEqual(self.table.rows, {})


if __name__ == '__main__': unittest.main()
