if statPriorityStats == nil then
	statPriorityStats = {}
end

local statPriorityTexts = {}
local statPriorityBoxes = {}

statPriorityStats["WARRIORArms"] = "Haste > Critical Strike > Versatility > Mastery > Strength"
statPriorityStats["WARRIORFury"] = "Critical Strike > Mastery > Haste > Versatility > Strength"
statPriorityStats["WARRIORProtection"] = "Haste > Versatility > Mastery > Critical Strike > Strength > Armor"

statPriorityStats["PALADINHoly"] = "Critical Strike > Haste > Versatility > Mastery > Intellect"
statPriorityStats["PALADINProtection"] = "Haste > Mastery > Versatility > Critical Strike"
statPriorityStats["PALADINRetribution"] = "Critical Strike > Haste = Versatility = Mastery > Strength"

statPriorityStats["HUNTERBeast Mastery"] = "Critical Strike > Versatility > Haste > Mastery"
statPriorityStats["HUNTERMarksmanship"] = "Versatility > Mastery > Critical Strike > Haste"
statPriorityStats["HUNTERSurvival"] = "Haste > Versatility > Critical Strike > Mastery"

statPriorityStats["ROGUEAssassination"] = "Critical Strike > Haste > Mastery > Versatility > Agility"
statPriorityStats["ROGUEOutlaw"] = "Critical Strike > Versatility > Haste > Mastery > Agility"
statPriorityStats["ROGUESubtlety"] = "Mastery > Critical Strike > Versatility > Haste"

statPriorityStats["PRIESTDiscipline"] = "Haste > Critical Strike > Intellect > Versatility > Mastery"
statPriorityStats["PRIESTHoly"] = "Critical Strike > Haste > Versatility > Intellect > Mastery"
statPriorityStats["PRIESTShadow"] = "Haste = Critical Strike > Mastery = Versatility > Intellect"

statPriorityStats["SHAMANElemental"] = "Intellect > Versatility > Critical Strike > Haste > Mastery"
statPriorityStats["SHAMANEnhancement"] = "Mastery > Haste > Critical Strike = Versatility > Agility"
statPriorityStats["SHAMANRestoration"] = "Intellect > Critical Strike > Versatility > Haste = Mastery"

statPriorityStats["MAGEArcane"] = "Critical Strike > Haste > Mastery > Versatility > Intellect"
statPriorityStats["MAGEFire"] = "Mastery > Haste > Versatility > Critical Strike > Intellect"
statPriorityStats["MAGEFrost"] = "Mastery > Critical Strike to 33.34% > Haste > Versatility > Intellect"

statPriorityStats["WARLOCKAffliction"] = "Haste = Mastery > Critical Strike > Versatility > Intellect"
statPriorityStats["WARLOCKDemonology"] = "Critical Strike > Versatility > Mastery > Haste > Intellect"
statPriorityStats["WARLOCKDestruction"] = "Mastery > Haste > Critical Strike > Versatility > Intellect"

statPriorityStats["DRUIDBalance"] = "Haste > Versatility = Critical Strike > Mastery > Intellect"
statPriorityStats["DRUIDFeral"] = "Critical Strike > Mastery > Versatility > Haste > Agility"
statPriorityStats["DRUIDGuardian"] = "Armor = Agility = Stamina > Versatility > Mastery > Haste > Critical Strike"
statPriorityStats["DRUIDRestoration"] = "Mastery = Haste > Versatility > Critical Strike > Intellect"

statPriorityStats["MONKBrewmaster"] = "Agility > Mastery > Critical Strike = Versatility > Haste"
statPriorityStats["MONKMistweaver"] = "Critical Strike > Mastery = Versatility > Intellect > Haste"
statPriorityStats["MONKFistweaver"] = "Critical Strike > Versatility > Haste > Mastery > Intellect"
statPriorityStats["MONKWindwalker"] = "Agility > Versatility > Mastery > Critical Strike > Haste"

statPriorityStats["DEATHKNIGHTBlood"] = "Strength > Versatility > Haste > Critical Strike > Mastery"
statPriorityStats["DEATHKNIGHTFrost"] = "Versatility > Mastery > Critical Strike > Haste"
statPriorityStats["DEATHKNIGHTUnholy"] = "Haste > Critical Strike = Versatility > Mastery"

statPriorityStats["DEMONHUNTERHavoc"] = "Versatility > Critical Strike = Haste > Agility > Mastery"
statPriorityStats["DEMONHUNTERVengeance"] = "Agility > Haste > Versatility > Mastery > Critical Strike"

