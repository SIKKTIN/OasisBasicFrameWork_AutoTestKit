---@meta
local Sys_UIManager = {}

local UI_CONFIG_TABLE_PATH = "Data/Table/Customized/DT_UI_Config"

-- 仅客户端使用
Sys_UIManager.uiInstances = Sys_UIManager.uiInstances or {}
Sys_UIManager.uiCache = Sys_UIManager.uiCache or {}
Sys_UIManager.isAsyncLoading = Sys_UIManager.isAsyncLoading or {}
Sys_UIManager.uiAsyncParams = Sys_UIManager.uiAsyncParams or {}
Sys_UIManager.uiAsyncWait = Sys_UIManager.uiAsyncWait or {}

---------------------------------------------------------------

local function CreateUI(uiID)
	ugcprint("[诊断] CreateUI: " .. tostring(uiID))

	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	if not uiRecord then
		ugcprint("[Sys_UIManager] CreateUI: 无配置 " .. tostring(uiID))
		return nil
	end

	local uiName = Sys_UIManager.GetUIName(uiRecord)
	local classPath = Sys_UIManager.GetUIPath(uiRecord)

	local uiClass = UE.LoadClass(UGCMapInfoLib.GetRootLongPackagePath() .. classPath)
	if not uiClass then
		ugcprint("[Sys_UIManager] 加载 UI 类失败: " .. tostring(classPath))
		return nil
	end

	local instance = UGCWidgetManagerSystem.CreateWidget(uiClass)
	if not instance then
		ugcprint("[Sys_UIManager] 创建 UI 实例失败: " .. uiName)
		return nil
	end

	ugcprint("[诊断] CreateUI 创建实例完成: " .. tostring(uiName) .. tostring(instance))

	return instance
end

--- 异步创建 UI 实例（不缓存，由调用方管理）
---@param uiID any UI 配置 ID
---@param instanceCallback fun(instance, ...) 加载完成回调（instance + 透传参数）
---@param ... any 透传给回调的参数
local function CreateUI_Async(uiID, instanceCallback)
	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	if not uiRecord then
		ugcprint("[Sys_UIManager] CreateUI_Async: 无配置 " .. tostring(uiID))
		if instanceCallback then instanceCallback(nil) end
		return
	end
	local classPath = Sys_UIManager.GetUIPath(uiRecord)
	local uiName = Sys_UIManager.GetUIName(uiRecord)
	local fullpath = UGCGameSystem.GetUGCResourcesFullPath(classPath)

	UGCWidgetManagerSystem.CreateWidgetAsync(fullpath, function(instance)
		if not instance then
			ugcprint("[Sys_UIManager] CreateUI_Async: 创建失败 " .. uiName)
			if instanceCallback then instanceCallback(nil) end
			return
		end
		if instanceCallback then
			instanceCallback(instance)
		end
	end)
end

------------------------------------------------------------------------------------

--- 将引擎表格返回值统一转换为 Lua 索引表。
--- GetTableData 在不同表资源上可能返回 table，也可能返回支持 pairs 的 userdata。
local function BuildUIConfigIndex(rawData)
	if rawData == nil then return nil, 0 end

	local indexed = {}
	local rowCount = 0
	local ok, err = pcall(function()
		for rowName, row in pairs(rawData) do
			rowCount = rowCount + 1
			indexed[rowName] = row
			indexed[tostring(rowName)] = row

			-- 兼容以 UniqueID 作为业务 ID、RowName 使用默认名称的表格。
			local uniqueID = row and tonumber(row.UniqueID) or nil
			if uniqueID then
				indexed[uniqueID] = row
				indexed[tostring(uniqueID)] = row
			end
		end
	end)
	if not ok then
		ugcprint("[Sys_UIManager] UI 配置表遍历失败: " .. tostring(err))
		return nil, 0
	end
	return indexed, rowCount
end

