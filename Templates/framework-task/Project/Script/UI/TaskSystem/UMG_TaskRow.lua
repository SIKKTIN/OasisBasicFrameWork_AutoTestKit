---@class UMG_TaskRow_C:UUserWidget
local Row = {}
function Row:Construct()
    if self._click then return end
    self._click = function() if self._select then self._select() end end
    self.SelectButton.OnClicked:Add(self._click)
end
function Row:SetTask(name, status, selected, callback)
    if not self._click then self:Construct() end
    self.NameText:SetText(name)
    self.StatusText:SetText(status)
    self.SelectedMark:SetVisibility(selected and ESlateVisibility.Visible or ESlateVisibility.Collapsed)
    self._select = callback
end
function Row:Destruct()
    if self._click then self.SelectButton.OnClicked:Remove(self._click) end
    self._click, self._select = nil, nil
end
return Row
