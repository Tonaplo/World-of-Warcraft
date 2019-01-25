SLASH_STATPRIORITY1 = "/statpriority"
SLASH_STATPRIORITY2 = "/stat"

local statPriorityStats = {}

statPriorityStats["WARRIORArms"] = "Haste > Critical Strike > Versatility > Mastery > Strength"
statPriorityStats["WARRIORFury"] = "Critical Strike > Mastery > Haste > Versatility > Strength"
statPriorityStats["WARRIORProtection"] = "Haste > Armor > Versatility > Mastery > Critical Strike > Strength"

statPriorityStats["PALADINHoly"] = "Intellect > Critical Strike > Mastery > Haste > Versatility"
statPriorityStats["PALADINProtection"] = "Haste > Mastery > Versatility > Critical Strike"
statPriorityStats["PALADINRetribution"] = "Strength > Haste > Critical Strike = Versatility = Mastery"

statPriorityStats["HUNTERBeast Mastery"] = "Mastery > Haste > Critical Strike > Versatility"
statPriorityStats["HUNTERMarksmanship"] = "Mastery > Critical Strike > Versatility > Haste"
statPriorityStats["HUNTERSurvival"] = "Haste > Critical Strike > Versatility > Mastery"

statPriorityStats["ROGUEAssassination"] = "Agility > Haste > Critical Strike > Mastery > Versatility"
statPriorityStats["ROGUEOutlaw"] = "Agility > Critical Strike > Haste > Versatility > Mastery"
statPriorityStats["ROGUESubtlety"] = "Mastery > Critical Strike > Versatility > Haste"

statPriorityStats["PRIESTDiscipline"] = "Intellect > Haste > Critical Strike > Versatility > Mastery"
statPriorityStats["PRIESTHoly"] = "Intellect > Critical Strike > Haste > Versatility > Mastery"
statPriorityStats["PRIESTShadow"] = "Intellect > Haste = Critical Strike > Mastery > Versatility"

statPriorityStats["SHAMANElemental"] = "Intellect > Critical Strike > Haste > Versatility > Mastery"
statPriorityStats["SHAMANEnhancement"] = "Agility > Haste > Critical Strike = Versatility > Mastery"
statPriorityStats["SHAMANRestoration"] = "Intellect > Critical Strike > Versatility > Haste = Mastery"

statPriorityStats["MAGEArcane"] = "Intellect > Critical Strike > Haste > Mastery > Versatility"
statPriorityStats["MAGEFire"] = "Intellect > Mastery > Versatility > Haste > Critical Strike"
statPriorityStats["MAGEFrost"] = "Intellect > Critical Strike to 33.34% > Haste > Versatility > Mastery"

statPriorityStats["WARLOCKAffliction"] = "Mastery > Intellect > Haste > Critical Strike = Versatility"
statPriorityStats["WARLOCKDemonology"] = "Intellect > Haste > Critical Strike > Versatility > Mastery"
statPriorityStats["WARLOCKDestruction"] = "Intellect > Haste > Critical Strike = Mastery > Versatility"

statPriorityStats["DRUIDBalance"] = "Intellect > Haste > Mastery > Critical Strike > Versatility"
statPriorityStats["DRUIDFeral"] = "Agility > Haste > Critical Strike > Versatility > Mastery"
statPriorityStats["DRUIDGuardian"] = "Armor = Agility = Stamina > Mastery > Versatility > Haste > Critical Strike"
statPriorityStats["DRUIDRestoration"] = "Mastery = Haste > Intellect > Versatility > Critical Strike"

statPriorityStats["MONKBrewmaster"] = "Agility > Critical Strike = Versatility = Mastery > Haste"
statPriorityStats["MONKMistweaver"] = "Intellect > Critical Strike > Mastery = Versatility > Haste"
statPriorityStats["MONKWindwalker"] = "Agility > Versatility > Mastery > Critical Strike > Haste"

statPriorityStats["DEATHKNIGHTBlood"] = "Versatility > Haste > Critical Strike > Mastery"
statPriorityStats["DEATHKNIGHTFrost"] = "Mastery > Critical Strike > Versatility > Haste"
statPriorityStats["DEATHKNIGHTUnholy"] = "Haste > Critical Strike = Versatility > Mastery"

statPriorityStats["DEMONHUNTERHavoc"] = "Agility > Haste = Versatility > Critical Strike > Mastery"
statPriorityStats["DEMONHUNTERVengeance"] = "Agility > Haste > Versatility > Mastery > Critical Strike"

function SlashCmdList.STATPRIORITY(msg, editbox)
	local name = UnitName("player")
	local spec = GetSpecializationInfo(GetSpecialization())
	spec = GetSpecializationName(spec)
	if msg == "clear" then
		statPriorityStats[name..spec] = nil
		print("Custom Priority for this spec was removed")
	else
		statPriorityStats[name..spec] = msg
		print("Custom Priority for this spec was added")
	end
end

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
			-- if class == "PALADIN" then
				-- if IsSpellKnown(216331) then
					-- text = statPriorityStats[class .. "Avenger"]
				-- end
			-- end
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

local statPriorityFrame = CreateFrame("FRAME", nil, UIParent)
statPriorityInspectFrame = CreateFrame("FRAME", nil, UIParent)
statPriorityText = statPriorityFrame:CreateFontString(nil, "OVERLAY", "GameFontWhite")
statPriorityInspectText = statPriorityInspectFrame:CreateFontString(nil, "OVERLAY", "GameFontWhite")
statPriorityFrame:RegisterEvent("ADDON_LOADED")
statPriorityFrame:RegisterEvent("SPELLS_CHANGED")
statPriorityFrame:RegisterEvent("INSPECT_READY");
statPriorityFrame:SetScript("OnEvent", statPriorityFrameOnEvent)