-- UI缓存初始化
function Sys_UIManager.BeginPlay()
	ugcprint("[Sys_UIManager] BeginPlay")

	if type(Sys_UIManager.uiConfigData) == "table" and next(Sys_UIManager.uiConfigData) ~= nil then
		return true
	end

	local rawConfigData = UGCGameSystem.GetTableData(UI_CONFIG_TABLE_PATH)
	ugcprint("[Sys_UIManager] UI 配置表原始返回: type="
		.. type(rawConfigData) .. ", value=" .. tostring(rawConfigData))

	local uiConfigData, rowCount = BuildUIConfigIndex(rawConfigData)
	-- 空表表示新项目尚未登记 UI，属于有效配置。
	if not uiConfigData then
		Sys_UIManager.uiConfigData = {}
		ugcprint("[Sys_UIManager] UI 配置表加载失败: " .. UI_CONFIG_TABLE_PATH)
		return false
	end

	Sys_UIManager.uiConfigData = uiConfigData
	ugcprint("[Sys_UIManager] UI 配置表加载成功: "
		.. UI_CONFIG_TABLE_PATH .. ", rows=" .. tostring(rowCount))
	return true
end

function Sys_UIManager.PreLoadUI()
	for uiID, uiRecord in pairs(Sys_UIManager.uiConfigData) do
		local isPreLoad = Sys_UIManager.GetUIIsPreLoad(uiRecord)
		local path = Sys_UIManager.GetUIPath(uiRecord)

		if path == "" then
			ugcprint("[Sys_UIManager] 预加载UI 路径为空: 不执行加载" .. tostring(uiID))
			return
		end

		if isPreLoad then
			CreateUI_Async(uiID)
			ugcprint("[Sys_UIManager] 预加载 UI: " .. tostring(uiID))
		end
	end
end

function Sys_UIManager.GetUIConfigDataRecord(uiID)
    -- 约定 uiID 一律为 string；此处 tostring 仅作防御，避免上游漏写导致查不到
    return Sys_UIManager.uiConfigData and Sys_UIManager.uiConfigData[tostring(uiID)] or nil
end

function Sys_UIManager.GetUIPath(uiRecord)
	return uiRecord.AssetPath
end

function Sys_UIManager.GetUIName(uiRecord)
	return uiRecord.Name
end

function Sys_UIManager.GetUIZOrder(uiRecord)
	return uiRecord.Zorder
end

function Sys_UIManager.GetUISlot(uiRecord)
	return uiRecord.Slot
end

function Sys_UIManager.GetUISingleton(uiRecord)
	return uiRecord.IsSingleton
end

function Sys_UIManager.GetUIIsPreLoad(uiRecord)
	return uiRecord.IsPreLoad
end

function Sys_UIManager.GetIsCustomAnchorData(uiRecord)
	return uiRecord.IsCustomAnchorData
end

function Sys_UIManager.GetCustomAnchorData(uiRecord)
	local AnchorData = CreateStruct("AnchorData")
	local OffsetsData = CreateStruct("Margin")
	local Anchors = CreateStruct("Anchors")

	OffsetsData.Left = uiRecord.OffsetsData.x
	OffsetsData.Top = uiRecord.OffsetsData.y
	OffsetsData.Right = uiRecord.OffsetsData.z
	OffsetsData.Bottom = uiRecord.OffsetsData.w

	Anchors.Minimum = Vector2D.New(uiRecord.AnchorsMinimumRange.x, uiRecord.AnchorsMinimumRange.y)
	Anchors.Maximum = Vector2D.New(uiRecord.AnchorsMaximumRange.x, uiRecord.AnchorsMaximumRange.y)

	AnchorData.Offsets = OffsetsData
	AnchorData.Anchors = Anchors
	AnchorData.Alignment = Vector2D.New(uiRecord.Alignment.x, uiRecord.Alignment.y)

	return AnchorData
end

function Sys_UIManager.GetUICheckActiveEvent(uiRecord)
	return uiRecord.CheckActiveEvent
end

function Sys_UIManager.GetUINameByID(uiID)
	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	return Sys_UIManager.GetUIName(uiRecord)
end

---------------------------------------------------------------------------
-- 同步操作



------------------------------------------------------------------------------
--- 外部接口