function statPriorityFrameOnEvent(self, event, arg1)
	if event == "ADDON_LOADED" and arg1 == "StatPriority" then
		self:UnregisterEvent("ADDON_LOADED")
		PaperDollFrame:HookScript("OnShow", function() statPriorityFrameUpdate(self, statPriorityText, PaperDollFrame, "player") end)
	elseif event == "SPELLS_CHANGED" and IsAddOnLoaded("StatPriority") then
		statPriorityFrameUpdate(self, statPriorityText, PaperDollFrame, "player")
	--elseif event == "INSPECT_READY" and IsAddOnLoaded("StatPriority") then
	--	statPriorityFrameUpdate(statPriorityInspectFrame, statPriorityInspectText, InspectPaperDollFrame, "target")
	end
end

function statPriorityFrameCreate(frame, text, parent)
	if parent:IsVisible() then
		frame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
						   edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
						   tile = true,
						   tileSize = 16,
						   edgeSize = 16, 
						   insets = {left = 1,
									 right = 1,
									 top = 1,
									 bottom = 1}}) 
		frame:SetBackdropColor(0, 0, 0, 1)
		frame:SetFrameStrata("TOOLTIP")
		frame:SetWidth(parent:GetWidth() - 50)
		if parent == PaperDollFrame then
			frame:SetHeight(25)
		else
			frame:SetHeight(50)
		end
		text:ClearAllPoints()
		text:SetAllPoints(frame) 
		text:SetJustifyH("CENTER")
		text:SetJustifyV("CENTER")
		frame:ClearAllPoints()
		frame:SetPoint("BOTTOMRIGHT", parent, "TOPRIGHT",0,0)
		frame:SetParent(parent)
		frame:Show()
		return true
	end
	return false
end

function GetSpecializationName(id)
	local spec = ""
	if id == 62 then 
		spec = "Arcane"
	elseif id == 63 then 
		spec = "Fire"
	elseif id == 64 then 
		spec = "Frost"
	elseif id == 65 then 
		spec = "Holy"
	elseif id == 66 then 
		spec = "Protection"
	elseif id == 70 then 
		spec = "Retribution"
	elseif id == 71 then 
		spec = "Arms"
	elseif id == 72 then 
		spec = "Fury"
	elseif id == 73 then 
		spec = "Protection"
	elseif id == 102 then 
		spec = "Balance"
	elseif id == 103 then 
		spec = "Feral"
	elseif id == 104 then 
		spec = "Guardian"
	elseif id == 105 then 
		spec = "Restoration"
	elseif id == 250 then 
		spec = "Blood"
	elseif id == 251 then 
		spec = "Frost"
	elseif id == 252 then 
		spec = "Unholy"
	elseif id == 253 then 
		spec = "Beast Mastery"
	elseif id == 254 then 
		spec = "Marksmanship"
	elseif id == 255 then 
		spec = "Survival"
	elseif id == 256 then 
		spec = "Discipline"
	elseif id == 257 then 
		spec = "Holy"
	elseif id == 258 then 
		spec = "Shadow"
	elseif id == 259 then 
		spec = "Assassination"
	elseif id == 260 then 
		spec = "Outlaw"
	elseif id == 261 then 
		spec = "Subtlety"
	elseif id == 262 then 
		spec = "Elemental"
	elseif id == 263 then 
		spec = "Enhancement"
	elseif id == 264 then 
		spec = "Restoration"
	elseif id == 265 then 
		spec = "Affliction"
	elseif id == 266 then 
		spec = "Demonology"
	elseif id == 267 then 
		spec = "Destruction"
	elseif id == 268 then 
		spec = "Brewmaster"
	elseif id == 269 then 
		spec = "Windwalker"
	elseif id == 270 then 
		spec = "Mistweaver"
	elseif id == 577 then 
		spec = "Havoc"
	elseif id == 581 then 
		spec = "Vengeance"
	end
	return spec
end

function statPriorityFrameUpdate(frame, frameText, parent, unit)
	if parent ~= nil and statPriorityFrameCreate(frame, frameText, parent) then
		local name = UnitName("player")
		local temp, class = UnitClass(unit)
		local spec
		local text
		if parent == PaperDollFrame then
			spec = GetSpecializationInfo(GetSpecialization())
			spec = GetSpecializationName(spec)
			text = statPriorityStats[class .. spec];
			if class == "MONK" then
				if IsSpellKnown(210802) then
					text = statPriorityStats[class .. "Fistweaver"]
				end
			end
			if statPriorityStats[name..spec] ~= nil then
				text = statPriorityStats[name..spec]
			end
		else
			spec = GetSpecializationName(GetInspectSpecialization(unit))
			text = statPriorityStats[class .. spec];
			if statPriorityStats[name..spec] ~= nil and class == UnitClass("player") then
				text = statPriorityStats[name..spec]
			end
		end
		frameText:SetText(text)
	end
