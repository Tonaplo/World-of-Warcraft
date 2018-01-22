--[[-----------------------------------------VER 1.7.0-------------------------------------------
--by Tony Allain
7.3.5 ready
-----------------------------------------------------------------------------------------------]]
local conditioner_frame = CreateFrame("Frame")
conditioner_frame.events = {}
conditioner_frame.temp_storage = {}
conditioner_frame.temp_validate = 0
conditioner_frame.always_show = false
local name = UnitName("player")
local GCD_SpellID = 61304
local priority_buttons = {}
local watched_frames = {}
local POSITION_LEFT = {"BOTTOMRIGHT", "BOTTOMLEFT", -1, 0}
local POSITION_RIGHT = {"BOTTOMLEFT", "BOTTOMRIGHT", 1, 0}
local POSITION_TOP = {"BOTTOM", "TOP", 0, 1}
local POSITION_BOTTOM = {"TOP", "BOTTOM", 0, -1}
local garbage_var = 0
local conditions_height = 585
local menu_options_height = 300
local max_num_tracked = 10
local positions = {
POSITION_LEFT, 	--1
POSITION_TOP, 	--2
POSITION_RIGHT, --3
POSITION_BOTTOM --4
}
local tracked_spells = {}
local tracked_items = {}
local target_dock_side = {1,3}
if (not xl_current_target_dock) then
	xl_current_target_dock = 1
end
if (not xl_savedvariables) then
	xl_savedvariables = {}
end
if (not xl_conditioner_options) then
	xl_conditioner_options = {
		hide_hotbar_incombat = false,
		tapersize = 0.75,
		opacity = 1.0,
	}
end
local button_choices = {
"Left",
"Up",
"Right",
"Down"
}
local slots_to_display = {}
local RTB_buffs = {
199600, -- +25% energy regen
193356, -- +1 combo point generator
199603, -- +25% chance for Saber Slash to double attack
193359, -- Cooldown reduction, 2 sec per combo point
193357, -- +25% crit chance
193358  -- +50% attack speed
}
local base_GCD = 1.5
local condition_buttons = {}
local ResourceTypes = {
	MANA,
	RAGE,
	FOCUS,
	ENERGY,
	COMBO_POINTS,
	RUNES,
	RUNIC_POWER,
	SOUL_SHARDS,
	LUNAR_POWER,
	HOLY_POWER,
	"Alternate Power", --11, we need to remove 11 from my dropdown list
	MAELSTROM,
	CHI,
	INSANITY,
	"obsolete", --15
	"obsolete2", --16
	ARCANE_CHARGES,
	FURY,
	PAIN,
	"Focus Target's Health",		--4
	"Target of Target's Health",	--3
	"My Pet's Health",				--2
	"My Health",					--1
	"Target's Health"
}
local AltResourceTypes = {
	MANA,
	RAGE,
	FOCUS,
	ENERGY,
	COMBO_POINTS,
	RUNES,
	RUNIC_POWER,
	SOUL_SHARDS,
	LUNAR_POWER,
	HOLY_POWER,
	"Alternate Power", --11, we need to remove 11 from my dropdown list
	MAELSTROM,
	CHI,
	INSANITY,
	"obsolete", --15
	"obsolete2", --16
	ARCANE_CHARGES,
	FURY,
	PAIN,
	"Focus Target's Health",		--4
	"Target of Target's Health",	--3
	"My Pet's Health",				--2
	"My Health",					--1
	"Target's Health"
}

function ConditionerTooltip(frame)
	if (frame.tooltip) then
		GameTooltip:SetOwner(frame, "ANCHOR_RIGHT", 0, 0);
		GameTooltip:SetText(frame.tooltip, 1, 1, 1, true);
		GameTooltip:AddLine(frame.tooltipdesc, nil, nil, nil, true);
		GameTooltip:SetMinimumWidth(150);
		GameTooltip:Show();
	end
end

--SAVED VARIABLES HANDLING
function CreateConditions()
	local specID = GetSpecialization()
	local conditionset = {}
	for k,v in ipairs(priority_buttons) do
		if (k > 1) then
			local sid = v.spellID
			local iid = v.itemID
			if (sid > 0) then
				if (not conditionset[k]) then
					conditionset[k] = {}
				end
				for i,j in pairs(v.more.conditions.options) do
					if (i == 'Get') or (i == 'Set') or (i == 'Init') then
						--nothing
					else
						conditionset[k][i] = j
					end
				end
				conditionset[k][1] = sid
				conditionset[k][2] = iid or 0
			end
		end
	end

	return specID, conditionset
end

function ConditionerAuraCheck(unit, buffMasks, buffTypes)
	local activeMasks = 0
	local satisfied = false
	if (tostring(buffMasks) == "0") then
		return true
	end
	if (not buffTypes) then
		buffTypes = 0
	end
	buffTypes = tostring(buffTypes)

	local BuffFunc = UnitBuff
	if (buffTypes == "1") then
		BuffFunc = UnitBuff
	elseif (buffTypes == "2") then
		BuffFunc = UnitDebuff
	end
	local hasPoison, hasMagic, hasCurse, hasDisease = false, false, false, false

	for i=1,128 do
		local exists, trashVar, trashVar, trashVar, hasBuff, trashVar, trashVar = BuffFunc(unit, i)
		if (buffTypes == "0") or (buffTypes == "3") then
			--try both
			exists, trashVar, trashVar, trashVar, hasBuff, trashVar, trashVar = UnitDebuff(unit, i)
			if (not exists) then
				exists, trashVar, trashVar, trashVar, hasBuff, trashVar, trashVar = UnitBuff(unit, i)
			end
		end
		if (hasBuff) then
			if (hasBuff == "Magic") then
				hasMagic = true
			end
			if (hasBuff == "Curse") then
				hasCurse = true
			end
			if (hasBuff == "Poison") then
				hasPoison = true
			end
			if (hasBuff == "Disease") then
				hasDisease = true
			end
		end
	end

	if (hasMagic) then
		activeMasks = activeMasks + 1
	end
	if (hasCurse) then
		activeMasks = activeMasks + 2
	end
	if (hasPoison) then
		activeMasks = activeMasks + 4
	end
	if (hasDisease) then
		activeMasks = activeMasks + 8
	end

	if (bit.band(tonumber(buffMasks), tonumber(activeMasks)) > 0) then
		satisfied = true
	end

	return satisfied
end

function StoreConditions()
	local k, v = CreateConditions()
	if (k) then
		xl_savedvariables[k] = v
	end
end

function DistributeSavedVars()
	if (_G['xl_savedvariables']) then
		local myspec = GetSpecialization()
		for k,v in pairs(_G['xl_savedvariables']) do
			if (myspec == k) then
				for i,j in pairs(v) do
					if (j) then 
						for l,m in pairs(j) do
							if (l == 1 or l == 2) then
								--nothing
							else
								if (l == 'Get') or (l == 'Set') or (l == 'Init') then
									--nothing
								else
									if (priority_buttons[i].more) then
										priority_buttons[i].more.conditions.options[l] = m
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

function GetSpellsForCurrentSpec()
	local spellsList = {}
	local itemsList = {}
	if (_G['xl_savedvariables']) then
		local myspec = GetSpecialization()
		for k,v in pairs(_G['xl_savedvariables']) do
			if (myspec == k) then
				for i,j in pairs(v) do
					if (j) then 
						table.insert(spellsList, j[1])
						table.insert(itemsList, j[2] or 0)
					end
				end
			end
		end
	end

	return spellsList, itemsList
end

function ShouldRerollRTB(threshold)
	local num_active = 0
	local spell_name, spell_texture, spell_stacks, spell_duration, expire_time, spell_caster, cansteal, onnameplate, spell_id, canapply, timemod, garbage_var

	for k,v in pairs(RTB_buffs) do
		local name = GetSpellInfo(v)
		local is_active = UnitBuff("player",name)
		if (is_active) then
			num_active = num_active + 1
			spell_name, garbage_var, spell_texture, spell_stacks, garbage_var, spell_duration, expire_time, spell_caster, cansteal, onnameplate, spell_id, canapply, garbage_var, garbage_var, garbage_var, timemod, garbage_var, garbage_var, garbage_var = UnitBuff("player",name)
		end
	end
	if (not threshold) or (threshold and threshold == 0) then
		threshold = 2
	end
	local shouldreroll = (num_active < threshold)
	return shouldreroll, num_active, spell_name, spell_duration, expire_time, timemod
end

local MainPosition = 1
if (not xl_OnTargetFrame) then
	xl_OnTargetFrame = 1
end
local Target_Frame_Choices = {
	"Free",
	"Target",
	"Player"
}
local MaxScale = 250
local MinScale = 20
local isEditMode = false


if (not xl_num_desired_tracked) then
	xl_num_desired_tracked = 5
end
if (not xl_ChildPosition) then
	xl_ChildPosition = 1
end
if (not xl_LocX) then
	xl_LocX = 0.5*GetScreenWidth()*UIParent:GetScale()
end
if (not xl_LocY) then
	xl_LocY = 0.5*GetScreenHeight()*UIParent:GetScale()
end
if (not xl_DesiredScale) then
	xl_DesiredScale = MaxScale/2
end

local backdrop = {
  bgFile = "Interface\\FrameGeneral\\UI-Background-Marble",  
  edgeFile = "Interface\\GLUES\\COMMON\\Glue-Tooltip-Border",
  tile = true,
  tileSize = 512,
  edgeSize = 16,
  insets = {
    left = 8,
    right = 4,
    top = 4,
    bottom = 8
  }
} 

local filler = {
  bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",  
  tile = false,
  tileSize = 512,
  edgeSize = 0,
  insets = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0
  }
}

local MenuBackdrop = {
  bgFile = "Interface\\FrameGeneral\\UI-Background-Rock",  
  edgeFile = "Interface\\GLUES\\COMMON\\Glue-Tooltip-Border",
  tile = false,
  tileSize = 512,
  edgeSize = 16,
  insets = {
    left = 8,
    right = 4,
    top = 4,
    bottom = 8
  }
} 

local priority_visibility_updater = CreateFrame("Frame", nil, SpellBookSkillLineTab1)

local priority_list = CreateFrame("Frame", "ConditionerPriorityList", UIParent)
priority_list:SetPoint("TOPLEFT", SpellBookSkillLineTab1, "TOPRIGHT", 0, 8)
priority_list:SetWidth(60)
priority_list:SetHeight(75)
priority_list:SetBackdrop(MenuBackdrop)
priority_list:SetFrameStrata("HIGH")

function MaintainVisibility()
	tracked_spells, tracked_items = GetSpellsForCurrentSpec()

	local count = 0
	local num_tracked = #tracked_spells
	local num_needed = #tracked_spells - (#priority_buttons - 1)
	
	if (num_needed > 0) then
		for i=1,num_needed do
			MakePriorityButton(priority_buttons, priority_list)
		end
	end
	
	for k,v in pairs(priority_buttons) do
		if (v.spellID > 0) then
			count = count + 1
		end
	end
	if (num_tracked == count) then
		--we're good
	else
		for k,v in ipairs(priority_buttons) do
			if (k > 1) then
				if ((k-1) <= num_tracked) then
					priority_buttons[k].spellID = tracked_spells[k-1]
					priority_buttons[k].itemID = tracked_items[k-1]
					local newtexture = GetSpellTexture(tracked_spells[k-1])
					if (priority_buttons[k].itemID ~= 0) then
						newtexture = GetItemIcon(priority_buttons[k].itemID)
					end
					priority_buttons[k].texture:SetTexture(newtexture)
					priority_buttons[k]:Show()
				else
					priority_buttons[k].spellID = 0
					priority_buttons[k].itemID = 0
					priority_buttons[k]:Hide()
				end
			end
		end
	end

	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
	UpdatePrioritySize()
end

function ConditionerHotfix()
	if (not xl_conditioner_options.tapersize) then
		xl_conditioner_options.tapersize = 0.75
	end
	if ((UnitAffectingCombat("player") or (isEditMode) or conditioner_frame.always_show) and (not UnitHasVehicleUI("player"))) then
		for k,v in ipairs(watched_frames) do
			local newsize = xl_DesiredScale*(math.pow(xl_conditioner_options.tapersize,(k-1)))
			local edgefile = NewEdgeFile(newsize/4)
			watched_frames[k].edge:SetBackdrop(edgefile)
			watched_frames[k].edge:SetBackdropColor(0, 0, 0, 0)
			local scalar = 0.5
			watched_frames[k].text:SetTextHeight(watched_frames[k]:GetWidth()*scalar)
			watched_frames[k].Duration:SetWidth(watched_frames[k]:GetWidth())
		end
	end
end

local menu_options = CreateFrame("Frame", nil, priority_list)
menu_options:Hide()
menu_options:SetPoint("TOPLEFT", SpellBookSkillLineTab1, "TOPRIGHT", 54, 8)
menu_options:SetSize(200, menu_options_height)
menu_options:SetBackdrop(MenuBackdrop)
menu_options.text = menu_options:CreateFontString(nil, "OVERLAY", "GameTooltipText")
menu_options.text:SetSize(menu_options:GetWidth(), 40)
menu_options.text:SetPoint("TOP", menu_options, "TOP", 0, 26)
menu_options.text:SetJustifyH("CENTER")
menu_options.text:SetJustifyV("CENTER")
menu_options.text:SetText("Conditioner")
local flavor1 = CreateFrame("Frame", nil, menu_options)
flavor1:SetPoint("BOTTOM", menu_options, "TOP", 0, -40)
flavor1:SetWidth(menu_options.text:GetStringWidth()*1.5)
flavor1:SetHeight(60)
flavor1:SetFrameLevel(menu_options:GetFrameLevel() - 1)
flavor1:SetBackdrop(backdrop)

function NewSlider(parent, name, offsety, minText, min_Value, maxText, max_Value, sliderText, initValue)
	local new_slider = CreateFrame("Slider", name, parent, "OptionsSliderTemplate")
	new_slider:SetPoint("TOP", parent, "BOTTOM", 0, -offsety)
	new_slider.textLow = _G[name .. "Low"]
	new_slider.textHigh = _G[name .. "High"]
	new_slider.text = _G[name .. "Text"]
	new_slider.textLow:SetText(minText)
	new_slider.textHigh:SetText(maxText)
	new_slider.text:SetText(sliderText)
	new_slider:SetMinMaxValues(min_Value,max_Value)
	new_slider.minValue, new_slider.maxValue = new_slider:GetMinMaxValues()
	new_slider:SetValue(initValue)
	new_slider:SetValueStep(1)
	return new_slider
end

priority_visibility_updater:SetScript("OnHide", function(...)
	priority_list:Hide()
	menu_options:Hide()
	isEditMode=false
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
	for k,v in pairs(condition_buttons) do
		v.conditions:Hide()
		v:SetText(">")
	end
end)

local directionDropDown = CreateFrame("Frame", "TargetPivot", menu_options, "ConditionerUIDropDownMenuTemplate")

--OPTION BUTTONS
local button_options = CreateFrame("Button", nil, priority_list, "UIPanelInfoButton")
button_options:SetPoint("BOTTOMLEFT", SpellBookSkillLineTab1, "TOPRIGHT", 50, -6)
button_options:SetScript("OnClick", function(self, c_button, down)
	PlaySound(1115)
	StoreConditions()
	if (menu_options:IsShown()) then
		menu_options:Hide()
	else
		menu_options:Show()
	end
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)

	ConditionerTutorial_Dismiss(11)
	ConditionerTutorial_Alert(12, directionDropDown)
