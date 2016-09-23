RCharsAddon = LibStub("AceAddon-3.0"):NewAddon("RCharsAddon", "AceConsole-3.0", "AceEvent-3.0")
AceGUI = LibStub("AceGUI-3.0")
created = false

local character = {
		name = nil,
		level = 0,
		firstProf = nil,
		secondProf = nil,
		firstProfLevel = 0,
		secondProfLevel = 0,
}

local defaultDB = {
	realm = {
		characterStored = 0,
		}
}

function RCharsAddon:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("RCDatabase", defaultDB)
	RCharsAddon:Print("RealmChars loaded")
	RCharsAddon:RegisterChatCommand("rchars", "SlashOpenMainWindow")
	self:RegisterEvent("TRADE_SKILL_UPDATE")
	self:RegisterEvent("PLAYER_LEVEL_UP")
end

function RCharsAddon:OnEnable()
    -- Called when the addon is enabled
	RCharsAddon:SaveData()

end

function RCharsAddon:OnDisable()
    -- Called when the addon is disabled
end

function RCharsAddon:SlashOpenMainWindow(input)
	if created == false then
		RCharsAddon:SaveData()
		RCharsAddon:OpenMainWindow()
	end
end

function RCharsAddon:PLAYER_LEVEL_UP()
	RCharsAddon:SaveData()
end

function RCharsAddon:TRADE_SKILL_UPDATE()
	RCharsAddon:SaveData()
end

function RCharsAddon:SaveData()
	local charname, unusedRealm = UnitName("player")
	local charlevel = UnitLevel("player")
	local localizedClass, englishClass, classIndex = UnitClass("player")
	local prof1, prof2, archaeology, fishing, cooking, firstAid = GetProfessions()
	
	if prof1 ~= nil then
		Prof1name, Prof1icon, Prof1skillLevel, Prof1maxSkillLevel, Prof1numAbilities, Prof1spelloffset, Prof1skillLine, Prof1skillModifier, Prof1specializationIndex, Prof1specializationOffset = GetProfessionInfo(prof1)
	else
		Prof1name = "No 1st Prof"
		Prof1skillLevel = 0
	end
	if prof2 ~= nil then
		Prof2name, Prof2icon, Prof2skillLevel, Prof2maxSkillLevel, Prof2numAbilities, Prof2spelloffset, Prof2skillLine, Prof2skillModifier, Prof2specializationIndex, Prof2specializationOffset = GetProfessionInfo(prof2)
	else
		Prof2name = "No 2nd Prof"
		Prof2skillLevel = 0
	end
	
	local current = self.db.realm
	local exists = false
	local charIndex = 0
	local counter = 0
	
	for key, character in ipairs(current) do --actualcode
		counter = counter +1
		if character.name == charname then
			exists = true
			charIndex = counter
		end
	end
	
	if exists == true then
		self.db.realm[charIndex] = {name = charname, level = charlevel, class = englishClass, firstProf = Prof1name, firstProfLevel = Prof1skillLevel, secondProf = Prof2name, secondProfLevel = Prof2skillLevel}
	end
	
	if exists == false then
		self.db.realm.characterStored = self.db.realm.characterStored + 1
		self.db.realm[self.db.realm.characterStored] = {name = charname, level = charlevel, class = englishClass, firstProf = Prof1name, firstProfLevel = Prof1skillLevel, secondProf = Prof2name, secondProfLevel = Prof2skillLevel}
	end
end

function RCharsAddon:OpenMainWindow()
	
	-- Create a container frame
	f = AceGUI:Create("Frame")
	f:SetCallback("OnClose",function(widget) AceGUI:Release(widget) created = false end)
	f:SetTitle("RealmChars")
	f:SetStatusText("This addon lists all your characters on a realm, along wih their profession info")
	f:SetLayout("Flow")
	f:SetHeight(600)
	
	
		
	local charname, unusedRealm = UnitName("player")
	local current = self.db.realm
	for key, character in ipairs(current) do --actualcode
	
		local color = RCharsAddon:GetClassColor(character.class)
		
		label = AceGUI:Create("Label")
		label:SetFont( "Fonts\\MORPHEUS.TTF", 24, "THICKOUTLINE ")
		label:SetText('|cff' .. color .. character.name .. '|r' .. " - Level: ".. character.level .. "\n" .. character.firstProf .. ": " .. character.firstProfLevel .. "\n" .. character.secondProf .. ": " .. character.secondProfLevel .. "\n")
		label:SetWidth(330)
		label:SetHeight(95)
		f:AddChild(label)
	end
	
	created = true
end

function RCharsAddon:GetClassColor(input)
	
	if input == "DEATH KNIGHT" then
		return "c41f3b"
	end
	if input == "WARRIOR" then
		return "c79c6e"
	end
	if input == "DRUID" then
		return "ff7d0a"
	end
	if input == "HUNTER" then
		return "abd473"
	end
	if input == "MAGE" then
		return "69ccf0"
	end
	if input == "MONK" then
		return "00ff96"
	end
	if input == "PALADIN" then
		return "f58cba"
	end
	if input == "PRIEST" then
		return "ffffff"
	end
	if input == "ROGUE" then
		return "fff569"
	end
	if input == "SHAMAN" then
		return "0070de"
	end
	if input == "WARLOCK" then
		return "9482c9"
	end
	
	--No class stored yet
	return "FFFFFF"
end

local optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("TPLAddon", "Tonaplo's Professions Leveler")