end

function statPrioritySpecBox(parent, x, y)
	local text = parent:CreateFontString(nil, "OVERLAY", "GameFontWhite")
	text:SetPoint("TOPLEFT", x, y)
	table.insert(statPriorityTexts, text)
	local box = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
	box:SetAutoFocus(false)
	box:SetHeight(25)
	box:SetWidth(400)
	box:SetPoint("TOPLEFT", x, y - 15)
	table.insert(statPriorityBoxes, box)
end

function statPriorityGetSpecs()
	local temp, class = UnitClass("player")
	if class == "WARRIOR" then
		return {"Arms", "Fury", "Protection"}
	elseif class == "PALADIN" then
		 return {"Holy", "Protection", "Retribution"}
	elseif class == "HUNTER" then
		 return {"Beast Mastery", "Marksmanship", "Survival"}
	elseif class == "ROGUE" then
		 return {"Assassination", "Outlaw", "Subtlety"}
	elseif class == "PRIEST" then
		 return {"Discipline", "Holy", "Shadow"}
	elseif class == "SHAMAN" then
		 return {"Elemental", "Enhancement", "Restoration"}
	elseif class == "MAGE" then
		 return {"Arcane", "Fire", "Frost"}
	elseif class == "WARLOCK" then
		 return {"Affliction", "Demonology", "Destruction"}
	elseif class == "DRUID" then
		 return {"Balance", "Feral", "Guardian", "Restoration"}
	elseif class == "MONK" then
		 return {"Brewmaster", "Mistweaver", "Windwalker"}
	elseif class == "DEATHKNIGHT" then
		 return {"Blood", "Frost", "Unholy"}
	elseif class == "DEMONHUNTER" then
		 return {"Havoc", "Vengeance"}
	end
end

function statPriorityOptionsRefresh()
	local name = UnitName("player")
	local specs = statPriorityGetSpecs()
	for i = 1, table.getn(statPriorityTexts) do
		if specs[i] ~= nil then
			statPriorityTexts[i]:Show()
			statPriorityTexts[i]:SetText(specs[i])
			statPriorityBoxes[i]:Show()
			if statPriorityStats[name..specs[i]] == nil then
				statPriorityBoxes[i]:SetText("")
			else
				statPriorityBoxes[i]:SetText(statPriorityStats[name..specs[i]])
			end
			statPriorityBoxes[i]:SetCursorPosition(0)
		else
			statPriorityTexts[i]:Hide()
			statPriorityBoxes[i]:Hide()
		end
	end
end

function statPriorityOptionsOkay()
	local name = UnitName("player")
	local specs = statPriorityGetSpecs()
	for i = 1, table.getn(specs) do
		local text = statPriorityBoxes[i]:GetText()
		if text == "" then
			statPriorityStats[name..specs[i]] = nil
		else
			statPriorityStats[name..specs[i]] = text
		end
	end
end

local statPriorityFrame = CreateFrame("FRAME", nil, UIParent)
statPriorityInspectFrame = CreateFrame("FRAME", nil, UIParent)
statPriorityText = statPriorityFrame:CreateFontString(nil, "OVERLAY", "GameFontWhite")
statPriorityInspectText = statPriorityInspectFrame:CreateFontString(nil, "OVERLAY", "GameFontWhite")
statPriorityFrame:RegisterEvent("ADDON_LOADED")
statPriorityFrame:RegisterEvent("SPELLS_CHANGED")
statPriorityFrame:RegisterEvent("INSPECT_READY");
statPriorityFrame:SetScript("OnEvent", statPriorityFrameOnEvent)

local statPriorityOptions = CreateFrame("FRAME")
statPriorityOptions.name = "Stat Priority"
local statPriorityOptionsText = statPriorityOptions:CreateFontString(nil, "OVERLAY", "GameFontWhite")
statPriorityOptionsText:SetPoint("TOPLEFT", 20, -20)
statPriorityOptionsText:SetText("You can put your own custom priority strings here")
statPrioritySpecBox(statPriorityOptions, 20, -40)
statPrioritySpecBox(statPriorityOptions, 20, -85)
statPrioritySpecBox(statPriorityOptions, 20, -130)
statPrioritySpecBox(statPriorityOptions, 20, -175)
statPriorityOptions.refresh = statPriorityOptionsRefresh
statPriorityOptions.okay = statPriorityOptionsOkay
statPriorityOptions.cancel = statPriorityOptionsRefresh
InterfaceOptions_AddCategory(statPriorityOptions)