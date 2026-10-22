"""Execute in editor ue_py. Each write phase needs its asset's PRV plan."""
import hashlib
import re
from pathlib import Path


def _existing(ue, root, definition, path):
    from unreal_engine.classes import Blueprint
    hits = ue.resolve_asset(path.rsplit("/", 1)[-1], "Blueprint", 200)
    exact = [h for h in hits if h["load_path"].split(".")[0] == path]
    if len(exact) > 1:
        raise RuntimeError("Ambiguous asset resolution")
    if exact:
        return ue.load_object(Blueprint, exact[0]["load_path"])
    if (root / (definition["assetPath"] + ".uasset")).exists():
        # Disk presence is known; failure must stop rather than recreate.
        return ue.load_object(Blueprint, path)
    return None


def _compiled(bp):
    # EBlueprintStatus: 3=UpToDate, 5=UpToDateWithWarnings.
    if int(bp.Status) not in (3, 5):
        raise RuntimeError("Blueprint is not compiled successfully: " + bp.get_path_name())


def _context(definition, expected_project, project_directory):
    import unreal_engine as ue
    if ue.get_project_root() != expected_project or not re.fullmatch(r"/[^/\\]+", expected_project):
        raise ValueError("Editor project mismatch")
    if definition.get("formatVersion") != 1 or definition.get("parentClass") != "ActorComponent":
        raise ValueError("Unsupported component definition")
    asset = definition.get("assetPath", "")
    if not re.fullmatch(r"Asset/Blueprint/(?:[A-Za-z0-9_]+/)*[A-Za-z0-9_]+", asset):
        raise ValueError("Invalid component asset path")
    if not re.fullmatch(r"[A-Za-z][A-Za-z0-9_]*", definition.get("componentName", "")):
        raise ValueError("Invalid componentName")
    root = Path(project_directory).resolve()
    if root.name != expected_project[1:] or not (root / (root.name + ".ugcproj")).is_file():
        raise ValueError("Project disk directory mismatch")
    path = expected_project + "/" + asset
    lua = ue.bp_lua_get_path(path)
    expected_lua = root / "Script" / (asset[len("Asset/"):] + ".lua")
    if not lua or Path(lua["lua_path"]).resolve() != expected_lua.resolve():
        raise ValueError("Editor Lua path mismatch")
    return ue, root, path, expected_lua


def resolve_controller(expected_project, game_mode_path):
    import unreal_engine as ue
    from unreal_engine.classes import Blueprint
    if ue.get_project_root() != expected_project or not game_mode_path.startswith(expected_project + "/Asset/"):
        raise ValueError("GameMode project mismatch")
    mode = ue.load_object(Blueprint, game_mode_path)
    if mode is None or mode.GeneratedClass is None:
        raise RuntimeError("GameMode unavailable")
    klass = mode.GeneratedClass.get_cdo().PlayerControllerClass
    class_path = klass.get_path_name()
    path = class_path.split(".")[0]
    if not path.startswith(expected_project + "/Asset/") or ue.load_object(Blueprint, path) is None:
        raise RuntimeError("Actual PlayerController is not a local editable Blueprint: " + class_path)
    return path