-- ShowUI: 只负责显示（添加到 slot、标记状态、回调）
--- 显示 UI 到界面（由 GetUI 获取 instance 后调用）
---@param uiID any UI 配置 ID
---@param instance userdata UI 实例
---@param ... any 传递给 OnOpen 的参数
function Sys_UIManager.ShowUI(uiID, instance, ...)
	if not instance then
		ugcprint("[Sys_UIManager] ShowUI: instance 为空 " .. tostring(uiID))
		return false
	end

	if instance._isShowing then
		ugcprint("[Sys_UIManager] ShowUI: 已在显示中 " .. tostring(uiID))
		return false
	end

	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	if not uiRecord then
		ugcprint("[Sys_UIManager] ShowUI: 无配置 " .. tostring(uiID))
		return false
	end

	local zOrder = Sys_UIManager.GetUIZOrder(uiRecord)
	local slot = Sys_UIManager.GetUISlot(uiRecord)

	local isCustomAnchorData = Sys_UIManager.GetIsCustomAnchorData(uiRecord)
	if isCustomAnchorData then
		local customAnchorData = Sys_UIManager.GetCustomAnchorData(uiRecord)
		UGCWidgetManagerSystem.AddToSlot(instance, slot, zOrder or 0, customAnchorData)
	else
		UGCWidgetManagerSystem.AddToSlot(instance, slot, zOrder or 0)
	end


	instance._isShowing = true

	if instance.OnOpen then

		ugcprint("[Sys_UIManager] ShowUI: 调用 OnOpen " .. tostring(instance))
		instance:OnOpen(...)
	end

	ugcprint("[Sys_UIManager] ShowUI: " .. tostring(uiID))
	return true
end

-- ShowUI: 只负责显示（添加到 slot、标记状态、回调）
--- 显示 UI 到界面（由 GetUI 获取 instance 后调用）
---@param uiID any UI 配置 ID
---@param instance userdata UI 实例
---@param ... any 传递给 OnOpen 的参数
function Sys_UIManager.TestShowUI(uiID, instance, ...)
	if not instance then
		ugcprint("[Sys_UIManager] ShowUI: instance 为空 " .. tostring(uiID))
		return false
	end

	if instance._isShowing then
		ugcprint("[Sys_UIManager] ShowUI: 已在显示中 " .. tostring(uiID))
		return false
	end

	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	if not uiRecord then
		ugcprint("[Sys_UIManager] ShowUI: 无配置 " .. tostring(uiID))
		return false
	end

	local zOrder = Sys_UIManager.GetUIZOrder(uiRecord)
	local slot = Sys_UIManager.GetUISlot(uiRecord)

	local AnchorData = CreateStruct("AnchorData")
	local OffsetsData = CreateStruct("Margin")
	OffsetsData.Left = 140
	OffsetsData.Top = 3.8
	OffsetsData.Right = 140
	OffsetsData.Bottom = 0
	local Anchors = CreateStruct("Anchors")
	Anchors.Minimum = Vector2D.New(0, 0)
	Anchors.Maximum = Vector2D.New(0, 0)
	AnchorData.Offsets = OffsetsData
	AnchorData.Anchors = Anchors
	AnchorData.Alignment = Vector2D.New(0, 0)

	UGCWidgetManagerSystem.AddToSlot(
		instance,
		"UI.UISlot.BackpackUISlot.Full.InventorySlot",
		0,
		AnchorData
		)
	instance._isShowing = true

	if instance.OnOpen then

		ugcprint("[Sys_UIManager] ShowUI: 调用 OnOpen " .. tostring(instance))
		instance:OnOpen(...)
	end

	ugcprint("[Sys_UIManager] ShowUI: " .. tostring(uiID))
	return true
end