end)

button_options:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT", 0, 0);
	GameTooltip:SetText("Conditioner", 1, 1, 1, true);
	GameTooltip:AddLine("View More Options!", nil, nil, nil, true);
	GameTooltip:Show();
end)

button_options:SetScript("OnLeave", function(self)
	GameTooltip:Hide()
end)

menu_options:SetScript("OnHide", function(...)
	StoreConditions()
end)

directionDropDown:SetPoint("TOP", menu_options, "TOP", 0, -15)
CONDITIONERDROPDOWNMENU_SetWidth(directionDropDown, menu_options:GetWidth()*(7/10))
CONDITIONERDROPDOWNMENU_SetText(directionDropDown, "Docking : " .. Target_Frame_Choices[xl_OnTargetFrame])

CONDITIONERDROPDOWNMENU_Initialize(directionDropDown, function(self, level, menuList)
	local info = CONDITIONERDROPDOWNMENU_CreateInfo()
	for i=1,#Target_Frame_Choices do
		info.text = Target_Frame_Choices[i]
		info.func = self.SetValue
		info.arg1 = i
		info.checked = (i == xl_OnTargetFrame)
		CONDITIONERDROPDOWNMENU_AddButton(info)
	end
end)

function directionDropDown:SetValue(newValue)
	xl_OnTargetFrame = newValue
	CONDITIONERDROPDOWNMENU_SetText(directionDropDown, "Docking : " .. Target_Frame_Choices[xl_OnTargetFrame])
	local x,y,w,h = watched_frames[1]:GetBoundsRect()
	xl_LocX = x + w/2
	xl_LocY = y + h/2
	watched_frames[1].tempDrag = false
	watched_frames[1].cycleNameplatePositions = false
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
	ConditionerCloseDropDownMenus()
	StoreConditions()

	ConditionerTutorial_Dismiss(12)
	ConditionerTutorial_Alert(13, ConditionerWatchFrame0)
end

menu_options:SetScript("OnShow", function(...)
	for k,v in pairs(condition_buttons) do
		v.conditions:Hide()
		v:SetText(">")
	end
	CONDITIONERDROPDOWNMENU_SetText(directionDropDown, "Docking : " .. Target_Frame_Choices[xl_OnTargetFrame])
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
end)
	
function UpdateWatchFramePositions(resize, main_position, child_position, target_frame)
	if (not xl_conditioner_options.tapersize) then
		xl_conditioner_options.tapersize = 0.75
	end
	if ((UnitAffectingCombat("player") or (isEditMode) or conditioner_frame.always_show) and (not UnitHasVehicleUI("player"))) then
		for k,v in ipairs(watched_frames) do
			local newsize = resize*(math.pow(xl_conditioner_options.tapersize,(k-1)))
			watched_frames[k]:ClearAllPoints()
			watched_frames[k]:SetSize(newsize, newsize)
			watched_frames[k].edge:SetSize(newsize+(0.0625*newsize), newsize+(0.0625*newsize))
			watched_frames[k].edge:SetPoint("CENTER", watched_frames[k], "CENTER", 0, 0)
			local edgefile = NewEdgeFile(newsize/4)
			watched_frames[k].edge:SetBackdrop(edgefile)
			watched_frames[k].edge:SetBackdropColor(0, 0, 0, 0)
			local scalar = 0.5
			watched_frames[k].text:SetTextHeight(watched_frames[k]:GetWidth()*scalar)
			watched_frames[k].Duration:SetWidth(watched_frames[k]:GetWidth())
		end
	else
		for k,v in pairs(watched_frames) do
			v.Duration:Hide()
			v.text:SetText("")
			v.text:SetTextColor(1,1,1,0.5)
			v:Hide()
		end
	end

	if (target_frame == 1) then
		watched_frames[1]:SetPoint("CENTER", UIParent, "BOTTOMLEFT", xl_LocX, xl_LocY)
		watched_frames[1].tempDrag = false
		watched_frames[1].cycleNameplatePositions = false
	elseif (target_frame == 2) then
		local namePlateTarget = C_NamePlate.GetNamePlateForUnit("target")
		if (namePlateTarget) then
			watched_frames[1].cycleNameplatePositions = true
			watched_frames[1]:SetPoint(positions[target_dock_side[xl_current_target_dock]][1], namePlateTarget.UnitFrame, positions[target_dock_side[xl_current_target_dock]][2], 0, 0)
			watched_frames[1].tempDrag = false
			local x,y,w,h = watched_frames[1]:GetBoundsRect()
			xl_LocX = x + w/2
			xl_LocY = y + h/2
		else
			watched_frames[1].cycleNameplatePositions = false
			watched_frames[1]:ClearAllPoints()
			watched_frames[1]:SetPoint("CENTER", UIParent, "BOTTOMLEFT", xl_LocX, xl_LocY)
			watched_frames[1].tempDrag = true
		end
	elseif (target_frame == 3) then
		local namePlateTarget = C_NamePlate.GetNamePlateForUnit("player")
		if (namePlateTarget) then
			watched_frames[1].cycleNameplatePositions = true
			watched_frames[1]:SetPoint(positions[target_dock_side[xl_current_target_dock]][1], namePlateTarget.UnitFrame, positions[target_dock_side[xl_current_target_dock]][2], 0, 0)
			watched_frames[1].tempDrag = false
			local x,y,w,h = watched_frames[1]:GetBoundsRect()
			xl_LocX = x + w/2
			xl_LocY = y + h/2
		else
			watched_frames[1].cycleNameplatePositions = false
			watched_frames[1]:ClearAllPoints()
			watched_frames[1]:SetPoint("CENTER", UIParent, "BOTTOMLEFT", xl_LocX, xl_LocY)
			watched_frames[1].tempDrag = true
		end
	end

	for k,v in ipairs(watched_frames) do
		if (k > 1) then
			local parent = watched_frames[k-1]
			local parentedgewidth = (watched_frames[k-1].edge:GetWidth() - watched_frames[k-1]:GetWidth())/2
			local myedgewidth = (v.edge:GetWidth() - v:GetWidth())/2
			local delta = math.abs(parentedgewidth) - math.abs(myedgewidth)/2
			v:ClearAllPoints()
			v:SetPoint(positions[child_position][1], parent, positions[child_position][2], positions[child_position][3]*delta, 0)
		end

		if (not xl_conditioner_options.opacity) then
			xl_conditioner_options.opacity = 1.0
		end
		v.texture:SetAlpha(xl_conditioner_options.opacity)
	end
end