def inspect_component(definition, expected_project, project_directory, controller_path):
    from unreal_engine.classes import Blueprint, ActorComponent
    ue, root, path, lua = _context(definition, expected_project, project_directory)
    if not controller_path.startswith(expected_project + "/Asset/"):
        raise ValueError("Controller outside target project")
    owner = ue.load_object(Blueprint, controller_path)
    if owner is None:
        raise RuntimeError("Controller unavailable")
    _compiled(owner)
    bp = _existing(ue, root, definition, path)
    if bp is None and (root / (definition["assetPath"] + ".uasset")).exists():
        raise RuntimeError("Existing asset cannot be loaded; preserve and inspect")
    if bp is not None and (bp.GeneratedClass is None or not bp.GeneratedClass.is_child_of(ActorComponent)):
        raise RuntimeError("Component class conflict")
    if bp is not None:
        _compiled(bp)
    class_path = bp.GeneratedClass.get_path_name() if bp else path + "." + path.rsplit("/", 1)[-1] + "_C"
    matches = []
    for name, template, inherited, source in ue.get_blueprint_all_components(owner):
        actual = template.get_class().get_path_name()
        if actual == class_path:
            matches.append({"name": name, "class": actual, "inherited": inherited, "source": str(source)})
        elif name.casefold() == definition["componentName"].casefold():
            raise RuntimeError("Component name occupied by another class: " + name)
    if len(matches) > 1:
        raise RuntimeError("Duplicate component class instances; preserve and inspect")
    return {"asset": path, "assetExists": bp is not None, "luaExists": lua.is_file(),
            "luaSha256": hashlib.sha256(lua.read_bytes()).hexdigest() if lua.is_file() else None,
            "controller": controller_path, "mounts": matches,
            "componentCompileStatus": int(bp.Status) if bp else None,
            "controllerCompileStatus": int(owner.Status),
            "assetSaved": (root / (definition["assetPath"] + ".uasset")).is_file()}


def create_component(definition, expected_project, project_directory, controller_path, lua_text):
    from unreal_engine.classes import Blueprint, ActorComponent
    state = inspect_component(definition, expected_project, project_directory, controller_path)
    ue, root, path, lua = _context(definition, expected_project, project_directory)
    # Check script conflict before creating any asset. Existing scripts are never overwritten.
    if lua.is_file() and lua.read_text(encoding="utf-8") != lua_text:
        raise RuntimeError("Existing Lua differs; preserved: " + str(lua))
    if hashlib.sha256(lua_text.encode("utf-8")).hexdigest() != definition.get("luaSha256"):
        raise RuntimeError("Template Lua hash does not match definition")
    if state["assetSaved"] and state["luaExists"]:
        state["status"] = "matched"
        return state
    bp = _existing(ue, root, definition, path)
    created = bp is None
    if created:
        bp = ue.create_blueprint(ActorComponent, path)
        if bp is None:
            raise RuntimeError("Component blueprint creation failed")
    ue.compile_blueprint(bp)
    _compiled(bp)
    if bp.GeneratedClass is None or not bp.GeneratedClass.is_child_of(ActorComponent):
        raise RuntimeError("GeneratedClass is not an ActorComponent")
    bp.save_package()
    binding = ue.bp_lua_find_or_create(path)
    if not binding or Path(binding["lua_path"]).resolve() != lua.resolve():
        raise RuntimeError("Lua association mismatch")
    # Only the default script created in this call may be replaced.
    if not binding["created"] and lua.read_text(encoding="utf-8") != lua_text:
        raise RuntimeError("Existing Lua changed during creation; preserved")
    if binding["created"]:
        with lua.open("w", encoding="utf-8", newline="") as stream:
            stream.write(lua_text)
    if lua.read_text(encoding="utf-8") != lua_text:
        raise RuntimeError("Lua write verification failed")
    state = inspect_component(definition, expected_project, project_directory, controller_path)
    state["status"] = "created" if created else "matched"
    return state


def attach_component(definition, expected_project, project_directory, controller_path):
    from unreal_engine.classes import Blueprint
    state = inspect_component(definition, expected_project, project_directory, controller_path)
    if not state["assetExists"] or not state["assetSaved"] or not state["luaExists"]:
        raise RuntimeError("Create and verify component and Lua before attachment")
    if state["luaSha256"] != definition.get("luaSha256"):
        raise RuntimeError("Component Lua differs from definition; preserved")
    if state["mounts"]:
        state["status"] = "matched"
        return state
    ue, root, path, lua = _context(definition, expected_project, project_directory)
    bp = ue.load_object(Blueprint, path)
    owner = ue.load_object(Blueprint, controller_path)
    ue.add_component_to_blueprint(owner, bp.GeneratedClass, definition["componentName"])
    ue.compile_blueprint(owner)
    _compiled(owner)
    owner.save_package()
    state = inspect_component(definition, expected_project, project_directory, controller_path)
    if len(state["mounts"]) != 1:
        raise RuntimeError("Saved controller does not have exactly one component")
    state["status"] = "attached"
    return state