--- 获取 UI 实例
--- 单例：复用 uiInstances 中的实例
--- 非单例：优先从 uiCache 复用，没有则创建
function Sys_UIManager.GetUI(uiID)
	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	if not uiRecord then
		ugcprint("[Sys_UIManager] GetUI: 无配置 " .. tostring(uiID))
		return nil
	end

	local isSingleton = Sys_UIManager.GetUISingleton(uiRecord)
	local uiName = Sys_UIManager.GetUIName(uiRecord)

	if isSingleton then
		local cached = Sys_UIManager.uiInstances[uiID]
		if not cached then
			cached = CreateUI(uiID)
			if cached then
				Sys_UIManager.uiInstances[uiID] = cached
				ugcprint("[Sys_UIManager] GetUI (单例-新建): " .. uiName)
			end
		else
			ugcprint("[Sys_UIManager] GetUI (单例-复用): " .. uiName)
		end
		return cached

		
	end

	local cache = Sys_UIManager.uiCache[uiID] or {}
	Sys_UIManager.uiCache[uiID] = cache

	if #cache > 0 then
		local instance = table.remove(cache)
		Sys_UIManager.uiInstances[uiID] = Sys_UIManager.uiInstances[uiID] or {}
		table.insert(Sys_UIManager.uiInstances[uiID], instance)
		ugcprint("[Sys_UIManager] GetUI (非单例-从缓存): " .. uiName)
		return instance
	end

	local instance = CreateUI(uiID)
	if instance then
		Sys_UIManager.uiInstances[uiID] = Sys_UIManager.uiInstances[uiID] or {}
		table.insert(Sys_UIManager.uiInstances[uiID], instance)
		ugcprint("[Sys_UIManager] GetUI (非单例-新建): " .. uiName)
	end
	return instance
end


--- 关闭 UI
--- 单例：从 slot 移除，保留在 uiInstances
--- 非单例：从 slot 移除，从 uiInstances 移除，加入 uiCache
function Sys_UIManager.CloseUI(uiID, instance)
	local cached = Sys_UIManager.uiInstances[uiID]
	if not cached then
		ugcprint("[Sys_UIManager] CloseUI: UI 不存在 " .. tostring(uiID))
		return false
	end

	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	local uiName = uiRecord and Sys_UIManager.GetUIName(uiRecord) or tostring(uiID)
	local isSingleton = uiRecord and Sys_UIManager.GetUISingleton(uiRecord) or false

	if isSingleton then
		UGCWidgetManagerSystem.RemoveFromSlot(cached)
		cached._isShowing = false
		if cached.OnClose then
			cached:OnClose()
		end

	
		ugcprint("[Sys_UIManager] CloseUI (单例): " .. uiName .. " " .. tostring(UGCWidgetManagerSystem.IsWidgetAddedToSlot(cached)))
		return true
	end

	if type(cached) == "table" then
		if not instance then
			ugcprint("[Sys_UIManager] CloseUI: 非单例必须指定 instance")
			return false
		end

		for i, v in ipairs(cached) do
			if v == instance then
				table.remove(cached, i)
				break
			end
		end

		Sys_UIManager.uiCache[uiID] = Sys_UIManager.uiCache[uiID] or {}
		table.insert(Sys_UIManager.uiCache[uiID], instance)

		UGCWidgetManagerSystem.RemoveFromSlot(instance)
		instance._isShowing = false
		if instance.OnClose then
			instance:OnClose()
		end
		ugcprint("[Sys_UIManager] CloseUI (非单例): " .. uiName)
		return true
	end

	ugcprint("[Sys_UIManager] CloseUI: 未知类型 " .. uiName)
	return false
end


function Sys_UIManager.DestroyUI(uiID, instance)
	local cached = Sys_UIManager.uiInstances[uiID]
	if not cached then
		ugcprint("[Sys_UIManager] DestroyUI: UI 不存在 " .. tostring(uiID))
		return false
	end

	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	local uiName = uiRecord and Sys_UIManager.GetUIName(uiRecord) or tostring(uiID)
	local isSingleton = uiRecord and Sys_UIManager.GetUISingleton(uiRecord) or false

	if isSingleton then
		UGCWidgetManagerSystem.RemoveFromSlot(cached)
		UGCWidgetManagerSystem.DestroyWidget(cached)
		Sys_UIManager.uiInstances[uiID] = nil
		ugcprint("[Sys_UIManager] DestroyUI销毁完成 (单例): " .. uiName)
		return true
	end

	if type(cached) == "table" then
		if not instance then
			ugcprint("[Sys_UIManager] DestroyUI: 非单例必须指定 instance")
			return false
		end

		for i, v in ipairs(cached) do
			if v == instance then
				table.remove(cached, i)
				UGCWidgetManagerSystem.RemoveFromSlot(instance)
				UGCWidgetManagerSystem.DestroyWidget(instance)
				ugcprint("[Sys_UIManager] DestroyUI销毁完成 (非单例): " .. uiName)
				return true
			end
		end

		ugcprint("[Sys_UIManager] DestroyUI: 未找到指定 instance " .. uiName)
		return false
	end

	ugcprint("[Sys_UIManager] DestroyUI: 未知类型 " .. uiName)
	return false