function UpdatePrioritySize()
	local my_current_spec = GetSpecialization()
	if (my_current_spec) then
		local count = 1
		for k,v in pairs(priority_buttons) do
			if (v.spellID == 0) then
				--nothing
			else
				count = count + 1
			end
		end
		if (#priority_buttons > 0) then
			priority_list:SetHeight((40*count) + 20)
		else
			priority_list:SetHeight(60)
		end
	end
	ConditionerTutorial_Alert(4, _G['ConditionerPriorityButton' .. FirstEmptySlot(priority_buttons) - 1])
end

function FirstEmptySlot(fromtable)
	local slot = -1
	for k,v in ipairs(fromtable) do
		if ((k > 1) and (v.spellID == 0)) then
			slot = k - 1
			break
		end
	end
	if (slot == -1) then
		slot = #fromtable
	end
	return slot
end

function MoveConditions(source_frame, dest_frame, swap)
	local tempconditions = dest_frame.more.conditions.options:Get()
	local from = source_frame.more.conditions.options:Get()
	dest_frame.more.conditions.options:Set(from)
	
	if (swap) then
		source_frame.more.conditions.options:Set(tempconditions)
	else
		source_frame.more.conditions.options:Init()
	end
	StoreConditions()
end

function TempConditions(frame, place)
	if (place) then
		local count = 0
		for k,v in pairs(conditioner_frame.temp_storage) do
			count = count + 1
		end
		if (count == 0) then
			frame.more.conditions.options:Init()
		else
			frame.more.conditions.options:Set(conditioner_frame.temp_storage)
			if (frame.spellID == conditioner_frame.temp_validate) then
				ConditionerTutorial_Dismiss(4)
				ConditionerTutorial_Alert(5, _G['ConditionerPriorityButton' .. FirstEmptySlot(priority_buttons) - 1].more)
			else
				frame.more.conditions.options:Init()
			end
			conditioner_frame.temp_storage = {}
			conditioner_frame.temp_validate = 0
		end
	else
		conditioner_frame.temp_storage = frame.more.conditions.options:Get()
		conditioner_frame.temp_validate = frame.spellID
	end
end

function RemoveFromPrioList(fromtable, self, pickup)
	if (pickup) then
		if (self.itemID ~= 0) then
			PickupItem(self.itemID)
		else
			PickupSpell(self.spellID)
		end
		TempConditions(self, false)
	end
	if (self.index > 1) then
		if (self.index < #fromtable) then
			local last_occupied_slot = FirstEmptySlot(fromtable)
			for i=self.index,last_occupied_slot do
				if (i < last_occupied_slot) then
					local sid = fromtable[i+1].spellID
					local iid = fromtable[i+1].itemID
					local tid = GetSpellTexture(sid)
					if (iid ~= 0) then
						tid = GetItemIcon(iid)
					end
					fromtable[i].spellID = sid
					fromtable[i].itemID = iid
					fromtable[i].texture:SetTexture(tid)
					MoveConditions(fromtable[i+1], fromtable[i], false)
				else
					fromtable[i].spellID = 0
					fromtable[i].itemID = 0
					fromtable[i]:Hide()
					fromtable[i].texture:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
					fromtable[i].more.conditions.options:Init()
				end
			end
		else
			self.spellID = 0
			self.itemID = 0
			self.more.conditions.options:Init()
			self.texture:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
			self:Hide()
		end
	end

	for k,v in pairs(condition_buttons) do
		v.conditions:Hide()
		v:SetText(">")
	end

	DistributeSavedVars()
	MaintainVisibility()
	UpdatePrioritySize()
end

function AddToPrioList(fromtable, self, list)
	local cursorType,itemID,garbage_var,spellID = GetCursorInfo()
	local textureID = GetSpellTexture(spellID)
	if (cursorType == "item") then
		garbage_var, garbage_var, spellID = GetItemSpell(itemID)
		textureID = GetItemIcon(itemID)
	else
		itemID = 0
	end

	local currentID = self.spellID
	local action = 0

	ClearCursor()
	
	if (spellID) and (type(spellID) == "number") then
		if (currentID == 0) then
			action = 1
		else
			action = 2
		end
	else
		if (currentID == 0) then
			action = 3
		else
			action = 4
		end
	end
	
	if (action == 1) then
		local freeslot = -1
		if (#fromtable > 1) then
			for k,v in ipairs(fromtable) do
				if ((k > 1) and (fromtable[k].spellID == 0)) then
					freeslot = k
					break
				end
			end
			if (freeslot == -1) then
				MakePriorityButton(fromtable, list)
			else
				fromtable[freeslot]:Show()
			end
		else
			MakePriorityButton(fromtable, list)
		end
		if (freeslot == -1) then
			freeslot = #fromtable
		end
		fromtable[freeslot].spellID = spellID
		fromtable[freeslot].itemID = itemID
		fromtable[freeslot].texture:SetTexture(textureID)
		TempConditions(fromtable[freeslot], true)
	elseif (action == 2) then
		local freeslot = -1
		if (#fromtable > 1) then
			for k,v in ipairs(fromtable) do
				if ((k > 1) and (fromtable[k].spellID == 0)) then
					freeslot = k
					break
				end
			end
			if (freeslot == -1) then
				MakePriorityButton(fromtable, list)
			else
				fromtable[freeslot]:Show()
				fromtable[freeslot].more.conditions.options:Init()
			end
		else
			MakePriorityButton(fromtable, list)
		end
		if (freeslot == -1) then
			freeslot = #fromtable
		end
		for i = freeslot,self.index,-1 do
			if (i > self.index) then
				local sid = fromtable[i-1].spellID
				local iid = fromtable[i-1].itemID
				local tid = GetSpellTexture(sid)
				if (iid ~= 0) then
					tid = GetItemIcon(iid)
				end
				fromtable[i].spellID = sid
				fromtable[i].itemID = iid
				fromtable[i].texture:SetTexture(tid)
				MoveConditions(fromtable[i-1], fromtable[i], false)
			else
				fromtable[i].spellID = spellID
				fromtable[i].itemID = itemID
				fromtable[i].texture:SetTexture(textureID)
			end
		end
		TempConditions(self, true)
	elseif (action == 3) then
		--NOTHING
	elseif (action == 4) then
		if (not UnitAffectingCombat("player")) then
			RemoveFromPrioList(fromtable, self, 1)
		end
	end

	for k,v in pairs(condition_buttons) do
		v.conditions:Hide()
		v:SetText(">")
	end

	DistributeSavedVars()
	MaintainVisibility()
	UpdatePrioritySize()
end

function MakeEditBox(buttonname, anchor1, point, anchor2, contents, parent, w, h)
	local newEditButton = CreateFrame("EditBox", buttonname, parent)
	newEditButton:SetPoint(anchor1, point, anchor2, 0, -20)
	newEditButton:SetBackdrop(MenuBackdrop)
	newEditButton:SetBackdropColor(0,0,0,1)
	newEditButton:SetSize(w, h)
	newEditButton:SetFont("Fonts\\ARIALN.TTF", h/2.5, OUTLINE)
	newEditButton:SetAutoFocus(false)
	newEditButton:SetTextInsets(12, 0, 0, 4)
	newEditButton:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)
	newEditButton:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	newEditButton:SetScript("OnLeave", function(self) self:ClearFocus() end)
	newEditButton.text = newEditButton:CreateFontString(nil, "OVERLAY", "GameTooltipText")
	newEditButton.text:SetWidth(w)
	newEditButton.text:SetHeight(h)
	newEditButton.text:SetPoint("BOTTOM", newEditButton, "TOP", 0, -12)
	newEditButton.text:SetJustifyH("CENTER")
	newEditButton.text:SetJustifyV("CENTER")
	newEditButton.text:SetText(contents)
	newEditButton.text:SetTextColor(0,1,0,1)
	return newEditButton
end

function MakeCheckBox(anchor1, parent, anchor2, contents, text1, text2)
	local newEditButton = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
	newEditButton:SetPoint(anchor1, parent, anchor2, 0, -12)
	newEditButton.text = newEditButton:CreateFontString(nil, "OVERLAY", "GameTooltipText")
	if (text1) then
		newEditButton.text:SetPoint(text1, newEditButton, text2, 0, 0)
	else
		newEditButton.text:SetPoint("BOTTOM", newEditButton, "TOP", 0, 0)
	end
	newEditButton.text:SetJustifyH("CENTER")
	newEditButton.text:SetJustifyV("CENTER")
	newEditButton.text:SetText(contents)
	newEditButton.text:SetTextColor(0,1,0,1)
	newEditButton:SetScript("OnEnter", function(self, ...) ConditionerTooltip(self) end)
	newEditButton:SetScript("OnLeave", function(self, ...) GameTooltip:Hide() end)
	return newEditButton
end

function NewDropDownMenu(title, name, parent, choices, currentchoice, point)
	local NewDropDown = CreateFrame("Frame", name, parent, "ConditionerUIDropDownMenuTemplate")
	NewDropDown:SetPoint("TOP", point, "BOTTOM", 0, -12)
	NewDropDown.text = NewDropDown:CreateFontString(nil, "OVERLAY", "GameTooltipText")
	NewDropDown.text:SetPoint("BOTTOM", NewDropDown, "TOP", 0, -12)
	NewDropDown.text:SetSize(parent:GetWidth(), NewDropDown:GetHeight())
	NewDropDown.text:SetText(title)
	NewDropDown.text:SetJustifyH("CENTER")
	NewDropDown.text:SetJustifyV("CENTER")
	NewDropDown.text:SetTextColor(0,1,0,1)
	CONDITIONERDROPDOWNMENU_SetWidth(NewDropDown, parent:GetWidth()*(7/10))
	CONDITIONERDROPDOWNMENU_SetText(NewDropDown, choices[currentchoice])

	CONDITIONERDROPDOWNMENU_Initialize(NewDropDown, function(self, level, menuList)
		local info = CONDITIONERDROPDOWNMENU_CreateInfo()

		if (choices == parent:GetParent().target_choices) then
			currentchoice = parent.options.aura_target
		elseif (choices == parent:GetParent().stack_choices) then
			currentchoice = parent.options.stack_conditional
		elseif (choices == parent:GetParent().charge_choices) then
			currentchoice = parent.options.charge_conditional
		elseif (choices == ResourceTypes) then
			currentchoice = parent.options.resource_type
		elseif (choices == parent:GetParent().resource_choices) then
			currentchoice = parent.options.resource_condition
		elseif (choices == AltResourceTypes) then
			currentchoice = parent.options.alt_resource_type
		elseif (choices == parent:GetParent().alt_resource_choices) then
			currentchoice = parent.options.alt_resource_condition
		end

		for i=1,#choices do
			if (choices == ResourceTypes) or (choices == AltResourceTypes) then
				if ((i == 11) or (i == 15) or (i ==16)) then
					--skip
				else
					info.text = choices[i]
					info.func = self.SetValue
					info.arg1 = i
					info.checked = (i == currentchoice)
					CONDITIONERDROPDOWNMENU_AddButton(info)
				end
			else
				info.text = choices[i]
				info.func = self.SetValue
				info.arg1 = i
				info.checked = (i == currentchoice)
				CONDITIONERDROPDOWNMENU_AddButton(info)
			end
		end
	end)

	function NewDropDown:SetValue(newValue)
		if (choices == parent:GetParent().target_choices) then
			parent.options.aura_target = newValue
		elseif (choices == parent:GetParent().stack_choices) then
			parent.options.stack_conditional = newValue
		elseif (choices == parent:GetParent().charge_choices) then
			parent.options.charge_conditional = newValue
		elseif (choices == ResourceTypes) then
			parent.options.resource_type = newValue
		elseif (choices == parent:GetParent().resource_choices) then
			parent.options.resource_condition = newValue
		elseif (choices == AltResourceTypes) then
			parent.options.alt_resource_type = newValue
		elseif (choices == parent:GetParent().alt_resource_choices) then
			parent.options.alt_resource_condition = newValue
		end
		CONDITIONERDROPDOWNMENU_SetText(NewDropDown, choices[newValue])
		ConditionerCloseDropDownMenus()
		StoreConditions()
	end

	return NewDropDown
end

function MakePriorityButton(fortable, listline)
	local tutorialID = #fortable or 0
	local newbutton = CreateFrame("Button", "ConditionerPriorityButton" .. tutorialID, listline)
	table.insert(fortable, newbutton)
	newbutton.spellID = 0
	newbutton.itemID = 0
	newbutton.watchedSlot = 0
	newbutton.index = #fortable
	newbutton:SetPoint("TOP", listline, "TOP", 0, -((newbutton.index-1)*40 + 5))
	newbutton:SetWidth(50)
	newbutton:SetHeight(50)
	newbutton:Enable()
	newbutton:SetBackdrop(backdrop)
	newbutton.texture = newbutton:CreateTexture()
	newbutton.texture:SetPoint("CENTER", newbutton, "CENTER", 2, 2)
	newbutton.texture:SetSize(40, 40)
	newbutton.highlighttexture = newbutton:CreateTexture()
	newbutton.highlighttexture:SetPoint("CENTER", newbutton, "CENTER", 30, -10)
	newbutton.highlighttexture:SetSize(112, 78)
	newbutton.highlighttexture:SetTexture("Interface\\BUTTONS\\Micro-Highlight")
	newbutton:SetHighlightTexture(newbutton.highlighttexture)
	if (newbutton.index == 1) then
		newbutton.text = newbutton:CreateFontString(nil, "OVERLAY", "GameTooltipText")
		newbutton.text:SetWidth(newbutton:GetWidth())
		newbutton.text:SetHeight(newbutton:GetHeight())
		newbutton.text:SetPoint("CENTER", newbutton, "CENTER", 2, 0)
		newbutton.text:SetJustifyH("CENTER")
		newbutton.text:SetJustifyV("CENTER")
		newbutton.text:SetText("+")
	else
		newbutton.more = CreateFrame("Button", nil, newbutton, "UIPanelButtonTemplate")
		table.insert(condition_buttons, newbutton.more)
		newbutton.more:SetPoint("LEFT", newbutton, "RIGHT", 0, 0)
		newbutton.more:SetSize(20,20)
		newbutton.more:SetText(">")
		newbutton.more.conditions = CreateFrame("Frame", nil, newbutton.more)
		newbutton.more.conditions:SetSize(200,conditions_height)
		newbutton.more.conditions:SetBackdrop(MenuBackdrop)
		newbutton.more.conditions:SetClampedToScreen(true)
		local menubarheight = MainMenuBar:GetHeight()
		newbutton.more.conditions:SetClampRectInsets(0,0,0,-1.75*menubarheight)
		newbutton.more.conditions:SetPoint("TOPLEFT", newbutton.more, "BOTTOMRIGHT", -8, 4)
		
		newbutton.more.conditions.closebutton = CreateFrame("Button", nil, newbutton.more.conditions, "UIPanelButtonTemplate")
		newbutton.more.conditions.closebutton:SetPoint("BOTTOM", newbutton.more.conditions, "BOTTOM", 2, 9)
		newbutton.more.conditions.closebutton:SetSize(newbutton.more.conditions:GetWidth()*(9.4/10), 24)
		newbutton.more.conditions.closebutton:SetText("Close")
		newbutton.more.target_choices = {
			"Me", 
			"Any Target",
			"Friendly Target",
			"Enemy Target",
			"Any MouseOver",
			"Friendly MouseOver",
			"Enemy MouseOver",
			"My Pet",
			"My Focus",
			"Target's Target",
		}
		newbutton.more.target_choices_enum = {
			"Player", 
			"Target",
			"Target",
			"Target",
			"MouseOver",
			"MouseOver",
			"MouseOver",
			"Pet",
			"Focus",
			"TargetTarget",
		}
		newbutton.more.stack_choices = {
			"==",
			"<",
			">",
			"<=",
			">=",
			"~=",
		}
		newbutton.more.charge_choices = {
			"==",
			"<",
			">",
			"<=",
			">=",
			"~=",
		}
		newbutton.more.resource_choices = {
			"==",
			"<",
			">",
			"<=",
			">=",
			"~=",
		}
		newbutton.more.alt_resource_choices = {
			"==",
			"<",
			">",
			"<=",
			">=",
			"~=",
		}
		newbutton.more.dispelTypeChoices = {
			"Magic", 	--1
			"Curse", 	--2
			"Poison", 	--4
			"Disease" 	--8
		}

		newbutton.more.conditions.options = {
			use_condition = false,
			clip_gcd = true,
			active_aura = "",
			key_binding = "",
			maintain_aura = false,
			is_interrupt = false,
			aura_target = 1,
			num_stacks = 0,
			stack_conditional = 1,
			duration_remaining = 0,
			dispel_mask = 0,
			bufftype_mask = 0,
			resource_type = 1,
			resource_condition = 1,
			min_resource_to_cast = 0,
			resource_by_percentage = false,
			alt_resource_type = 1,
			alt_resource_condition = 1,
			alt_min_resource_to_cast = 0,
			alt_resource_by_percentage = false,
			highlight_only = false,
			num_charges = 0,
			charge_conditional = 1,
			only_when_ready = false,
		}
		newbutton.more.conditions.UseCondition = CreateFrame("Button", nil, newbutton.more.conditions, "UIPanelButtonTemplate")
		newbutton.more.conditions.UseCondition:SetPoint("BOTTOM", newbutton.more.conditions, "TOP", 2, -3)
		newbutton.more.conditions.UseCondition:SetWidth(newbutton.more.conditions:GetWidth()*(9.5/10))
		newbutton.more.conditions.UseCondition:SetText("Currently: Disabled")
		newbutton.more.conditions.UseCondition:SetScript("OnClick", function(self, ...)
			PlaySound(1115)
			newbutton.more.conditions.options.use_condition = not newbutton.more.conditions.options.use_condition
			StoreConditions()
			if (newbutton.more.conditions.options.use_condition) then
				self:SetText("Currently: Enabled")
				newbutton.more.conditions:SetTextColors(true)
			else
				self:SetText("Currently: Disabled")
				newbutton.more.conditions:SetTextColors(false)
			end
			for k,v in pairs(newbutton.more.conditions) do
				newbutton.more.conditions.DispelDropDown.Options:Hide()
			end
			ConditionerTutorial_Dismiss(6)
			ConditionerTutorial_Alert(7, newbutton.more.conditions.closebutton, self)
		end)
		newbutton.more.conditions.HotKey = MakeEditBox(nil, "TOP", newbutton.more.conditions, "TOP", "Displayed Keybinding", newbutton.more.conditions, newbutton.more.conditions:GetWidth() - 32, 32)
		newbutton.more.conditions.HotKey.text:SetTextColor(0,1,1,1)
		newbutton.more.conditions.HotKey:SetScript("OnKeyUp", function(self, ...) self:GetParent().options.key_binding = self:GetText() StoreConditions() end)
		newbutton.more.conditions.HotKey:SetScript("OnMouseDown", function(self, c_button)
			if (c_button == "RightButton") then
				self:SetText("")
				self:GetParent().options.key_binding = self:GetText()
				StoreConditions()
			end
		end)

		newbutton.more.conditions.AuraEdit = MakeEditBox(nil, "TOP", newbutton.more.conditions.HotKey, "BOTTOM", "Active Aura", newbutton.more.conditions, newbutton.more.conditions:GetWidth() - 32, 32)
		newbutton.more.conditions.AuraEdit:ClearAllPoints()
		newbutton.more.conditions.AuraEdit:SetPoint("TOP", newbutton.more.conditions.HotKey, "BOTTOM", 0, -14)
		newbutton.more.conditions.AuraEdit:SetScript("OnKeyUp", function(self, ...) self:GetParent().options.active_aura = self:GetText() StoreConditions() end)
		newbutton.more.conditions.AuraEdit:SetScript("OnMouseDown", function(self, c_button)
			if (c_button == "RightButton") then
				self:SetText("")
				self:GetParent().options.active_aura = self:GetText()
				StoreConditions()
			end
		end)

		newbutton.more.conditions.MaintainAura = MakeCheckBox("TOP", newbutton.more.conditions.AuraEdit, "BOTTOM", "Seconds\nLeft")
		newbutton.more.conditions.MaintainAura:ClearAllPoints()
		newbutton.more.conditions.MaintainAura:SetPoint("TOP", newbutton.more.conditions.AuraEdit, "BOTTOM", -newbutton.more.conditions:GetWidth()*(1/5), -65)
		newbutton.more.conditions.MaintainAura:SetScript("OnClick", function(self, ...)
			PlaySound(1115) 
			newbutton.more.conditions.options.maintain_aura = self:GetChecked() 
			StoreConditions() 
		end)
		newbutton.more.conditions.MaintainAura.tooltip = "Seconds Remaining For Aura"
		newbutton.more.conditions.MaintainAura.tooltipdesc = "Example Usage: If you have Shadow Word: Pain as the Active Aura, the desired spell will show up when Shadow Word: Pain is NOT active or it is about to fall off your target.\n\nYou can specify the number of seconds left on your active aura to display this spell or it appears with 1.5 sec remaining by default."

		newbutton.more.conditions.MaintainAura.TimeLeft = MakeEditBox(nil, "LEFT", newbutton.more.conditions.MaintainAura, "RIGHT", "", newbutton.more.conditions, 32, 32)
		newbutton.more.conditions.MaintainAura.TimeLeft:SetNumeric(true)
		newbutton.more.conditions.MaintainAura.TimeLeft:ClearAllPoints()
		newbutton.more.conditions.MaintainAura.TimeLeft:SetPoint("LEFT", newbutton.more.conditions.MaintainAura, "RIGHT", -10, -2)
		newbutton.more.conditions.MaintainAura.TimeLeft:SetScript("OnKeyUp", function(self, text)
			if (self:GetNumber() > 99) then
				self:SetNumber(99)
			elseif (self:GetNumber() <= 0) then
				self:SetNumber(0)
			end
			self:GetParent().options.duration_remaining = self:GetNumber()
			StoreConditions()
		end)
		newbutton.more.conditions.MaintainAura.TimeLeft:SetScript("OnMouseDown", function(self, c_button)
			if (c_button == "RightButton") then
				self:SetNumber("")
				self:GetParent().options.duration_remaining = self:GetNumber()
			elseif (c_button == "LeftButton") and (self:GetNumber() == 0) then
				self:SetNumber("")
				self:GetParent().options.duration_remaining = self:GetNumber()
			end
	
			StoreConditions()
		end)

		newbutton.more.conditions.Interrupt = MakeCheckBox("TOP", newbutton.more.conditions.AuraEdit, "BOTTOM", "Is\nInterrupt")
		newbutton.more.conditions.Interrupt:ClearAllPoints()
		newbutton.more.conditions.Interrupt:SetPoint("TOP", newbutton.more.conditions.AuraEdit, "BOTTOM", newbutton.more.conditions:GetWidth()*(1/5), -65)
		newbutton.more.conditions.Interrupt:SetScript("OnClick", function(self, ...) PlaySound(1115) newbutton.more.conditions.options.is_interrupt = self:GetChecked() StoreConditions() end)
		newbutton.more.conditions.Interrupt.tooltip = "Is Interrupt"
		newbutton.more.conditions.Interrupt.tooltipdesc = "If your spell will be off cooldown before your Target finishes casting an interruptable spell, your spell will be displayed."
		
		newbutton.more.conditions.DropDown = NewDropDownMenu("Aura Target", "AuraOwner" .. newbutton.index, newbutton.more.conditions, newbutton.more.target_choices, newbutton.more.conditions.options.aura_target, newbutton.more.conditions.MaintainAura)
		newbutton.more.conditions.DropDown:ClearAllPoints()
		newbutton.more.conditions.DropDown:SetPoint("TOP", newbutton.more.conditions.AuraEdit, "BOTTOM", 0, -10)
		CONDITIONERDROPDOWNMENU_SetWidth(newbutton.more.conditions.DropDown, newbutton.more.conditions:GetWidth()*(1/2.5))

		newbutton.more.conditions.StackDropDown = NewDropDownMenu("Stack Condition", "StackCondition" .. newbutton.index, newbutton.more.conditions, newbutton.more.stack_choices, newbutton.more.conditions.options.stack_conditional, newbutton.more.conditions.DropDown)
		CONDITIONERDROPDOWNMENU_SetWidth(newbutton.more.conditions.StackDropDown, newbutton.more.conditions:GetWidth()*(1/5))
		newbutton.more.conditions.StackDropDown:ClearAllPoints()
		--newbutton.more.conditions.StackDropDown:SetPoint("TOP", newbutton.more.conditions.DropDown, "BOTTOM", -16, -62)
		newbutton.more.conditions.StackDropDown:SetPoint("TOP", newbutton.more.conditions.DropDown, "BOTTOM", -16, -122)
		newbutton.more.conditions.StackDropDown.text:ClearAllPoints()
		newbutton.more.conditions.StackDropDown.text:SetPoint("BOTTOM", newbutton.more.conditions.StackDropDown, "TOP", 16, -12)

		newbutton.more.conditions.NumStacks = MakeEditBox(nil, "LEFT", newbutton.more.conditions.StackDropDown, "RIGHT", "", newbutton.more.conditions, 32, 32)
		newbutton.more.conditions.NumStacks:SetNumeric(true)
		newbutton.more.conditions.NumStacks:ClearAllPoints()
		newbutton.more.conditions.NumStacks:SetPoint("LEFT", newbutton.more.conditions.StackDropDown, "RIGHT", -20, 0)
		newbutton.more.conditions.NumStacks:SetScript("OnKeyUp", function(self, text)
			if (self:GetNumber() > 99) then
				self:SetNumber(99)
			elseif (self:GetNumber() <= 0) then
				self:SetNumber(0)
			end
			self:GetParent().options.num_stacks = self:GetNumber()
			StoreConditions()
		end)
		newbutton.more.conditions.NumStacks:SetScript("OnMouseDown", function(self, c_button)
			if (c_button == "RightButton") then
				self:SetNumber("")
				self:GetParent().options.num_stacks = self:GetNumber()
			elseif (c_button == "LeftButton") and (self:GetNumber() == 0) then
				self:SetNumber("")
				self:GetParent().options.num_stacks = self:GetNumber()
			end
			StoreConditions()
		end)

		newbutton.more.conditions.DispelDropDown = CreateFrame("Button", "DispelTypeChoice" .. newbutton.index, newbutton.more.conditions, "UIPanelButtonTemplate")
		newbutton.more.conditions.DispelDropDown:SetText("Dispel Filter")
		newbutton.more.conditions.DispelDropDown:SetPoint("TOP", newbutton.more.conditions.StackDropDown, "BOTTOM", 16, -6)
		newbutton.more.conditions.DispelDropDown:SetSize(newbutton.more.conditions:GetWidth()*(3/4), 25)

		newbutton.more.conditions.DispelDropDown:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT", 0, 0);
			GameTooltip:SetText("Conditioner", 1, 1, 1, true);
			GameTooltip:AddLine("Specify Buff, Debuff, or Both (checked or unchecked).\nIf ANY of the checked dispel types are on your Aura Target, this condition passes.", nil, nil, nil, true);
			GameTooltip:SetMinimumWidth(150);
			GameTooltip:Show();
		end)

		newbutton.more.conditions.DispelDropDown:SetScript("OnLeave", function(self)
			GameTooltip:Hide()
		end)
		
		newbutton.more.conditions.DispelDropDown.Options = CreateFrame("Frame", nil, newbutton.more.conditions.DispelDropDown)
		newbutton.more.conditions.DispelDropDown.Options:SetPoint("LEFT", newbutton.more.conditions.DispelDropDown, "RIGHT")
		newbutton.more.conditions.DispelDropDown.Options:SetBackdrop(MenuBackdrop)
		newbutton.more.conditions.DispelDropDown.Options:SetSize(newbutton.more.conditions:GetWidth()*0.6, 205)

		newbutton.more.conditions.DispelDropDown.Options.CheckBoxes = {
			Buff = {index = -1, Box = 0},
			Debuff = {index = -2, Box = 0},
			Magic = {index = 1, Box = 0},
			Curse = {index = 2, Box = 0},
			Poison = {index = 4, Box = 0},
			Disease = {index = 8, Box = 0},
		}
		
		for k,v in pairs(newbutton.more.conditions.DispelDropDown.Options.CheckBoxes) do
			v.Box = MakeCheckBox("LEFT", newbutton.more.conditions.DispelDropDown.Options, "LEFT", k, "LEFT", "RIGHT")
			v.Box:ClearAllPoints()
			v.Box.text:SetTextColor(1,0,0,1)
			if (v.index == -1) then
				v.Box:SetPoint("TOPLEFT", newbutton.more.conditions.DispelDropDown.Options, "TOPLEFT", 10, -10)
			elseif (v.index == -2) then
				v.Box:SetPoint("TOPLEFT", newbutton.more.conditions.DispelDropDown.Options, "TOPLEFT", 10, -40)
			elseif (v.index == 1) then
				v.Box:SetPoint("TOPLEFT", newbutton.more.conditions.DispelDropDown.Options, "TOPLEFT", 10, -70)
			elseif (v.index == 2) then
				v.Box:SetPoint("TOPLEFT", newbutton.more.conditions.DispelDropDown.Options, "TOPLEFT", 10, -100)
			elseif (v.index == 4) then
				v.Box:SetPoint("TOPLEFT", newbutton.more.conditions.DispelDropDown.Options, "TOPLEFT", 10, -130)
			elseif (v.index == 8) then
				v.Box:SetPoint("TOPLEFT", newbutton.more.conditions.DispelDropDown.Options, "TOPLEFT", 10, -160)
			end
		end

		function newbutton.more.conditions.DispelDropDown.Options:GetDispelTypes()
			local mask = 0
			local types = 0
			for k,v in pairs(self.CheckBoxes) do
				if (v.index > 0) and (v.Box:GetChecked()) then
					mask = mask + v.index
				elseif (v.index < 0) and (v.Box:GetChecked()) then
					types = types + (v.index*-1)
				end
			end
			return mask, types
		end
	
		newbutton.more.conditions.DispelDropDown.Options:Hide()

		newbutton.more.conditions.DispelDropDown:SetScript("OnClick", function(self)
			local saved_masks = newbutton.more.conditions.options.dispel_mask
			local saved_bufftypes = newbutton.more.conditions.options.bufftype_mask
			if (self.Options:IsShown()) then
				self.Options:Hide()
			else
				for k,v in pairs(self.Options.CheckBoxes) do
					if (v.index > 0) then
						if (bit.band(saved_masks, v.index) > 0) then
							v.Box.text:SetTextColor(0,1,0,1)
							v.Box:SetChecked(true)
						else
							v.Box.text:SetTextColor(1,0,0,1)
							v.Box:SetChecked(false)
						end
					else
						if (bit.band(saved_bufftypes, v.index*-1) > 0) then
							v.Box.text:SetTextColor(0,1,0,1)
							v.Box:SetChecked(true)
						else
							v.Box.text:SetTextColor(1,0,0,1)
							v.Box:SetChecked(false)
						end
					end
				end
				self.Options:Show()
			end
		end)

		for k,v in pairs(newbutton.more.conditions.DispelDropDown.Options.CheckBoxes) do
			v.Box:SetScript("OnClick", function(self)
				local isChecked = self:GetChecked()
				if (isChecked) then
					v.Box.text:SetTextColor(0,1,0,1)
				else
					v.Box.text:SetTextColor(1,0,0,1)
				end
				local masks, types = self:GetParent():GetDispelTypes()
				newbutton.more.conditions.options.dispel_mask = masks
				newbutton.more.conditions.options.bufftype_mask = types
				StoreConditions()
			end)
		end

		newbutton.more.conditions.ResourceDropDown = NewDropDownMenu("Resource Type", "ResourceTypeChoice" .. newbutton.index, newbutton.more.conditions, ResourceTypes, newbutton.more.conditions.options.resource_type, newbutton.more.conditions.DispelDropDown)
		newbutton.more.conditions.ResourceDropDown:ClearAllPoints()
		newbutton.more.conditions.ResourceDropDown:SetPoint("TOP", newbutton.more.conditions.DispelDropDown, "BOTTOM", 0, -18)
		CONDITIONERDROPDOWNMENU_SetWidth(newbutton.more.conditions.ResourceDropDown, newbutton.more.conditions:GetWidth()*(3/5))

		newbutton.more.conditions.ResourceCondition = NewDropDownMenu("Resource Condition", "ResourceCondition" .. newbutton.index, newbutton.more.conditions, newbutton.more.resource_choices, newbutton.more.conditions.options.resource_condition, newbutton.more.conditions.DropDown)
		CONDITIONERDROPDOWNMENU_SetWidth(newbutton.more.conditions.ResourceCondition, newbutton.more.conditions:GetWidth()*(1/5))
		newbutton.more.conditions.ResourceCondition:ClearAllPoints()
		newbutton.more.conditions.ResourceCondition:SetPoint("TOP", newbutton.more.conditions.ResourceDropDown, "BOTTOM", -40, -12)
		newbutton.more.conditions.ResourceCondition.text:ClearAllPoints()
		newbutton.more.conditions.ResourceCondition.text:SetPoint("BOTTOM", newbutton.more.conditions.ResourceCondition, "TOP", 40, -12)

		newbutton.more.conditions.ResourceAmount = MakeEditBox(nil, "LEFT", newbutton.more.conditions.ResourceCondition, "RIGHT", "", newbutton.more.conditions, 64, 32)
		newbutton.more.conditions.ResourceAmount:ClearAllPoints()
		newbutton.more.conditions.ResourceAmount:SetPoint("LEFT", newbutton.more.conditions.ResourceCondition, "RIGHT", -20, 0)
		newbutton.more.conditions.ResourceAmount:SetNumeric(true)
		newbutton.more.conditions.ResourceAmount:SetScript("OnKeyUp", function(self, text)
			self:GetParent().options.min_resource_to_cast = self:GetNumber()
			StoreConditions()
		end)
		newbutton.more.conditions.ResourceAmount:SetScript("OnMouseDown", function(self, c_button)
			if (c_button == "RightButton") then
				self:SetNumber("")
				self:GetParent().options.min_resource_to_cast = self:GetNumber()
			elseif (c_button == "LeftButton") and (self:GetNumber() == 0) then
				self:SetNumber("")
				self:GetParent().options.min_resource_to_cast = self:GetNumber()
			end
			StoreConditions()
		end)

		newbutton.more.conditions.ResourcePercent = MakeCheckBox("LEFT", newbutton.more.conditions.ResourceAmount, "RIGHT", "%")
		newbutton.more.conditions.ResourcePercent:SetScript("OnClick", function(self, ...)
			PlaySound(1115)
			newbutton.more.conditions.options.resource_by_percentage = self:GetChecked()
			if (newbutton.more.conditions.options.resource_by_percentage) then
				if (newbutton.more.conditions.ResourceAmount:GetNumber() > 100) then
					newbutton.more.conditions.ResourceAmount:SetNumber(100)
					newbutton.more.conditions.options.min_resource_to_cast = 100
				end
			end
			StoreConditions()
		end)
		newbutton.more.conditions.ResourcePercent:ClearAllPoints()
		newbutton.more.conditions.ResourcePercent:SetPoint("LEFT", newbutton.more.conditions.ResourceAmount, "RIGHT", -6, 1)
		newbutton.more.conditions.ResourcePercent.text:ClearAllPoints()
		newbutton.more.conditions.ResourcePercent.text:SetPoint("BOTTOM", newbutton.more.conditions.ResourcePercent, "TOP", 8, -4)

		newbutton.more.conditions.AltResourceDropDown = NewDropDownMenu("Alternate Resource Type", "AltResourceTypeChoice" .. newbutton.index, newbutton.more.conditions, AltResourceTypes, newbutton.more.conditions.options.alt_resource_type, newbutton.more.conditions.StackDropDown)
		newbutton.more.conditions.AltResourceDropDown:ClearAllPoints()
		newbutton.more.conditions.AltResourceDropDown:SetPoint("TOP", newbutton.more.conditions.ResourceAmount, "BOTTOM", -16, -12)
		CONDITIONERDROPDOWNMENU_SetWidth(newbutton.more.conditions.AltResourceDropDown, newbutton.more.conditions:GetWidth()*(3/5))

		newbutton.more.conditions.AltResourceCondition = NewDropDownMenu("Resource Condition", "AltResourceCondition" .. newbutton.index, newbutton.more.conditions, newbutton.more.alt_resource_choices, newbutton.more.conditions.options.alt_resource_condition, newbutton.more.conditions.DropDown)
		CONDITIONERDROPDOWNMENU_SetWidth(newbutton.more.conditions.AltResourceCondition, newbutton.more.conditions:GetWidth()*(1/5))
		newbutton.more.conditions.AltResourceCondition:ClearAllPoints()
		newbutton.more.conditions.AltResourceCondition:SetPoint("TOP", newbutton.more.conditions.AltResourceDropDown, "BOTTOM", -40, -12)
		newbutton.more.conditions.AltResourceCondition.text:ClearAllPoints()
		newbutton.more.conditions.AltResourceCondition.text:SetPoint("BOTTOM", newbutton.more.conditions.AltResourceCondition, "TOP", 40, -12)

		newbutton.more.conditions.AltResourceAmount = MakeEditBox(nil, "LEFT", newbutton.more.conditions.AltResourceCondition, "RIGHT", "", newbutton.more.conditions, 64, 32)
		newbutton.more.conditions.AltResourceAmount:ClearAllPoints()
		newbutton.more.conditions.AltResourceAmount:SetPoint("LEFT", newbutton.more.conditions.AltResourceCondition, "RIGHT", -20, 0)
		newbutton.more.conditions.AltResourceAmount:SetNumeric(true)
		newbutton.more.conditions.AltResourceAmount:SetScript("OnKeyUp", function(self, text)
			self:GetParent().options.alt_min_resource_to_cast = self:GetNumber()
			StoreConditions()
		end)
		newbutton.more.conditions.AltResourceAmount:SetScript("OnMouseDown", function(self, c_button)
			if (c_button == "RightButton") then
				self:SetNumber("")
				self:GetParent().options.alt_min_resource_to_cast = self:GetNumber()
			elseif (c_button == "LeftButton") and (self:GetNumber() == 0) then
				self:SetNumber("")
				self:GetParent().options.alt_min_resource_to_cast = self:GetNumber()
			end
			StoreConditions()
		end)

		newbutton.more.conditions.AltResourcePercent = MakeCheckBox("LEFT", newbutton.more.conditions.AltResourceAmount, "RIGHT", "%")
		newbutton.more.conditions.AltResourcePercent:SetScript("OnClick", function(self, ...)
			PlaySound(1115)
			newbutton.more.conditions.options.alt_resource_by_percentage = self:GetChecked()
			if (newbutton.more.conditions.options.alt_resource_by_percentage) then
				if (newbutton.more.conditions.AltResourceAmount:GetNumber() > 100) then
					newbutton.more.conditions.AltResourceAmount:SetNumber(100)
					newbutton.more.conditions.options.alt_min_resource_to_cast = 100
				end
			end
			StoreConditions()
		end)
		newbutton.more.conditions.AltResourcePercent:ClearAllPoints()
		newbutton.more.conditions.AltResourcePercent:SetPoint("LEFT", newbutton.more.conditions.AltResourceAmount, "RIGHT", -6, 1)
		newbutton.more.conditions.AltResourcePercent.text:ClearAllPoints()
		newbutton.more.conditions.AltResourcePercent.text:SetPoint("BOTTOM", newbutton.more.conditions.AltResourcePercent, "TOP", 8, -4)

		newbutton.more.conditions.HighlightOnly = MakeCheckBox("TOP", newbutton.more.conditions.AuraEdit, "BOTTOM", "Highlight\nOnly")
		newbutton.more.conditions.HighlightOnly:ClearAllPoints()
		newbutton.more.conditions.HighlightOnly:SetPoint("TOP", newbutton.more.conditions.AuraEdit, "BOTTOM", -newbutton.more.conditions:GetWidth()*(1/5), -125)
		newbutton.more.conditions.HighlightOnly:SetScript("OnClick", function(self, ...) PlaySound(1115) newbutton.more.conditions.options.highlight_only = self:GetChecked() StoreConditions() end)
		newbutton.more.conditions.HighlightOnly.tooltip = "Highlight Only"
		newbutton.more.conditions.HighlightOnly.tooltipdesc = "Your spell will be displayed if it has that glowing golden outline surrounding it, like when Pyroblast has a highlight from Hot Streak!"

		newbutton.more.conditions.OnlyWhenReady = MakeCheckBox("TOP", newbutton.more.conditions.AuraEdit, "BOTTOM", "Only When\nReady")
		newbutton.more.conditions.OnlyWhenReady:ClearAllPoints()
		newbutton.more.conditions.OnlyWhenReady:SetPoint("TOP", newbutton.more.conditions.AuraEdit, "BOTTOM", newbutton.more.conditions:GetWidth()*(1/5), -125)
		newbutton.more.conditions.OnlyWhenReady:SetScript("OnClick", function(self, ...) PlaySound(1115) newbutton.more.conditions.options.only_when_ready = self:GetChecked() StoreConditions() end)
		newbutton.more.conditions.OnlyWhenReady.tooltip = "Only When Ready"
		newbutton.more.conditions.OnlyWhenReady.tooltipdesc = "Your spell will be displayed if it is off cooldown or within 1 global cooldown of being ready!"

		newbutton.more.conditions.ChargeDropDown = NewDropDownMenu("Number of Charges", "ChargeCondition" .. newbutton.index, newbutton.more.conditions, newbutton.more.charge_choices, newbutton.more.conditions.options.charge_conditional, newbutton.more.conditions.AltResourceAmount)
		CONDITIONERDROPDOWNMENU_SetWidth(newbutton.more.conditions.ChargeDropDown, newbutton.more.conditions:GetWidth()*(1/5))
		newbutton.more.conditions.ChargeDropDown:ClearAllPoints()
		newbutton.more.conditions.ChargeDropDown:SetPoint("TOP", newbutton.more.conditions.AltResourceAmount, "BOTTOM", -32, -10)
		newbutton.more.conditions.ChargeDropDown.text:ClearAllPoints()
		newbutton.more.conditions.ChargeDropDown.text:SetPoint("BOTTOM", newbutton.more.conditions.ChargeDropDown, "TOP", 16, -12)

		newbutton.more.conditions.NumCharges = MakeEditBox(nil, "LEFT", newbutton.more.conditions.ChargeDropDown, "RIGHT", "", newbutton.more.conditions, 32, 32)
		newbutton.more.conditions.NumCharges:SetNumeric(true)
		newbutton.more.conditions.NumCharges:ClearAllPoints()
		newbutton.more.conditions.NumCharges:SetPoint("LEFT", newbutton.more.conditions.ChargeDropDown, "RIGHT", -20, 0)
		newbutton.more.conditions.NumCharges:SetScript("OnKeyUp", function(self, text)
			if (self:GetNumber() > 99) then
				self:SetNumber(99)
			elseif (self:GetNumber() <= 0) then
				self:SetNumber(0)
			end
			self:GetParent().options.num_charges = self:GetNumber()
			StoreConditions()
		end)
		newbutton.more.conditions.NumCharges:SetScript("OnMouseDown", function(self, c_button)
			if (c_button == "RightButton") then
				self:SetNumber("")
				self:GetParent().options.num_charges = self:GetNumber()
			elseif (c_button == "LeftButton") and (self:GetNumber() == 0) then
				self:SetNumber("")
				self:GetParent().options.num_charges = self:GetNumber()
			end
			StoreConditions()
		end)

		newbutton.more:SetScript("OnEnter", function(self)
			local buttonState = self:GetText()
			GameTooltip:SetOwner(self, "ANCHOR_LEFT", 0, 0);
			GameTooltip:SetText("Conditioner", 1, 1, 1, true);
			if (buttonState == ">") then
				GameTooltip:AddLine("View Conditions", nil, nil, nil, true);
			else
				GameTooltip:AddLine("Hide Conditions", nil, nil, nil, true);
			end
			GameTooltip:Show();
		end)

		newbutton.more:SetScript("OnLeave", function(self)
			GameTooltip:Hide()
		end)

		newbutton.more:SetScript("OnClick", function(self, ...)
			ConditionerTutorial_Dismiss(5)
			ConditionerTutorial_Alert(6, self.conditions.UseCondition, self.conditions.UseCondition)
			ConditionerTutorial_Alert(7, newbutton.more.conditions.closebutton, newbutton.more.conditions.UseCondition)
			PlaySound(1115)
			DistributeSavedVars()
			menu_options:Hide()
			if (newbutton.more.conditions:IsShown()) then
				newbutton.more.conditions:Hide()
				newbutton.more:SetText(">")
			else
				for k,v in pairs(condition_buttons) do
					v.conditions.DispelDropDown.Options:Hide()
					if (v == newbutton.more) then
						v.conditions:Show()
						v:SetText("<")
					else
						v.conditions:Hide()
						v:SetText(">")
					end
					v.conditions.AuraEdit:SetText(v.conditions.options.active_aura)
					v.conditions.MaintainAura:SetChecked(v.conditions.options.maintain_aura)
					v.conditions.MaintainAura.TimeLeft:SetNumber(v.conditions.options.duration_remaining)
					v.conditions.Interrupt:SetChecked(v.conditions.options.is_interrupt)
					v.conditions.OnlyWhenReady:SetChecked(v.conditions.options.only_when_ready)
					v.conditions.ResourcePercent:SetChecked(v.conditions.options.resource_by_percentage)
					v.conditions.ResourceAmount:SetNumber(v.conditions.options.min_resource_to_cast)
					v.conditions.AltResourcePercent:SetChecked(v.conditions.options.alt_resource_by_percentage)
					v.conditions.AltResourceAmount:SetNumber(v.conditions.options.alt_min_resource_to_cast)
					v.conditions.NumStacks:SetNumber(v.conditions.options.num_stacks)
					v.conditions.HotKey:SetText(v.conditions.options.key_binding)
					v.conditions.HighlightOnly:SetChecked(v.conditions.options.highlight_only)
					v.conditions.NumCharges:SetNumber(v.conditions.options.num_charges)
					if (newbutton.more.conditions.options.use_condition) then
						v.conditions.UseCondition:SetText("Currently: Enabled")
						v.conditions:SetTextColors(true)
					else
						v.conditions.UseCondition:SetText("Currently: Disabled")
						v.conditions:SetTextColors(false)
					end
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.DropDown, v.target_choices[v.conditions.options.aura_target])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.StackDropDown, v.stack_choices[v.conditions.options.stack_conditional])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.ResourceDropDown, ResourceTypes[v.conditions.options.resource_type])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.ResourceCondition, v.resource_choices[v.conditions.options.resource_condition])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.AltResourceDropDown, AltResourceTypes[v.conditions.options.alt_resource_type])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.AltResourceCondition, v.alt_resource_choices[v.conditions.options.alt_resource_condition])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.ChargeDropDown, v.charge_choices[v.conditions.options.charge_conditional])
				end
			end
			StoreConditions()
		end)

		newbutton.more.conditions.closebutton:SetScript("OnClick", function(self, ...)
			PlaySound(1115)
			ConditionerTutorial_Dismiss(7)
			ConditionerTutorial_Alert(8, ConditionerWatchFrame0)
			DistributeSavedVars()
			menu_options:Hide()
			if (newbutton.more.conditions:IsShown()) then
				newbutton.more.conditions:Hide()
				newbutton.more:SetText(">")
			else
				for k,v in pairs(condition_buttons) do
					v.conditions.DispelDropDown.Options:Hide()
					if (v == newbutton.more) then
						v.conditions:Show()
						v:SetText("<")
					else
						v.conditions:Hide()
						v:SetText(">")
					end
					v.conditions.AuraEdit:SetText(v.conditions.options.active_aura)
					v.conditions.MaintainAura:SetChecked(v.conditions.options.maintain_aura)
					v.conditions.MaintainAura.TimeLeft:SetNumber(v.conditions.options.duration_remaining)
					v.conditions.Interrupt:SetChecked(v.conditions.options.is_interrupt)
					v.conditions.OnlyWhenReady:SetChecked(v.conditions.options.only_when_ready)
					v.conditions.ResourcePercent:SetChecked(v.conditions.options.resource_by_percentage)
					v.conditions.ResourceAmount:SetNumber(v.conditions.options.min_resource_to_cast)
					v.conditions.AltResourcePercent:SetChecked(v.conditions.options.alt_resource_by_percentage)
					v.conditions.AltResourceAmount:SetNumber(v.conditions.options.alt_min_resource_to_cast)
					v.conditions.NumStacks:SetNumber(v.conditions.options.num_stacks)
					v.conditions.HotKey:SetText(v.conditions.options.key_binding)
					v.conditions.HighlightOnly:SetChecked(v.conditions.options.highlight_only)
					v.conditions.NumCharges:SetNumber(v.conditions.options.num_charges)
					if (newbutton.more.conditions.options.use_condition) then
						v.conditions.UseCondition:SetText("Currently: Enabled")
						v.conditions:SetTextColors(true)
					else
						v.conditions.UseCondition:SetText("Currently: Disabled")
						v.conditions:SetTextColors(false)
					end
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.DropDown, v.target_choices[v.conditions.options.aura_target])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.StackDropDown, v.stack_choices[v.conditions.options.stack_conditional])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.ResourceDropDown, ResourceTypes[v.conditions.options.resource_type])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.ResourceCondition, v.resource_choices[v.conditions.options.resource_condition])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.AltResourceDropDown, AltResourceTypes[v.conditions.options.alt_resource_type])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.AltResourceCondition, v.alt_resource_choices[v.conditions.options.alt_resource_condition])
					CONDITIONERDROPDOWNMENU_SetText(v.conditions.ChargeDropDown, v.charge_choices[v.conditions.options.charge_conditional])
				end
			end
			StoreConditions()
		end)

		function newbutton.more.conditions:SetTextColors(enable)
			if (enable) then
				self.DropDown.text:SetTextColor(0,1,0,1)
				self.StackDropDown.text:SetTextColor(0,1,0,1)
				self.ResourceDropDown.text:SetTextColor(0,1,0,1)
				self.ResourceCondition.text:SetTextColor(0,1,0,1)
				self.ResourcePercent.text:SetTextColor(0,1,0,1)
				self.AltResourceDropDown.text:SetTextColor(0,1,0,1)
				self.AltResourceCondition.text:SetTextColor(0,1,0,1)
				self.AltResourcePercent.text:SetTextColor(0,1,0,1)
				self.AuraEdit.text:SetTextColor(0,1,0,1)
				self.MaintainAura.text:SetTextColor(0,1,0,1)
				self.MaintainAura.TimeLeft.text:SetTextColor(0,1,0,1)
				self.Interrupt.text:SetTextColor(0,1,0,1)
				self.OnlyWhenReady.text:SetTextColor(0,1,0,1)
				self.HighlightOnly.text:SetTextColor(0,1,0,1)
				self.ChargeDropDown.text:SetTextColor(0,1,0,1)
			else
				self.DropDown.text:SetTextColor(1,0,0,1)
				self.StackDropDown.text:SetTextColor(1,0,0,1)
				self.ResourceDropDown.text:SetTextColor(1,0,0,1)
				self.ResourceCondition.text:SetTextColor(1,0,0,1)
				self.ResourcePercent.text:SetTextColor(1,0,0,1)
				self.AltResourceDropDown.text:SetTextColor(1,0,0,1)
				self.AltResourceCondition.text:SetTextColor(1,0,0,1)
				self.AltResourcePercent.text:SetTextColor(1,0,0,1)
				self.AuraEdit.text:SetTextColor(1,0,0,1)
				self.MaintainAura.text:SetTextColor(1,0,0,1)
				self.MaintainAura.TimeLeft.text:SetTextColor(1,0,0,1)
				self.Interrupt.text:SetTextColor(1,0,0,1)
				self.OnlyWhenReady.text:SetTextColor(1,0,0,1)
				self.HighlightOnly.text:SetTextColor(1,0,0,1)
				self.ChargeDropDown.text:SetTextColor(1,0,0,1)
			end
		end

		function newbutton.more.conditions.options:Init()
			self.use_condition = false
			self.clip_gcd = true
			self.active_aura = ""
			self.key_binding = ""
			self.maintain_aura = false
			self.is_interrupt = false
			self.aura_target = 1
			self.num_stacks = 0
			self.stack_conditional = 1
			self.resource_type = 1
			self.resource_condition = 1
			self.min_resource_to_cast = 0
			self.resource_by_percentage = false
			self.alt_resource_type = 1
			self.alt_resource_condition = 1
			self.alt_min_resource_to_cast = 0
			self.alt_resource_by_percentage = false 
			self.highlight_only = false
			self.num_charges = 0
			self.charge_conditional = 1
			self.duration_remaining = 0
			self.dispel_mask = 0
			self.bufftype_mask = 0
			self.only_when_ready = false
			StoreConditions()
		end

		function newbutton.more.conditions.options:Get()
			local vals = {}
			for k,v in pairs(self) do
				vals[k] = v
			end
			return vals
		end

		function newbutton.more.conditions.options:Set(newvals)
			for k,v in pairs(newvals) do
				self[k] = v
			end
			StoreConditions()
		end

		function newbutton:SetSlot(slotID)
			if (slotID) then
				self.watchedSlot = slotID
			else
				if (self.watchedSlot > 0) and (self.watchedSlot <= #watched_frames) then
					watched_frames[self.watchedSlot].Duration:Hide()
					watched_frames[self.watchedSlot].text:SetText("")
					watched_frames[self.watchedSlot].text:SetTextColor(1,1,1,0.5)
				end
				self.watchedSlot = 0
			end
		end

		function newbutton:GetSlot()
			local value = false
			if (self.watchedSlot > 0) and (self.watchedSlot <= #watched_frames) then
				value = self.watchedSlot
			end
			return value
		end

		function newbutton:Condition()
			local state = false
			local mySlotID = self:GetSlot()
			local my_id = self.spellID
			local my_itemid = self.itemID
			if (mySlotID) then
				watched_frames[mySlotID].hotkeytext:SetText(self.more.conditions.options.key_binding)
				watched_frames[mySlotID].hotkeytext:SetTextHeight(watched_frames[mySlotID]:GetHeight()*(1/3))
				local RangeName = GetSpellInfo(my_id)
				local inRange = IsSpellInRange(RangeName)
				if (inRange) and (inRange == 0) then
					watched_frames[mySlotID].hotkeytext:SetTextColor(1,0,0,1)
				else
					watched_frames[mySlotID].hotkeytext:SetTextColor(0,1,1,1)
				end
			end
			local known = FindSpellBookSlotBySpellID(my_id)
			local itemCount = GetItemCount(my_itemid)
			if (not known) and ((my_itemid == 0) or (itemCount < 1))then
				return false
			else
				local byname = GetSpellInfo(my_id)
				local ispassive = IsPassiveSpell(byname)
				if (ispassive) then
					return false
				end
			end
			local interrupt_spellName = ""
			if (self.more.conditions.options.use_condition) then
				local my_target = self.more.target_choices_enum[self.more.conditions.options.aura_target]
				local my_target_id = self.more.conditions.options.aura_target
				local reactionType = UnitReaction("player", my_target)
				local isDead = UnitIsDead(my_target)

				if (isDead) then
					return false
				end
				
				if (reactionType) then
					if (my_target_id == 3 or my_target_id == 6) and (reactionType < 5) then
						return false
					elseif (my_target_id == 4 or my_target_id == 7) and (reactionType > 4) then
						return false
					end
				else
					if (my_target_id == 1 or my_target_id == 8  or my_target_id == 3) then
						--nothing
					else
						return false
					end
				end
				local watched_aura_name = self.more.conditions.options.active_aura
				local duration_condition = self.more.conditions.options.duration_remaining
				local my_haste = GetHaste()/100
				local GCD = base_GCD/(1 + my_haste)
				GCD = math.max(GCD, 0.75)

				local should_interrupt = self.more.conditions.options.is_interrupt
				local cast_spell, garbage_var, garbage_var, cast_texture, icstart, endcast, garbage_var, garbage_var, uninterruptable = UnitCastingInfo("target")
				local channel_spell, garbage_var, garbage_var, channel_texture, ichstart, endchannel, garbage_var, notInterruptible = UnitChannelInfo("target")
				local endtime = endcast or endchannel
				local starttime = icstart or ichstart
				local condition_interrupt = false
				local condition_aura_active = false

				local spell_name, garbage_var, spell_texture, spell_stacks, garbage_var, spell_duration, expire_time, spell_caster, cansteal, onnameplate, spell_id, canapply, garbage_var, garbage_var, garbage_var, timemod, garbage_var, garbage_var, garbage_var = UnitBuff(my_target,watched_aura_name, nil, "PLAYER")

				if (not spell_name) then
					spell_name, garbage_var, spell_texture, spell_stacks, garbage_var, spell_duration, expire_time, spell_caster, cansteal, onnameplate, spell_id, canapply, garbage_var, garbage_var, garbage_var, timemod, garbage_var, garbage_var, garbage_var = UnitDebuff(my_target,watched_aura_name, nil, "PLAYER")
				end

				local wanted_dispel_masks = self.more.conditions.options.dispel_mask
				local wanted_bufftype_masks = self.more.conditions.options.bufftype_mask

				local DispelCondition = true
				if (wanted_dispel_masks > 0) then
					DispelCondition = ConditionerAuraCheck(my_target, wanted_dispel_masks, wanted_bufftype_masks)
				end

				local spell_charges, max_charges
				local charge_condition = true
				local desired_charges = self.more.conditions.options.num_charges
				if (desired_charges > 0) then
					spell_charges, max_charges, garbage_var, garbage_var = GetSpellCharges(my_id)
					if (not spell_charges) then
						spell_charges = 0
					end
					local condition_charge_operator = self.more.conditions.options.charge_conditional
					if (condition_charge_operator == 1) then
						charge_condition = (spell_charges == desired_charges)
					elseif (condition_charge_operator == 2) then
						charge_condition = (spell_charges < desired_charges)
					elseif (condition_charge_operator == 3) then
						charge_condition = (spell_charges > desired_charges)
					elseif (condition_charge_operator == 4) then
						charge_condition = (spell_charges <= desired_charges)
					elseif (condition_charge_operator == 5) then
						charge_condition = (spell_charges >= desired_charges)
					elseif (condition_charge_operator == 6) then
						charge_condition = (spell_charges ~= desired_charges)
					end
				end

				local wants_highlight = self.more.conditions.options.highlight_only
				local highlight_condition = true

				if (wants_highlight) then
					highlight_condition = IsSpellOverlayed(my_id)
				end

				local spell_to_interrupt = cast_spell or channel_spell
				interrupt_spellName = spell_to_interrupt

				if (not should_interrupt) then
					condition_interrupt = true
				else
					if (cast_spell) or (channel_spell) then
						if (not uninterruptable) and (not notInterruptible) then
							local interrupt_name = GetSpellInfo(self.spellID)
							local interrupt_start, interrupt_duration, garbage_var = GetSpellCooldown(interrupt_name)
							if (not interrupt_start) then
								interrupt_start, interrupt_duration, garbage_var = GetSpellCooldown(self.spellID)
							end
							local interrupt_endtime = (interrupt_start + interrupt_duration)*1000
							if (interrupt_endtime < endtime) then
								if (not watched_aura_name) or (watched_aura_name == "") then
									condition_interrupt = true
								else
									if (watched_aura_name:lower() == spell_to_interrupt:lower()) then
										condition_interrupt = true
										condition_aura_active = true
									else
										condition_interrupt = false
									end
								end
							else
								condition_interrupt = false
							end
						else
							condition_interrupt = false
						end
					end
				end

				if (not condition_interrupt) then
					for k,v in pairs(watched_frames) do
						if (v.interruptFrame) then
							v.interruptFrame:Hide()
						end
					end
				else
					if (should_interrupt) then
						if (watched_frames[mySlotID]) then
							local s_texture = cast_texture or channel_texture
							if (not watched_frames[mySlotID].interruptFrame) then
								watched_frames[mySlotID].interruptFrame = CreateFrame("Frame")
								watched_frames[mySlotID].interruptFrameTexture = watched_frames[mySlotID].interruptFrame:CreateTexture()
								watched_frames[mySlotID].interruptFrame.FillBar = CreateFrame("Frame", nil, watched_frames[mySlotID].interruptFrame)
								watched_frames[mySlotID].interruptFrame.FillBarTexture = watched_frames[mySlotID].interruptFrame.FillBar:CreateTexture()
								watched_frames[mySlotID].interruptFrame.Text = watched_frames[mySlotID].interruptFrame.FillBar:CreateFontString(nil, "OVERLAY", "SystemFont_NamePlateCastBar") --SystemFont_NamePlateCastBar 
							end

							if (watched_frames[mySlotID].interruptFrame) then
								watched_frames[mySlotID].interruptFrame:SetSize(watched_frames[mySlotID]:GetWidth()*0.25, watched_frames[mySlotID]:GetHeight()*0.25)
								if (xl_ChildPosition == 2) then
									watched_frames[mySlotID].interruptFrame:ClearAllPoints()
									watched_frames[mySlotID].interruptFrame:SetPoint("TOPLEFT", watched_frames[mySlotID], "BOTTOMLEFT")
								else
									watched_frames[mySlotID].interruptFrame:ClearAllPoints()
									watched_frames[mySlotID].interruptFrame:SetPoint("BOTTOMLEFT", watched_frames[mySlotID], "TOPLEFT")
								end
								watched_frames[mySlotID].interruptFrameTexture:SetTexture(s_texture)
								watched_frames[mySlotID].interruptFrameTexture:SetAllPoints(watched_frames[mySlotID].interruptFrame)

								watched_frames[mySlotID].interruptFrame.FillBar:SetPoint("TOPLEFT", watched_frames[mySlotID].interruptFrame, "TOPRIGHT")
								watched_frames[mySlotID].interruptFrame.FillBar:SetPoint("BOTTOMLEFT", watched_frames[mySlotID].interruptFrame, "BOTTOMRIGHT")

								watched_frames[mySlotID].interruptFrame.FillBar:SetPoint("RIGHT", watched_frames[mySlotID], "RIGHT")

								watched_frames[mySlotID].interruptFrame.FillBarTexture:SetPoint("TOPLEFT", watched_frames[mySlotID].interruptFrame.FillBar, "TOPLEFT")
								watched_frames[mySlotID].interruptFrame.FillBarTexture:SetPoint("BOTTOMLEFT", watched_frames[mySlotID].interruptFrame.FillBar, "BOTTOMLEFT")
								watched_frames[mySlotID].interruptFrame.FillBarTexture:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-BarFill")
								
								watched_frames[mySlotID].interruptFrame.FillBarTexture:SetGradient("HORIZONTAL", 0, 1, 1, 0, 1, 1)
							
								watched_frames[mySlotID].interruptFrame.Text:SetPoint("LEFT", watched_frames[mySlotID].interruptFrame, "RIGHT")
								watched_frames[mySlotID].interruptFrame.Text:SetText(interrupt_spellName)

								watched_frames[mySlotID].interruptFrame:Show()
							end
						end
					else
						if (mySlotID and watched_frames[mySlotID]) then
							if (watched_frames[mySlotID].interruptFrame) then
								watched_frames[mySlotID].interruptFrame:Hide()
							end
						end
					end
				end

				if (endtime) and (condition_interrupt) and (should_interrupt) then
					expire_time = endtime/1000
					timemod = 1
					spell_duration = (endtime - starttime)/1000
				end

				local my_resource_type = self.more.conditions.options.resource_type
				local current_power = 0
				local max_power = 0

				if (my_resource_type == #ResourceTypes) then
					current_power = UnitHealth("target")
					max_power = UnitHealthMax("target")
				elseif (my_resource_type == (#ResourceTypes-1)) then
					current_power = UnitHealth("player")
					max_power = UnitHealthMax("player")
				elseif (my_resource_type == (#ResourceTypes-2)) then
					current_power = UnitHealth("pet")
					max_power = UnitHealthMax("pet")
				elseif (my_resource_type == (#ResourceTypes-3)) then
					current_power = UnitHealth("targettarget")
					max_power = UnitHealthMax("targettarget")
				elseif (my_resource_type == (#ResourceTypes-4)) then
					current_power = UnitHealth("focus")
					max_power = UnitHealthMax("focus")
				else
					current_power = UnitPower("player", my_resource_type-1, false)
					max_power = UnitPowerMax("player", my_resource_type-1)
				end

				local desired_power = self.more.conditions.options.min_resource_to_cast
				local power_by_percent = self.more.conditions.options.resource_by_percentage
				local resource_conditional = self.more.conditions.options.resource_condition

				local condition_resources = false

				local power_desired = desired_power
				local power_current = current_power
				if (power_by_percent) then
					power_desired = desired_power/100*math.max(max_power, 1)
				end

				if (resource_conditional == 1) then
					condition_resources = (power_current == power_desired)
				elseif (resource_conditional == 2) then
					condition_resources = (power_current < power_desired)
				elseif (resource_conditional == 3) then
					condition_resources = (power_current > power_desired)
				elseif (resource_conditional == 4) then
					condition_resources = (power_current <= power_desired)
				elseif (resource_conditional == 5) then
					condition_resources = (power_current >= power_desired)
				elseif (resource_conditional == 6) then
					condition_resources = (power_current ~= power_desired)
				end

				if ((not desired_power) or (desired_power == 0)) then
					condition_resources = true
				end

				local alt_my_resource_type = self.more.conditions.options.alt_resource_type
				local alt_current_power = 0
				local alt_max_power = 0

				if (alt_my_resource_type == #AltResourceTypes) then
					alt_current_power = UnitHealth("target")
					alt_max_power = UnitHealthMax("target")
				elseif (alt_my_resource_type == (#AltResourceTypes-1)) then
					alt_current_power = UnitHealth("player")
					alt_max_power = UnitHealthMax("player")
				elseif (alt_my_resource_type == (#AltResourceTypes-2)) then
					alt_current_power = UnitHealth("pet")
					alt_max_power = UnitHealthMax("pet")
				elseif (alt_my_resource_type == (#AltResourceTypes-3)) then
					alt_current_power = UnitHealth("targettarget")
					alt_max_power = UnitHealthMax("targettarget")
				elseif (alt_my_resource_type == (#AltResourceTypes-4)) then
					alt_current_power = UnitHealth("focus")
					alt_max_power = UnitHealthMax("focus")
				else
					alt_current_power = UnitPower("player", alt_my_resource_type-1, false)
					alt_max_power = UnitPowerMax("player", alt_my_resource_type-1)
				end

				local alt_desired_power = self.more.conditions.options.alt_min_resource_to_cast
				local alt_power_by_percent = self.more.conditions.options.alt_resource_by_percentage
				local alt_resource_conditional = self.more.conditions.options.alt_resource_condition

				local alt_condition_resources = false

				local alt_power_desired = alt_desired_power
				local alt_power_current = alt_current_power
				if (alt_power_by_percent) then
					alt_power_desired = alt_desired_power/100*math.max(alt_max_power, 1)
				end

				if (alt_resource_conditional == 1) then
					alt_condition_resources = (alt_power_current == alt_power_desired)
				elseif (alt_resource_conditional == 2) then
					alt_condition_resources = (alt_power_current < alt_power_desired)
				elseif (alt_resource_conditional == 3) then
					alt_condition_resources = (alt_power_current > alt_power_desired)
				elseif (alt_resource_conditional == 4) then
					alt_condition_resources = (alt_power_current <= alt_power_desired)
				elseif (alt_resource_conditional == 5) then
					alt_condition_resources = (alt_power_current >= alt_power_desired)
				elseif (alt_resource_conditional == 6) then
					alt_condition_resources = (alt_power_current ~= alt_power_desired)
				end

				if ((not alt_desired_power) or (alt_desired_power == 0)) then
					alt_condition_resources = true
				end

				local condition_maintain = self.more.conditions.options.maintain_aura
				
				local condition_stacks = self.more.conditions.options.num_stacks
				local condition_stack_operator = self.more.conditions.options.stack_conditional
				local condition_stack_bool = false

				if (not spell_stacks) then
					spell_stacks = 0
				end
				local time_left = 0

				local RTB_Reroll, RTB_Count = false, 0
				local rtb_string, rtb_threshold = strsplit(",", tostring(watched_aura_name), 0)
				if (rtb_threshold) then
					rtb_threshold = tonumber(rtb_threshold)
				end
				if (rtb_string:lower() == "roll the bones") then
					RTB_Reroll, RTB_Count, spell_name, spell_duration, expire_time, timemod = ShouldRerollRTB(rtb_threshold)
				end

				if ((spell_name) or (watched_aura_name == "")) then
					condition_aura_active = true
					if (RTB_Reroll) then
						condition_aura_active = false
					end
				end

				if (spell_stacks) then
					if (condition_stacks) then
						if (condition_stacks > 0) then
							if (condition_stack_operator == 1) then
								condition_stack_bool = (spell_stacks == condition_stacks)
							elseif (condition_stack_operator == 2) then
								condition_stack_bool = (spell_stacks < condition_stacks)
							elseif (condition_stack_operator == 3) then
								condition_stack_bool = (spell_stacks > condition_stacks)
							elseif (condition_stack_operator == 4) then
								condition_stack_bool = (spell_stacks <= condition_stacks)
							elseif (condition_stack_operator == 5) then
								condition_stack_bool = (spell_stacks >= condition_stacks)
							elseif (condition_stack_operator == 6) then
								condition_stack_bool = (spell_stacks ~= condition_stacks)
							end
						else
							condition_stack_bool = true
						end
					else
						condition_stack_bool = true
					end
				end

				local maintain_bool = false
				if (condition_maintain) then
					if (condition_aura_active) then
						if (expire_time) then
							time_left = (expire_time - GetTime())/timemod
							local timeCompare = 0
							if (duration_condition) and (duration_condition > 0) then
								timeCompare = duration_condition
							end
							if (time_left <= timeCompare) and (time_left > 0) then
								maintain_bool = true
								condition_stack_bool = true
							end
						else
							maintain_bool = true
						end
					else
						maintain_bool = true
					end
				else
					maintain_bool = condition_aura_active
				end

				if (condition_stack_bool) and (condition_stacks > 0) then
					maintain_bool = true
				end

				if (mySlotID) then
					if (maintain_bool) and (condition_stack_bool) and (condition_resources) and (alt_condition_resources) and (DispelCondition) then
						if (expire_time) then
							time_left = (expire_time - GetTime())/timemod
							local scalar = 0.5
							watched_frames[mySlotID].text:SetTextHeight(watched_frames[mySlotID]:GetHeight()*scalar)
							watched_frames[mySlotID].text:SetText(string.format("%.1f",time_left))
							local percent_remaining = (1 - time_left/spell_duration)
							watched_frames[mySlotID].Duration:SetSize(watched_frames[mySlotID]:GetWidth(), watched_frames[mySlotID]:GetHeight()*percent_remaining)
							watched_frames[mySlotID].Duration:Show()
							watched_frames[mySlotID].text:SetTextColor(percent_remaining, 1-percent_remaining , 0)

							if (watched_frames[mySlotID].interruptFrame and watched_frames[mySlotID].interruptFrame.FillBarTexture) then
								watched_frames[mySlotID].interruptFrame.FillBarTexture:SetWidth((1-percent_remaining)*watched_frames[mySlotID].interruptFrame.FillBar:GetWidth())
							end

							if (time_left <= 0) then
								watched_frames[mySlotID].text:SetText("")
								watched_frames[mySlotID].Duration:Hide()
								watched_frames[mySlotID].text:SetTextColor(1,1,1,0.5)
							end
						else
							watched_frames[mySlotID].text:SetText("")
							watched_frames[mySlotID].Duration:Hide()
							watched_frames[mySlotID].text:SetTextColor(1,1,1,0.5)
						end
					end

					if (not expire_time) then
						watched_frames[mySlotID].text:SetText("")
						watched_frames[mySlotID].Duration:Hide()
						watched_frames[mySlotID].text:SetTextColor(1,1,1,0.5)
					end
				end

				if (maintain_bool) and (condition_stack_bool) and (condition_resources) and (alt_condition_resources) and (condition_interrupt) and (charge_condition) and (highlight_condition) and (DispelCondition) then
					state = true
				end
			else
				state = true
				if (mySlotID) then
					watched_frames[mySlotID].text:SetText("")
					watched_frames[mySlotID].Duration:Hide()
					watched_frames[mySlotID].text:SetTextColor(1,1,1,0.5)
					if (watched_frames[mySlotID].interruptFrame) then
						watched_frames[mySlotID].interruptFrame:Hide()
					end
				end
			end
			return state
		end

		newbutton.more.conditions:Hide()
	end
	newbutton:RegisterForClicks("LeftButtonDown","RightButtonDown")
	newbutton:SetScript("OnClick", function(self, c_button, down)
		if (c_button == "LeftButton") then
			AddToPrioList(fortable, self, listline)
			ConditionerTutorial_Dismiss(2)
			ConditionerTutorial_Alert(3, _G['ConditionerPriorityButton' .. FirstEmptySlot(priority_buttons) - 1])
		elseif (c_button == "RightButton") then
			if (xl_conditionertutorial.current_step == 4) and (xl_conditionertutorial[4] == 0) then
				--don't let them remove from the list just during the tutorial
			else
				RemoveFromPrioList(fortable, self)
			end
			PlaySound(1115)
			ConditionerTutorial_Dismiss(3)
			ConditionerTutorial_Alert(4, _G['ConditionerPriorityButton' .. #priority_buttons-2])
		end
	end)

	newbutton:SetScript("OnEnter", function(self) 
		if (self.index > 1) then
			if (self.spellID and self.spellID > 0) then
				GameTooltip:SetOwner(self, "ANCHOR_RIGHT", 0, 0);
				if (self.itemID ~= 0) then
					GameTooltip:SetItemByID(self.itemID);
				else
					GameTooltip:SetSpellByID(self.spellID);
				end
				local cursorType,cursorItemID,garbage_var,hasSpell = GetCursorInfo()
				if (cursorType == "item") then
					garbage_var, garbage_var, hasSpell = GetItemSpell(cursorItemID)
				else
					cursorItemID = 0
				end
				if (hasSpell) then
					GameTooltip:AddLine("\nLeft Click - Insert Spell\nRight Click - Cancel Placement", nil, nil, nil, true);
				else
					if (not UnitAffectingCombat("player")) then
						GameTooltip:AddLine("\nLeft Click - Pick Up\nRight Click - Delete", nil, nil, nil, true);
					else
						GameTooltip:AddLine("\nRight Click - Delete", nil, nil, nil, true);
					end
				end
				GameTooltip:Show();
			end
		else
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT", 0, 0);
			GameTooltip:SetText("Conditioner", 1, 1, 1, true);
			GameTooltip:AddLine("Drag spells here to add them to the end of the priority list. You can also insert spells anywhere.", nil, nil, nil, true);
			GameTooltip:SetMinimumWidth(150);
			GameTooltip:Show();
		end
	end)

	newbutton:SetScript("OnLeave", function(self) 
		GameTooltip:Hide();
	end)

	return newbutton
end

function NewEdgeFile(thickness)
	local edgeprops = {
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Background",  
		edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Border",
		tile = false,
		tileSize = 128,
		edgeSize = thickness,
		insets = {
			left = 0,
			right = 0,
			top = 0,
			bottom = 0
		}
	}
	return edgeprops
end

function NewWatchFrame(size, parent, ...)
	local watchID = #watched_frames or 0
	local newframe = CreateFrame("Frame", "ConditionerWatchFrame" .. watchID)
	newframe.edge = CreateFrame("Frame", nil, newframe)
	newframe.edge:Hide()
	newframe.level = newframe:GetFrameLevel()
	newframe.cooldown = CreateFrame("Cooldown", nil, newframe, "CooldownFrameTemplate")
	newframe.texture = newframe:CreateTexture()
	newframe:Hide()
	newframe.canDrag = false
	newframe.tempDrag = false
	newframe.cycleNameplatePositions = false
	if (parent == SpellActivationOverlayFrame) then
		newframe.canDrag = true
		newframe:EnableMouse(true)
		newframe:SetClampedToScreen(true)

		newframe:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, 0);
			GameTooltip:SetText("Conditioner", 1, 1, 1, true);
			GameTooltip:AddLine("Left Click - Drag\nRight Click - Rotate\nCtrl+Right Click - Pivot\nMouse Wheel - Scale", nil, nil, nil, true);
			GameTooltip:Show();
		end)

		newframe:SetScript("OnLeave", function(self)
			GameTooltip:Hide()
		end)
		
	end
	newframe:SetMovable(true)
	newframe:RegisterForDrag("LeftButton")
	newframe:SetScript("OnMouseWheel", function(self, delta)
		if (isEditMode) then
			if (self.canDrag) then
				local x,y,w,h = self:GetBoundsRect()
				xl_LocX = x + w/2
				xl_LocY = y + h/2
				xl_DesiredScale = xl_DesiredScale + delta*10
				if (xl_DesiredScale < MinScale) then
					xl_DesiredScale = MinScale
				end
				if (xl_DesiredScale > MaxScale) then
					xl_DesiredScale = MaxScale
				end
				UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
			end
			ConditionerTutorial_Alert(8, ConditionerWatchFrame0)
			ConditionerTutorial_Dismiss(8)
			ConditionerTutorial_Alert(9, ConditionerWatchFrame0)
		end
	end)
	newframe:SetScript("OnMouseDown", function(self, c_button)
		if (self.canDrag) then
			if (c_button == "RightButton") then
				if (IsControlKeyDown()) then
					if (xl_current_target_dock < #target_dock_side) then
						xl_current_target_dock = xl_current_target_dock + 1
						if (xl_conditionertutorial.current_step == 13) then
							ConditionerTutorialFrame.text:SetText("|cff00ffffCONDITIONER|r\n" .. "You can only interact with the tracking spells while out of combat.")
						end
					else
						xl_current_target_dock = 1
						ConditionerTutorial_Dismiss(13)
						ConditionerTutorial_Alert(14)
					end
					if (xl_OnTargetFrame == 2) then
						if (xl_current_target_dock == 1) then
							ChatFrame1:AddMessage("|cff00ffffConditioner:|r Docked to |cff00ff00LEFT|r side of |cffff6600TARGET|r nameplate.", 0, 0.5, 1)
						else
							ChatFrame1:AddMessage("|cff00ffffConditioner:|r Docked to |cff00ff00RIGHT|r side of |cffff6600TARGET|r nameplate.", 0, 0.5, 1)
						end
					else
						if (xl_current_target_dock == 1) then
							ChatFrame1:AddMessage("|cff00ffffConditioner:|r Docked to |cff00ff00LEFT|r side of |cffff6600YOUR|r nameplate.", 0, 0.5, 1)
						else
							ChatFrame1:AddMessage("|cff00ffffConditioner:|r Docked to |cff00ff00RIGHT|r side of |cffff6600YOUR|r nameplate.", 0, 0.5, 1)
						end
					end
					if (xl_current_target_dock == 1) then
						PlaySound(839)
					else
						PlaySound(840)
					end
				else
					PlaySound(1115)
					local x,y,w,h = self:GetBoundsRect()
					xl_LocX = x + w/2
					xl_LocY = y + h/2
					if (xl_ChildPosition < #button_choices) then
						xl_ChildPosition = xl_ChildPosition+1
					else
						xl_ChildPosition = 1
						ConditionerTutorial_Dismiss(10)
						ConditionerTutorial_Alert(11, button_options)
					end
				end	
			end
			UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
		end
	end)
	newframe:SetScript("OnDragStart", function(self, ...)
		if (self.canDrag) and ((xl_OnTargetFrame == 1) or (self.tempDrag)) then
			self:StartMoving();
			local x,y,w,h = self:GetBoundsRect()
			xl_LocX = x + w/2
			xl_LocY = y + h/2
		end
		PlaySound(1115)
	end)
	newframe:SetScript("OnDragStop", function(self, ...)
		if (self.canDrag) and ((xl_OnTargetFrame == 1) or (self.tempDrag))  then
			self:StopMovingOrSizing();
			local x,y,w,h = self:GetBoundsRect()
			xl_LocX = x + w/2
			xl_LocY = y + h/2
		end
		ConditionerTutorial_Dismiss(9)
		ConditionerTutorial_Alert(10, ConditionerWatchFrame0)
	end)
	local arg1 = select(1,...)
	local arg2 = select(2,...)
	local arg3 = select(3,...)
	local arg4 = select(4,...)
	if (parent == SpellActivationOverlayFrame) then
		newframe:SetPoint("CENTER", UIParent, "BOTTOMLEFT", xl_LocX, xl_LocY)
	else
		newframe:SetPoint(arg1, parent, arg2, arg3 + arg3*size*0.03125, arg4 + arg4*size*0.03125)
	end
	newframe:SetWidth(size)
	newframe:SetHeight(size)
	newframe.texture:SetAllPoints(newframe)
	newframe.texture:SetBlendMode("ALPHAKEY")
	newframe.cooldown:SetFrameLevel(newframe.level + 1)
	newframe.cooldown:SetAllPoints(newframe)
	newframe.cooldown:SetDrawEdge(true)
	newframe.cooldown:SetHideCountdownNumbers(true)
	newframe.Duration = CreateFrame("Frame", nil, newframe)
	newframe.Duration:SetSize(newframe:GetWidth(), newframe:GetHeight())
	newframe.Duration:SetFrameLevel(newframe:GetFrameLevel() + 1)
	newframe.Duration:SetPoint("TOP", newframe, "TOP", 0, 0)
	newframe.Duration:SetBackdrop(filler)
	newframe.Duration:SetBackdropColor(1, 1, 1, 1)
	newframe.Duration:Hide()
	newframe.text = newframe.edge:CreateFontString(nil, "OVERLAY", "NumberFontNormalLarge")
	newframe.text:SetText("")
	newframe.hotkeytext = newframe.edge:CreateFontString(nil, "OVERLAY", "NumberFontNormalLarge")
	newframe.hotkeytext:SetText("")
	newframe.hotkeytext:SetTextColor(0,1,1,1)
	newframe.edge:SetFrameLevel(newframe.level + 2)
	newframe.edge:SetSize(size+(0.0625*size), size+(0.0625*size))
	newframe.edge:SetPoint("CENTER", newframe, "CENTER", 0, 0)
	newframe.text:SetAllPoints(newframe.edge)
	newframe.hotkeytext:SetPoint("BOTTOM", newframe.edge, "BOTTOM")
	local edgefile = NewEdgeFile(size/4)
	newframe.edge:SetBackdrop(edgefile)
	newframe.edge:SetBackdropColor(0, 0, 0, 0)
	return newframe
end

function InitWatchedFrames()
	for i = 1,max_num_tracked do
		local position = {}
		local parentframe
		local offsetx = 0
		local offsety = 0
		if (i == 1) then
			position = positions[MainPosition]
			parentframe = SpellActivationOverlayFrame
		else
			position = positions[xl_ChildPosition]
			parentframe = watched_frames[#watched_frames]
		end
		table.insert(watched_frames, NewWatchFrame(xl_DesiredScale*(math.pow(0.75,(i-1))), parentframe, position[1], position[2], position[3], position[4]))
	end

	MaintainVisibility()
	DistributeSavedVars()
end

function conditioner_frame.events:ADDON_LOADED(...)
	local arg1 = select(1,...)
	if (arg1 == "Conditioner") then
		InitWatchedFrames()
	end
end

function conditioner_frame.events:PLAYER_ENTERING_WORLD(...)
	ConditionerTutorial_Alert(1)
end

function conditioner_frame.events:PLAYER_REGEN_DISABLED(...)
	conditioner_frame.ReputationBarWasVisible = ReputationWatchBar:IsShown()
	conditioner_frame.MainMenuBarWasVisible = MainMenuBarArtFrame:IsShown()
	conditioner_frame.ArtifactWatchBarWasVisible = ArtifactWatchBar:IsShown()
	conditioner_frame.ExpBarWasVisible = MainMenuExpBar:IsShown()

	if (xl_conditioner_options.hide_hotbar_incombat) then
		ArtifactWatchBar:SetParent(MainMenuBarArtFrame)
		MainMenuExpBar:SetParent(MainMenuBarArtFrame)
		ReputationWatchBar:SetParent(MainMenuBarArtFrame)
		MainMenuBarArtFrame:Hide()
		ArtifactWatchBar:Hide()
		ReputationWatchBar:Hide()
		MainMenuExpBar:Hide()
	end
end

function conditioner_frame.events:PLAYER_REGEN_ENABLED(...)
	if (conditioner_frame.MainMenuBarWasVisible) then
		MainMenuBarArtFrame:Show()
	end
	if (conditioner_frame.ArtifactWatchBarWasVisible) then
		ArtifactWatchBar:Show()
	end
	if (conditioner_frame.ReputationBarWasVisible) then
		ReputationWatchBar:Show()
	end
	if (conditioner_frame.ExpBarWasVisible) then
		MainMenuExpBar:Show()
	end
end

function conditioner_frame.events:PLAYER_TARGET_CHANGED(...)
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
end

function conditioner_frame.events:NAME_PLATE_UNIT_ADDED(...)
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
end

function conditioner_frame.events:NAME_PLATE_UNIT_REMOVED(...)
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
end

function conditioner_frame.events:PLAYER_SPECIALIZATION_CHANGED(...)
	tracked_spells, tracked_items = GetSpellsForCurrentSpec()
	
	for k,v in ipairs(priority_buttons) do
		if (k > 1) then
			if ((k-1) <= #tracked_spells) then
				priority_buttons[k].spellID = tracked_spells[k-1]
				priority_buttons[k].itemID = tracked_items[k-1] or 0
				local newtexture = GetSpellTexture(tracked_spells[k-1])
				if (priority_buttons[k].itemID ~= 0) then
					newtexture = GetItemIcon(priority_buttons[k].itemID)
				end
				priority_buttons[k].texture:SetTexture(newtexture)
				priority_buttons[k]:Show()
			else
				priority_buttons[k].spellID = 0
				priority_buttons[k].itemID = 0
				priority_buttons[k]:Hide()
			end
		end
	end
	
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
	UpdatePrioritySize()
end

conditioner_frame:SetScript("OnEvent", function(self, event, ...)
	conditioner_frame.events[event](self, ...);
end)
for k, v in pairs(conditioner_frame.events) do
	conditioner_frame:RegisterEvent(k);
end

function ResortList(list)
	local sortedlist = {}
	local num_sorts = #list
	local duplicates = {}
	for i=1, num_sorts do
		local lowest_index = 100
		local lowest_cooldown = 1000000
		local my_haste = GetHaste()/100
		local GCD = base_GCD/(1 + my_haste)
		GCD = math.max(GCD, 0.75)

		for k,v in ipairs(list) do
			if (type(v) == "number") then
				local current_challenge
				local priority_challenge = lowest_cooldown + GCD
				local normal_challenge = lowest_cooldown - GCD			
				if (v < 0) then
					list[k] = 0
				end
				if (k < lowest_index) then
					current_challenge = (v <= priority_challenge)
				else
					current_challenge = (v < normal_challenge)
				end
				if (current_challenge) then
					lowest_index = k
					lowest_cooldown = v
				end
			end
		end

		if (not priority_buttons[lowest_index+1]) then
			MaintainVisibility()
			DistributeSavedVars()
			UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
			UpdatePrioritySize()
		end

		if (priority_buttons[lowest_index+1]:Condition()) then
			--are we checking against ready only? we need to avoid more GetSpellCooldown calls for no reason
			local WantsOnlyWhenReady = priority_buttons[lowest_index+1].more.conditions.options.only_when_ready
			local ShouldUseCondition = priority_buttons[lowest_index+1].more.conditions.options.use_condition
			if (WantsOnlyWhenReady) and (ShouldUseCondition) then
				--we might fail here
				if (lowest_cooldown > 1.5) then
					--we fail
					priority_buttons[lowest_index+1]:SetSlot()
				else
					--continue as normal
					local sid = priority_buttons[lowest_index+1].spellID
					if (duplicates[sid]) then
						priority_buttons[lowest_index+1]:SetSlot()
					else
						duplicates[sid] = true
						table.insert(sortedlist, lowest_index)
						priority_buttons[lowest_index+1]:SetSlot(#sortedlist)
					end
				end
			else
				--continue as normal
				local sid = priority_buttons[lowest_index+1].spellID
				if (duplicates[sid]) then
					priority_buttons[lowest_index+1]:SetSlot()
				else
					duplicates[sid] = true
					table.insert(sortedlist, lowest_index)
					priority_buttons[lowest_index+1]:SetSlot(#sortedlist)
				end
			end
		else
			priority_buttons[lowest_index+1]:SetSlot()
		end

		list[lowest_index] = "empty"
	end
	
	return sortedlist
end

local HideHotbar = MakeCheckBox("TOP", directionDropDown, "BOTTOM", "Hide Hotbar In Combat")
HideHotbar.text:SetTextColor(1,1,1,1)
HideHotbar:SetScript("OnClick", function(self, c_button, down)
	xl_conditioner_options.hide_hotbar_incombat = self:GetChecked()
	PlaySound(1115)
	StoreConditions()
end)
HideHotbar:SetScript("OnShow", function(self)
	self:SetChecked(xl_conditioner_options.hide_hotbar_incombat)
end)

local AlwaysShow = MakeCheckBox("TOP", HideHotbar, "BOTTOM", "Always Show Conditioner")
AlwaysShow.text:SetTextColor(1,1,1,1)
AlwaysShow:SetScript("OnClick", function(self, c_button, down)
	xl_conditioner_options.always_show = self:GetChecked()
	PlaySound(1115)
	StoreConditions()
end)
AlwaysShow:SetScript("OnShow", function(self)
	self:SetChecked(xl_conditioner_options.always_show)
end)

local ConditionerSlider = NewSlider(AlwaysShow, "ConditionerTrackingSlider", 20, 1, 1, max_num_tracked, max_num_tracked, "Spells Displayed: " .. tostring(xl_num_desired_tracked), xl_num_desired_tracked)
ConditionerSlider:SetScript("OnValueChanged", function(self, event, ...)
	ConditionerSlider:SetValue(ConditionerSlider:GetValue())
	xl_num_desired_tracked = ConditionerSlider:GetValue()
	self.text:SetText("Spells Displayed: " .. tostring(xl_num_desired_tracked))
	GetWatchedCooldowns()
end)

ConditionerSlider:SetScript("OnShow", function(self, ...)
	ConditionerSlider:SetValue(xl_num_desired_tracked)
end)

local TaperSlider = NewSlider(ConditionerSlider, "ConditionerTaperSlider", 20, "50%", 50, "100%", 100, "Taper Size: " .. tostring(xl_conditioner_options.tapersize*100 .. "%"), xl_conditioner_options.tapersize)
TaperSlider:SetScript("OnValueChanged", function(self, event, ...)
	TaperSlider:SetValue(TaperSlider:GetValue())
	xl_conditioner_options.tapersize = TaperSlider:GetValue()/100
	self.text:SetText("Taper Size: " .. tostring(xl_conditioner_options.tapersize*100 .. "%"))
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
end)

TaperSlider:SetScript("OnShow", function(self, ...)
	TaperSlider:SetValue(xl_conditioner_options.tapersize*100)
end)

local TextureAlphaSlider = NewSlider(TaperSlider, "ConditionerAlphaSlider", 25, "0%", 0, "100%", 100, "Texture Opacity" .. tostring(xl_conditioner_options.opacity*100 .. "%"), xl_conditioner_options.opacity)
TextureAlphaSlider:SetScript("OnValueChanged", function(self, event, ...)
	TextureAlphaSlider:SetValue(TextureAlphaSlider:GetValue())
	xl_conditioner_options.opacity = TextureAlphaSlider:GetValue()/100
	self.text:SetText("Texture Opacity: " .. tostring(xl_conditioner_options.opacity*100 .. "%"))
	UpdateWatchFramePositions(xl_DesiredScale, MainPosition, xl_ChildPosition, xl_OnTargetFrame)
end)

TextureAlphaSlider:SetScript("OnShow", function(self, ...)
	TextureAlphaSlider:SetValue(xl_conditioner_options.opacity*100)
end)

local conditioner_help = CreateFrame("Button", nil, menu_options, "UIPanelButtonTemplate")
conditioner_help:SetPoint("BOTTOM", menu_options, "BOTTOM", 0, 10)
conditioner_help:SetText("Reset Tutorial")
conditioner_help:SetSize(menu_options:GetWidth()/2, 24)
conditioner_help:SetScript("OnClick", function(self, c_button, down)
	ConditionerResetTutorial()
	PlaySound(1115)
end)

function GetWatchedCooldowns()
	conditioner_frame.always_show = xl_conditioner_options.always_show
	if (xl_conditioner_options.always_show) then
		if (xl_OnTargetFrame) and (xl_OnTargetFrame == 2) then
			if (UnitExists("target") and not UnitIsDead("target")) then
				local namePlateTarget = C_NamePlate.GetNamePlateForUnit("target")
				if (namePlateTarget) then
					conditioner_frame.always_show = true
				else
					conditioner_frame.always_show = false
				end
			else
				conditioner_frame.always_show = false
			end
		end
	end
	if ((UnitAffectingCombat("player") or (isEditMode) or conditioner_frame.always_show) and (not UnitHasVehicleUI("player"))) then
		if (#tracked_spells > 0) then
			local cooldowns = {}
			local time_now = GetTime()
			local my_haste = GetHaste()/100
			local garbage_var,standard_GCD,garbage_var = GetSpellCooldown(GCD_SpellID)
			standard_GCD = tonumber(standard_GCD)
			if (standard_GCD > 0) then
				if ((standard_GCD == 1.5) or (standard_GCD == 1)) then
					--nothing
				else
					base_GCD = standard_GCD*(1+my_haste)
					base_GCD = string.format("%.1f", base_GCD)
					base_GCD = tonumber(base_GCD)
				end
			elseif (standard_GCD == 1.5) then
				base_GCD = 1.5
			elseif (standard_GCD == 1) then
				base_GCD = 1
			end

			for k,v in ipairs(tracked_spells) do
				local s_name = GetSpellInfo(v)
				local start_time, total_duration,garbage_var = GetSpellCooldown(s_name)
				if (tracked_items[k] ~= 0) then
					start_time, total_duration,garbage_var = GetItemCooldown(tracked_items[k])
				end
				if (not start_time) then
					start_time, total_duration,garbage_var = GetSpellCooldown(v)
					if (tracked_items[k] ~= 0) then
						start_time, total_duration,garbage_var = GetItemCooldown(tracked_items[k])
					end
				end
				local time_remaining = (start_time + total_duration) - time_now
				if (time_remaining <= 0) then
					time_remaining = 0
				end
				table.insert(cooldowns, time_remaining)
			end
			
			slots_to_display = ResortList(cooldowns)

			for i=1,max_num_tracked do
				if (i > xl_num_desired_tracked) then
					watched_frames[i]:Hide()
				else
					if ((UnitAffectingCombat("player") or (isEditMode) or conditioner_frame.always_show) and (not UnitHasVehicleUI("player"))) then
						if (xl_OnTargetFrame) and (xl_OnTargetFrame == 2) then
							if (UnitExists("target")) and (not UnitIsDead("target")) then
								if (i <= #slots_to_display) then
									local ready_texture = GetSpellTexture(tracked_spells[slots_to_display[i]])
									if (tracked_items[slots_to_display[i]] ~= 0) then
										ready_texture = GetItemIcon(tracked_items[slots_to_display[i]])
									end
									watched_frames[i].texture:SetTexture(ready_texture)
									watched_frames[i]:Show()
									watched_frames[i].edge:Show()
									local spellname = GetSpellInfo(tracked_spells[slots_to_display[i]])
									local s,d,garbage_var = GetSpellCooldown(spellname)
									if (tracked_items[slots_to_display[i]] ~= 0) then
										s,d,garbage_var = GetItemCooldown(tracked_items[slots_to_display[i]])
									end
									if (not s) then
										s,d,garbage_var = GetSpellCooldown(tracked_spells[slots_to_display[i]])
										if (tracked_items[slots_to_display[i]] ~= 0) then
											s,d,garbage_var = GetItemCooldown(tracked_items[slots_to_display[i]])
										end
									end
									local garbage_var, cd_d = watched_frames[i].cooldown:GetCooldownTimes()
									if (cd_d == d) then
										--do nothing
									else
										watched_frames[i].cooldown:SetCooldown(s,d)
									end
								else
									watched_frames[i]:Hide()
								end
							else
								watched_frames[i]:Hide()
							end
						else
							if (i <= #slots_to_display) then
								local ready_texture = GetSpellTexture(tracked_spells[slots_to_display[i]])
								if (tracked_items[slots_to_display[i]] ~= 0) then
									ready_texture = GetItemIcon(tracked_items[slots_to_display[i]])
								end
								watched_frames[i].texture:SetTexture(ready_texture)
								watched_frames[i]:Show()
								watched_frames[i].edge:Show()
								local spellname = GetSpellInfo(tracked_spells[slots_to_display[i]])
								local s,d,garbage_var = GetSpellCooldown(spellname)
								if (tracked_items[slots_to_display[i]] ~= 0) then
									s,d,garbage_var = GetItemCooldown(tracked_items[slots_to_display[i]])
								end
								if (not s) then
									s,d,garbage_var = GetSpellCooldown(tracked_spells[slots_to_display[i]])
									if (tracked_items[slots_to_display[i]] ~= 0) then
										s,d,garbage_var = GetItemCooldown(tracked_items[slots_to_display[i]])
									end
								end
								local garbage_var, cd_d = watched_frames[i].cooldown:GetCooldownTimes()
								if (cd_d == d) then
									--do nothing
								else
									watched_frames[i].cooldown:SetCooldown(s,d)
								end
							else
								watched_frames[i]:Hide()
							end
						end

						if (i == 1) then
							if (not isEditMode) then
								watched_frames[i]:EnableMouse(false)
							else
								watched_frames[i]:EnableMouse(true)
							end
						else
							watched_frames[i]:EnableMouse(false)
						end
					else
						watched_frames[i]:Hide()
						if (i == 1) then
							watched_frames[i]:EnableMouse(true)
						else
							watched_frames[i]:EnableMouse(false)
						end
					end
				end
			end

		else
			for k,v in pairs(watched_frames) do
				v.Duration:Hide()
				v.text:SetText("")
				v.text:SetTextColor(1,1,1,0.5)
				v:Hide()
				if (v.interruptFrame) then
					v.interruptFrame:Hide()
				end
			end
		end
	else
		for k,v in pairs(watched_frames) do
			v.Duration:Hide()
			v.text:SetText("")
			v.text:SetTextColor(1,1,1,0.5)
			v:Hide()
			if (v.interruptFrame) then
				v.interruptFrame:Hide()
			end
		end
	end

	ConditionerHotfix()
end

priority_visibility_updater:SetScript("OnShow", function(...)
	if (not xl_conditioner_options.always_show) then
		xl_conditioner_options.always_show = false
	end
	priority_list:Show()
	isEditMode=true
	MaintainVisibility()
	DistributeSavedVars()
	ConditionerTutorial_Alert(3, _G['ConditionerPriorityButton' .. FirstEmptySlot(priority_buttons) - 1])
	ConditionerTutorial_Alert(4, _G['ConditionerPriorityButton' .. FirstEmptySlot(priority_buttons) - 1])
	ConditionerTutorial_Alert(5, _G['ConditionerPriorityButton' .. FirstEmptySlot(priority_buttons) - 1].more)
	ConditionerTutorial_Alert(8, ConditionerWatchFrame0)
	ConditionerTutorial_Alert(9, ConditionerWatchFrame0)
	ConditionerTutorial_Alert(10, ConditionerWatchFrame0)
	ConditionerTutorial_Alert(11, button_options)
	ConditionerTutorial_Alert(12, button_options)
	ConditionerTutorial_Alert(13, ConditionerWatchFrame0)
	ConditionerTutorial_Alert(14)
end)

conditioner_frame:SetScript("OnUpdate", function(self,elapsed) self:Update(self,elapsed) end)
function conditioner_frame:Update(self, elapsed)
	GetWatchedCooldowns()
end