end


function Sys_UIManager.TriggerFunc(uiID, instance, funcName, ...)
	local cached = Sys_UIManager.uiInstances[uiID]
	if not cached then
		ugcprint("[Sys_UIManager] TriggerFunc: UI 不存在 " .. tostring(uiID))
		return false
	end

	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	local isSingleton = uiRecord and Sys_UIManager.GetUISingleton(uiRecord) or false

	local targetInstance
	if isSingleton then
		targetInstance = cached
	else
		if not instance and type(cached) == "table" then
			for _, inst in ipairs(cached) do
				if inst and inst._isShowing then
					instance = inst
					break
				end
			end
			if not instance and cached[1] then
				instance = cached[#cached]
			end
		end
		if not instance then
			ugcprint("[Sys_UIManager] TriggerFunc: 非单例必须指定 instance uiID=" .. tostring(uiID))
			return false
		end
		targetInstance = instance
	end

	if not targetInstance[funcName] then
		ugcprint("[Sys_UIManager] TriggerFunc: 函数不存在 " .. funcName)
		return false
	end

	targetInstance[funcName](targetInstance, ...)
	return true
end

function Sys_UIManager.CreateWidget(uiID)
	return CreateUI(uiID)
end

---------------------------------------------------------------------------

--- 异步获取 UI 实例（不显示，由调用方 Show）
--- 对齐同步 GetUI 流程：复用 → 缓存复用 → 创建 + 缓存
--- 单例额外：正在加载则回调入队，加载完成后统一触发（支持重复触发）
---@param callback fun(instance, ...) 加载完成回调（失败传 nil）
---@param ... any 透传给回调的参数
function Sys_UIManager.GetUI_Async(uiID, callback, ...)
	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	if not uiRecord then
		ugcprint("[Sys_UIManager] GetUI_Async: 无配置 " .. tostring(uiID))
		if callback then callback(nil) end
		return
	end

	local isSingleton = Sys_UIManager.GetUISingleton(uiRecord)
	local uiName = Sys_UIManager.GetUIName(uiRecord)
	local args = {...}

	-- 单例：复用 / 等待 / 启动
	if isSingleton then
		local cached = Sys_UIManager.uiInstances[uiID]
		if cached then
			ugcprint("[Sys_UIManager] GetUI_Async (单例-复用): " .. uiName)
			if callback then callback(cached, table.unpack(args)) end
			return
		end

		-- 正在加载：入队
		if Sys_UIManager.isAsyncLoading[uiID] then
			if not Sys_UIManager.uiAsyncWait[uiID] then
				Sys_UIManager.uiAsyncWait[uiID] = {}
			end

			ugcprint("[Sys_UIManager] GetUI_Async (单例-等待): 入队 " .. uiName)
			table.insert(Sys_UIManager.uiAsyncWait[uiID], { cb = callback, args = args })
			return
		end

		-- 标记 + 首次入队
		Sys_UIManager.isAsyncLoading[uiID] = true
		Sys_UIManager.uiAsyncWait[uiID] = { { cb = callback, args = args } }
	else
		-- 非单例：从 uiCache 复用
		local cache = Sys_UIManager.uiCache[uiID]
		if cache and #cache > 0 then
			local instance = table.remove(cache)
			Sys_UIManager.uiInstances[uiID] = Sys_UIManager.uiInstances[uiID] or {}
			table.insert(Sys_UIManager.uiInstances[uiID], instance)
			ugcprint("[Sys_UIManager] GetUI_Async (非单例-从缓存): " .. uiName)
			if callback then callback(instance, table.unpack(args)) end
			return
		end
	end

	-- 异步创建（参考同步 CreateUI 流程）
	ugcprint("[Sys_UIManager] GetUI_Async (异步创建): " .. uiName)
	CreateUI_Async(uiID, function(instance)
		-- 1. 缓存（对齐同步 GetUI 中 "CreateUI + uiInstances 写入"）
		if instance then
			if isSingleton then
				Sys_UIManager.uiInstances[uiID] = instance
			else
				Sys_UIManager.uiInstances[uiID] = Sys_UIManager.uiInstances[uiID] or {}
				table.insert(Sys_UIManager.uiInstances[uiID], instance)
			end
		end

		-- 2. 取等待队列（单例才有）
		local waitList
		if isSingleton then
			waitList = Sys_UIManager.uiAsyncWait[uiID]
			Sys_UIManager.uiAsyncWait[uiID] = nil
			Sys_UIManager.isAsyncLoading[uiID] = false
		end

		-- 3. 触发回调（pcall 隔离单个报错）
		local cbList = isSingleton and waitList or { { cb = callback, args = args } }
		for _, item in ipairs(cbList or {}) do
			if item and item.cb then
				local ok, err = pcall(item.cb, instance, table.unpack(item.args or {}))
				if not ok then
					ugcprint("[Sys_UIManager] GetUI_Async 回调报错: " .. tostring(err))
				end
			end
		end

		if not instance then
			ugcprint("[Sys_UIManager] GetUI_Async: 创建失败 " .. uiName)
		end
	end)
end



function Sys_UIManager.ValidCheck(uiID)
	if not Sys_UIManager.uiInstances[uiID] and Sys_UIManager.isOpen[uiID] then
		Sys_UIManager.isOpen[uiID] = false
	end
end

--- @return bool
function Sys_UIManager.OpenUI_Async(uiID, callback, ...)
	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	local uiName = Sys_UIManager.GetUIName(uiRecord)

	Sys_UIManager.ValidCheck(uiID)

	if Sys_UIManager.isOpen[uiID] then
		ugcprint("[Sys_UIManager] UI 已打开: " .. uiName)
		return false
	end

	Sys_UIManager.uiAsyncParams[uiID] = {...}

	if Sys_UIManager.uiInstances[uiID] then
		ugcprint("[诊断] OpenUI_Async: 复用UI" .. tostring(uiID) )
		Sys_UIManager.OnUIAsyncLoaded(uiID, callback)
		return true
	else
		if Sys_UIManager.isAsyncLoading[uiID] then
			ugcprint("[Sys_UIManager] UI 正在异步加载: " .. uiName)
			return false
		end

		ugcprint("[诊断] OpenUI_Async: 创建 UI 实例" .. tostring(uiName))
		CreateUI_Async(
			uiID,
			function(instance)
				ugcprint("[诊断] OpenUI_Async: 创建 UI 实例完成")
				if not instance then
					ugcprint("[Sys_UIManager] 创建 UI 实例失败: " .. uiID)
					return false
				end
				Sys_UIManager.OnUIAsyncLoaded(uiID, callback)

				return true
			end
		)
		return false
	end
end

function Sys_UIManager.OnUIAsyncLoaded(uiID, outCallback)
	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
	local zOrder = Sys_UIManager.GetUIZOrder(uiRecord)
	local slot = Sys_UIManager.GetUISlot(uiRecord)

	local instance = Sys_UIManager.uiInstances[uiID]
	local args = Sys_UIManager.uiAsyncParams[uiID]

	ugcprint("[诊断] OnUIAsyncLoaded: " .. tostring(uiID))
	--UGCWidgetManagerSystem.ShowWidget(instance)

	UGCWidgetManagerSystem.AddToSlot(instance, slot, zOrder or 0)
	Sys_UIManager.isOpen[uiID] = true

	ugcprint("[诊断] OnUIAsyncLoaded: 调用 OnOpen")
	if instance.OnOpen then
		instance:OnOpen(table.unpack(args))
	end
	if outCallback then
		outCallback(instance)
	end

	Sys_UIManager.uiAsyncParams[uiID] = nil
end





---------------------------------------------------------------------------



-------------------------------------------------------------------------------

-- --二次修改旧架构
-- function Sys_UIManager.OpenUI(uiID, ...)
-- 	local uiRecord = Sys_UIManager.GetUIConfigDataRecord(uiID)
-- 	--local uiRecord = Sys_UIManager.uiConfigData[uiID]
-- 	ugcprint("[诊断BUG] " .. tostring(uiID) .. " " .. tostring(uiRecord))

-- 	local uiName = Sys_UIManager.GetUIName(uiRecord)
-- 	local zOrder = Sys_UIManager.GetUIZOrder(uiRecord)
-- 	local slot = Sys_UIManager.GetUISlot(uiRecord)

-- 	local instance = nil
-- 	if Sys_UIManager.uiInstances[uiID] then
-- 		if Sys_UIManager.isOpen[uiID] then
-- 			ugcprint("[Sys_UIManager] UI 已打开: " .. uiName)
-- 			return false
-- 		end

-- 		ugcprint("[诊断] 复用UI" .. tostring(uiID))
-- 		instance = Sys_UIManager.uiInstances[uiID]
-- 	else
-- 		ugcprint("[诊断] 创建UI" .. tostring(uiID))
-- 		instance = CreateUI(uiID)
-- 	end

-- 	if not instance then
-- 		ugcprint("[Sys_UIManager] 创建 UI 实例失败: " .. uiID)
-- 		return false
-- 	end

-- 	UGCWidgetManagerSystem.AddToSlot(instance, slot, zOrder or 0)

-- 	Sys_UIManager.isOpen[uiID] = true
-- 	if instance.OnOpen then
-- 		instance:OnOpen(...)
-- 	end
-- 	return true
-- end






-------------------------------------旧架构----------------------------------------

--- [Perf] 进图预加载 UI：LoadClass + 实例化 + 挂视口但 Collapsed
--- 首次靠近宝箱时 Show 不再触发同步 LoadClass，减轻边界卡顿
-- ---@param uiID string Util_EnumManager.UIKey.xxx
-- ---@return userdata|nil
-- function Sys_UIManager.PreloadHidden(uiID)
-- 	local uiConfig = Sys_UIManager.GetUIConfigDataRecord(uiID)
-- 	if not uiConfig then
-- 		ugcprint("[Sys_UIManager][Perf] PreloadHidden 失败: 无配置 " .. tostring(uiID))
-- 		return nil
-- 	end

-- 	local uiName = Sys_UIManager.GetUIName(uiConfig)

-- 	if Sys_UIManager.uiInstances[uiID] then
-- 		return Sys_UIManager.uiInstances[uiID]
-- 	end

-- 	local classPath = uiConfig.AssetPath
-- 	local zOrder = uiConfig.Zorder
-- 	local controller = UGCGameSystem.GetLocalPlayerController()
-- 	local uiClass = UE.LoadClass(UGCMapInfoLib.GetRootLongPackagePath() .. classPath)
-- 	if not uiClass then
-- 		ugcprint("[Sys_UIManager][Perf] PreloadHidden 加载类失败: " .. tostring(classPath))
-- 		return nil
-- 	end

-- 	local instance = UserWidget.NewWidgetObjectBP(controller, uiClass)
-- 	if not instance then
-- 		ugcprint("[Sys_UIManager][Perf] PreloadHidden 创建实例失败: " .. uiName)
-- 		return nil
-- 	end

-- 	instance:AddToViewport(zOrder or 0)
-- 	instance:SetVisibility(ESlateVisibility.Collapsed)
-- 	Sys_UIManager.uiInstances[uiID] = instance
-- 	Sys_UIManager.isOpen[uiID] = false

-- 	ugcprint("[Sys_UIManager][Perf] PreloadHidden 完成: " .. uiName)
-- 	return instance
-- end


--- 判断 UI 是否已打开
function Sys_UIManager.IsOpen(uiID)
	return Sys_UIManager.isOpen[uiID] == true
end

return Sys_UIManager
