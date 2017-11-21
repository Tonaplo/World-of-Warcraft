--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--               Copyright 2017 Dylan Fortune (Crieve-Sargeras)               --
--------------------------------------------------------------------------------
AllTheThings = CreateFrame("FRAME", "AllTheThings", UIParent);
local function HandleEvents(self, e, ...) (self.events[e] or tostringall)(...); end
local app = AllTheThings;	-- Create a local (non global) reference
app.events = {};
local backdrop = {
	bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
	tile = true, tileSize = 16, edgeSize = 16, 
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
};
app.DisplayName = "AllTheThings";
app:SetScript("OnEvent", HandleEvents);
app:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", 0, 0);
app:SetSize(1, 1);
app:Hide();

-- Performance Cache 
-- While this may seem silly, caching references to commonly used APIs is actually a performance gain...
local C_ArtifactUI_GetAppearanceInfoByID = C_ArtifactUI.GetAppearanceInfoByID; 
local C_MountJournal_GetMountInfoByID = C_MountJournal.GetMountInfoByID;
local C_MountJournal_GetMountInfoExtraByID = C_MountJournal.GetMountInfoExtraByID;
local C_TransmogCollection_GetAppearanceSourceInfo = C_TransmogCollection.GetAppearanceSourceInfo;
local C_TransmogCollection_GetAllAppearanceSources = C_TransmogCollection.GetAllAppearanceSources;
local C_TransmogCollection_GetIllusionSourceInfo = C_TransmogCollection.GetIllusionSourceInfo;
local C_TransmogCollection_GetIllusions = C_TransmogCollection.GetIllusions;
local C_TransmogCollection_GetSourceInfo = C_TransmogCollection.GetSourceInfo;
local C_TransmogSets_GetSetInfo = C_TransmogSets.GetSetInfo;
local C_ToyBox_GetToyInfo = C_ToyBox.GetToyInfo;
local C_ToyBox_GetToyLink = C_ToyBox.GetToyLink;
local EJ_GetCreatureInfo = _G["EJ_GetCreatureInfo"];
local EJ_GetEncounterInfo = _G["EJ_GetEncounterInfo"];
local GetAchievementInfo = _G["GetAchievementInfo"];
local GetAchievementLink = _G["GetAchievementLink"];
local GetClassInfo = _G["GetClassInfo"];
local GetDifficultyInfo = _G["GetDifficultyInfo"];
local GetFactionInfoByID = _G["GetFactionInfoByID"];
local GetItemInfo = _G["GetItemInfo"];
local GetItemInfoInstant = _G["GetItemInfoInstant"];
local GetTitleName = _G["GetTitleName"];
local IsDressableItem = _G["IsDressableItem"];
local IsQuestFlaggedCompleted = _G["IsQuestFlaggedCompleted"];
local PlayerHasToy = _G["PlayerHasToy"];
local SetPortraitTexture = _G["SetPortraitTexture"];
local IsTitleKnown = _G["IsTitleKnown"];
local InCombatLockdown = _G["InCombatLockdown"];

-- Game Tooltip Icon
local GameTooltipIcon = CreateFrame("FRAME", nil, GameTooltip);
GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
GameTooltipIcon:SetSize(96, 96);
GameTooltipIcon.icon = GameTooltipIcon:CreateTexture(nil, "ARTWORK");
GameTooltipIcon.icon:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon:Show();
GameTooltipIcon.icon.Background = GameTooltipIcon:CreateTexture(nil, "BACKGROUND");
GameTooltipIcon.icon.Background:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon.Background:Show();
GameTooltipIcon.icon.Border = GameTooltipIcon:CreateTexture(nil, "BORDER");
GameTooltipIcon.icon.Border:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon.Border:Show();
GameTooltipIcon:Hide();

-- Model is used to display the model of an NPC/Encounter.
local GameTooltipModel = CreateFrame("FRAME", "ATTGameTooltipModel", GameTooltip);
GameTooltipModel:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
GameTooltipModel:SetSize(128, 128);
GameTooltipModel:SetBackdrop(backdrop);
GameTooltipModel:SetBackdropBorderColor(1, 1, 1, 1);
GameTooltipModel:SetBackdropColor(0, 0, 0, 1);
GameTooltipModel.Model = CreateFrame("DressUpModel", nil, GameTooltipModel);
GameTooltipModel.Model:SetPoint("TOPLEFT", GameTooltipModel ,"TOPLEFT", 4, -4)
GameTooltipModel.Model:SetPoint("BOTTOMRIGHT", GameTooltipModel ,"BOTTOMRIGHT", -4, 4)
GameTooltipModel.Model:SetRotation(MODELFRAME_DEFAULT_ROTATION);
GameTooltipModel:Hide();

-- Data Lib
local AllTheThingsTempData = {}; 	-- For temporary data.
local AllTheThingsAD = {};			-- For account-wide data.
local AllTheThingsPCD = {};			-- For character specific data.
local function SetDataMember(member, data)
	AllTheThingsAD[member] = data;
end
local function GetDataMember(member, default)
	if AllTheThingsAD[member] == nil then AllTheThingsAD[member] = default; end
	return AllTheThingsAD[member];
end
local function SetTempDataMember(member, data)
	AllTheThingsTempData[member] = data;
end
local function GetTempDataMember(member, default)
	if AllTheThingsTempData[member] == nil then AllTheThingsTempData[member] = default; end
	return AllTheThingsTempData[member];
end
local function SetPersonalDataMember(member, data)
	AllTheThingsPCD[member] = data;
end
local function GetPersonalDataMember(member, default)
	if AllTheThingsPCD[member] == nil then AllTheThingsPCD[member] = default; end
	return AllTheThingsPCD[member];
end
local function SetDataSubMember(member, submember, data)
	if AllTheThingsAD[member] then AllTheThingsAD[member][submember] = data; end
end
local function GetDataSubMember(member, submember, default)
	if not AllTheThingsAD[member] then AllTheThingsAD[member] = { }; end
	if AllTheThingsAD[member][submember] == nil then AllTheThingsAD[member][submember] = default; end
	return AllTheThingsAD[member][submember];
end
local function SetTempDataSubMember(member, submember, data)
	if AllTheThingsTempData[member] then
		AllTheThingsTempData[member][submember] = data;
	end
end
local function GetTempDataSubMember(member, submember, default)
	if AllTheThingsTempData[member] == nil then
		AllTheThingsTempData[member] = { };
	end
	if AllTheThingsTempData[member][submember] == nil then
		AllTheThingsTempData[member][submember] = default;
	end
	return AllTheThingsTempData[member][submember];
end
local function SetPersonalDataSubMember(member, submember, data)
	if AllTheThingsPCD[member] then AllTheThingsPCD[member][submember] = data; end
end
local function GetPersonalDataSubMember(member, submember, default)
	if not AllTheThingsPCD[member] then AllTheThingsPCD[member] = { }; end
	if AllTheThingsPCD[member][submember] == nil then AllTheThingsPCD[member][submember] = default; end
	return AllTheThingsPCD[member][submember];
end
local function SetDataSubSubMember(member, submember, subsubmember, data)
	if AllTheThingsAD[member] and AllTheThingsAD[member][submember] then AllTheThingsAD[member][submember][subsubmember] = data; end
end
local function GetDataSubSubMember(member, submember, subsubmember, default)
	if not AllTheThingsAD[member] then
		AllTheThingsAD[member] = 
		{
			[submember] = 
			{
				[subsubmember] = default;
			};
		};
		return default;
	else
		if not AllTheThingsAD[member][submember] then
			AllTheThingsAD[member][submember] = 
			{
				[subsubmember] = default;
			};
			return default;
		else
			if AllTheThingsAD[member][submember][subsubmember] == nil then
				AllTheThingsAD[member][submember][subsubmember] = default;
				return default;
			end
		end
	end
	return AllTheThingsAD[member][submember][subsubmember];
end
local function SetPersonalDataSubSubMember(member, submember, subsubmember, data)
	if AllTheThingsPCD[member] and AllTheThingsPCD[member][submember] then AllTheThingsPCD[member][submember][subsubmember] = data; end
end
local function GetPersonalDataSubSubMember(member, submember, subsubmember, default)
	if not AllTheThingsPCD[member] then
		AllTheThingsPCD[member] = 
		{
			[submember] = 
			{
				[subsubmember] = default;
			};
		};
		return default;
	else
		if not AllTheThingsPCD[member][submember] then
			AllTheThingsPCD[member][submember] = 
			{
				[subsubmember] = default;
			};
			return default;
		else
			if AllTheThingsPCD[member][submember][subsubmember] == nil then
				AllTheThingsPCD[member][submember][subsubmember] = default;
				return default;
			end
		end
	end
	return AllTheThingsPCD[member][submember][subsubmember];
end
local function SetTempDataSubSubMember(member, submember, subsubmember, data)
	if AllTheThingsTempData[member] and AllTheThingsTempData[member][submember] then AllTheThingsTempData[member][submember][subsubmember] = data; end
end
local function GetTempDataSubSubMember(member, submember, subsubmember, default)
	if not AllTheThingsTempData[member] then
		AllTheThingsTempData[member] = 
		{
			[submember] = 
			{
				[subsubmember] = default;
			};
		};
		return default;
	else
		if not AllTheThingsTempData[member][submember] then
			AllTheThingsTempData[member][submember] = 
			{
				[subsubmember] = default;
			};
			return default;
		else
			if AllTheThingsTempData[member][submember][subsubmember] == nil then
				AllTheThingsTempData[member][submember][subsubmember] = default;
				return default;
			end
		end
	end
	return AllTheThingsTempData[member][submember][subsubmember];
end

-- Localization Lib
app.Locales = {};
app.print = function(msg, ...)
	DEFAULT_CHAT_FRAME:AddMessage(app.DisplayName .. ": " .. (msg or "nil"), ...);
end
local function L(name, ...)
	return name and app.LL[name];
end
local function SetLocale(loc)
	loc = loc or app.Locale or "enUS";
	if app.Locale ~= loc then
		-- Load in the table
		if app.Locales then
			app.Locale = loc;
			app.LL = app.Locales[loc] or app.Locales.enUS;
		end
	end
end
local function ShowInterfaceOptions()
	if InterfaceOptionsFrame:IsVisible() then
		InterfaceOptionsFrame_Show();
	else
		InterfaceOptionsFrame_OpenToCategory(L("TITLE_OPTIONS"));
		InterfaceOptionsFrame_OpenToCategory(L("TITLE_OPTIONS"));
	end
end

-- audio lib
local lastPlayedFanfare;
local function PlayFanfare()
	if GetDataMember("PlayFanfare", true) then
		-- Don't spam the users. It's nice sometimes, but let's put a delay of at least 1 second on there.
		local now = time();
		if lastPlayedFanfare and (now - lastPlayedFanfare) < 1 then return nil; end
		lastPlayedFanfare = now;
		
		-- Play a random fanfare from the locale table
		local t = L("AUDIO_FANFARE_TABLE");
		if t and type(t) == "table" then
			local id = math.random(1, #t);
			if t[id] then PlaySoundFile(t[id], "master"); end
		end
	end
end
local function PlayRemoveSound()
	if GetDataMember("PlayRemoveSound", true) then
		-- Play a random fanfare from the locale table
		local t = L("AUDIO_REMOVE_TABLE");
		if t and type(t) == "table" then
			local id = math.random(1, #t);
			if t[id] then PlaySoundFile(t[id], "master"); end
		end
	end
end

-- Color Lib
local CS = CreateFrame("ColorSelect", nil, app);
local function Colorize(str, color)
	return "|c" .. color .. str .. "|r";
end
local function RGBToHex(r, g, b)
	return string.format("ff%02x%02x%02x", 
		r <= 255 and r >= 0 and r or 0, 
		g <= 255 and g >= 0 and g or 0, 
		b <= 255 and b >= 0 and b or 0);
end
local function ConvertColorRgbToHsv(r, g, b)
  CS:SetColorRGB(r, g, b);
  local h,s,v = CS:GetColorHSV()
  return {h=h,s=s,v=v}
end
local red, green = ConvertColorRgbToHsv(1,0,0), ConvertColorRgbToHsv(0,1,0);
local progress_colors = setmetatable({}, {
	__index = function(t, p)
		local h;
		p = tonumber(p);
		if abs(red.h - green.h) > 180 then
		local angle = (360 - abs(red.h - green.h)) * p;
		if red.h < green.h then
			h = floor(red.h - angle);
			if h < 0 then h = 360 + h end
			else
				h = floor(red.h + angle);
				if h > 360 then h = h - 360 end
			end
		else
			h = floor(red.h-(red.h-green.h)*p)
		end
		CS:SetColorHSV(h, red.s-(red.s-green.s)*p, red.v-(red.v-green.v)*p);
		local r,g,b = CS:GetColorRGB();
		local color = RGBToHex(r * 255, g * 255, b * 255);
		rawset(t, p, color);
		return color;
	end
});
local function GetProgressColor(p)
	return progress_colors[p];
end
CS:Hide();

-- Coroutine Helper Functions
local function OnUpdate(self)
	for i=#self.__stack,1,-1 do
		if not self.__stack[i]() then
			table.remove(self.__stack, i);
			if #self.__stack < 1 then
				self:SetScript("OnUpdate", nil);
			end
		end
	end
end
local function Push(self, method)
	if not self.__stack then
		self.__stack = {};
		self:SetScript("OnUpdate", OnUpdate);
	elseif #self.__stack < 1 then 
		self:SetScript("OnUpdate", OnUpdate);
	end
	table.insert(self.__stack, method);
end
local function StartCoroutine(self, method)
	if method then
		local instance = coroutine.create(method);
		Push(self, function()
			-- Check the status of the coroutine
			if instance and coroutine.status(instance) ~= "dead" then
				local ok, err = coroutine.resume(instance);
				if ok then return true;	-- This means more work is required.
				else
					-- Show the error. Returning nothing is the same as cancelling the work.
					app.print("Error processing coroutine: ");
					app.print(err);
				end
			end
		end);
	end
end

-- Source ID Harvesting Lib
local SourceIDs = {};
local DressUpModel = CreateFrame('DressUpModel');
local NPCModelHarvester = CreateFrame('DressUpModel', nil, OffScreenFrame);
local inventorySlotsMap = {	-- Taken directly from CanIMogIt (Thanks!)
    ["INVTYPE_HEAD"] = {1},
    ["INVTYPE_SHOULDER"] = {3},
    ["INVTYPE_BODY"] = {4},
    ["INVTYPE_CHEST"] = {5},
    ["INVTYPE_ROBE"] = {5},
    ["INVTYPE_WAIST"] = {6},
    ["INVTYPE_LEGS"] = {7},
    ["INVTYPE_FEET"] = {8},
    ["INVTYPE_WRIST"] = {9},
    ["INVTYPE_HAND"] = {10},
    ["INVTYPE_CLOAK"] = {15},
    ["INVTYPE_WEAPON"] = {16, 17},
    ["INVTYPE_SHIELD"] = {17},
    ["INVTYPE_2HWEAPON"] = {16, 17},
    ["INVTYPE_WEAPONMAINHAND"] = {16},
    ["INVTYPE_RANGED"] = {16},
    ["INVTYPE_RANGEDRIGHT"] = {16},
    ["INVTYPE_WEAPONOFFHAND"] = {17},
    ["INVTYPE_HOLDABLE"] = {17},
    ["INVTYPE_TABARD"] = {19},
};
local function BuildSourceText(group, l)
	if group.parent then
		if l < 1 then
			if group.dr then
				return BuildSourceText(group.parent, l + 1) .. "/ |c" .. GetProgressColor(group.dr * 0.01) .. tostring(group.dr) .. "%|r";
			else
				return BuildSourceText(group.parent, l + 1);
			end
		else
			return BuildSourceText(group.parent, l + 1) .. " -> " .. (group.text or "*");
		end
	else 
		return group.text or "*";
	end
end
local function GetSourceID(itemLink)
    if IsDressableItem(itemLink) then
		local itemID, _, _, slotName = GetItemInfoInstant(itemLink);
		if slotName then
			local slots = inventorySlotsMap[slotName];
			if slots then
				DressUpModel:SetUnit('player');
				DressUpModel:Undress();
				for i, slot in pairs(slots) do
					DressUpModel:TryOn(itemLink, slot);
					local sourceID = DressUpModel:GetSlotTransmogSources(slot);
					if sourceID and sourceID ~= 0 then return sourceID, true; end
				end
			end
		end
		return nil, true;
	end
	return nil, false;
end
AllTheThings.GetSourceID = GetSourceID;
local function SetPortraitIcon(self, data, x)
	self.lastData = data;
	if data.icon then
		self:SetTexture(data.icon);
		self:SetWidth(self:GetHeight());
		return true;
	elseif GetDataMember("ShowModels") then
		if data.displayID then
			SetPortraitTexture(self, data.displayID);
			self:SetWidth(self:GetHeight());
			return true;
		elseif data.creatureID then
			if data.creatureID < 0 then
				-- A negative creature ID is actually a displayInfo ID.
				SetPortraitTexture(self, math.abs(data.creatureID));
				self:SetWidth(self:GetHeight());
				return true;
			end
		elseif data.atlas then
			self:SetAtlas(data.atlas);
			self:SetWidth(self:GetHeight());
			if data["atlas-background"] then
				self.Background:SetAtlas(data["atlas-background"]);
				self.Background:SetWidth(self:GetHeight());
				self.Background:Show();
			end
			if data["atlas-border"] then
				self.Border:SetAtlas(data["atlas-border"]);
				self.Border:SetWidth(self:GetHeight());
				self.Border:Show();
				if data["atlas-color"] then
					local swatches = data["atlas-color"];
					self.Border:SetVertexColor(swatches[1], swatches[2], swatches[3], swatches[4] or 1.0);
				else
					self.Border:SetVertexColor(1, 1, 1, 1.0);
				end
			end
			return true;
		end
	end
end
GameTooltipModel.SetCreatureID = function(self, creatureID)
	if creatureID < 0 then
		self.Model:SetDisplayInfo(math.abs(creatureID));
	else
		self.Model:SetUnit("none");
		self.Model:SetCreature(creatureID);
		if not self.Model:GetModelFileID() then
			Push(app, function()
				if self.lastModel == creatureID then
					self:SetCreatureID(creatureID);
				end
			end);
		end
	end
	self:Show();
end
GameTooltipModel.TrySetModel = function(self, reference)
	if GetDataMember("ShowModels") then
		self.lastModel = reference;
		if reference.displayID then
			self.Model:SetRotation(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetDisplayInfo(reference.displayID);
			self:Show();
			return true;
		elseif reference.creatureID then
			self.Model:SetRotation(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self:SetCreatureID(reference.creatureID);
			return true;
		elseif reference.model then
			self.Model:SetRotation(reference.modelRotation and ((reference.modelRotation * math.pi) / 180) or MODELFRAME_DEFAULT_ROTATION);
			self.Model:SetCamDistanceScale(reference.modelScale or 1);
			self.Model:SetUnit("none");
			self.Model:SetModel(reference.model);
			self:Show();
			return true;
		elseif reference.atlas then
			GameTooltipIcon:SetSize(64,64);
			GameTooltipIcon.icon:SetAtlas(reference.atlas);
			GameTooltipIcon:Show();
			if reference["atlas-background"] then
				GameTooltipIcon.icon.Background:SetAtlas(reference["atlas-background"]);
				GameTooltipIcon.icon.Background:Show();
			end
			if reference["atlas-border"] then
				GameTooltipIcon.icon.Border:SetAtlas(reference["atlas-border"]);
				GameTooltipIcon.icon.Border:Show();
				if reference["atlas-color"] then
					local swatches = reference["atlas-color"];
					GameTooltipIcon.icon.Border:SetVertexColor(swatches[1], swatches[2], swatches[3], swatches[4] or 1.0);
				else
					GameTooltipIcon.icon.Border:SetVertexColor(1, 1, 1, 1.0);
				end
			end
			return true;
		end
	end
end

-- Quest Name Harvesting Lib (http://www.wowinterface.com/forums/showthread.php?t=46934)
local QuestHarvester = CreateFrame("GameTooltip", "AllTheThingsQuestHarvester", UIParent, "GameTooltipTemplate");
local QuestTitleFromID = setmetatable({}, { __index = function(t, id)
	QuestHarvester:SetOwner(UIParent, "ANCHOR_NONE");
	QuestHarvester:SetHyperlink("quest:"..id);
	local title = AllTheThingsQuestHarvesterTextLeft1:GetText();
	QuestHarvester:Hide()
	if title and title ~= RETRIEVING_DATA then
		t[id] = title
		return title
	end
end })

-- NPC & Title Name Harvesting Lib (https://us.battle.net/forums/en/wow/topic/20758497390?page=1#post-4, Thanks Gello!)
local NPCTitlesFromID = {};
local NPCNameFromID = setmetatable({}, { __index = function(t, id)
	QuestHarvester:SetOwner(UIParent,"ANCHOR_NONE")
	QuestHarvester:SetHyperlink(format("unit:Creature-0-0-0-0-%d-0000000000",id))
	local title = AllTheThingsQuestHarvesterTextLeft1:GetText();
	if title and QuestHarvester:NumLines() > 2 then
		-- title = title .. " <" .. AllTheThingsQuestHarvesterTextLeft2:GetText() .. ">";
		NPCTitlesFromID[id] = AllTheThingsQuestHarvesterTextLeft2:GetText();
	end
	QuestHarvester:Hide();
	if title and title ~= RETRIEVING_DATA then
		t[id] = title
		return title;
	end
end })

-- Search Caching
local searchCache = {};
local function GetCachedSearchResults(search, method, ...)
	if search then
		local now = time();
		local cache = searchCache[search];
		if cache and (now - cache[3]) < cache[4] then return cache[1], cache[2]; end
		local listing, group, working, important = method(...);
		if listing then
			-- Cache the result for a while depending on the importance of the item
			cache = { };
			cache[1] = listing;
			if group then
				cache[2] = group[1];
				if GetDataMember("ShowSources") then
					local temp = {};
					local abbrevs = L("ABBREVIATIONS");
					for i,j in ipairs(group) do
						local text = BuildSourceText(j, 0);
						for source,replacement in pairs(abbrevs) do
							text = string.gsub(text, source,replacement);
						end
						tinsert(temp, 1, text);
						if not GetDataMember("ShowAllSources") then break; end
					end
					for i,j in ipairs(temp) do
						tinsert(listing, 1, j);
					end
				end
			else
				cache[2] = nil;
			end
			cache[3] = now;
			cache[4] = (working and 0.25) or (important and 60) or 100000000;
			searchCache[search] = cache;
			return listing, cache[2];
		else
			-- Cache the result for a while depending on the importance of the item
			cache = { };
			cache[1] = nil;
			cache[2] = nil;
			cache[3] = now;
			cache[4] = 100000000;
			searchCache[search] = cache;
			return nil;
		end
	end
end

-- Lua Constructor Lib
local fieldCache, fieldCache_f, firldCache_g = {};
fieldCache["creatureID"] = {};
fieldCache["objectID"] = {};
fieldCache["itemID"] = {};
fieldCache["mapID"] = {};
fieldCache["s"] = {};
fieldCache["speciesID"] = {};
fieldCache["spellID"] = {};
fieldCache["toyID"] = {};
local function CacheFieldID(group, field)
	firldCache_g = group[field];
	if firldCache_g then
		fieldCache_f = fieldCache[field][firldCache_g];
		if not fieldCache_f then
			fieldCache_f = {};
			fieldCache[field][firldCache_g] = fieldCache_f;
		end
		tinsert(fieldCache_f, group);
	end
end
local function CacheFields(group)
	CacheFieldID(group, "creatureID");
	CacheFieldID(group, "objectID");
	CacheFieldID(group, "itemID");
	CacheFieldID(group, "mapID");
	CacheFieldID(group, "s");
	CacheFieldID(group, "speciesID");
	CacheFieldID(group, "spellID");
	CacheFieldID(group, "toyID");
	return group;
end
local constructor = function(id, t, typeID)
	if not t then
		return { [typeID] = id };
	end
	if not t.groups and t[1] then
		t = { ["groups"] = t, [typeID] = id };
	else
		t[typeID] = id;
	end
	return t;
end
local createInstance = function(template, prototype)
	return CacheFields(setmetatable(template, prototype));
end

-- Item Information Lib
local function SortGearSetInformation(a,b)
	local first = a.uiOrder - b.uiOrder;
	if first == 0 then return a.setID < b.setID; end
	return first < 0;
end
local function GetArtifactCache()
	local cache = GetTempDataMember("ARTIFACT_CACHE");
	if not cache then
		cache = {};
		SetTempDataMember("ARTIFACT_CACHE", cache);
		for i=1,10000,1 do
			if C_ArtifactUI_GetAppearanceInfoByID(i) then
				tinsert(cache, app.CreateArtifact(i));
			end
		end
	end
	return cache;
end
local function GetFactionCache()
	local cache = GetTempDataMember("FACTION_CACHE");
	if not cache then
		cache = {};
		SetTempDataMember("FACTION_CACHE", cache);
		for i=1,10000,1 do
			if GetFactionInfoByID(i) then
				tinsert(cache, app.CreateFaction(i));
			end
		end
	end
	return cache;
end
local function GetIllusionCache()
	local cache = GetTempDataMember("ILLUSION_CACHE");
	if not cache then
		cache = {};
		SetTempDataMember("ILLUSION_CACHE", cache);
		for i=1,10000,1 do
			local visualID = select(1, C_TransmogCollection.GetIllusionSourceInfo(i));
			if visualID and visualID > 0 then
				tinsert(cache, app.CreateIllusion(i));
			end
		end
	end
	return cache;
end
local function GetProfessionCache(invalidate)
	local cache = GetTempDataMember("PROFESSION_CACHE");
	if not cache or invalidate then
		cache = {};
		SetTempDataMember("PROFESSION_CACHE", cache);
		for i,j in ipairs({GetProfessions()}) do
			cache[select(7, GetProfessionInfo(j))] = true;
		end
	end
	return cache;
end
local function GetTitleCache()
	local cache = GetTempDataMember("TITLE_CACHE");
	if not cache then
		cache = {};
		SetTempDataMember("TITLE_CACHE", cache);
		for i=1,10000,1 do
			if GetTitleName(i) then
				tinsert(cache, app.CreateTitle(i));
			end
		end
	end
	return cache;
end
local function GetGearSetCache()
	if true then return nil; end
	local cache = GetTempDataMember("GEAR_SET_CACHE", {});
	-- SetDataMember("GEAR_SET_CACHE", cache);
	local sets = C_TransmogSets.GetAllSets();
	if sets then
		local gearSets = {};
		for index = 1,#sets do
			local s = sets[index];
			if s then
				local sources = {};
				tinsert(gearSets, setmetatable({ ["setID"] = s.setID, ["uiOrder"] = s.uiOrder, ["groups"] = sources }, app.BaseGearSet));
				for sourceID, value in pairs(C_TransmogSets.GetSetSources(s.setID)) do
					tinsert(sources, setmetatable({ s = sourceID }, app.BaseGearSource));
				end
			end
		end
		table.sort(gearSets, SortGearSetInformation);
		
		-- Let's build some headers!
		local headers = {};
		local header, subheader, lastHeader, lastSubHeader, lastHeaderText, lastSubHeaderText;
		for i, gearSet in ipairs(gearSets) do
			header = gearSet.header;
			if header then
				if header ~= lastHeaderText then
					if headers[header] then
						lastHeader = headers[header];
					else
						lastHeader = setmetatable({ ["setHeaderID"] = gearSet.setID, ["subheaders"] = {}, ["groups"] = {} }, app.BaseGearSetHeader);
						tinsert(cache, lastHeader);
						lastHeader = lastHeader;
						headers[header] = lastHeader;
					end
					lastHeaderText = header;
					lastSubHeaderText = nil;
				end
			else
				lastHeader = cache;
				lastHeaderText = header;
			end
			subheader = gearSet.subheader;
			if subheader then
				if subheader ~= lastSubHeaderText then
					if lastHeader and lastHeader.subheaders then
						if lastHeader.subheaders[subheader] then
							lastSubHeader = lastHeader.subheaders[subheader];
						else
							lastSubHeader = setmetatable({ ["setSubHeaderID"] = gearSet.setID, ["groups"] = { } }, app.BaseGearSetSubHeader);
							tinsert(lastHeader and lastHeader.groups or lastHeader, lastSubHeader);
							lastSubHeader = lastSubHeader;
							lastHeader.subheaders[subheader] = lastSubHeader;
						end
					else
						lastSubHeader = setmetatable({ ["setSubHeaderID"] = gearSet.setID, ["groups"] = { } }, app.BaseGearSetSubHeader);
						tinsert(lastHeader and lastHeader.groups or lastHeader, lastSubHeader);
						lastSubHeader = lastSubHeader;
					end
					lastSubHeaderText = subheader;
				end
			else
				lastSubHeader = lastHeader;
				lastSubHeaderText = subheader;
			end
			gearSet.uiOrder = nil;
			tinsert(lastSubHeader and lastSubHeader.groups or lastSubHeader, gearSet);
		end
	end
	return cache;
end
local function GetMountInfoCache()
	local cache = GetTempDataMember("MOUNT_CACHE", {});
	--SetDataMember("MOUNT_CACHE", cache);
	local spellID_MountID = GetTempDataMember("MOUNT_SPELLID_TO_MOUNTID");
	if not spellID_MountID then
		local numMounts = C_MountJournal.GetNumMounts();
		if numMounts < 1 then return {}; end
		
		-- Detect how many mounts there are. If 0, Blizzard isn't ready yet.
		local mountIDs = C_MountJournal.GetMountIDs();
		if #mountIDs < 1 then return {}; end
		
		-- Let's build the spellID_MountID and mount cache.
		local listedMounts = GetTempDataMember("MOUNT_CACHE_LISTED", {});
		local temp = GetTempDataMember("COMPANION_PET_SOURCE_TYPES", {});
		local collected = GetDataMember("CollectedMounts", {});
		if #temp < 1 then
			for i=1,C_PetJournal.GetNumPetSources() do
				local t = { ["text"] = _G["BATTLE_PET_SOURCE_"..i], ["groups"] = {} };
				temp[i] = t;
				tinsert(cache, t);
			end
		end
		spellID_MountID = {};
		for i,mountID in ipairs(mountIDs) do
			-- The 2nd value in the list is the spellID for the mount.
			local creatureName, spellID, icon, active, isUsable, sourceType, isFavorite, isFactionSpecific, faction, hideOnChar, isCollected = C_MountJournal_GetMountInfoByID(mountID);
			if spellID then
				spellID_MountID[spellID] = mountID;
				if isCollected then collected[spellID] = 1; end
				if not (hideOnChar or listedMounts[spellID]) then
					listedMounts[spellID] = true;
					if temp[sourceType or 1] then tinsert(temp[sourceType or 1].groups, setmetatable({ ["mountID"] = spellID }, app.BaseMount));
					else tinsert(cache, setmetatable({ ["mountID"] = spellID }, app.BaseMount)); end
				end
			end
		end
		
		-- Assign to the temporary data container.
		SetTempDataMember("MOUNT_SPELLID_TO_MOUNTID", spellID_MountID);
	end
	return spellID_MountID;
end
local function GetMountInfo(spellID)	-- NOTE: MountID is ACTUALLY the SpellID. Addon developers: Do not confuse this as I did, mountID can be different per spec/faction.
	return C_MountJournal_GetMountInfoByID(GetMountInfoCache()[spellID]);
end
local function GetMountExtraInfo(spellID)	-- NOTE: MountID is ACTUALLY the SpellID. Addon developers: Do not confuse this as I did, mountID can be different per spec/faction.
	local mountID = GetMountInfoCache()[spellID];
	if mountID then return C_MountJournal_GetMountInfoExtraByID(mountID); end
end
local function GetRelativeDifficulty(group, difficultyID)
	if group then
		if group.difficultyID then
			if group.difficultyID == difficultyID then
				return true;
			end
			if group.difficulties then
				for i, difficulty in ipairs(group.difficulties) do
					if difficulty == difficultyID then
						return true;
					end
				end
			end
		end
		if group.parent then return GetRelativeDifficulty(group.parent, difficultyID); end
	end
end
local function SearchForFieldRecursively(group, field, value)
	if group[field] == value then
		-- OH BOY, WE FOUND IT!
		return { group };
	end
	if group.groups then
		-- Go through the sub groups and determine if any of them have a response.
		local first = nil;
		for i, subgroup in ipairs(group.groups) do
			local g = SearchForFieldRecursively(subgroup, field, value);
			if g then
				if first then
					-- Merge!
					tinsert(first, g[1]);
				else
					-- Cool! (This should be the most common occurance)
					first = g;
				end
			end
		end
		return first;
	end
end
local function SearchForField(field, value)
	local group = app:GetDataCache();
	if group and field and value then
		if fieldCache[field] then return fieldCache[field][value]; end
		return SearchForFieldRecursively(group, field, value);
	end
end
local function SearchForFieldAndSummarize(field, value)
	local group = SearchForField(field, value);
	if group then return {}, group; end
end
local function SearchForFieldAndSummarizeForCurrentDifficulty(field, value)
	local group = SearchForField(field, value);
	if group then
		local _, _, difficultyID = GetInstanceInfo();
		for i,j in ipairs(group) do
			if GetRelativeDifficulty(j, difficultyID) then
				group = {j};
				break;
			end
		end
		return {}, group;
	end
end
local function SearchForItemIDRecursively(group, itemID)
	if group.itemID == itemID then
		-- OH BOY, WE FOUND IT!
		return { group };
	end
	if group.groups then
		-- Go through the sub groups and determine if any of them have a response.
		local first = nil;
		for i, subgroup in ipairs(group.groups) do
			local g = SearchForItemIDRecursively(subgroup, itemID);
			if g then
				if first then
					-- Merge!
					tinsert(first, g[1]);
				else
					-- Cool! (This should be the most common occurance)
					first = g;
				end
			end
		end
		return first;
	end
end
local function SearchForItemID(itemID)
	local group = app:GetDataCache();
	if group and itemID and itemID > 0 then
		if fieldCache["itemID"] then return fieldCache["itemID"][itemID]; end
		return SearchForItemIDRecursively(group, itemID);
	end
end
local function SearchForItemIDRecursivelyQuickly(group, itemID)
	if group.itemID == itemID then
		-- OH BOY, WE FOUND IT!
		return { group };
	end
	if group.groups then
		-- Go through the sub groups and determine if any of them have a response.
		local first = nil;
		for i, subgroup in ipairs(group.groups) do
			local g = SearchForItemIDRecursively(subgroup, itemID);
			if g then
				if first then
					-- Merge!
					tinsert(first, g[1]);
				else
					-- Cool! (This should be the most common occurance)
					first = g;
				end
			end
		end
		return first;
	end
end
local function SearchForItemIDQuickly(itemID)
	local group = app:GetDataCache();
	if group and itemID and itemID > 0 then
		if fieldCache["itemID"] then return fieldCache["itemID"][itemID]; end
		return SearchForItemIDRecursivelyQuickly(group, itemID);
	end
end
local function SearchForSourceIDRecursively(group, sourceID)
	if group.s == sourceID then
		-- OH BOY, WE FOUND IT!
		return { group };
	end
	if group.groups then
		-- Go through the sub groups and determine if any of them have a response.
		local first = nil;
		for i, subgroup in ipairs(group.groups) do
			local g = SearchForSourceIDRecursively(subgroup, sourceID);
			if g then
				if first then
					-- Merge!
					tinsert(first, g[1]);
				else
					-- Cool! (This should be the most common occurance)
					first = g;
				end
			end
		end
		return first;
	end
end
local function SearchForSourceID(sourceID)
	local group = app:GetDataCache();
	if group and sourceID and sourceID > 0 then
		if fieldCache["s"] then return fieldCache["s"][sourceID]; end
		return SearchForSourceIDRecursively(group, sourceID);
	end
end
local function SearchForSourceIDRecursivelyQuickly(group, sourceID)
	if group.s == sourceID then
		-- OH BOY, WE FOUND IT!
		return { group };
	end
	if group.groups then
		-- Go through the sub groups and determine if any of them have a response.
		for i, subgroup in ipairs(group.groups) do
			local g = SearchForSourceIDRecursivelyQuickly(subgroup, sourceID);
			if g then return g; end
		end
	end
end
local function SearchForSourceIDQuickly(sourceID)
	local group = app:GetDataCache();
	if group and sourceID and sourceID > 0 then
		if fieldCache["s"] then return fieldCache["s"][sourceID]; end
		return SearchForSourceIDRecursivelyQuickly(group, sourceID);
	end
end
local function SearchForItemLink(link)
	if string.match(link, "item") then
		-- Skip artifact weapons and common for now
		local quality = select(3, GetItemInfo(link));
		if quality and (quality < LE_ITEM_QUALITY_COMMON) then -- quality == LE_ITEM_QUALITY_ARTIFACT or 
			return nil; -- Do not search for Artifact, Poor, or Common Items.
		end
	
		-- Parse the link and get the itemID and bonus ids.
		local itemString = string.match(link, "item[%-?%d:]+") or link;
		if itemString then
			local _, itemID, enchantId, gemId1, gemId2, gemId3, gemId4, suffixId, uniqueId, linkLevel, 
				specializationID, upgradeId, difficultyID, numBonusIds = strsplit(":", link);
			itemID = tonumber(itemID or "0") or 0;
			if itemID then
				local listing = {};
				
				local group, working, important;
				-- Source ID searching is much faster and more reliable.
				local sourceID = GetSourceID(link);
				if sourceID then
					important = true;
					if GetDataMember("ShowAllSources") then
						group = SearchForSourceID(sourceID) or SearchForItemID(itemID);
					else
						group = SearchForSourceIDQuickly(sourceID) or SearchForItemIDQuickly(itemID);
					end
					local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID);
					if sourceInfo then
						--[[
						for key, value in pairs(sourceInfo) do
							tinsert(listing, tostring(key) .. ": " .. tostring(value));
						end
						]]--
						if GetDataMember("ShowSharedAppearances") then
							if GetDataMember("ShowUnobtainableAppearanceInformation") then 
								for i, otherSourceID in ipairs(C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID)) do
									local otherATTSource = SearchForSourceIDQuickly(otherSourceID);
									if otherATTSource then
										local text;
										otherATTSource = otherATTSource[1];
										local link = otherATTSource.link;
										if not link then 
											link = RETRIEVING_DATA;
											working = true;
										end
										if otherATTSource.u then
											local texture = L("UNOBTAINABLE_ITEM_TEXTURES")[L("UNOBTAINABLE_ITEM_REASONS")[otherATTSource.u or 1][1]];
											if texture then
												text = "|T" .. texture .. ":0|t";
											else
												text = "   ";
											end
										else
											text = "   ";
										end
										text = text .. link .. (GetDataMember("ShowItemID") and (" (" .. (otherSourceID == sourceID and "*" or otherATTSource.itemID) .. ")") or "") .. "/" .. L(otherATTSource.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON");
										tinsert(listing, text);
									else
										local otherSource = C_TransmogCollection_GetSourceInfo(otherSourceID);
										if otherSource then
											local text;
											local link = select(2, GetItemInfo(otherSource.itemID));
											if not link then 
												link = RETRIEVING_DATA;
												working = true;
											end
											text = "   " .. link .. (GetDataMember("ShowItemID") and (" (" .. (otherSourceID == sourceID and "*" or otherSource.itemID) .. ")") or "") .. "/" .. L(otherSource.isCollected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON");
											if otherSource.isCollected then
												SetDataSubMember("CollectedSources", otherSourceID, 1);
											end
											tinsert(listing, text);
										end
									end
								end
							else
								for i, otherSourceID in ipairs(C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID)) do
									local otherSource = C_TransmogCollection_GetSourceInfo(otherSourceID);
									if otherSource then
										local text;
										local link = select(2, GetItemInfo(otherSource.itemID));
										if not link then 
											link = RETRIEVING_DATA;
											working = true;
										end
										text = "   " .. link .. (GetDataMember("ShowItemID") and (" (" .. (otherSourceID == sourceID and "*" or otherSource.itemID) .. ")") or "") .. "/" .. L(otherSource.isCollected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON");
										if otherSource.isCollected then
											SetDataSubMember("CollectedSources", otherSourceID, 1);
										end
										tinsert(listing, text);
									end
								end
							end
						end
						if GetDataMember("ShowVisualID") then tinsert(listing, L("VISUAL_ID") .. "/" .. tostring(sourceInfo.visualID)); end
						if GetDataMember("ShowSourceID") then tinsert(listing, L("SOURCE_ID") .. "/" .. sourceID .. " " .. L(sourceInfo.isCollected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON")); end
					end
				elseif GetDataMember("ShowSources") then
					if GetDataMember("ShowAllSources") then
						group = SearchForItemID(itemID);
					else
						group = SearchForItemIDQuickly(itemID);
					end
				end
				
				if GetDataMember("ShowItemID") and itemID > 0 then tinsert(listing, L("ITEM_ID") .. "/" .. itemID); end
				if GetDataMember("ShowItemString") then tinsert(listing, itemString); end
				
				-- Cache the result for a while depending on the importance of the item
				return listing, group, working, important;
			end
		end
	else
		-- return { "Unsupported link: " .. link };
	end
end
local function SearchForMissingItemsRecursively(group, listing)
	if app.FilterItemClass(group) then
		if (not group.collected or (group.total and (group.collected < group.total))) and (not group.b or group.b == 2) then
			local name = group.name;
			if name then listing[name] = 1; end
		end
		if group.groups then
			-- Go through the sub groups and determine if any of them have a response.
			for i, subgroup in ipairs(group.groups) do
				SearchForMissingItemsRecursively(subgroup, listing);
			end
		end
	end
end
local function SearchForMissingItems(group)
	local listing, arr = {}, {};
	SearchForMissingItemsRecursively(group, listing);
	for key,value in pairs(listing) do
		table.insert(arr, key);
	end
	return arr; 
end
AllTheThings.SearchForItemID = SearchForItemID;
AllTheThings.SearchForSourceID = SearchForSourceIDQuickly;
AllTheThings.SearchForItemLink = SearchForItemLink;
AllTheThings.SearchForField = SearchForField;

-- Map Information Lib
local function ExpandGroupsRecursively(group, expanded)
	if group.groups and not group.itemID then
		group.expanded = expanded;
		for i, subgroup in ipairs(group.groups) do
			ExpandGroupsRecursively(subgroup, expanded);
		end
	end
end
local function FindMapDataRecursively(listing, data, mapID)
	if data then
		for i, group in ipairs(data) do
			if group.mapID then
				-- Return the group if it has the map ID we're looking for.
				if group.mapID == mapID then
					-- Expand/Collapse the Difficulties (must be one level below)
					if group.groups then
						local found = false;
						local _, _, difficultyID = GetInstanceInfo();
						ExpandGroupsRecursively(group, true);
						if difficultyID then
							for j, subgroup in ipairs(group.groups) do
								if subgroup.difficultyID then
									subgroup.expanded = subgroup.difficultyID == difficultyID;
									if subgroup.expanded then found = true; end
								end
							end
							if not found then
								difficultyID = difficultyID + 1;
								for j, subgroup in ipairs(group.groups) do
									if subgroup.difficultyID then
										subgroup.expanded = subgroup.difficultyID == difficultyID;
										if subgroup.expanded then found = true; end
									end
								end
							end
						end
					end
					tinsert(listing, group);
				else
					-- A map may have a sub-map inside of it.
					FindMapDataRecursively(listing, group.groups, mapID);
				end
			elseif group.objectID or group.questID or group.difficultyID or group.itemID then
				-- Fall through to the next group. NPC ID is sorta deceptive, it's a special identifier I use for World Drops, sub groups, etc.)
			else
				-- This must be the parent group (ALL THE THINGS) or a Tier (Dungeons & Raids - Classic, Burning Crusade, etc)
				FindMapDataRecursively(listing, group.groups, mapID);
			end
		end
	end
end
local function FindMapData(mapID)
	local allData, listing = app:GetDataCache(), {};
	if allData then
		FindMapDataRecursively(listing, allData.groups, mapID);
		if #listing > 0 then return listing; end
	end
end
local function OpenMiniList(mapID)
	-- If there is at not at least one window visible after this, hide the app window.
	local popout = app:GetWindow("CurrentInstance");
	local mapData = SearchForField("mapID", mapID);
	if mapData then
		-- Simplify the returned groups
		if #mapData < 2 then
			-- Only one object matched.
			mapData = setmetatable({}, { __index = mapData[1] });
		else
			-- A couple of objects matched, let's make a header.
			local header = setmetatable(constructor(mapID, { groups = {}, total = 0, collected = 0, indent = 0, visible = true }, "mapID"), app.BaseMap);
			for i, group in ipairs(mapData) do
				if group.text == header.text then
					-- Merge the subgroups with the header groups
					for j, subgroup in ipairs(group.groups) do
						tinsert(header.groups, subgroup);
					end
					for key,value in pairs(group) do
						if key ~= "groups" and key ~= "collected" and key ~= "total" then
							header[key] = value;
						end
					end
				else
					tinsert(header.groups, group);
					if group.indent and group.indent > header.indent then
						header.indent = group.indent;
					end
				end
				header.collected = header.collected + (group.collected or 0);
				header.total = header.total + (group.total or 0);
			end
			
			-- Swap out the map data for the header.
			mapData = header;
		end
		
		-- Check to see if it is empty.
		if popout.data then ExpandGroupsRecursively(popout.data, false); end
		
		-- Check to see completion...
		popout.data = mapData;
		ExpandGroupsRecursively(popout.data, true);
		if mapData.collected == mapData.total then
			if mapData.groups and #mapData.groups > 0 then
				--app.print("You've collected " .. app.DisplayName .. " from " .. (GetRealZoneText() or "this zone") .. ".");
				popout:SetVisible(true);
				return false;
			else
				-- There are no items in this group. Just hide it. Probably not in yet.
				popout:SetVisible(false);
				return false;
			end
		else
			popout:SetVisible(true);
			return false;
		end
	end
	
	-- This can trigger when you login.
	-- app.print("There isn't anything listed for " .. (GetRealZoneText() or "") .. ": " ..(GetSubZoneText() or "").. ".");
end
local function OpenMiniListForCurrentZone()
	-- Cache the original map ID.
	local originalMapID = GetCurrentMapAreaID();
	SetMapToCurrentZone();
	local mapID = GetCurrentMapAreaID();
	SetMapByID(originalMapID);
	OpenMiniList(mapID);
end
local function ToggleMiniListForCurrentZone()
	local popout = app:GetWindow("CurrentInstance");
	if popout:IsVisible() then
		popout:Toggle();
	else
		OpenMiniListForCurrentZone();
	end
end
local function RefreshLocation(force)
	if not app.refreshingLocation then
		local automaticMiniList = GetDataMember("AutoMiniList", true);
		if automaticMiniList then
			app.refreshingLocation = true;
			StartCoroutine(app, function()
				-- While the player is in combat, wait for combat to end.
				while InCombatLockdown() do coroutine.yield(); end
				
				-- Cache the original map ID.
				local originalMapID = GetCurrentMapAreaID();
				SetMapToCurrentZone();
				local mapID = GetCurrentMapAreaID();
				
				-- Onyxia's Lair fix
				local text_to_mapID = L("ZONE_TEXT_TO_MAP_ID");
				local otherMapID = text_to_mapID[GetRealZoneText()] or text_to_mapID[GetSubZoneText()];
				if otherMapID then
					mapID = otherMapID;
				else
					-- This is necessary because the map area ID for instances
					-- is -1 when you initially enter them for a few moments. (not even a full second)
					while not mapID or mapID < 0 do
						coroutine.yield();
						mapID = GetCurrentMapAreaID();
					end
				end
				SetMapByID(originalMapID);
				
				-- Cache that we're in the current map ID.
				if GetPersonalDataMember("MapID") ~= mapID or force then
					SetPersonalDataMember("MapID", mapID);
					if automaticMiniList then OpenMiniList(mapID); end
				end
				app.refreshingLocation = false;
			end);
			
			app:Show();
		end
	end
end
local function RefreshLocationForScenarioUpdate()
	RefreshLocation(); -- Ignore the first argument
end
local function RefreshSaves()
	if not app.refreshingSaves then
		app.refreshingSaves = true;
		StartCoroutine(app, function()
			-- While the player is in combat, wait for combat to end.
			while InCombatLockdown() do coroutine.yield(); end
			
			-- Update Saved Instances (I have to clear it because the saves do eventually reset)
			local saves, newSave, oldSaves = {}, false, GetPersonalDataMember("Saves", {});
			local converter = L("SAVED_TO_DJ_INSTANCES");
			for instanceIter=1,GetNumSavedInstances() do
				local name, id, reset, difficulty, locked, extended, instanceIDMostSig = GetSavedInstanceInfo(instanceIter);
				if locked then
					--app.print(tostring(instanceIter) .. ": " .. tostring(name) .. ", " .. tostring(id) .. ", " .. tostring(difficulty) .. ", " .. tostring(instanceIDMostSig));
					name = converter[name] or name;
					saves[name] = instanceIter;
					
					-- If this instance was not previously saved, mark it.
					if not oldSaves[name] then newSave = true; end
				end
			end
			
			-- Check the old saves vs. the new saves
			if not newSave then
				for key, value in pairs(oldSaves) do
					if not saves[key] then newSave = true; end
				end
			end
			
			-- If there's a new save, then also refresh the location. (this is used to apply the saved icon and tooltip)
			app.refreshingSaves = false;
			if newSave then
				SetPersonalDataMember("Saves", saves);
				RefreshLocation();
			end
		end);
	end
end
local function RefreshSources(groups)
	if groups then
		for key, group in ipairs(groups) do
			while InCombatLockdown() do coroutine.yield(); end
			if group.itemID then
				if group.s and group.s > 0 and not GetDataSubMember("CollectedSources", group.s) then
					local sourceInfo = C_TransmogCollection_GetSourceInfo(group.s);
					if sourceInfo and app.ItemSourceFilter(sourceInfo) then SetDataSubMember("CollectedSources", group.s, 1); end
				end
			end
			if group.toyID and not GetDataSubMember("CollectedToys", group.toyID) and PlayerHasToy(group.toyID) then
				SetDataSubMember("CollectedToys", group.toyID, 1);
			end
			if group.groups then RefreshSources(group.groups); end
		end
	end
end
local function RefreshCollections(groups)
	if not app.RefreshingCollections then
		app.RefreshingCollections = true;
		app.print("Refreshing " .. ((groups and groups.text) or app.DisplayName) .. " collection status...");
		StartCoroutine(app, function()
			-- Harvest Illusion Collections
			for i,illusion in ipairs(C_TransmogCollection_GetIllusions()) do
				if illusion.isCollected then SetDataSubMember("CollectedIllusions", illusion.sourceID, 1); end
			end
			
			-- Harvest Title Collections
			for i=1,GetNumTitles(),1 do
				if IsTitleKnown(i) then SetDataSubMember("CollectedTitles", i, 1); end
			end
			
			-- Wait a frame before harvesting item collection status.
			coroutine.yield();
			
			-- Harvest Item Collections that are used by the addon.
			RefreshSources((groups or app:GetDataCache()).groups, 1);
			app.RefreshingCollections = false;
			
			-- Refresh the Collection Windows!
			app:RefreshData(false, true);
			
			-- Report success.
			app.print("Done refreshing collections.");
		end);
	end
end
local function SetCompletionistMode(completionistMode, fromSettings)
	if not fromSettings then
		local setting = _G[app:GetName() .. "-CompletionistMode"];
		if setting then setting:SetChecked(completionistMode); end
	end
	app.print(completionistMode and "Entering Completionist Mode..." or "Entering Unique Appearances Mode...");
	SetDataMember("CompletionistMode", completionistMode);
	SetDataMember("CollectedSources", {});	-- This option causes a caching issue, so we have to purge the collected data cache.
	if completionistMode then
		app.ItemSourceFilter = app.FilterItemSource;
	else
		app.ItemSourceFilter = app.FilterItemSourceUnique;
	end
	app:RefreshData(false, true);
	RefreshCollections();
end
local function ToggleCompletionistMode()
	SetCompletionistMode(not GetDataMember("CompletionistMode"));
end
local function SetDebugMode(debugMode)
	SetDataMember("IgnoreAllFilters", debugMode);
	app:RefreshData();
end
local function ToggleDebugMode()
	SetDebugMode(not GetDataMember("IgnoreAllFilters"));
end
AllTheThings.RefreshCollections = RefreshCollections; -- To expose this to external users.
AllTheThings.RefreshLocation = RefreshLocation;
AllTheThings.OpenMiniListForCurrentZone = OpenMiniListForCurrentZone;
AllTheThings.OpenMiniList = OpenMiniList;
AllTheThings.ToggleMiniListForCurrentZone = ToggleMiniListForCurrentZone;
AllTheThings.ToggleCompletionistMode = ToggleCompletionistMode;
AllTheThings.ToggleDebugMode = ToggleDebugMode;

-- Tooltip Hooks
local GameTooltip_SetLFGDungeonReward = GameTooltip.SetLFGDungeonReward;
local function AttachTooltipRawSearchResults(self, listing, group)
	if listing and (#listing > 0 or group) then
		if group and group.u then self:AddLine(L("UNOBTAINABLE_ITEM_REASONS")[group.u][2], 1, 1, 1, true); end
		for i,text in ipairs(listing) do
			local left, right = strsplit("/", text);
			if right then
				self:AddDoubleLine(left, right);
			else
				self:AddLine(left);
			end
		end
		
		if group and GetDataMember("ShowCollected", true) then
			-- TODO: Add a preference for showing this on the first line or appending it to the bottom.
			local style = self:NumLines() < 1;
			if style then
				if not group.total or group.total < 1 then
					self:AddDoubleLine(" ", L(group.collected and "COLLECTED" or "NOT_COLLECTED"));
				else
					local percent = group.collected / group.total;
					self:AddDoubleLine(" ", "|c" .. GetProgressColor(percent) .. tostring(group.collected) .. " / " .. tostring(group.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
				end
			else
				local rightSide = _G[self:GetName() .. "TextRight1"];
				if rightSide then
					if group.groups then
						if group.total and group.total > 0 then
							local percent = group.collected / group.total;
							rightSide:SetText("|c" .. GetProgressColor(percent) .. tostring(group.collected) .. " / " .. tostring(group.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
							self:AddLine("Contains:");
							for i,j in ipairs(group.groups) do
								if app.GroupRequirementsFilter(j) and app.FilterItemClass(j) then
									if j.groups then
										if not j.total or j.total < 1 then 
											if j.collected then
												if GetDataMember("ShowCollectedItems") then
													self:AddDoubleLine("  " .. (j.text or RETRIEVING_DATA), L("COLLECTED_ICON"));
												end
											else
												if j.dr then
													self:AddDoubleLine("  " .. (j.text or RETRIEVING_DATA), "|c" .. GetProgressColor(j.dr * 0.01) .. tostring(j.dr) .. "%|r " .. L("NOT_COLLECTED_ICON"));
												else
													self:AddDoubleLine("  " .. (j.text or RETRIEVING_DATA), L("NOT_COLLECTED_ICON"));
												end
											end
										else
											local percent = j.collected / j.total;
											if percent < 1 or GetDataMember("ShowCompletedGroups")  then 
												self:AddDoubleLine("  " .. (j.text or RETRIEVING_DATA), "|c" .. GetProgressColor(percent) .. tostring(j.collected) .. " / " .. tostring(j.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
											end
										end
									else
										if j.collected then
											if GetDataMember("ShowCollectedItems") then
												self:AddDoubleLine("  " .. (j.text or RETRIEVING_DATA), L("COLLECTED_ICON"));
											end
										else
											if j.dr then
												self:AddDoubleLine("  " .. (j.text or RETRIEVING_DATA), "|c" .. GetProgressColor(j.dr * 0.01) .. tostring(j.dr) .. "%|r " .. L("NOT_COLLECTED_ICON"));
											else
												self:AddDoubleLine("  " .. (j.text or RETRIEVING_DATA), L("NOT_COLLECTED_ICON"));
											end
										end
									end
								end
							end
						else
							rightSide:SetText("---");
						end
					else
						rightSide:SetText(L(group.collected and "COLLECTED" or "NOT_COLLECTED"));
					end
					rightSide:Show();
				end
			end
		end
	end
end
local function AttachTooltipSearchResults(self, search, method, ...)
	local listing, group = GetCachedSearchResults(search, method, ...);
	AttachTooltipRawSearchResults(self, listing, group);
end
local function AttachTooltipForEncounter(self, encounterID)
	if GetDataMember("ShowEncounterID") then self:AddDoubleLine(L("ENCOUNTER_ID"), tostring(encounterID)); end
	AttachTooltipSearchResults(self, "encounterID:" .. encounterID, SearchForFieldAndSummarizeForCurrentDifficulty, "encounterID", tonumber(encounterID));
end
local function AttachTooltip(self)
	if not self.AllTheThingsProcessing then
		self.AllTheThingsProcessing = true;
		if (not InCombatLockdown() or GetDataMember("DisplayTooltipInformationInCombat")) and GetDataMember("EnableTooltipInformation") then
			--for i,j in pairs(self) do
			--	self:AddDoubleLine(tostring(i), tostring(j));
			--end
		
			local owner = self:GetOwner();
			if owner then
				--for i,j in pairs(owner) do
				--	self:AddDoubleLine(tostring(i), tostring(j));
				--end
				
				if GetDataMember("ShowContents") then
					-- Is this for a Unit?
					local name, target = self:GetUnit();
					if target then
						-- Yes it is. Awesome.
						target = UnitGUID(target);
						if target then
							local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",target);
							--print(name .. " is a " .. type .. " " .. target);
							if type == "Creature" or type == "Vehicle" then
								--print(name .. "'s NPC id is " .. npc_id)
								if GetDataMember("ShowCreatureID") then self:AddDoubleLine(L("CREATURE_ID"), tostring(npc_id)); end
								AttachTooltipSearchResults(self, "creatureID:" .. npc_id, SearchForFieldAndSummarizeForCurrentDifficulty, "creatureID", tonumber(npc_id));
							--elseif type == "Vignette" then
								--print(name .. " is a Vignette and should have its npc_id be zero (" .. npc_id .. ").")
							--elseif type == "Player" then
							--	if target == "Player-76-0895E23B" then
							--		self:AddDoubleLine(app.DisplayName, "Author");
							--	end
							end
							return;
						end
					end
					
					local encounterID = owner.encounterID;
					if encounterID and not owner.itemID then
						AttachTooltipForEncounter(self, encounterID);
						return;
					--[[
					else
						local questID = owner.questID;
						if questID then
							--if GetDataMember("ShowQuestID") then self:AddDoubleLine(L("QUEST_ID"), tostring(questID)); end
							AttachTooltipSearchResults(self, "questID:" .. questID, SearchForFieldAndSummarize, "questID", tonumber(questID));
						elseif owner.pluginName and owner.mapFile and owner.coord then
							-- HandyNotes Integration
							local plugin = _G[owner.pluginName];
							if plugin and plugin.nodes then
								local node = plugin.nodes[owner.mapFile];
								if node then
									local coord = node[owner.coord];
									if coord then
										questID = tonumber(coord.questID or coord.questId or coord[1] or "0");
										if questID > 0 and questID < 999999 then
											--if GetDataMember("ShowQuestID") then self:AddDoubleLine(L("QUEST_ID"), tostring(questID)); end
											AttachTooltipSearchResults(self, "questID:" .. questID, SearchForFieldAndSummarize, "questID", questID);
											--print(coord[1], coord[2], coord[3], coord[4], coord[5], coord[6], coord[7]);
										end
									end
								end
							end
						end
						]]--
					end
				end
				
				local link = select(2, self:GetItem());
				if link then AttachTooltipSearchResults(self, link, SearchForItemLink, link); end
				
				local spellID = select(3, self:GetSpell());
				if spellID and not IsSpellKnown(spellID) then
					AttachTooltipSearchResults(self, "spellID:" .. spellID, SearchForFieldAndSummarize, "spellID", spellID);
				end
			end
		end
	end
end
local function AttachBattlePetTooltip(self, data)
	-- This is not a GameTooltip so it has no Text columns. Cannot support certain functions such as embedding
	if data then
		local speciesID = data.speciesID;
		if speciesID then
			--for i, j in pairs(self) do
			--	print(tostring(i) .. ": " .. tostring(j));
			--end
			--GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
			GameTooltip:ClearLines();
			AttachTooltipSearchResults(GameTooltip, "speciesID:" .. speciesID, SearchForFieldAndSummarize, "speciesID", speciesID);
			GameTooltip:Show();
			
			local owned = C_PetJournal.GetOwnedBattlePetString(speciesID);
			self.Owned:SetText(owned);
			if(owned == nil) then
				self:SetSize(260,122);
			else
				self:SetSize(260,136);
			end

			self:Show();
		end
	end
end
local function AttachLFGDungeonReward(self, dungeonID, rewardID)
	local name, texturePath, quantity, isBonusReward, spec, itemID = GetLFGDungeonRewardInfo(dungeonID, rewardID);
	if spec == "item" and itemID then
		--AttachTooltipSearchResults(self, "itemID:" .. itemID, SearchForFieldAndSummarize, "itemID", itemID);
		local groups = SearchForItemID(itemID);
		if groups and #groups > 0 then
			local link = groups[1].link;
			if link then
				self:SetHyperlink(link);
				return;
			end
		end
	end
	
	-- Only call to the base functionality if it is unknown.
	GameTooltip_SetLFGDungeonReward(self, dungeonID, rewardID);
end
local function ClearTooltip(self)
	self.AllTheThingsProcessing = nil;
end
GameTooltip.SetLFGDungeonReward = AttachLFGDungeonReward;

-- Achievement Lib
app.BaseAchievement = {
	__index = function(t, key)
		if key == "text" then
			--local IDNumber, Name, Points, Completed, Month, Day, Year, Description, Flags, Image, RewardText, isGuildAch = GetAchievementInfo(t.achievementID);
			return GetAchievementLink(t.achievementID) or select(2, GetAchievementInfo(t.achievementID)) or ("Achievement #" .. t.achievementID);
		elseif key == "link" then
			return GetAchievementLink(t.achievementID);
		elseif key == "icon" then
			return select(10, GetAchievementInfo(t.achievementID));
		--elseif key == "trackable" then -- TODO?
		--	return true;
		--elseif key == "saved" then
		--	return select(4, GetAchievementInfo(t.achievementID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateAchievement = function(id, t)
	return createInstance(constructor(id, t, "achievementID"), app.BaseAchievement);
end

-- Artifact Lib
app.BaseArtifact = {
	__index = function(t, key)
		if key == "collectable" then
			return true;
		elseif key == "text" then
			return "|cffe6cc80" .. (t.info[3] or "???") .. "|r";
		elseif key == "title" then
			return Colorize("Variant " .. t.info[4], RGBToHex(t.info[9] * 255, t.info[10] * 255, t.info[11] * 255));
		elseif key == "description" then
			return t.info[6];
		elseif key == "collected" then
			return select(5, C_ArtifactUI_GetAppearanceInfoByID(t.artifactID));
		elseif key == "atlas" then
			return "Forge-ColorSwatchBorder";
		elseif key == "atlast-background" then
			return "Forge-ColorSwatchBackground";
		elseif key == "atlas-border" then
			return "Forge-ColorSwatch";
		elseif key == "atlas-color" then
			return { t.info[9], t.info[10], t.info[11], 1.0 };
		elseif key == "info" then
			--[[
			local setID, appearanceID, appearanceName, displayIndex, appearanceUnlocked, unlockConditionText, 
				uiCameraID, altHandUICameraID, swatchR, swatchG, swatchB, 
				modelAlpha, modelDesaturation, suppressGlobalAnim = C_ArtifactUI_GetAppearanceInfoByID(t.artifactID);
			]]--
			local info = { C_ArtifactUI_GetAppearanceInfoByID(t.artifactID) };
			rawset(t, "info", info);
			return info;
		elseif key == "silentLink" then
			-- If the engineer has supplied the itemID associated with this item, let's build it!
			return t.itemID and select(2, GetItemInfo(string.format("item:%d::::::::::256:::%d", t.itemID, t.artifactID)));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateArtifact = function(id, t)
	return setmetatable(constructor(id, t, "artifactID"), app.BaseArtifact);
end

-- Character Class Lib
app.BaseCharacterClass = {
	__index = function(t, key)
		if key == "text" then
			local name, id = GetClassInfo(t.classID);
			return "|c" .. RAID_CLASS_COLORS[id].colorStr .. name .. "|r";
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateCharacterClass = function(id, t)
	return createInstance(constructor(id, t, "classID"), app.BaseCharacterClass);
end

-- Difficulty Lib
local DifficultyIcons = {
	[1] = "Interface\\Addons\\AllTheThings\\assets\\Normal",	--"Interface/Worldmap/Skull_64Green",
	[2] = "Interface\\Addons\\AllTheThings\\assets\\Heroic",	--"Interface/Worldmap/Skull_64Blue",
	[3] = "Interface\\Addons\\AllTheThings\\assets\\Normal",	--"Interface/Worldmap/Skull_64Green",
	[4] = "Interface\\Addons\\AllTheThings\\assets\\Normal",	--"Interface/Worldmap/Skull_64Green",
	[5] = "Interface\\Addons\\AllTheThings\\assets\\Heroic",	--"Interface/Worldmap/Skull_64Blue",
	[6] = "Interface\\Addons\\AllTheThings\\assets\\Heroic",	--"Interface/Worldmap/Skull_64Blue",
	[7] = "Interface\\Addons\\AllTheThings\\assets\\LFR",		--"Interface/Worldmap/Skull_64Grey",
	[14] = "Interface\\Addons\\AllTheThings\\assets\\Normal",	--"Interface/Worldmap/Skull_64Green",
	[15] = "Interface\\Addons\\AllTheThings\\assets\\Heroic",	--"Interface/Worldmap/Skull_64Blue",
	[16] = "Interface\\Addons\\AllTheThings\\assets\\Mythic",	--"Interface/Worldmap/Skull_64Purple",
	[17] = "Interface\\Addons\\AllTheThings\\assets\\LFR",		--"Interface/Worldmap/Skull_64Grey",
	[23] = "Interface\\Addons\\AllTheThings\\assets\\Mythic",	--"Interface/Worldmap/Skull_64Purple",
	[24] = "Interface\\Addons\\AllTheThings\\assets\\Timewalking",	--"Interface/Worldmap/Skull_64Red",
};
app.BaseDifficulty = {
	__index = function(t, key)
		if key == "text" then
			return GetDifficultyInfo(t.difficultyID);
		elseif key == "icon" then
			return DifficultyIcons[t.difficultyID];
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateDifficulty = function(id, t)
	return createInstance(constructor(id, t, "difficultyID"), app.BaseDifficulty);
end

-- Encounter Lib
app.BaseEncounter = {
	__index = function(t, key)
		if key == "text" then
			if t["isRaid"] then
				return "|cffff8000" .. (select(1, EJ_GetEncounterInfo(t.encounterID)) or "") .. "|r";
			end
			return select(1, EJ_GetEncounterInfo(t.encounterID)) or "";
		elseif key == "description" then
			return select(2, EJ_GetEncounterInfo(t.encounterID)) or "";
		elseif key == "link" then
			return select(5, EJ_GetEncounterInfo(t.encounterID)) or "";
		elseif key == "displayID" then
			-- local id, name, description, displayInfo, iconImage = EJ_GetCreatureInfo(1, t.encounterID);
			return select(4, EJ_GetCreatureInfo(1, t.encounterID));
		elseif key == "trackable" then
			return t.questID;
		elseif key == "saved" then
			return t.questID and IsQuestFlaggedCompleted(t.questID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateEncounter = function(id, t)
	return createInstance(constructor(id, t, "encounterID"), app.BaseEncounter);
end

-- Faction Lib
app.BaseFaction = {
	__index = function(t, key)
		if key == "text" then
			local rgb = FACTION_BAR_COLORS[t.standing];
			return Colorize(select(1, GetFactionInfoByID(t.factionID)), RGBToHex(rgb.r * 255, rgb.g * 255, rgb.b * 255));
		elseif key == "title" then
			return _G["FACTION_STANDING_LABEL" .. t.standing];
		elseif key == "description" then
			return select(2, GetFactionInfoByID(t.factionID));
		elseif key == "link" then
			return t.achievementID and GetAchievementLink(t.achievementID);
		elseif key == "icon" then
			return t.achievementID and select(10, GetAchievementInfo(t.achievementID));
		elseif key == "standing" then
			return select(3, GetFactionInfoByID(t.factionID)) or 4;
		elseif key == "collectable" then
			return true;
		elseif key == "collected" then
			return t.standing == 8;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateFaction = function(id, t)
	return createInstance(constructor(id, t, "factionID"), app.BaseFaction);
end

-- Follower Lib
app.BaseFollower = {
	__index = function(t, key)
		if key == "collectable" then
			return true;
		elseif key == "text" then
			local info = t.info;
			return info and info.name;
		elseif key == "info" then
			-- https://wow.gamepedia.com/API_C_Garrison.GetFollowerInfo
			return C_Garrison.GetFollowerInfo(t.followerID);
		elseif key == "icon" then
			local info = t.info;
			return info and info.portraitIconID;
		elseif key == "displayID" then
			local info = t.info;
			return info and info.displayID;
		elseif key == "collected" then
			return C_Garrison.IsFollowerCollected(t.followerID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateFollower = function(id, t)
	return createInstance(constructor(id, t, "followerID"), app.BaseFollower);
end

-- Heirloom Lib
app.BaseHeirloom = {
	__index = function(t, key)
		if key == "collectable" then
			return true;
		elseif key == "f" then
			return 109;
		elseif key == "text" then
			return select(2, GetItemInfo(t.heirloomID));
		elseif key == "link" then
			return select(2, GetItemInfo(t.heirloomID));
		elseif key == "icon" then
			return select(4, C_Heirloom.GetHeirloomInfo(t.heirloomID));
		elseif key == "collected" then
			return C_Heirloom.PlayerHasHeirloom(t.heirloomID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateHeirloom = function(id, t)
	return createInstance(constructor(id, t, "heirloomID"), app.BaseHeirloom);
end

-- Illusion Lib
app.BaseIllusion = {
	__index = function(t, key)
		if key == "collectable" then
			return true;
		elseif key == "collected" then
			return GetDataSubMember("CollectedIllusions", t.illusionID);
		elseif key == "f" then
			return 103;
		elseif key == "text" then
			return t.link;
		elseif key == "link" then
			return "|cffff80ff|Htransmogillusion:" .. t.illusionID .. "|h[" ..select(2, C_TransmogCollection_GetIllusionSourceInfo(t.illusionID)) .. "]|h|r";
		elseif key == "icon" then
			return "Interface/ICONS/INV_Enchant_Disenchant";
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateIllusion = function(id, t)
	return createInstance(constructor(id, t, "illusionID"), app.BaseIllusion);
end

-- Gear Set Lib
app.BaseGearSet = {
	__index = function(t, key)
		if key == "info" then
			return C_TransmogSets_GetSetInfo(t.setID);
		elseif key == "text" then
			local info = t.info;
			if info then return info.name; end
		elseif key == "description" then
			local info = t.info;
			if info then
				if info.description then
					if info.label then return info.label .. " (" .. info.description .. ")"; end
					return info.description;
				end
				return info.label;
			else
				return info.description;
			end
		elseif key == "icon" then
			local sources = C_TransmogSets.GetSetSources(t.setID);
			for sourceID, value in pairs(sources) do
				local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID);
				if sourceInfo and sourceInfo.invType == 2 then
					local icon = select(5, GetItemInfoInstant(sourceInfo.itemID));
					if icon then rawset(t, "icon", icon); end
					return icon;
				end
			end
			return QUESTION_MARK_ICON;
		elseif key == "header" then
			local info = t.info;
			if info then return info.label; end
		elseif key == "subheader" then
			local info = t.info;
			if info then return info.description; end
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateGearSet = function(id, t)
	return createInstance(constructor(id, t, "setID"), app.BaseGearSet);
end
app.BaseGearSource = {
	__index = function(t, key)
		if key == "info" then
			return C_TransmogCollection_GetSourceInfo(t.s);
		elseif key == "itemID" then
			local info = t.info;
			if info then return info.itemID; end
		elseif key == "text" then
			return select(2, GetItemInfo(t.itemID));
		elseif key == "link" then
			return select(2, GetItemInfo(t.itemID));
		elseif key == "icon" then
			return select(5, GetItemInfoInstant(t.itemID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateGearSource = function(id)
	return createInstance({ s = id}, app.BaseGearSource);
end
app.BaseGearSetHeader = {
	__index = function(t, key)
		if key == "text" then
			local info = C_TransmogSets_GetSetInfo(t.setHeaderID);
			if info then return info.label; end
		elseif key == "link" then
			return t.achievementID and GetAchievementLink(t.achievementID);
		elseif key == "icon" then
			return t.achievementID and select(10, GetAchievementInfo(t.achievementID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateGearSetHeader = function(id, t)
	return createInstance(constructor(id, t, "setHeaderID"), app.BaseGearSetHeader);
end
app.BaseGearSetSubHeader = {
	__index = function(t, key)
		if key == "text" then
			local info = C_TransmogSets_GetSetInfo(t.setSubHeaderID);
			if info then return info.description; end
		elseif key == "link" then
			return t.achievementID and GetAchievementLink(t.achievementID);
		elseif key == "icon" then
			return t.achievementID and select(10, GetAchievementInfo(t.achievementID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateGearSetSubHeader = function(id, t)
	return createInstance(constructor(id, t, "setSubHeaderID"), app.BaseGearSetSubHeader);
end

-- Instance Lib
app.BaseInstance = {
	__index = function(t, key)
		if key == "text" then
			if t["isRaid"] then
				return "|cffff8000" .. (select(1, EJ_GetInstanceInfo(t.instanceID)) or "") .. "|r";
			end
			return select(1, EJ_GetInstanceInfo(t.instanceID)) or "";
		elseif key == "description" then
			return select(2, EJ_GetInstanceInfo(t.instanceID)) or "";
		elseif key == "icon" then
			return select(6, EJ_GetInstanceInfo(t.instanceID)) or "";
		elseif key == "link" then
			return select(8, EJ_GetInstanceInfo(t.instanceID)) or "";
		elseif key == "saved" then
			local saved = GetPersonalDataSubMember("Saves", (select(1, EJ_GetInstanceInfo(t.instanceID)) or "")); -- TODO: Convert this to an int-based system.... maybe?
			if saved then rawset(t, key, saved); end
			return saved;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateInstance = function(id, t)
	return createInstance(constructor(id, t, "instanceID"), app.BaseInstance);
end

-- Item Lib
app.BaseItem = {
	__index = function(t, key)
		if key == "collectable" then
			return t.s;
		elseif key == "collected" then
			return t.s and t.s ~= 0 and GetDataSubMember("CollectedSources", t.s);
		elseif key == "text" then
			return t.link;
		elseif key == "link" then
			local itemLink = t.itemID;
			if itemLink then
				if t.bonus then
					if t.bonus > 0 then
						itemLink = string.format("item:%d::::::::::::1:%d", itemLink, t.bonus);
					else
						itemLink = string.format("item:%d:::::::::::::", itemLink);
					end
				elseif t.itemModID then
					itemLink = string.format("item:%d:::::::::::%d:1:3524", itemLink, t.itemModID);
				end
			end
			local _, link, _, _, _, _, _, _, _, icon = GetItemInfo(itemLink);
			if link then
				t.link = link;
				t.icon = icon;
				return link;
			end
		elseif key == "trackable" then
			return t.questID;
		elseif key == "saved" then
			return t.questID and IsQuestFlaggedCompleted(t.questID);
		elseif key == "itemModID" then
			return 1;
		elseif key == "name" then
			return t.link and GetItemInfo(t.link);
		elseif key == "item" then
			return nil;
		else
			-- Something that isn't dynamic.
			return t.item and t.item[key] or table[key];
		end
	end
};
app.CreateItem  = function(id, t)
	t = createInstance(constructor(id, t, "itemID"), app.BaseItem);
	--if not t.s then t.s = 0; end-- uncomment this line and copy your AllTheThings.lua file from Saved Variables into the contrib folder as a new filter to harvest source IDs
	return t;
end

-- Map Lib
app.BaseMap = {
	__index = function(t, key)
		if key == "text" then
			local mapID = t.mapID;
			return (mapID and mapID > 0 and GetMapNameByID(mapID)) or ("Map ID #" .. (mapID or "???"));
		elseif key == "link" then
			return t.achievementID and GetAchievementLink(t.achievementID);
		elseif key == "icon" then
			return t.achievementID and select(10, GetAchievementInfo(t.achievementID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateMap = function(id, t)
	return createInstance(constructor(id, t, "mapID"), app.BaseMap);
end

-- Mount Lib
app.BaseMount = {
	__index = function(t, key)
		if key == "collectable" then
			return true;
		elseif key == "collected" then
			if GetDataSubMember("CollectedMounts", t.mountID) then return true; end
			if IsSpellKnown(t.mountID) then
				SetDataSubMember("CollectedMounts", t.mountID, 1);
				return true;
			end
		elseif key == "f" then
			return 100;
		elseif key == "text" then
			return select(1, GetSpellLink(t.mountID)) or select(1, GetSpellInfo(t.mountID)) or ("Spell #" .. t.mountID);
		elseif key == "description" then
			return select(2, GetMountExtraInfo(t.mountID));
		elseif key == "link" then
			return select(1, GetSpellLink(t.mountID));
		elseif key == "icon" then
			return select(3, GetSpellInfo(t.mountID));
		elseif key == "displayID" then
			return select(1, GetMountExtraInfo(t.mountID));
		elseif key == "spellID" then
			return t.mountID;
		elseif key == "name" then
			return GetMountInfo(t.mountID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateMount = function(id, t)
	return createInstance(constructor(id, t, "mountID"), app.BaseMount);
end

-- Music Roll Lib
app.BaseMusicRoll = {
	__index = function(t, key)
		if key == "collectable" then
			return true;
		elseif key == "f" then
			return 108;
		elseif key == "Lvl" then
			return 100;
		elseif key == "text" then
			return t.link;
		elseif key == "link" then
			local _, link, _, _, _, _, _, _, _, icon = GetItemInfo(t.itemID);
			if link then
				t.link = link;
				t.icon = icon;
				return link;
			end
		elseif key == "trackable" then
			return true;
		elseif key == "saved" then
			return IsQuestFlaggedCompleted(t.musicRollID);
		elseif key == "description" then
			return "These are unlocked per-character and are not currently shared across your account.";
		elseif key == "collected" then
			return IsQuestFlaggedCompleted(t.musicRollID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateMusicRoll = function(questID, itemID)
	local t = {};
	t.itemID = itemID;
	t.musicRollID = questID;
	return createInstance(t, app.BaseMusicRoll);
end

-- NPC Lib
app.BaseNPC = {
	__index = function(t, key)
		if key == "text" then
			if t.npcID > 0 then
				local name = t.npcID > 0 and NPCNameFromID[t.npcID];
				if name then
					if t["isRaid"] then name = "|cffff8000" .. name .. "|r"; end
					return name;
				end
			else
				return L("NPC_ID_NAMES")[t.npcID];
			end
		elseif key == "title" then
			if t.npcID > 0 then return NPCTitlesFromID[t.npcID]; end
		elseif key == "link" then
			return (t.achievementID and GetAchievementLink(t.achievementID));
		elseif key == "icon" then
			return L("NPC_ID_ICONS")[t.npcID] or (t.achievementID and select(10, GetAchievementInfo(t.achievementID)));
		elseif key == "creatureID" then
			return t.npcID > 0 and t.npcID;
		elseif key == "trackable" then
			return t.questID;
		elseif key == "saved" then
			return t.questID and IsQuestFlaggedCompleted(t.questID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateNPC = function(id, t)
	return createInstance(constructor(id, t, "npcID"), app.BaseNPC);
end

-- Object Lib (as in "World Object")
app.BaseObject = {
	__index = function(t, key)
		if key == "text" then
			local name = L("OBJECT_ID_NAMES")[t.objectID] or ("Unknown Object ID #" .. t.objectID);
			if t["isRaid"] then name = "|cffff8000" .. name .. "|r"; end
			rawset(t, "text", name);
			return name;
		elseif key == "icon" then
			return L("OBJECT_ID_ICONS")[t.objectID];
		elseif key == "trackable" then
			return t.questID;
		elseif key == "saved" then
			return t.questID and IsQuestFlaggedCompleted(t.questID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateObject = function(id, t)
	return createInstance(constructor(id, t, "objectID"), app.BaseObject);
end

-- Pet Ability Lib
app.BasePetAbility = {
	__index = function(t, key)
		if key == "f" then
			return 101;
		elseif key == "text" then
			return select(2, C_PetBattles.GetAbilityInfoByID(t.petAbilityID));
		elseif key == "icon" then
			return select(3, C_PetBattles.GetAbilityInfoByID(t.petAbilityID));
		elseif key == "description" then
			return select(5, C_PetBattles.GetAbilityInfoByID(t.petAbilityID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreatePetAbility = function(id, t)
	return createInstance(constructor(id, t, "petAbilityID"), app.BasePetAbility);
end

-- Pet Type Lib
app.BasePetType = {
	__index = function(t, key)
		if key == "f" then
			return 101;
		elseif key == "text" then
			return _G["BATTLE_PET_NAME_" .. t.petTypeID];
		elseif key == "icon" then
			return "Interface\\Icons\\Icon_PetFamily_"..PET_TYPE_SUFFIX[t.petTypeID];
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreatePetType = function(id, t)
	return createInstance(constructor(id, t, "petTypeID"), app.BasePetType);
end

-- Profession Lib
local SkillIDToSpellID = {
	[171] = 2259,	-- Alchemy
	[794] = 158762,	-- Arch
	[164] = 2018,	-- Blacksmithing
	[185] = 2550,	-- Cooking
	[333] = 7411,	-- Enchanting
	[202] = 4036,	-- Engineering
	[356] = 7620,	-- Fishing
	[182] = 2366,	-- Herb Gathering
	[773] = 45357,	-- Inscription
	[755] = 25229,	-- Jewelcrafting
	[165] = 2108,	-- Leatherworking
	[186] = 2575,	-- Mining
	[393] = 8613,	-- Skinning
	[197] = 3908,	-- Tailoring
};
setmetatable(SkillIDToSpellID, {__index = function(t,k) return(106727) end})
app.BaseProfession = {
	__index = function(t, key)
		if key == "text" then
			return select(1, GetSpellInfo(t.professionID));
		elseif key == "icon" then
			return select(3, GetSpellInfo(t.professionID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateProfession = function(id, t)
	return createInstance(constructor(id, t, "professionID"), app.BaseProfession);
end

-- Quest Lib
app.BaseQuest = {
	__index = function(t, key)
		if key == "f" then
			return 104;
		elseif key == "text" then
			local questName = QuestTitleFromID[t.questID];
			if questName then
				if t.retries then
					t.retries = nil;
					t.title = nil;
				end
				return "|Hquest:" .. t.questID .. "|h[" .. questName .. "]|h";
			end
			if t.retries and t.retries > 120 then
				t.title = "Failed to acquire information. Scroll to try again.";
				return "|Hquest:" .. t.questID .. "|h[Quest #" .. t.questID .. "*]|h";
			else
				t.retries = (t.retries or 0) + 1;
				return "|Hquest:" .. t.questID .. "|h[]|h";
			end
		elseif key == "link" then
			return "quest:" .. t.questID;
		elseif key == "icon" then
			return "Interface\\Icons\\Achievement_Quests_Completed_08";
		elseif key == "trackable" then
			return true;
		elseif key == "saved" then
			return IsQuestFlaggedCompleted(t.questID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateQuest = function(id, t)
	return createInstance(constructor(id, t, "questID"), app.BaseQuest);
end

-- Spell Lib
app.BaseSpell = {
	__index = function(t, key)
		if key == "text" then
			return select(1, GetSpellLink(t.spellID)) or select(1, GetSpellInfo(t.spellID)) or ("Spell #" .. t.spellID);
		elseif key == "link" then
			return select(1, GetSpellLink(t.spellID));
		elseif key == "icon" then
			return select(3, GetSpellInfo(t.spellID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateSpell = function(id, t)
	return createInstance(constructor(id, t, "spellID"), app.BaseSpell);
end

-- Species Lib
app.BaseSpecies = {
	__index = function(t, key)
		if key == "collectable" then
			return true;
		elseif key == "collected" then
			if select(1, C_PetJournal.GetNumCollectedInfo(t.speciesID)) > 0 then
				return 1;
			end
		elseif key == "f" then
			return 101;
		elseif key == "text" then
			return select(1, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
		elseif key == "icon" then
			return select(2, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
		elseif key == "description" then
			return select(6, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
		elseif key == "displayID" then
			return select(12, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
		elseif key == "name" then
			return t.text;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateSpecies = function(id, t)
	return createInstance(constructor(id, t, "speciesID"), app.BaseSpecies);
end

-- Tier Lib
app.BaseTier = {
	__index = function(t, key)
		if key == "text" then
			return EJ_GetTierInfo(t.tierID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateTier = function(id, t)
	return createInstance(constructor(id, t, "tierID"), app.BaseTier);
end

-- Title Lib
app.BaseTitle = {
	__index = function(t, key)
		if key == "collectable" then
			return true;
		elseif key == "collected" then
			if GetDataSubMember("CollectedTitles", t.titleID) == 1 then return 1; end
			if IsTitleKnown(t.titleID) then
				SetDataSubMember("CollectedTitles", t.titleID, 1);
				return 1;
			end
		elseif key == "description" then
			return "Titles are tracked across your account, however, your individual character must qualify for certain titles to be usable on that character.";
		elseif key == "text" then
			local name = t.playerTitle;
			if name then
				name = "|cff00ccff" .. name .. "|r";
				rawset(t, "name", name);
				return name;
			end
		elseif key == "playerTitle" then
			local name = GetTitleName(t.titleID);
			if name then
				if t.style == nil then
					if string.sub(name, 1, 1) == " " then
						-- Suffix
						local first = string.sub(name, 2, 2);
						if first == string.upper(first) then
							return UnitName("player") .. "," .. name;
						else
							return UnitName("player") .. name;
						end
					else
						-- Prefix
						return name .. UnitName("player");
					end
				elseif t.style == 0 then
					-- Prefix
					return name .. UnitName("player");
				elseif t.style == 1 then
					-- Player Name First
					return UnitName("player") .. name;
				elseif t.style == 2 then
					-- Comma Separated
					return UnitName("player") .. "," .. name;
				end
			end
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateTitle = function(id, t)
	return createInstance(constructor(id, t, "titleID"), app.BaseTitle);
end

-- Toy Lib
app.BaseToy = {
	__index = function(t, key)
		if key == "collectable" then
			return true;
		elseif key == "collected" then
			return GetDataSubMember("CollectedToys", t.toyID);
		elseif key == "f" then
			return 102;
		elseif key == "text" then
			return select(2, C_ToyBox_GetToyInfo(t.toyID));
		elseif key == "link" then
			return C_ToyBox_GetToyLink(t.toyID);
		elseif key == "icon" then
			return select(3, C_ToyBox_GetToyInfo(t.toyID));
		elseif key == "name" then
			return t.text;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateToy = function(id, t)
	return createInstance(constructor(id, t, "toyID"), app.BaseToy);
end

-- Vignette Lib
app.BaseVignette = {
	__index = function(t, key)
		if key == "f" then
			return 107;
		elseif key == "text" then
			local questName = QuestTitleFromID[t.vignetteID];
			if questName then return "|Hquest:" .. t.vignetteID .. "|h" .. questName .. "|h"; end
			return "|Hquest:" .. t.vignetteID .. "|h[]|h";
		elseif key == "link" then
			return "quest:" .. t.vignetteID;
		elseif key == "icon" then
			return not t.displayID and "Interface\\Icons\\INV_Misc_Head_Dragon_Black";
		elseif key == "saved" then
			return IsQuestFlaggedCompleted(t.vignetteID);
		elseif key == "trackable" then
			return true;
		elseif key == "saved" then
			return IsQuestFlaggedCompleted(t.vignetteID);
		elseif key == "questID" then
			return t.vignetteID;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateVignette = function(id, t)
	return createInstance(constructor(id, t, "vignetteID"), app.BaseVignette);
end

-- Filtering
function app.Filter()
	-- Meaning "Don't display."
	return false;
end
function app.NoFilter()
	-- Meaning "Display as expected."
	return true;
end
function app.FilterGroupsByLevel(group)
	return app.Level >= (group.Lvl or 0);
end
function app.FilterGroupsByCompletion(group)
	return group.collected < group.total;
end
function app.FilterItemBind(item)
	return item.b == 2; -- BoE
end
function app.FilterItemClass(item)
	return GetDataMember("IgnoreAllFilters") or app.ItemBindFilter(item)
		or (app.FilterItemClass_RequireItemFilter(item.f)
			and app.RequireBindingFilter(item.b)
			and app.ClassRequirementFilter(item.classes)
			and app.RaceRequirementFilter(item.races)
			and app.UnobtainableItemFilter(item.u)
		        and app.SeasonalFilter(item.u)
			and app.RequiredSkillFilter(item.requiredSkill));
end
function app.FilterItemClass_RequireClasses(classes)
	if classes then
		for key,value in pairs(classes) do
			if value == app.ClassIndex then return true; end
		end
	else
		return true;
	end
end
function app.FilterItemClass_RequireItemFilter(f)
	if f and not GetPersonalDataSubMember("ItemFilters", f, true) then return false; end
	return true;
end
function app.FilterItemClass_RequireRaces(races)
	if races then
		for key,value in pairs(races) do
			if value == app.RaceIndex then return true; end
		end
	else
		return true;
	end
end
function app.FilterItemClass_UnobtainableItem(u)
	if u and L("UNOBTAINABLE_ITEM_REASONS")[u][1] < 5 then
	   return GetDataMember("UnobtainableItemFilters") and GetDataMember("UnobtainableItemFilters")[u]
	else
		return true;
	end
end
function app.FilterItemClass_SeasonalItem(u)
   if u and L("UNOBTAINABLE_ITEM_REASONS")[u][1] > 4 then
      return GetDataMember("SeasonalFilters") and GetDataMember("SeasonalFilters")[u]
   else
      return true
   end
end
function app.FilterItemClass_RequireBinding(b)
	if b and b == 2 then
		return false;
	else
		return true;
	end
end
function app.FilterItemClass_RequiredSkill(requiredSkill)
	if requiredSkill then
		return GetProfessionCache()[requiredSkill];
	else
		return true;
	end
end
function app.FilterItemSource(sourceInfo)
	return sourceInfo.isCollected;
end
function app.FilterItemSourceUnique(sourceInfo)
	if sourceInfo.isCollected then
		-- NOTE: This makes it so that the loop isn't necessary.
		return true;
	else
		-- If at least one of the sources of this visual ID was collected, that means that we've acquired the base appearance.
		-- NOTE: Some of the messaging provided by Blizzard "You haven't collected this appearance." is actually wrong.
		-- In some cases, one or more of the sources for that visual ID was collected already, just not currently
		-- available to your faction / class / character level. (This is kinda silly, but that's how it works)
		-- Please do not file bugs regarding this, I've already identified that this was the reason for the message discrepency.
		local invType = sourceInfo.invType;
		if invType then
			for i, sourceID in ipairs(C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID)) do
				local otherSource = C_TransmogCollection_GetSourceInfo(sourceID);
				if otherSource.isCollected and otherSource.invType == invType then return true; end
			end
		else
			local categoryID = sourceInfo.categoryID;
			if categoryID then
				for i, sourceID in ipairs(C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID)) do
					local otherSource = C_TransmogCollection_GetSourceInfo(sourceID);
					if otherSource.isCollected and otherSource.categoryID == categoryID then return true; end
				end
			end
		end
		return false;
	end
end
function app.FilterItemTrackable(group)
	return group.trackable and not group.visible;
end

-- Default Filter Settings (changed in VARIABLES_LOADED and in the Options Menu)
app.GroupRequirementsFilter = app.NoFilter;
app.GroupVisibilityFilter = app.NoFilter;
app.ItemBindFilter = app.FilterItemBind;
app.ItemSourceFilter = app.FilterItemSource;
app.CollectedItemVisibilityFilter = app.NoFilter;
app.MissingItemVisibilityFilter = app.NoFilter;
app.ClassRequirementFilter = app.NoFilter;
app.RaceRequirementFilter = app.NoFilter;
app.RequireBindingFilter = app.NoFilter;
app.UnobtainableItemFilter = app.NoFilter;
app.SeasonalFilter = app.NoFilter;
app.RequiredSkillFilter = app.NoFilter;
app.RequireTrackableFilter = app.Filter;

local function CreateMinimapButton()
	-- Create the Button for the Minimap frame. Create a local and non-local copy.
	local button = CreateFrame("BUTTON", app:GetName() .. "-Minimap", Minimap);
	button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight", "ADD");
	button:SetFrameStrata("HIGH");
	button:SetMovable(true);
	button:EnableMouse(true);
	button:SetSize(33, 33);
	button:SetPoint("CENTER", 0, 0, "CENTER", 0, 0);
	button:RegisterForDrag("LeftButton", "RightButton");
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	
	-- Create the Button Texture
	local texture = button:CreateTexture(nil, "BACKGROUND");
	texture:SetTexture(L("LOGO_SMALL"));
	texture:SetSize(21, 21);
	texture:SetTexCoord(0,1,0,1);
	texture:SetPoint("TOPLEFT", 6, -6);
	
	-- Create the Button Tracking Border
	local border = button:CreateTexture(nil, "BORDER");
	border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder");
	border:SetSize(56, 56);
	border:SetPoint("TOPLEFT");
	
	-- Button Configuration
	button.update = function(self)
		local position = GetDataMember("Position", -19.9380328877568);
		self:SetPoint("CENTER", "Minimap", "CENTER", -78 * cos(position), 78 * sin(position));
	end
	local update = function(self)
		local w, x = GetCursorPosition();
		local y, z = Minimap:GetLeft(), Minimap:GetBottom();
		local s = UIParent:GetScale();
		w = y - w / s + 70; x = x / s - z - 70;
		SetDataMember("Position", math.deg(math.atan2(x, w)));
		self:Raise();
		self:update();
	end

	-- Register for Frame Events
	button:SetScript("OnDragStart", function(self)
		self:SetScript("OnUpdate", update);
	end);
	button:SetScript("OnDragStop", function(self)
		self:SetScript("OnUpdate", nil);
	end);
	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_LEFT");
		GameTooltip:SetText(app.DisplayName);
		GameTooltip:AddLine(L("MINIMAP_MOUSEOVER_TEXT"), 1, 1, 1);
		GameTooltip:Show();
	end);
	button:SetScript("OnLeave", function(self)
		GameTooltip:Hide();
	end);
	button:SetScript("OnClick", function(self, button)
		if button == "RightButton" then
			-- Right Button opens the Options menu.  (Calling this twice actually makes it work correctly)
			ShowInterfaceOptions();
		else
			-- Left Button Toggles the App
			app:ToggleWindow("Prime");
		end
	end);
	button:update();
	button:Show();
	return button;
end
local function CreateSettingsMenu()

	-- function that creates a new settingFrame --
	local function CreateSettingFrame(self, name)
		self.name = name;
		InterfaceOptions_AddCategory(self);
		self.Title = self:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
		self.Title:SetPoint("TOPLEFT", 16, -16)
		self.Title:SetText(name);
		self.Version = self:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
		self.Version:SetPoint("TOPRIGHT", -16, -16)
		self.Version:SetText(GetAddOnMetadata("AllTheThings", "Version"));
		self.Separator = self:CreateTexture(nil, "ARTWORK");
		self.Separator:SetPoint("LEFT", self.Title, "BOTTOMLEFT", 0, -2);
		self.Separator:SetColorTexture(0.2, 0.2, 0.2);
		self.Separator:SetSize(590, 1);
	end	
	
	-- function that creates a checkbox --
	-- Will add a new parameter when we have tooltip for some of the tooltips --
	local function CreateCheckBox(self, parrent, text, x, y, state)
		self:SetChecked(state);
		self:SetPoint("TOPLEFT", parrent, "TOPLEFT", x, y);
		self.Label = _G[self:GetName() .. "Text"];
		self.Label:SetText(text);
		self.Label:SetWidth(250);
	end
	
	local name = app:GetName();  -- should probably be outside this function cant be the only place app:getName() gets used
	
	-- This creates the main window in the options --
	local mainFrame = CreateFrame("FRAME", name .. "-Settings", UIParent);
	CreateSettingFrame(mainFrame, L("TITLE_OPTIONS"));
	local function createMainFrame(self)
		-- This creates the Show MiniMap checkBox --
		self.ShowMinimapButton = CreateFrame("CheckButton", name .. "-ShowMinimapButton", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowMinimapButton, self, "Show Minimap Button", 15, -50, GetDataMember("ShowMinimapButton"));
		self.ShowMinimapButton:SetScript("OnClick", function(self)
				local checked = self:GetChecked();
				SetDataMember("ShowMinimapButton", checked);
				if (checked == true) then
					if not app.Minimap then app.Minimap = CreateMinimapButton(); end
					app.Minimap:Show();
				elseif app.Minimap then
					app.Minimap:Hide();
				end
			end);
		
		-- This creates the ShowNotifications checkBox --
		self.ShowNotifications = CreateFrame("CheckButton", name .. "-ShowNotifications", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowNotifications, self, "Show Collection Notifications", 15, -70, GetDataMember("ShowNotifications", true));
		self.ShowNotifications:SetScript("OnClick", function(self)
			SetDataMember("ShowNotifications", self:GetChecked());
		end);
		
		-- This creates the showCompletedGroups checkBox --
		self.ShowCompletedGroups = CreateFrame("CheckButton", name .. "-ShowCompletedGroups", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowCompletedGroups, self, "Show Completed Groups", 15, -90, GetDataMember("ShowCompletedGroups"));
		self.ShowCompletedGroups:SetScript("OnClick", function(self)
			SetDataMember("ShowCompletedGroups", self:GetChecked());
			if self:GetChecked() then
				app.GroupVisibilityFilter = app.NoFilter;
			else
				app.GroupVisibilityFilter = app.FilterGroupsByCompletion;
			end
			app:RefreshData();
		end);
	

		-- This creates the showCollectedItems checkBox -- 
		self.ShowCollectedItems = CreateFrame("CheckButton", name .. "-ShowCollectedItems", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowCollectedItems, self, "Show Collected Items", 15, -110, GetDataMember("ShowCollectedItems"));
		self.ShowCollectedItems:SetScript("OnClick", function(self)
			SetDataMember("ShowCollectedItems", self:GetChecked());
			if self:GetChecked() then
				app.CollectedItemVisibilityFilter = app.NoFilter;
			else
				app.CollectedItemVisibilityFilter = app.Filter;
			end
			app:RefreshData();
		end);
		
		-- This creates the "show missing items" checkBox --
		self.ShowMissingItems = CreateFrame("CheckButton", name .. "-ShowMissingItems", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowMissingItems, self, "Show Missing Items", 15, -130, GetDataMember("ShowMissingItems"));
		self.ShowMissingItems:SetScript("OnClick", function(self)
			SetDataMember("ShowMissingItems", self:GetChecked());
			if self:GetChecked() then
				app.MissingItemVisibilityFilter = app.NoFilter;
			else
				app.MissingItemVisibilityFilter = app.Filter;
			end
			app:RefreshData();
		end);
		
		
		-- This creates the completiionst Mode checkBox --
		self.CompletionistMode = CreateFrame("CheckButton", name .. "-CompletionistMode", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.CompletionistMode, self, "|CFFADD8E6CompletionistMode|r", 25, -150, GetDataMember("CompletionistMode")); 
		self.CompletionistMode:SetScript("OnClick", function(self)
			SetCompletionistMode(self:GetChecked(), true);
		end);
		self.CompletionistMode:SetScript("onEnter", function(self)
			GameTooltip:SetOwner (self, "ANCHOR_RIGHT");
			GameTooltip:SetText ("When turned on shows you ALL items you are missing the appearances from. Turn off if you only want to collect the appearance id.", nil, nil, nil, nil, true);
			GameTooltip:Show();
		end);

		self.PlayFanfare = CreateFrame("CheckButton", name .. "-PlayFanfare", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.PlayFanfare, self, "Play Collection Fanfare", 300, -50, GetDataMember("PlayFanfare", true));
		self.PlayFanfare:SetScript("OnClick", function(self)
			SetDataMember("PlayFanfare", self:GetChecked());
		end);
	
		self.PlayRemoveSound = CreateFrame("CheckButton", name .. "-PlayRemoveSound", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.PlayRemoveSound, self, "Play Remove Sound", 300, -70, GetDataMember("PlayRemoveSound", true));
		self.PlayRemoveSound:SetScript("OnClick", function(self)
			SetDataMember("PlayRemoveSound", self:GetChecked());
		end);
		
		self.AutoMiniList = CreateFrame("CheckButton", name .. "-AutoMiniList", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.AutoMiniList, self, "Auto Mini List", 300, -90, GetDataMember("AutoMiniList", true));
		self.AutoMiniList:SetScript("OnClick", function(self)
			SetDataMember("AutoMiniList", self:GetChecked());
			if self:GetChecked() then
				OpenMiniListForCurrentZone();
			end
		end);
		
		self.AutoRefreshSaves = CreateFrame("CheckButton", name .. "-AutoRefreshSaves", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.AutoRefreshSaves, self, "Auto Refresh Saves", 300, -110, GetDataMember("AutoRefreshSaves"));
		self.AutoRefreshSaves:SetScript("OnClick", function(self)
		SetDataMember("AutoRefreshSaves", self:GetChecked());
			if self:GetChecked() then
				app:RegisterEvent("BOSS_KILL");
			else
				app:UnregisterEvent("BOSS_KILL");
			end
		end);		
		
		self.AutoRefreshCollections = CreateFrame("CheckButton", name .. "-AutoRefreshCollections", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.AutoRefreshCollections, self, "Auto Refresh Collections", 300, -130, GetDataMember("AutoRefreshCollections"));
		self.AutoRefreshCollections:SetScript("OnClick", function(self)
			SetDataMember("AutoRefreshCollections", self:GetChecked());
		end);		
			
		
		self.EnableTooltipInformation = CreateFrame("CheckButton", name .. "-EnableTooltipInformation", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.EnableTooltipInformation, self, "Enable Tooltip Information", 15, -190, GetDataMember("EnableTooltipInformation"));
		self.EnableTooltipInformation:SetScript("OnClick", function(self)
			SetDataMember("EnableTooltipInformation", self:GetChecked());
			wipe(searchCache);
		end);

		self.DisplayTooltipInformationInCombat = CreateFrame("CheckButton", name .. "-DisplayTooltipInformationInCombat", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.DisplayTooltipInformationInCombat, self, "Display In Combat", 25, -210, GetDataMember("DisplayTooltipInformationInCombat"));
		self.DisplayTooltipInformationInCombat:SetScript("OnClick", function(self)
			SetDataMember("DisplayTooltipInformationInCombat", self:GetChecked());
			wipe(searchCache);
		end);
		
		self.ShowCollected = CreateFrame("CheckButton", name .. "-ShowCollected", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowCollected, self, "Show Collection Progress", 15, -230, GetDataMember("ShowCollected", true));
		self.ShowCollected:SetScript("OnClick", function(self)
			SetDataMember("ShowCollected", self:GetChecked());
			wipe(searchCache);
		end);
		
		self.ShowContents = CreateFrame("CheckButton", name .. "-ShowContents", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowContents, self, "Show Container Details", 25, -250, GetDataMember("ShowContents", true));
		self.ShowContents:SetScript("OnClick", function(self)
			SetDataMember("ShowContents", self:GetChecked());
			wipe(searchCache);
		end);
		
		self.ShowSharedAppearances = CreateFrame("CheckButton", name .. "-ShowSharedAppearances", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowSharedAppearances, self, "Show Shared Appearances", 15, -270, GetDataMember("ShowSharedAppearances"));
		self.ShowSharedAppearances:SetScript("OnClick", function(self)
			SetDataMember("ShowSharedAppearances", self:GetChecked());
			wipe(searchCache);
		end);
		
		self.ShowSources = CreateFrame("CheckButton", name .. "-ShowSources", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowSources, self, "Show " .. app.DisplayName .. " Sources", 15, -290, GetDataMember("ShowSources"));
		self.ShowSources:SetScript("OnClick", function(self)
			SetDataMember("ShowSources", self:GetChecked());
			wipe(searchCache);
		end);	

		self.ShowAllSources = CreateFrame("CheckButton", name .. "-ShowAllSources", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowAllSources, self, "Show All Sources", 25, -310, GetDataMember("ShowAllSources"));
		self.ShowAllSources:SetScript("OnClick", function(self)
			SetDataMember("ShowAllSources", self:GetChecked());
			wipe(searchCache);
		end);
		
		self.IgnoreAllFilters = CreateFrame("CheckButton", name .. "-IgnoreAllFilters", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.IgnoreAllFilters, self, "Ignore All Filters (Debug Mode)", 15, -500, GetDataMember("IgnoreAllFilters"));
		self.IgnoreAllFilters:SetScript("OnClick", function(self)
			SetDebugMode(self:GetChecked());
		end);
		lastFilter = self.IgnoreAllFilters;
		
		self.IgnoreFiltersOnNonBindingItems = CreateFrame("CheckButton", name .. "-IgnoreFiltersOnNonBindingItems", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.IgnoreFiltersOnNonBindingItems, self, "Ignore All Filters for BoE / BoA Items", 300, -500, GetDataMember("IgnoreFiltersOnNonBindingItems"));
		self.IgnoreFiltersOnNonBindingItems:SetChecked(GetDataMember("IgnoreFiltersOnNonBindingItems"));
		self.IgnoreFiltersOnNonBindingItems:SetScript("OnClick", function(self)
			SetDataMember("IgnoreFiltersOnNonBindingItems", self:GetChecked());
			if self:GetChecked() then
				app.ItemBindFilter = app.FilterItemBind;
			else
				app.ItemBindFilter = app.Filter;
			end
			app:RefreshData(false, true);
		end);
		self.IgnoreFiltersOnNonBindingItems:SetScript("onEnter", function(self)
			GameTooltip:SetOwner (self, "ANCHOR_RIGHT");
			GameTooltip:SetText ("This ignores all filters for any items that are Bind on Equip or Bind on Account. Turn off if you only want to see BOE or BOA items for your filter settings.", nil, nil, nil, nil, true);
			GameTooltip:Show();
		end);




		-- Tooltip Information Details
		local function CreateIDCheckBox(filter, name, x, y)
			self[filter] = CreateFrame("CheckButton", name .. "-" .. filter, self, "InterfaceOptionsCheckButtonTemplate");
			CreateCheckBox(self[filter], self, name, x, y, GetDataMember(filter));
			self[filter]:SetScript("OnClick", function(self)
				SetDataMember(filter, self:GetChecked());
				wipe(searchCache);
			end);
		end
		
		CreateIDCheckBox("ShowItemID", "Show Item ID", 15, -330);
		CreateIDCheckBox("ShowItemString", "Show Item String", 15, -350);
		CreateIDCheckBox("ShowSourceID", "Show Source ID", 15, -370);
		CreateIDCheckBox("ShowVisualID", "Show Visual ID", 15, -390);
		
		CreateIDCheckBox("ShowDescriptions", "Show Descriptions", 15, -410);
		CreateIDCheckBox("ShowModels", "Show Models", 15, -430);
		CreateIDCheckBox("ShowMapID", "Show Map ID", 15, -450);
		CreateIDCheckBox("ShowUnobtainableAppearanceInformation", "Show Unobtainable Icons", 15, -470);
		
		CreateIDCheckBox("ShowAchievementID", "Show Achievement ID", 300, -190);
		CreateIDCheckBox("ShowArtifactID", "Show Artifact ID", 300, -210);
		CreateIDCheckBox("ShowCreatureID", "Show Creature ID", 300, -230);
		CreateIDCheckBox("ShowDifficultyID", "Show Difficulty ID", 300, -250);
		CreateIDCheckBox("ShowEncounterID", "Show Encounter ID", 300, -270);
		CreateIDCheckBox("ShowFactionID", "Show Faction ID", 300, -290);
		CreateIDCheckBox("ShowFilterID", "Show Filter ID", 300, -310);
		CreateIDCheckBox("ShowIllusionID", "Show Illusion ID", 300, -330);
		CreateIDCheckBox("ShowInstanceID", "Show Instance ID", 300, -350);
		CreateIDCheckBox("ShowMusicRollID", "Show Music Roll ID", 300, -370);
		CreateIDCheckBox("ShowObjectID", "Show Object ID", 300, -390);
		CreateIDCheckBox("ShowQuestID", "Show Quest ID", 300, -410);
		CreateIDCheckBox("ShowSpeciesID", "Show Species ID", 300, -430);
		CreateIDCheckBox("ShowSpellID", "Show Spell ID", 300, -450);
		CreateIDCheckBox("ShowTierID", "Show Tier ID", 300, -470);
	end
	createMainFrame(mainFrame);
	
	
	-- This creates the filter window in the options --
	local filtersFrame = CreateFrame("FRAME", name .."-Frame", mainFrame);
	filtersFrame.parent = mainFrame.name;
	CreateSettingFrame(filtersFrame, "Filters");
	local function CreateFilterFrame(self)
		self.RequiredSkillFilter = CreateFrame("CheckButton", name .. "-RequiredSkillFilter", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.RequiredSkillFilter, self, "Filter By Profession", 15, -50, GetDataMember("RequiredSkillFilter"));
			self.RequiredSkillFilter:SetScript("OnClick", function(self)
				SetDataMember("RequiredSkillFilter", self:GetChecked());
				if self:GetChecked() then
					app.RequiredSkillFilter = app.FilterItemClass_RequiredSkill;
				else
					app.RequiredSkillFilter = app.NoFilter;
				end
				app:RefreshData();
			end);
		
		
		self.dummy = CreateFrame("CheckButton", name .. "-temp", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.dummy, self, "dummy", 15, -140, true); 
		self.dummy:Hide();   -- THIS IS BAD
		
		
		
		
		self.FilterGroupsByLevel = CreateFrame("CheckButton", name .. "-FilterGroupsByLevel", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.FilterGroupsByLevel, self, "Filter Groups By Level", 15, -70, GetDataMember("FilterGroupsByLevel"));
		self.FilterGroupsByLevel:SetScript("OnClick", function(self)
			SetDataMember("FilterGroupsByLevel", self:GetChecked());
			if self:GetChecked() then
				app:RegisterEvent("PLAYER_LEVEL_UP");
				app.GroupRequirementsFilter = app.FilterGroupsByLevel;
			else
				app:UnregisterEvent("PLAYER_LEVEL_UP");
				app.GroupRequirementsFilter = app.NoFilter;
			end
			app:RefreshData();
		end);

		
		
		self.FilterUnobtainableItems = CreateFrame("CheckButton", name .. "-FilterUnobtainableItems", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.FilterUnobtainableItems, self, "Filter Unobtainable Items", 15, -90, GetDataMember("FilterUnobtainableItems"));
		if GetDataMember("FilterUnobtainableItems") then self.FilterUnobtainableItems.Label:Hide() end
		self.FilterUnobtainableItems:SetScript("OnClick", function(self)
			SetDataMember("FilterUnobtainableItems", self:GetChecked());
			if self:GetChecked() then
				app.UnobtainableItemFilter = app.FilterItemClass_UnobtainableItem;
				self.Label:Hide()
				self:GetParent().UnobtainableItemFilters:Show()
			else
				app.UnobtainableItemFilter = app.NoFilter;
				self.Label:Show()
				self:GetParent().UnobtainableItemFilters:Hide()
			end
			app:RefreshData();
		end);


		self.UnobtainableItemFilters = CreateFrame("Frame", name .. "-UnobtainableItemFilters", self, "Lib_UIDropDownMenuTemplate")
		self.UnobtainableItemFilters:SetPoint("TOPLEFT", self, "TOPLEFT", 25, -90)
		self.UnobtainableItemFilters:SetWidth(300)
		local function UnobtainableToggle(ref, val)
		   local t = GetDataMember("UnobtainableItemFilters", {})
		   t[val] = not t[val]
		   app:RefreshData()
		end
		Lib_UIDropDownMenu_Initialize(self.UnobtainableItemFilters,
					  function(self, level, menuList)
						 local info = Lib_UIDropDownMenu_CreateInfo()
						 if not level or level == 1 then
						for i=1,4 do
						   if i == 1 then info.text = "No Chance"
						   elseif i == 2 then info.text = "Possible Chance"
						   elseif i == 3 then info.text = "High Chance"
						   else info.text = "Legacy" end
						   info.notCheckable = true
						   info.hasArrow = true
						   info.keepShownOnClick = true
						   info.menuList = i
						   Lib_UIDropDownMenu_AddButton(info, level)
						end
						 else
						info.func = UnobtainableToggle
						for k,v in ipairs(L("UNOBTAINABLE_ITEM_REASONS")) do
						   if v[1] == menuList then
							  info.text = v[3]
							  info.isNotRadio = true
							  info.keepShownOnClick = true
							  info.arg1 = k
							  info.checked = not (GetDataMember("UnobtainableItemFilters") and GetDataMember("UnobtainableItemFilters")[k])
							  Lib_UIDropDownMenu_AddButton(info, level)
						   end
						end
						 end
					  end)
		Lib_UIDropDownMenu_SetText(self.UnobtainableItemFilters, "Unobtainable Items")
		if not GetDataMember("FilterUnobtainableItems") then self.UnobtainableItemFilters:Hide() end

		self.FilterSeasonal = CreateFrame("CheckButton", name .. "-FilterSeasonal", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.FilterSeasonal, self, "Filter Seasonal Items", 15, -110, GetDataMember("FilterSeasonal"));
		if GetDataMember("FilterSeasonal") then self.FilterSeasonal.Label:Hide() end
		self.FilterSeasonal:SetScript("OnClick", function(self)
			SetDataMember("FilterSeasonal", self:GetChecked());
			if self:GetChecked() then
				app.SeasonalFilter = app.FilterItemClass_SeasonalItem;
				self.Label:Hide()
				self:GetParent().SeasonalFilters:Show()
			else
				app.SeasonalFilter = app.NoFilter;
				self.Label:Show()
				self:GetParent().SeasonalFilters:Hide()
			end
			app:RefreshData();
		end);


		self.SeasonalFilters = CreateFrame("Frame", name .. "-SeasonalFilters", self, "Lib_UIDropDownMenuTemplate")
		self.SeasonalFilters:SetPoint("TOPLEFT", self, "TOPLEFT", 25, -110)
		self.SeasonalFilters:SetWidth(300)
		local function SeasonalToggle(ref, val)
		   local t = GetDataMember("SeasonalFilters", {})
		   t[val] = not t[val]
		   app:RefreshData()
		end
		Lib_UIDropDownMenu_Initialize(self.SeasonalFilters,
					  function(self, level, menuList)
						 local info = Lib_UIDropDownMenu_CreateInfo()
						 info.func = SeasonalToggle
						 for k,v in ipairs(L("UNOBTAINABLE_ITEM_REASONS")) do
						if v[1] > 4 then
						   info.text = v[3]
						   info.isNotRadio = true
						   info.keepShownOnClick = true
						   info.arg1 = k
						   info.checked = not (GetDataMember("SeasonalFilters") and GetDataMember("SeasonalFilters")[k])
						   Lib_UIDropDownMenu_AddButton(info, 1)
						end
						 end
					  end)
		Lib_UIDropDownMenu_SetText(self.SeasonalFilters, "Filter Seasonal")
		if not GetDataMember("FilterSeasonal") then self.SeasonalFilters:Hide() end

		self.FilterItemsByRace = CreateFrame("CheckButton", name .. "-FilterItemsByRace", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.FilterItemsByRace, self, "Filter Items By Race", 300, -50, GetDataMember("FilterItemsByRace"));
		self.FilterItemsByRace:SetScript("OnClick", function(self)
			SetDataMember("FilterItemsByRace", self:GetChecked());
			if self:GetChecked() then
				app.RaceRequirementFilter = app.FilterItemClass_RequireRaces;
			else
				app.RaceRequirementFilter = app.NoFilter;
			end
			app:RefreshData();
		end);

		
			
		self.FilterItemsByClass = CreateFrame("CheckButton", name .. "-FilterItemsByClass", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.FilterItemsByClass, self, "Filter Items By Class", 300, -70, self, GetDataMember("FilterItemsByClass"));
		self.FilterItemsByClass:SetScript("OnClick", function(self)
			SetDataMember("FilterItemsByClass", self:GetChecked());
			if self:GetChecked() then
				app.ClassRequirementFilter = app.FilterItemClass_RequireClasses;
			else
				app.ClassRequirementFilter = app.NoFilter;
			end
			app:RefreshData();
		end);

		
		
		
		self.RequireBindingFilter = CreateFrame("CheckButton", name .. "-RequireBindingFilter", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.RequireBindingFilter, self, "Hide BoE Items", 300, -90, self, GetDataMember("RequireBindingFilter"));
		self.RequireBindingFilter:SetScript("OnClick", function(self)
			SetDataMember("RequireBindingFilter", self:GetChecked());
			if self:GetChecked() then
				app.RequireBindingFilter = app.FilterItemClass_RequireBinding;
			else
				app.RequireBindingFilter = app.NoFilter;
			end
			app:RefreshData();
		end);
	
		local itemFilters = GetPersonalDataMember("ItemFilters");
		-- "Armor Types" and "Non-Equipment Types"
		local itemFilterNames = L("FILTER_ID_TYPES");
		for itemClassID,filters in pairs({ [4] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 } }) do
		local itemClassFilter = CreateFrame("CheckButton", name .. "-" .. itemClassID, self, "InterfaceOptionsCheckButtonTemplate");
		itemClassFilter:SetPoint("TOPLEFT", self, "TOPLEFT", 10, -325);
		itemClassFilter.itemClassID = itemClassID;
		itemClassFilter.Label = _G[itemClassFilter:GetName() .. "Text"];
		itemClassFilter.Label:SetText(GetItemClassInfo(itemClassID) .. " (" .. itemClassID .. ")");
		itemClassFilter.Label:SetWidth(200);
		itemClassFilter.groups = {};
		itemClassFilter:SetScript("OnClick", function(self)
			for j, f in ipairs(self.groups) do
				local checked = not itemFilters[f.filter];
				itemFilters[f.filter] = checked;
				f:SetChecked(checked);
			end
			self:SetChecked(false);
			app:RefreshData();
		end);
		local lastFilter = itemClassFilter;
		for j, filter in ipairs(filters) do
			local itemFilter = CreateFrame("CheckButton", itemClassFilter:GetName() .. "-" .. filter, self, "InterfaceOptionsCheckButtonTemplate");
			itemFilter:SetPoint("LEFT", self, "LEFT", 20, 0);
			itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
			itemFilter.filter = filter;
			itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
			itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
			itemFilter.Label:SetWidth(200);
			lastFilter = itemFilter;
			tinsert(itemClassFilter.groups, itemFilter);
			itemFilter:SetChecked(itemFilters[filter]);
			itemFilter:SetScript("OnClick", function(self)
				itemFilters[self.filter] = self:GetChecked();
				app:RefreshData();
			end);
		end
	end
		
		
			
		-- "Weapons Types"
		local weaponItemClassID = 2;
		local weaponFilters = CreateFrame("CheckButton", name .. "-" .. weaponItemClassID, self, "InterfaceOptionsCheckButtonTemplate");
		weaponFilters:SetPoint("TOPLEFT", self, "TOPLEFT", 200, -325);
		weaponFilters.itemClassID = weaponItemClassID;
		weaponFilters.Label = _G[weaponFilters:GetName() .. "Text"];
		weaponFilters.Label:SetText(GetItemClassInfo(weaponItemClassID) .. " (" .. weaponItemClassID .. ")");
		weaponFilters.Label:SetWidth(200);
		weaponFilters.groups = {};
		weaponFilters:SetScript("OnClick", function(self)
			for i, f in ipairs(self.groups) do
				local checked = not itemFilters[f.filter];
				itemFilters[f.filter] = checked;
				f:SetChecked(checked);
			end
			self:SetChecked(false);
			app:RefreshData();
		end);
		
		lastFilter = weaponFilters;
		for i, filter in ipairs({ 20, 21, 22, 23, 24, 25, 26, 35 }) do
			local itemFilter = CreateFrame("CheckButton", weaponFilters:GetName() .. "-" .. filter, self, "InterfaceOptionsCheckButtonTemplate");
			itemFilter:SetPoint("LEFT", self, "LEFT", 210, 0);
			itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
			itemFilter.filter = filter;
			itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
			itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
			itemFilter.Label:SetWidth(200);
			lastFilter = itemFilter;
			tinsert(weaponFilters.groups, itemFilter);
			itemFilter:SetChecked(itemFilters[filter]);
			itemFilter:SetScript("OnClick", function(self)
				itemFilters[self.filter] = self:GetChecked();
				app:RefreshData();
			end);
		end
	
	
		lastFilter = weaponFilters;
		for i, filter in ipairs({ 27, 28, 29, 30, 31, 32, 33, 34 }) do
			local itemFilter = CreateFrame("CheckButton", weaponFilters:GetName() .. filter, self, "InterfaceOptionsCheckButtonTemplate");
			itemFilter:SetPoint("LEFT", self, "LEFT", 420, 0);
			itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
			itemFilter.filter = filter;
			itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
			itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
			itemFilter.Label:SetWidth(200);
			lastFilter = itemFilter;
			tinsert(weaponFilters.groups, itemFilter);
			itemFilter:SetChecked(itemFilters[filter]);
			itemFilter:SetScript("OnClick", function(self)
				itemFilters[self.filter] = self:GetChecked();
				app:RefreshData();
			end);
		end

		-- mounts etc --
		-- "Non-Equipment Types" ("Title" is actually blank - this is used for positioning")
		lastFilter = self.dummy;
		for i,filter in ipairs({ 100, 101, 102, 103 }) do
			local itemFilter = CreateFrame("CheckButton", name .. "-15-" .. filter, self, "InterfaceOptionsCheckButtonTemplate");
			itemFilter:SetPoint("LEFT", self.FilterGroupsByLevel, "LEFT", 0, 100);
			itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
			itemFilter.filter = filter;
			itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
			itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
			itemFilter.Label:SetWidth(200);
			lastFilter = itemFilter;
			itemFilter:SetChecked(itemFilters[filter]);
			itemFilter:SetScript("OnClick", function(self)
				itemFilters[self.filter] = self:GetChecked();
				app:RefreshData();
			end);
		end
			
		self.RequireTrackableFilter = CreateFrame("CheckButton", name .. "-RequireTrackableFilter", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.RequireTrackableFilter, self, "Track Quest Completion", 15, -240, GetDataMember("RequireTrackableFilter"));
		self.RequireTrackableFilter:SetScript("OnClick", function(self)
			SetDataMember("RequireTrackableFilter", self:GetChecked());
			if self:GetChecked() then
				app.RequireTrackableFilter = app.FilterItemTrackable;
			else
				app.RequireTrackableFilter = app.Filter;
			end
			app:RefreshData();
		end);
				
		-- "Non-Equipment Types" (Part 2)
		lastFilter = self.dummy;
		for i,filter in ipairs({ 104, 108, 109, 200 }) do
			local itemFilter = CreateFrame("CheckButton", name .. "-15-" .. filter, self, "InterfaceOptionsCheckButtonTemplate");
			itemFilter:SetPoint("LEFT", self.FilterGroupsByLevel, "LEFT", 285, 0);
			itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
			itemFilter.filter = filter;
			itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
			itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
			itemFilter.Label:SetWidth(200);
			lastFilter = itemFilter;
			itemFilter:SetChecked(itemFilters[filter]);
			itemFilter:SetScript("OnClick", function(self)
				itemFilters[self.filter] = self:GetChecked();
				app:RefreshData();
			end);
		end
	end
	CreateFilterFrame(filtersFrame);



	-- This Creates the FAQ window in the options --
	local faqFrame = CreateFrame("FRAME", name .."-Frame", mainFrame);
	faqFrame.parent = mainFrame.name;
	CreateSettingFrame(faqFrame, "Help");
	local function CreateFaqFrame(self)
		self.qOne = "|CFFADD8E6Q) What is completionist filter? \n|r";
		self.qOneA = "A) When turned on shows you ALL items you are missing the appearances from. Turn off if you only want to collect the appearance id. \n \n";
		self.qTwo = "|CFFADD8E6Q) What does ignore filters for BOE/BOA do?  \n|r";
		self.qTwoA = "A) This ignores all filters for any items that are Bind on Equip or Bind on Account. Turn off if you only want to see BOE or BOA items for your filter settings.\n \n";
		self.qThree = "|CFFADD8E6Q) Why do I see unobtainable items?  \n|r";
		self.qThreeA = "A) We here at ALL THE THINGS strive to add every item known to man to the database. There is a filter to not show these.\n \n";
		self.qFour = "|CFFADD8E6Q) How do I make the addon not pop-up when changing zones?  \n|r";
		self.qFourA = "A) You would uncheck the Auto Mini List filter in settings, or you can make a macro to pop minilist up in current zone.\n \n";
		self.qFive =  "|CFFADD8E6Q) Why is ALL THE THINGS showing me recipes my character already knows?  \n|r";
		self.qFiveA ="A) Because  is not tracking the recipe, but is tracking the item that the recipe makes.\n \n";
		self.qSix = "|CFFADD8E6Q) Why does ALL THE THINGS show me items I have collected from another source with Completionist mode off?  \n|r";
		self.qSixA = "A) One reason is if the appearance that you have collected is not transmoggable on the character you are on. If you have a hunter only piece, alternate appearances will still show up on your shaman as your shaman can not transmog the hunter piece.\n \n"
		self.qSeven = "|CFFADD8E6Q) Why do I not see any mounts?  \n|r";
		self.qSevenA = "A) There are some other mount addons that interfere with ALL THE THINGS ability to detect mount collection at startup. Please disable any you have, ReloadUI, and check to see if you now have mounts. ATT will cache the information so you are free to enable any addons you disabled.\n \n"
		self.qEight = "|CFFADD8E6Q)What do I do if I have a suggestion, complaint, etc?\n|r";
		self.qEightA = "A) Feel free to post at \nhttps://mods.curse.com/addons/wow/267285-all-the-things \nhttp://www.mmo-champion.com/threads/2227927-ALL-THE-THINGS-New-Transmog-Addon \nor join our discord -- https://discord.gg/VHe8JC2";
		
		self.text = self:CreateFontString(nil, "ARTWORK", "GameFontNormal");
		self.text:SetPoint("TOPLEFT", self.Separator, "TOPLEFT", 0, -5);
		self.text:SetJustifyH("LEFT");   -- aligns the text to the left
		self.text:SetText(self.qOne.. self.qOneA.. self.qTwo.. self.qTwoA.. self.qThree.. self.qThreeA.. self.qFour.. self.qFourA.. self.qFive.. self.qFiveA.. self.qSix.. self.qSixA.. self.qSeven.. self.qSevenA.. self.qEight.. self.qEightA);
		self.text:SetWidth(550);
	end
	CreateFaqFrame(faqFrame);






	-- This creates the filter window in the options --
--[[ Moving these to the main settings page for now.
	local tooltipFrame = CreateFrame("FRAME", name .. "-Tooltip", mainFrame);
	tooltipFrame.parent = mainFrame.name;
	CreateSettingFrame(tooltipFrame, "Tooltip Settings");
	local function CreateTooltipFrame(self)
		self.ShowSharedAppearances = CreateFrame("CheckButton", name .. "-ShowSharedAppearances", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowSharedAppearances, self, "Show Shared Appearances", 15, -40, GetDataMember("ShowSharedAppearances"));
		self.ShowSharedAppearances:SetScript("OnClick", function(self)
			SetDataMember("ShowSharedAppearances", self:GetChecked());
			wipe(searchCache);
		end);
		
		self.ShowSources = CreateFrame("CheckButton", name .. "-ShowSources", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowSources, self, "Show " .. app.DisplayName .. " Sources", 15, -60, GetDataMember("ShowSources"));
		self.ShowSources:SetScript("OnClick", function(self)
			SetDataMember("ShowSources", self:GetChecked());
			wipe(searchCache);
		end);	

		self.ShowAllSources = CreateFrame("CheckButton", name .. "-ShowAllSources", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowAllSources, self, "Show All Sources", 25, -80, GetDataMember("ShowAllSources"));
		self.ShowAllSources:SetScript("OnClick", function(self)
			SetDataMember("ShowAllSources", self:GetChecked());
			wipe(searchCache);
		end);
		
		self.ShowCollected = CreateFrame("CheckButton", name .. "-ShowCollected", self, "InterfaceOptionsCheckButtonTemplate");
		CreateCheckBox(self.ShowCollected, self, "Show Collected", 25, -100, GetDataMember("ShowCollected", true));
		self.ShowCollected:SetScript("OnClick", function(self)
			SetDataMember("ShowCollected", self:GetChecked());
			wipe(searchCache);
		end);
		
	end
	CreateTooltipFrame(tooltipFrame);
--]]	
	
		
	-- about frame --
	local aboutFrame = CreateFrame("FRAME", name .. "-About", mainFrame);
	aboutFrame.parent = mainFrame.name;	
	CreateSettingFrame(aboutFrame, "About");
	local function createAboutFrame(self)
		self.introString = "|CFFADD8E6\nDo you find yourself completing old content just so that you can get literally everything for your Collections? Say no more! ALL THE THINGS will help you with your endeavor by giving you the ability to track your completion for everything.|r";
		self.featureString = "|CFFADD8E6Features: \n • Supports tracking of Appearances, Illusions, Mounts, Pets, Toys, Music Rolls and Titles \n • Primary Collections Window is moveable and resizeable \n • Auto Minilist \n • Datatext Support \n • Multiple Database modules to keep the addon from having to access Blizzard API \n • Filters to allow you to customize the addon to your preferences \n • Extra tooltip information (Models, Icons, Descriptions, etc) \n • Fanfare music when you learn anything new.|r";
		self.endString = "|CFFADD8E6Author -- Imoldgregg \nContributers -- Daktar, Lucetia, Avella, Oiche, Gold, Infamous, Aiue \nDiscord -- https://discord.gg/VHe8JC2 |r";
		self.test = self:CreateFontString(nil, "ARTWORK", "GameFontNormal");
		self.test:SetPoint("TOPLEFT", self.Separator, "TOPLEFT", 0, -5);
		self.test:SetJustifyH("LEFT");   -- aligns the text to the left
		self.test:SetText(self.introString.. "\n \n \n".. self.featureString .. "\n \n \n".. self.endString);
		self.test:SetWidth(550);
	end
	createAboutFrame(aboutFrame);

	
end

-- Row Helper Functions
local CreateRow;
local function ClearRowData(self)
	self.ref = nil;
	self.Background:Hide();
	self.Texture:Hide();
	self.Texture.Background:Hide();
	self.Texture.Border:Hide();
	self.Indicator:Hide();
	self.Summary:Hide();
	self.Label:Hide();
end
local function SetRowData(self, data)
	ClearRowData(self);
	if data then
		local text = data.text;
		if not text or string.find(text, "%[%]") then
			self:GetParent().processingLinks = true;
			text = RETRIEVING_DATA;
		elseif data.s and data.s < 1 then
			-- If it doesn't, the source ID will need to be harvested.
			local s, dressable = GetSourceID(text);
			if s and s > 0 then
				data.s = s;
				local item = SourceIDs[data.itemID];
				if not item then
					item = {};
					SourceIDs[data.itemID] = item;
				end
				if data.bonus then
					local v = item.v;
					if not v then
						v = {};
						item.v = v;
					end
					v[data.bonus] = s;
				else
					local m = item.m;
					if not m then
						m = {};
						item.m = m;
					end
					m[data.itemModID or 1] = s;
				end
				SetDataMember("Items", SourceIDs); -- Uncomment for harvesting Source IDs
			else
				data.s = nil;
			end
		end
		local leftmost = self;
		local relative = "LEFT";
		local x = (((data.indent or 0) + 1) * GetDataMember("Indent", 8)) or 0;
		self.ref = data;
		if data.back then
			self.Background:SetAlpha(data.back or 0.2);
			self.Background:Show();
		end
		if data.saved then
			self.Indicator:SetTexture("Interface\\Addons\\AllTheThings\\assets\\known_green");
			self.Indicator:SetPoint("RIGHT", leftmost, relative, x, 0);
			self.Indicator:Show();
		end
		if data.u then
			local reason = L("UNOBTAINABLE_ITEM_REASONS")[data.u or 1];
			if reason then
				local texture = L("UNOBTAINABLE_ITEM_TEXTURES")[reason[1]];
				if texture then
					self.Indicator:SetTexture(texture);
					self.Indicator:SetPoint("RIGHT", leftmost, relative, x, 0);
					self.Indicator:Show();
				end
			end
		end
		if SetPortraitIcon(self.Texture, data) then
			self.Texture.Background:SetPoint("LEFT", leftmost, relative, x, 0);
			self.Texture.Border:SetPoint("LEFT", leftmost, relative, x, 0);
			self.Texture:SetPoint("LEFT", leftmost, relative, x, 0);
			self.Texture:Show();
			leftmost = self.Texture;
			relative = "RIGHT";
			x = 4;
		end
		if data.total and data.total > 0 then
			local percent = data.collected / data.total;
			self.Summary:SetText("|c" .. GetProgressColor(percent) .. tostring(data.collected) .. " / " .. tostring(data.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
			self.Summary:Show();
		elseif data.trackable then
			self.Summary:SetText(L(data.saved and "COMPLETE_ICON" or "NOT_COLLECTED_ICON"));
			self.Summary:Show();
		else
			self.Summary:SetText(L(data.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"));
			self.Summary:Show();
		end
		self.Label:SetPoint("LEFT", leftmost, relative, x, 0);
		if self.Summary and self.Summary:IsShown() then
			self.Label:SetPoint("RIGHT", self.Summary, "LEFT", 0, 0);
		else
			self.Label:SetPoint("RIGHT");
		end
		self.Label:SetText(text);
		self.Label:Show();
		self:Show();
	else
		self:Hide();
	end
end
local function UpdateVisibleRowData(self)
	-- If there is no raw data, then return immediately.
	if not self.rowData then return; end
	if self:GetHeight() > 64 then self.ScrollBar:Show(); else self.ScrollBar:Hide(); end
	
	-- Make it so that if you scroll all the way down, you have the ability to see all of the text every time.
	local container = self.Container;
	local totalRowCount = #self.rowData + 2;
	local rowCount = math.floor(container:GetHeight() / container.rowHeight);
	local current = math.max(1, math.min(self.ScrollBar.CurrentValue, totalRowCount - rowCount));
	self.ScrollBar:SetMinMaxValues(1, math.max(1, totalRowCount - rowCount));
	
	-- Create up to the maximum number of rows required to fill the container.
	for i=#container.rows,rowCount do CreateRow(container); end
	
	-- Set the data for the first row to ALWAYS display the topmost data (essentially becoming a Title Bar)
	local firstRow = self.rowData[1];
	if firstRow then
		SetRowData(container.rows[1], firstRow);
		current = current + 1;
		
		-- Fill the remaining rows up to the (visible) row count.
		for i=2,rowCount do
			SetRowData(container.rows[i], self.rowData[current]);
			current = current + 1;
		end
		
		-- Hide the extra rows if any exist (these are created when you make the window larger and then shrink, the leftover frames are still alive)
		for i=rowCount + 1,#container.rows do
			ClearRowData(container.rows[i]);
			container.rows[i]:Hide();
		end
		
		-- If the rows need to be processed again, do so next update.
		if container.processingLinks then
			container.processingLinks = nil;
			Push(app, function()
				self:Update();
			end);
		end
	else
		self:Hide();
	end
end
local function HideParent(self)
	self:GetParent():Toggle();
end
local function IsSelfOrChild(self, focus)
	-- This function helps validate that the focus is within the local hierarchy.
	return focus and (self == focus or IsSelfOrChild(self, focus:GetParent()));
end
local function StopMovingOrSizing(self)
	if self.isMoving then
		self:StopMovingOrSizing();
		self.isMoving = false;
	end
end
local function StartMovingOrSizing(self, fromChild)
	if self.isMoving then
		StopMovingOrSizing(self);
	else
		self.isMoving = true;
		if ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
			self:StartSizing();
			Push(self, function()
				if self.isMoving then
					self:Update();
					return true;
				end
			end);
		else
			self:StartMoving();
			Push(app, function()
				-- This fixes a bug where the window will get stuck on the mouse until you reload.
				if IsSelfOrChild(self, GetMouseFocus()) then
					return true;
				else
					StopMovingOrSizing(self);
				end
			end);
		end
	end
end
local function RowOnClick(self, button)
	local reference = self.ref;
	if reference then
		if reference.groups then
			if button == "LeftButton" then
				if IsShiftKeyDown() then
					RefreshCollections(reference);
					return true;
				end
				if IsModifiedClick("DRESSUP") then
					local link = reference.link or reference.silentLink;
					if link and IsDressableItem(link) and DressUpVisual(link) then return true; end
				end
				if self.index > 0 then
					-- Expand Functionality
					if IsAltKeyDown() then
						ExpandGroupsRecursively(reference, not reference.expanded);
					else
						reference.expanded = not reference.expanded;
					end
					app:UpdateWindows();
				else
					-- Allow the First Frame to move the parent.
					local owner = self:GetParent():GetParent();
					self:SetScript("OnMouseUp", function(self)
						self:SetScript("OnMouseUp", nil);
						StopMovingOrSizing(owner);
					end);
					StartMovingOrSizing(owner, true);
				end
			else
				if IsShiftKeyDown() and Atr_SearchAH then
					Atr_SearchAH (app.DisplayName, SearchForMissingItems(reference));
					return true;
				end
				if self.index > 0 then
					-- Pop Out Functionality! :O
					local popout = app:GetWindow(self.Label:GetText());
					popout.data = setmetatable({}, { __index = self.ref });
					ExpandGroupsRecursively(popout.data, true);
					popout:Toggle(true);
				else
					-- Configuration Functionality!
					ShowInterfaceOptions();
				end
			end
		else
			local link = reference.link or reference.silentLink;
			if link then
				if HandleModifiedItemClick(link) then return true; end
				if IsModifiedClick("DRESSUP") then return DressUpVisual(link) or app.print(link or self.Label:GetText()); end
			end
		end
	end
end
local function RowOnEnter(self)
	local reference = self.ref; -- NOTE: This is the good ref value, not the parasitic one.
	if reference and GameTooltip then
		GameTooltipIcon.icon.Background:Hide();
		GameTooltipIcon.icon.Border:Hide();
		GameTooltipIcon:Hide();
		GameTooltipModel:Hide();
		GameTooltip:ClearLines();
		GameTooltipIcon:ClearAllPoints();
		GameTooltipModel:ClearAllPoints();
		if self:GetCenter() > (UIParent:GetWidth() / 2) then
			GameTooltip:SetOwner(self, "ANCHOR_LEFT");
			GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
			GameTooltipModel:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
		else
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltipIcon:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, 0);
			GameTooltipModel:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, 0);
		end
		
		-- NOTE: Order matters, we "fall-through" certain values in order to pass this information to the item ID section.
		if reference.itemID then
			-- This is an item reference. :)
			local link = reference.link;
			if link then GameTooltip:SetHyperlink(link); end
		elseif reference.instanceID then
			-- Contains information about an Instance (Raid or Dungeon)
			-- Is the player's character saved to this instance?
			if self.ref.saved and self.ref.saved then
				GameTooltip:SetInstanceLockEncountersComplete(self.ref.saved);
				GameTooltip:AddLine(" ");
			end
		else
			-- Standalone Fields
			if reference.toyID then GameTooltip:SetToyByItemID(reference.toyID);
			elseif not reference.encounterID then -- Dungeon Journal links do NOT work. :/
				local link = reference.link;
				if link then pcall(GameTooltip.SetHyperlink, GameTooltip, link); end
			end
		end
		
		-- Miscellaneous fields
		if GetDataMember("ShowCollected", true) then
			local style = GameTooltip:NumLines() < 1;
			if style then
				if not reference.total or reference.total < 1 then
					if reference.trackable then
						GameTooltip:AddDoubleLine(self.Label:GetText(), "---");
						if reference.title then
							GameTooltip:AddDoubleLine(reference.title, L(reference.saved and "COMPLETE" or "INCOMPLETE"), 1, 1, 1);
						else
							GameTooltip:AddDoubleLine("Quest Progress", L(reference.saved and "COMPLETE" or "INCOMPLETE"));
						end
					elseif reference.collectable then
						GameTooltip:AddDoubleLine(self.Label:GetText(), L(reference.collected and "COLLECTED" or "NOT_COLLECTED"));
					end
					if reference.title then GameTooltip:AddLine(reference.title, 1, 1, 1); end
				else
					local percent = reference.collected / reference.total;
					GameTooltip:AddDoubleLine(self.Label:GetText(), "|c" .. GetProgressColor(percent) .. tostring(reference.collected) .. " / " .. tostring(reference.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
					if reference.trackable then
						if reference.title then
							GameTooltip:AddDoubleLine(reference.title, L(reference.saved and "COMPLETE" or "INCOMPLETE"), 1, 1, 1);
						else
							GameTooltip:AddDoubleLine("Quest Progress", L(reference.saved and "COMPLETE" or "INCOMPLETE"));
						end
					else
						if reference.title then GameTooltip:AddLine(reference.title, 1, 1, 1); end
					end
				end
			else
				if not reference.total or reference.total < 1 then
					if reference.trackable then
						GameTooltipTextRight1:SetText(L(reference.saved and "COMPLETE" or "INCOMPLETE"));
					elseif reference.collectable then
						GameTooltipTextRight1:SetText(L(reference.collected and "COLLECTED" or "NOT_COLLECTED"));
					end
				else
					local percent = reference.collected / reference.total;
					GameTooltipTextRight1:SetText("|c" .. GetProgressColor(percent) .. tostring(reference.collected) .. " / " .. tostring(reference.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
				end
				GameTooltipTextRight1:Show();
			end
		else
			if GameTooltip:NumLines() < 1 then GameTooltip:AddLine(self.Label:GetText()); end
		end
		
		--if reference.title then GameTooltip:AddLine(reference.title, 1, 1, 1, 1); end
		if reference.Lvl then GameTooltip:AddDoubleLine(L("REQUIRES_LEVEL"), tostring(reference.Lvl)); end
		if reference.requiredSkill then
			GameTooltip:AddDoubleLine(L("REQUIRES"), tostring(GetSpellInfo(SkillIDToSpellID[reference.requiredSkill] or 0)));
			-- GameTooltip:AddDoubleLine(L("REQUIRE_SKILL_ID"), tostring(reference.requiredSkill));
		end
		if reference.f and reference.f > 0 and GetDataMember("ShowFilterID") then GameTooltip:AddDoubleLine(L("FILTER_ID"), tostring(L("FILTER_ID_TYPES")[reference.f])); end
		if reference.achievementID and GetDataMember("ShowAchievementID") then GameTooltip:AddDoubleLine(L("ACHIEVEMENT_ID"), tostring(reference.achievementID)); end
		if reference.artifactID and GetDataMember("ShowArtifactID") then GameTooltip:AddDoubleLine(L("ARTIFACT_ID"), tostring(reference.artifactID)); end
		if GetDataMember("ShowCreatureID") then
			if reference.creatureID then GameTooltip:AddDoubleLine(L("CREATURE_ID"), tostring(reference.creatureID));
			elseif reference.npcID and reference.npcID > 0 then GameTooltip:AddDoubleLine(L("NPC_ID"), tostring(reference.npcID)); end
		end
		if reference.difficultyID and GetDataMember("ShowDifficultyID") then GameTooltip:AddDoubleLine(L("DIFFICULTY_ID"), tostring(reference.difficultyID)); end
		if reference.encounterID and GetDataMember("ShowEncounterID") then GameTooltip:AddDoubleLine(L("ENCOUNTER_ID"), tostring(reference.encounterID)); end
		if reference.factionID and GetDataMember("ShowFactionID") then GameTooltip:AddDoubleLine(L("FACTION_ID"), tostring(reference.factionID)); end
		if reference.illusionID and GetDataMember("ShowIllusionID") then GameTooltip:AddDoubleLine(L("ILLUSION_ID"), tostring(reference.illusionID)); end
		if reference.instanceID and GetDataMember("ShowInstanceID") then GameTooltip:AddDoubleLine(L("INSTANCE_ID"), tostring(reference.instanceID)); end
		if reference.musicRollID and GetDataMember("ShowMusicRollID") then GameTooltip:AddDoubleLine(L("MUSIC_ROLL_ID"), tostring(reference.musicRollID)); end
		if reference.objectID and GetDataMember("ShowObjectID") then GameTooltip:AddDoubleLine(L("OBJECT_ID"), tostring(reference.objectID)); end
		if reference.speciesID and GetDataMember("ShowSpeciesID") then GameTooltip:AddDoubleLine(L("SPECIES_ID"), tostring(reference.speciesID)); end
		if reference.spellID and GetDataMember("ShowSpellID") then GameTooltip:AddDoubleLine(L("SPELL_ID"), tostring(reference.spellID)); end
		if reference.tierID and GetDataMember("ShowTierID") then GameTooltip:AddDoubleLine(L("EXPANSION_ID"), tostring(reference.tierID)); end
		if reference.setID then GameTooltip:AddDoubleLine(L("SET_ID"), tostring(reference.setID)); end
		if reference.setHeaderID then GameTooltip:AddDoubleLine(L("SET_ID"), tostring(reference.setHeaderID)); end
		if reference.setSubHeaderID then GameTooltip:AddDoubleLine(L("SET_ID"), tostring(reference.setSubHeaderID)); end
		if reference.description and GetDataMember("ShowDescriptions") then GameTooltip:AddLine(reference.description, 0.4, 0.8, 1, 1); end
		if reference.mapID and GetDataMember("ShowMapID") then GameTooltip:AddDoubleLine(L("MAP_ID"), tostring(reference.mapID)); end
		if reference.dr then GameTooltip:AddDoubleLine(L("DROP_RATE"), "|c" .. GetProgressColor(reference.dr * 0.01) .. tostring(reference.dr) .. "%|r"); end
		if not reference.itemID and not reference.speciesID and reference.u then GameTooltip:AddLine(L("UNOBTAINABLE_ITEM_REASONS")[reference.u][2], 1, 1, 1, 1, true); end
		if reference.speciesID then
			AttachTooltipSearchResults(GameTooltip, "speciesID:" .. reference.speciesID, SearchForFieldAndSummarize, "speciesID", reference.speciesID);
			local collected, total = C_PetJournal.GetNumCollectedInfo(reference.speciesID);
			if total then GameTooltip:AddLine(tostring(collected) .. " / " .. tostring(total) .. " Collected"); end
		end
		if reference.toyID then AttachTooltipSearchResults(GameTooltip, "toyID:" .. reference.toyID, SearchForFieldAndSummarize, "toyID", reference.toyID); end
		if reference.titleID then
			if GetDataMember("ShowTitleID") then GameTooltip:AddDoubleLine(L("TITLE_ID"), tostring(reference.titleID)); end
			GameTooltip:AddDoubleLine(" ", L(IsTitleKnown(reference.titleID) and "KNOWN_ON_CHARACTER" or "UNKNOWN_ON_CHARACTER"));
		end
		if reference.questID and GetDataMember("ShowQuestID") then GameTooltip:AddDoubleLine(L("QUEST_ID"), tostring(reference.questID)); end
		if not GameTooltipModel:TrySetModel(reference) and reference.icon then
			if reference.groups then
				GameTooltipIcon:SetSize(96,96);
			else
				GameTooltipIcon:SetSize(64,64);
			end
			GameTooltipIcon.icon:SetTexture(reference.preview or reference.icon);
			GameTooltipIcon:Show();
		end
		if reference.groups then
			GameTooltip:AddLine(L((self.index > 0 and "LEFT_CLICK_TO_EXPAND") or "LEFT_CLICK_TO_MOVE"), 1, 1, 1);
			GameTooltip:AddLine(L("SHIFT_LEFT_CLICK"), 1, 1, 1);
			GameTooltip:AddLine(L((self.index > 0 and "RIGHT_CLICK_TO_POPOUT") or "RIGHT_CLICK_TO_CONFIGURE"), 1, 1, 1);
		end
		GameTooltip:Show();
	end
end
local function RowOnLeave(self)
	if self.ref and GameTooltip then
		GameTooltip:Hide();
		GameTooltipIcon.icon.Background:Hide();
		GameTooltipIcon.icon.Border:Hide();
		GameTooltipIcon:Hide();
		GameTooltipModel:Hide();
	end
end
CreateRow = function(self)
	local row = CreateFrame("Button", nil, self);
	row:SetHeight(self.rowHeight);
	row.index = #self.rows;
	if row.index == 0 then
		-- This means relative to the parent.
		row:SetPoint("TOPLEFT");
		row:SetPoint("TOPRIGHT");
	else
		-- This means relative to the row above this one.
		row:SetPoint("TOPLEFT", self.rows[row.index], "BOTTOMLEFT");
		row:SetPoint("TOPRIGHT", self.rows[row.index], "BOTTOMRIGHT");
	end
	table.insert(self.rows, row);
	
	-- Setup highlighting and event handling
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
	row:RegisterForClicks("LeftButtonDown","RightButtonDown");
	row:SetScript("OnClick", RowOnClick);
	row:SetScript("OnEnter", RowOnEnter);
	row:SetScript("OnLeave", RowOnLeave);
	row:EnableMouse(true);
	
	-- Background is used by the Map Highlight functionality.
	row.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Background:SetPoint("LEFT", 4, 0);
	row.Background:SetPoint("BOTTOM");
	row.Background:SetPoint("RIGHT");
	row.Background:SetPoint("TOP");
	row.Background:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight");
	
	-- Indicator is used by the Instance Saves functionality.
	row.Indicator = row:CreateTexture(nil, "ARTWORK");
	row.Indicator:SetPoint("BOTTOM");
	row.Indicator:SetPoint("TOP");
	row.Indicator:SetWidth(row:GetHeight());
	
	-- Texture is the icon.
	row.Texture = row:CreateTexture(nil, "ARTWORK");
	row.Texture:SetPoint("BOTTOM");
	row.Texture:SetPoint("TOP");
	row.Texture:SetWidth(row:GetHeight());
	row.Texture.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Texture.Background:SetPoint("BOTTOM");
	row.Texture.Background:SetPoint("TOP");
	row.Texture.Background:SetWidth(row:GetHeight());
	row.Texture.Border = row:CreateTexture(nil, "BORDER");
	row.Texture.Border:SetPoint("BOTTOM");
	row.Texture.Border:SetPoint("TOP");
	row.Texture.Border:SetWidth(row:GetHeight());
	
	-- Label is the text information you read.
	row.Label = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Label:SetJustifyH("LEFT");
	row.Label:SetPoint("BOTTOM");
	row.Label:SetPoint("TOP");
	
	-- Summary is the completion summary information. (percentage text)
	row.Summary = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Summary:SetJustifyH("CENTER");
	row.Summary:SetPoint("BOTTOM");
	row.Summary:SetPoint("RIGHT");
	row.Summary:SetPoint("TOP");
	
	-- Clear the Row Data Initially
	ClearRowData(row);
end

-- Processing Functions (Coroutines)
local UpdateGroup, UpdateGroups;
local function BuildGroups(parent, groups)
	if groups then
		-- Iterate through the groups
		for key, group in ipairs(groups) do
			-- Set the group's parent
			group.parent = parent;
			
			-- Build the groups
			BuildGroups(group, group.groups);
		end
	end
end
local function ProcessGroup(data, parent, indent, back)
	if parent.visible then
		if parent.mapID and parent.mapID == GetPersonalDataMember("MapID") then
			parent.back = 1;
		else 
			parent.back = back or parent.back;
		end
		parent.indent = indent;
		tinsert(data, parent);
		if parent.groups and parent.expanded then
			indent = indent + 1;
			back = parent.back * 0.5;
			for j, group in ipairs(parent.groups) do
				ProcessGroup(data, group, indent, back);
			end
		end
	end
end
UpdateGroup = function(parent, group)
	-- Determine if this user can enter the instance or acquire the item.
	if app.GroupRequirementsFilter(group) then
		-- Check if this is a group
		if group.groups then
			-- If this item is collectable, then mark it as such.
			if group.collectable or group.s then
				-- An item is a special case where it may have both an appearance and a set of items
				if group.s then
					if group.s < 1 then
						-- This item is missing its source ID. :(
						group.collected = 0;
						group.total = 1;
						
						-- The source ID will need to be harvested.
						table.insert(GetTempDataMember("Missing"), group);
					else
						group.collected = GetDataSubMember("CollectedSources", group.s) and 1 or 0;
						group.total = 1;
					end
				else
					group.collected = getmetatable(group).collected and 1 or 0;
					group.total = 1;
				end
			else
				-- Default to 0 for both
				group.total = 0;
				group.collected = 0;
			end
			
			-- Update the subgroups recursively...
			UpdateGroups(group, group.groups);
			
			-- If the 'can equip' filter says true
			if app.FilterItemClass(group) then
				-- Increment the parent group's totals.
				parent.total = (parent.total or 0) + group.total;
				parent.collected = (parent.collected or 0) + group.collected;
				group.visible = app.GroupVisibilityFilter(group); -- group.total > 0 and 
				
				-- If this group is trackable, then we should show it.
				if app.RequireTrackableFilter(group) then
					group.visible = not group.saved or GetDataMember("ShowCompletedGroups");
				end
			else
				-- Hide this group. We aren't filtering for it.
				group.visible = false;
			end
		else
			-- This is a standalone item.
			if group.itemID and group.s then
				-- If an item has a source ID, that means we can check its collected status.
				if group.s > 0 then
					group.collected = GetDataSubMember("CollectedSources", group.s);
				else
					-- This item is missing its source ID. :(
					group.collected = false;
					
					-- The source ID will need to be harvested.
					table.insert(GetTempDataMember("Missing"), group);
				end
			end
			
			-- If the 'can equip' filter says true
			if app.FilterItemClass(group) then
				-- If we've collected the item, use the "Show Collected Items" filter.
				if group.collected then
					group.visible = app.CollectedItemVisibilityFilter(group);
				else
					-- Otherwise, use the "Show Missing Items" filter.
					group.visible = app.MissingItemVisibilityFilter(group);
				end
				
				if group.collectable or group.s then
					-- Increment the parent group's totals.
					parent.total = (parent.total or 0) + 1;
					if group.collected then parent.collected = (parent.collected or 0) + 1; end
				end
			else
				-- Hide this group. We aren't filtering for it.
				group.visible = false;
			end
		end
	else
		-- This group doesn't meet requirements.
		group.visible = false;
	end
end
UpdateGroups = function(parent, groups)
	if groups then
		-- Iterate through the groups
		for key, group in ipairs(groups) do
			-- Update the group
			UpdateGroup(parent, group);
		end
	end
end
function UpdateParent(group)

end
function UpdateParents(groups)
	if groups then
		-- Iterate through the groups
		for key, group in ipairs(groups) do
			-- Update the group's parent
			UpdateParent(group);
		end
	end
end

-- Collection Window Creation
app.Windows = {};
local function OnScrollBarMouseWheel(self, delta)
	self.ScrollBar:SetValue(self.ScrollBar.CurrentValue - delta);
end
local function OnScrollBarValueChanged(self, value)
	local un = math.floor(value);
	local up = un + 1;
	self.CurrentValue = (up - value) > (-(un - value)) and un or up;
	self:GetParent():Update();
end
local function SetWindowVisibility(self, show)
	if show then
		self:Show();
		self:Update();
		app:Show();
	else
		self:Hide();
		for i, self in pairs(app.Windows) do
			if self:IsVisible() then
				app:Show();
				return;
			end
		end
		app:Hide();
	end
	
	-- Return that at least one window is visible...
	return true;
end
local function ToggleWindow(self)
	return SetWindowVisibility(self, not self:IsVisible());
end
function app:ToggleWindow(suffix)
	local window = app.Windows[suffix];
	if window then ToggleWindow(window); end
end
local function UpdateWindow(self)
	-- If this window doesn't have data, do nothing.
	if not self.data then return; end
	if not self.rowData then
		self.rowData = {};
	else
		wipe(self.rowData);
	end
	if self.data and self:IsVisible() then
		self.data.expanded = true;
		ProcessGroup(self.rowData, self.data, 0, 0);
		
		-- Does this user have everything?
		if self.data.total == self.data.collected then
			if #self.rowData < 1 then
				self.data.back = 1;
				tinsert(self.rowData, self.data);
			end
			tinsert(self.rowData, {
				["text"] = "No items matching your filters found.",
				["description"] = GetDataMember("CompletionistMode") and 
					"Congratulations! You have collected ALL OF THE THINGS that have been implemented for this section. If you find something on WoWHead that you're missing, please report it to the ALL THE THINGS Discord!" or
					"You have collected all of the things that share appearances from this section. There may be additional items if you disable Completionist Mode and are up to the challenge...",
				["indent"] = 1,
				["collected"] = 1,
				["back"] = 1
			});
		end
		
		UpdateVisibleRowData(self);
		return true;
	else
		UpdateVisibleRowData(self);
	end
end
local function UpdateWindowColor(self, suffix)
	self:SetBackdropBorderColor(1, 1, 1, 1);
	self:SetBackdropColor(0, 0, 0, 1);
end
function app:UpdateWindows()
	local anyUpdated = false;
	for i, window in pairs(app.Windows) do
		if window:Update() then anyUpdated = true; end
	end
	return anyUpdated;
end
function app:UpdateWindowColors()
	for suffix, window in pairs(app.Windows) do
		UpdateWindowColor(window, suffix);
	end
end
function app:GetDataCache()
	-- Update the Row Data by filtering raw data
	local allData = app:GetWindow("Prime").data;
	if not allData or not allData.total then
		allData = setmetatable({}, {
			__index = function(t, key)
				if key == "title" then
					return GetDataMember("CompletionistMode") and "Completionist Mode" or "Unique Appearance Mode";
				else
					-- Something that isn't dynamic.
					return table[key];
				end
			end
		});
		allData.groups = {};
		allData.expanded = true;
		allData.icon = L("LOGO_TINY");
		allData.preview = L("LOGO_LARGE");
		allData.text = app.DisplayName;
		allData.description = L("DESCRIPTION");
		allData.visible = true;
		allData.collected = 0;
		allData.total = 0;
		local groups, db = {};
		allData.groups = groups;
		
		-- Cache the player's faction.
		local englishFaction, localizedFaction = UnitFactionGroup("player");
		local isHorde = englishFaction == "Horde";
		
		-- Dungeons & Raids
		db = {};
		db.expanded = false;
		db.text = GROUP_FINDER; -- L("DUNGEONS&RAIDS");
		db.icon = "Interface\\LFGFRAME\\LFGIcon-ReturntoKarazhan"; -- LFGICON-DUNGEON";
		db.groups = app.Instances;
		table.insert(groups, db);
		app.Instances = nil;
		
		-- Zones
		if app.Zones then
			db = app.CreateAchievement(46, app.Zones);
			db.f = 0;
			db.expanded = false;
			db.text = BUG_CATEGORY2; -- L("ZONES");
			db.icon = "Interface\\ICONS\\Achievement_Zone_Outland_01"
			table.insert(groups, db);
			app.Zones = Zones;
		end
		
		-- World Drops
		if app.WorldDrops then
			db = {};
			db.expanded = false;
			db.text = L("WORLD_DROPS");
			db.icon = "Interface\\ICONS\\INV_Misc_Map02";
			db.groups = app.WorldDrops;
			table.insert(groups, db);
			app.WorldDrops = nil;
		end
		
		-- World Events
		if app.WorldEvents then
			db = app.CreateAchievement(2144, app.WorldEvents);
			db.f = 0;
			db.expanded = false;
			db.text = WORLD .. " " .. EVENTS_LABEL; -- L("EVENTS");
			table.insert(groups, db);
			app.WorldEvents = nil;
		end
		
		-- Professions
		if app.Professions then
			db = app.CreateAchievement(10583, {});
			db.expanded = false;
			db.text = TRADE_SKILLS; -- L("PROFESSIONS");
			db.icon = "Interface\\ICONS\\INV_Scroll_04";
			db.groups = app.Professions;
			table.insert(groups, db);
			app.Professions = nil;
		end
		
		-- Gear Sets
		if app.GearSets then
			db = app.CreateAchievement(11761, app.GearSets);
			db.f = 0;
			db.expanded = false;
			db.text = LOOT_JOURNAL_ITEM_SETS; -- L("GEAR_SETS");
			db.icon = "Interface\\ICONS\\Achievement_Transmog_Collections";
			table.insert(groups, db);
			app.GearSets = nil;
		end
		
		-- Illusions
		if app.Illusions then
			db = {};
			db.expanded = false;
			db.text = "Illusions";
			table.insert(groups, db);
			db.group = app.Illusions;
			app.Illusions = nil;
		end
		
		-- Factions
		if app.Factions then
			db = app.CreateAchievement(11177, app.Factions);
			db.expanded = false;
			db.text = "Factions";
			table.insert(groups, db);
			app.Factions = nil;
		end
		
		-- Mounts
		if app.Mounts then
			db = app.CreateAchievement(isHorde and 10355 or 10356, app.Mounts);
			db.f = 100;
			db.expanded = false;
			db.text = MOUNTS; -- L("MOUNTS");
			table.insert(groups, db);
			app.Mounts = nil;
		end
		
		-- Pet Journal
		if app.PetJournal then
			db = app.CreateAchievement(9643, app.PetJournal);
			db.f = 100;
			db.expanded = false;
			db.text = PET_JOURNAL;
			db.icon = "Interface\\ICONS\\INV_Pet_BattlePetTraining";
			table.insert(groups, db);
			app.PetJournal = nil;
		end
		
		-- Titles
		if app.Titles then
			db = app.CreateAchievement(2188, app.Titles);
			db.expanded = false;
			db.text = "Titles";
			table.insert(groups, db);
			app.Titles = nil;
		end
		
		-- Toys
		if app.Toys then
			db = app.CreateAchievement(11176, app.Toys);
			db.icon = "Interface\\ICONS\\INV_Misc_Toy_10";
			db.expanded = false;
			db.text = TOY_BOX; -- Toy Box
			table.insert(groups, db);
			app.Toys = nil;
		end
		
		-- Illusions (Dynamic)
		--[[
		db = {};
		db.groups = GetIllusionCache();
		db.expanded = false;
		db.text = "Illusions (Dynamic)";
		table.insert(groups, db);
		]]--
		
		-- Mounts (Dynamic)
		GetMountInfoCache();
		--[[
		db = app.CreateAchievement(isHorde and 10355 or 10356, GetTempDataMember("MOUNT_CACHE"));
		db.f = 100;
		db.expanded = false;
		db.text = "Mounts (Dynamic)";
		table.insert(groups, db);
		]]--
		
		--[[
		-- SUPER SECRETTTT!
		-- Artifacts (Dynamic)
		db = app.CreateAchievement(11171, GetArtifactCache());
		db.expanded = false;
		db.text = "Artifacts (Dynamic)";
		table.insert(groups, db);
		
		-- Titles (Dynamic)
		db = app.CreateAchievement(2188, GetTitleCache());
		db.expanded = false;
		db.text = "Titles (Dynamic)";
		table.insert(groups, db);
		
		-- Factions (Dynamic)
		db = app.CreateAchievement(11177, GetFactionCache());
		db.expanded = false;
		db.text = "Factions (Dynamic)";
		table.insert(groups, db);
		]]--
		
		-- Gear Sets
		--[[
		db = {};
		GetGearSetCache();
		db.expanded = false;
		db.text = L("GEAR_SETS");
		db.groups = GetTempDataMember("GEAR_SET_CACHE", {});
		table.insert(groups, db);
		]]--
		
		local missingData = {};
		app.missingData = missingData;
		missingData.visible = true;
		missingData.expanded = false;
		missingData.text = "Missing Sources (Total # Ignores Filters)";
		missingData.description = L("SOURCE_ID_MISSING");
		missingData.rows = GetTempDataMember("Missing", {});
		table.insert(groups, missingData);
		app.refreshDataForce = true;
	end
	if app.refreshDataForce then
		app.refreshDataForce = nil;
		allData.collected = 0;
		allData.total = 0;
		wipe(GetTempDataMember("Missing"));
		app.missingData.groups = nil;
		BuildGroups(allData, allData.groups);
		UpdateGroups(allData, allData.groups, 1);
		app.missingData.groups = app.missingData.rows;
		app.missingData.total = #app.missingData.rows;
		app.missingData.collected = 0;
		app.missingData.visible = app.missingData.total > 0;
		app:GetWindow("Prime").data = allData;
		
		-- NOTE: The auto refresh only happens once.
		if not app.autoRefreshedCollections then
			app.autoRefreshedCollections = true;
			local version = GetAddOnMetadata("AllTheThings", "Version");
			local lastTime = GetDataMember("RefreshedCollectionsAlready");
			if not lastTime or (lastTime ~= version and GetDataMember("AutoRefreshCollections")) then
				SetDataMember("RefreshedCollectionsAlready", version);
				SetDataMember("CollectedSources", {});	-- This option causes a caching issue, so we have to purge the collected data cache.
				RefreshCollections();
			end
		end
	end
	return allData;
end
function app:RefreshData(lazy, safely)
	app.refreshDataForce = app.refreshDataForce or not lazy;
	if not app.refreshingData then
		app.refreshingData = true;
		StartCoroutine(app, function()
			-- This method can be triggered by an event, if so, we want to safely wait for combat to end.
			if safely then
				-- While the player is in combat, wait for combat to end.
				while InCombatLockdown() do coroutine.yield(); end
			end
			
			-- Send an Update to the Windows to Rebuild their Row Data
			app:GetDataCache();
			app:UpdateWindows();
			app.refreshDataForce = false;
			app.refreshingData = false;
		end);
	end
end
function app:GetWindow(suffix)
	local window = app.Windows[suffix];
	if not window then
		-- Create the window instance.
		window = CreateFrame("FRAME", app:GetName() .. "-Window-" .. suffix, UIParent);
		app.Windows[suffix] = window;
		window.Toggle = ToggleWindow;
		window.Update = UpdateWindow;
		window.SetVisible = SetWindowVisibility;
		window:SetScript("OnMouseWheel", OnScrollBarMouseWheel);
		window:SetScript("OnMouseDown", StartMovingOrSizing);
		window:SetScript("OnMouseUp", StopMovingOrSizing);
		window:SetScript("OnHide", StopMovingOrSizing);
		window:SetBackdrop(backdrop);
		UpdateWindowColor(window, suffix);
		window:SetClampedToScreen(true);
		window:SetToplevel(true);
		window:EnableMouse(true);
		window:SetMovable(true);
		window:SetResizable(true);
		window:SetPoint("CENTER");
		window:SetMinResize(32, 32);
		window:SetSize(300, 300);
		window:SetUserPlaced(true);
		window.data = {};
		window:Hide();
		
		-- The Close Button. It's assigned as a local variable so you can change how it behaves.
		window.CloseButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
		window.CloseButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", 4, 3);
		window.CloseButton:SetScript("OnClick", HideParent);
		
		-- The Scroll Bar.
		local scrollbar = CreateFrame("Slider", nil, window, "UIPanelScrollBarTemplate");
		scrollbar:SetPoint("TOP", window.CloseButton, "BOTTOM", 0, -10);
		scrollbar:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -4, 36);
		scrollbar:SetScript("OnValueChanged", OnScrollBarValueChanged);
		scrollbar.back = scrollbar:CreateTexture(nil, "BACKGROUND");
		scrollbar.back:SetColorTexture(0,0,0,0.4)
		scrollbar.back:SetAllPoints(scrollbar);
		scrollbar:SetMinMaxValues(1, 1);
		scrollbar:SetValueStep(1);
		scrollbar.CurrentValue = 1;
		scrollbar:SetWidth(16);
		scrollbar:EnableMouseWheel(true);
		window:EnableMouseWheel(true);
		window.ScrollBar = scrollbar;
		
		-- The Corner Grip. (this isn't actually used, but it helps indicate to players that they can do something)
		local grip = window:CreateTexture(nil, "ARTWORK");
		grip:SetTexture("Interface\\AddOns\\AllTheThings\\assets\\grip");
		grip:SetSize(16, 16);
		grip:SetTexCoord(0,1,0,1);
		grip:SetPoint("BOTTOMRIGHT", -5, 5);
		
		-- The Row Container. This contains all of the row frames.
		local container = CreateFrame("FRAME", nil, window);
		container:SetPoint("TOPLEFT", window, "TOPLEFT", 0, -6);
		container:SetPoint("RIGHT", scrollbar, "LEFT", 0, 0);
		container:SetPoint("BOTTOM", window, "BOTTOM", 0, 6);
		container.rowHeight = select(2, GameFontNormal:GetFont()) + 4;
		window.Container = container;
		container.rows = {};
		scrollbar:SetValue(1);
		container:Show();
	end
	return window;
end

-- Create the Primary Collection Window (this allows you to save the size and location)
app:GetWindow("Prime");
app:GetWindow("CurrentInstance");

GameTooltip:HookScript("OnShow", AttachTooltip);
GameTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
GameTooltip:HookScript("OnTooltipSetUnit", AttachTooltip);
GameTooltip:HookScript("OnTooltipCleared", ClearTooltip);
ItemRefTooltip:HookScript("OnShow", AttachTooltip);
ItemRefTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
ItemRefTooltip:HookScript("OnTooltipCleared", ClearTooltip);
ItemRefShoppingTooltip1:HookScript("OnShow", AttachTooltip);
ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", AttachTooltip);
ItemRefShoppingTooltip1:HookScript("OnTooltipCleared", ClearTooltip);
ItemRefShoppingTooltip2:HookScript("OnShow", AttachTooltip);
ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", AttachTooltip);
ItemRefShoppingTooltip2:HookScript("OnTooltipCleared", ClearTooltip);
--ShoppingTooltip1:HookScript("OnShow", AttachTooltip);
--ShoppingTooltip1:HookScript("OnTooltipSetItem", AttachTooltip);
--ShoppingTooltip1:HookScript("OnTooltipCleared", ClearTooltip);
--ShoppingTooltip2:HookScript("OnShow", AttachTooltip);
--ShoppingTooltip2:HookScript("OnTooltipSetItem", AttachTooltip);
--ShoppingTooltip2:HookScript("OnTooltipCleared", ClearTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetItem", AttachTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetUnit", AttachTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipCleared", ClearTooltip);
WorldMapTooltip:HookScript("OnTooltipCleared", ClearTooltip);
WorldMapTooltip:HookScript("OnShow", AttachTooltip);
-- hooksecurefunc("BattlePetTooltipTemplate_SetBattlePet", AttachBattlePetTooltip); -- Not ready yet.

-- ReloadUI slash command (for ease of use)
SLASH_RELOADUI1 = "/reloadui";
SLASH_RELOADUI2 = "/rl";
SlashCmdList["RELOADUI"] = ReloadUI;

-- Slash Command List
SLASH_AllTheThings1 = "/allthethings";
SLASH_AllTheThings2 = "/things";
SLASH_AllTheThings3 = "/att";
SlashCmdList["AllTheThings"] = function()
	app:ToggleWindow("Prime");
end

-- Register Events required at the start
app:RegisterEvent("PLAYER_LOGIN");
app:RegisterEvent("VARIABLES_LOADED");
app:RegisterEvent("ZONE_CHANGED_NEW_AREA");
app:RegisterEvent("TOYS_UPDATED");
--app:RegisterEvent("ACHIEVEMENT_EARNED");
app:RegisterEvent("SCENARIO_UPDATE");
app:RegisterEvent("COMPANION_LEARNED");
app:RegisterEvent("COMPANION_UNLEARNED");
app:RegisterEvent("PET_JOURNAL_LIST_UPDATE");
app:RegisterEvent("TRANSMOG_COLLECTION_SOURCE_ADDED");
app:RegisterEvent("TRANSMOG_COLLECTION_SOURCE_REMOVED");

-- Define Event Behaviours
app.events.VARIABLES_LOADED = function()
	AllTheThingsAD = _G["AllTheThingsAD"];	-- For account-wide data.
	if not AllTheThingsAD then
		AllTheThingsAD = { };
		_G["AllTheThingsAD"] = AllTheThingsAD;
	end
	AllTheThingsPCD = _G["AllTheThingsPCD"]; -- For character specific data.
	if not AllTheThingsPCD then
		AllTheThingsPCD = { };
		_G["AllTheThingsPCD"] = AllTheThingsPCD;
	end
	
	-- Setup the localization and interpret the Display Information.
	SetLocale(GetLocale());
	app:UpdateWindowColors();
	app.DisplayName = Colorize(L("TITLE"), RGBToHex(180, 180, 255));
	
	-- Bindings
	BINDING_HEADER_ALLTHETHINGS = app.DisplayName;
	BINDING_NAME_ALLTHETHINGS_OPENMINILIST = L("OPEN_MINILIST");
	BINDING_NAME_ALLTHETHINGS_TOGGLEMINILIST = L("TOGGLE_MINILIST");
	BINDING_NAME_ALLTHETHINGS_TOGGLECOMPLETIONISTMODE = L("TOGGLE_COMPLETIONIST_MODE");
	BINDING_NAME_ALLTHETHINGS_TOGGLEDEBUGMODE = L("TOGGLE_DEBUG_MODE");
	
	-- Cache information about the player.
	local _, class, classIndex = UnitClass("player");
	local raceName, race = UnitRace("player");
	app.Class = class;
	app.ClassIndex = classIndex;
	app.Level = UnitLevel("player");
	local raceIndex = app.RaceDB[race];
	if type(raceIndex) == "table" then
		local factionGroup = UnitFactionGroup("player");
		raceIndex = raceIndex[factionGroup];
	end
	app.Race = race;
	app.RaceIndex = raceIndex;
	
	-- Load in the Presets if they exist for this character.
	-- Default values should fallback to their presets.
	local filters = GetPersonalDataMember("ItemFilters");
	if not filters then
		-- If a preset exist, we need to cleanly duplicate the preset data.
		-- If we don't do that, changing settings will change the preset itself. (until a restart)
		local presets, data = app.Presets[app.Class], {};
		if presets then
			for filter, state in pairs(presets) do
				data[filter] = state;
			end
		end
		SetPersonalDataMember("ItemFilters", data);
	end
	
	-- Check to see if we have a leftover ItemDB cache
	if GetDataMember("Items") then SetDataMember("Items", nil); end
	if GetDataMember("ItemDB") then SetDataMember("ItemDB", nil); end
	
	-- Register for Dynamic Events and Assign Filters
	if GetDataMember("AutoRefreshSaves", true) then app:RegisterEvent("BOSS_KILL"); end
	if GetDataMember("IgnoreFiltersOnNonBindingItems", false) then
		app.ItemBindFilter = app.FilterItemBind;
	else
		app.ItemBindFilter = app.Filter;
	end
	if GetDataMember("FilterGroupsByLevel", false) then
		app:RegisterEvent("PLAYER_LEVEL_UP");
		app.GroupRequirementsFilter = app.FilterGroupsByLevel;
	else
		app.GroupRequirementsFilter = app.NoFilter;
	end
	if GetDataMember("ShowCompletedGroups", false) then
		app.GroupVisibilityFilter = app.NoFilter;
	else
		app.GroupVisibilityFilter = app.FilterGroupsByCompletion;
	end
	if GetDataMember("ShowCollectedItems", false) then
		app.CollectedItemVisibilityFilter = app.NoFilter;
	else
		app.CollectedItemVisibilityFilter = app.Filter;
	end
	if GetDataMember("ShowMissingItems", true) then
		app.MissingItemVisibilityFilter = app.NoFilter;
	else
		app.MissingItemVisibilityFilter = app.Filter;
	end
	if GetDataMember("ShowMinimapButton", true) then
		app.Minimap = CreateMinimapButton(); -- NOTE: Create this if they turn it on.
		app.Minimap:Show();
	end
	if GetDataMember("CompletionistMode", not GetDataMember("UniqueAppearances", false)) then
		app.ItemSourceFilter = app.FilterItemSource;
	else
		app.ItemSourceFilter = app.FilterItemSourceUnique;
	end
	if GetDataMember("FilterItemsByClass", true) then
		app.ClassRequirementFilter = app.FilterItemClass_RequireClasses;
	else
		app.ClassRequirementFilter = app.NoFilter;
	end
	if GetDataMember("FilterItemsByRace", true) then
		app.RaceRequirementFilter = app.FilterItemClass_RequireRaces;
	else
		app.RaceRequirementFilter = app.NoFilter;
	end
	if GetDataMember("FilterUnobtainableItems", false) then
		app.UnobtainableItemFilter = app.FilterItemClass_UnobtainableItem;
	else
		app.UnobtainableItemFilter = app.NoFilter;
	end
	if GetDataMember("FilterSeasonal", false) then
	   app.SeasonalFilter = app.FilterItemClass_SeasonalItem
	else
	   app.SeasonalFilter = app.NoFilter
	end
	if GetDataMember("RequireBindingFilter", false) then
		app.RequireBindingFilter = app.FilterItemClass_RequireBinding;
	else
		app.RequireBindingFilter = app.NoFilter;
	end
	if GetDataMember("RequiredSkillFilter", false) then
		app.RequiredSkillFilter = app.FilterItemClass_RequiredSkill;
	else
		app.RequiredSkillFilter = app.NoFilter;
	end
	if GetDataMember("RequireTrackableFilter", false) then
		app.RequireTrackableFilter = app.FilterItemTrackable;
	else
		app.RequireTrackableFilter = app.Filter;
	end
	
	GetDataMember("EnableTooltipInformation", true);
	GetDataMember("DisplayTooltipInformationInCombat", false);
	GetDataMember("AutoRefreshCollections", false);
	GetDataMember("ShowSharedAppearances", true);
	GetDataMember("ShowSources", true);
	GetDataMember("ShowContents", true);
	
	-- Tooltip Settings
	GetDataMember("ShowAchievementID", true);
	GetDataMember("ShowArtifactID", true);
	GetDataMember("ShowCreatureID", false);
	GetDataMember("ShowDifficultyID", true);
	GetDataMember("ShowEncounterID", true);
	GetDataMember("ShowFactionID", true);
	GetDataMember("ShowIllusionID", true);
	GetDataMember("ShowInstanceID", true);
	GetDataMember("ShowMusicRollID", true);
	GetDataMember("ShowObjectID", true);
	GetDataMember("ShowSpeciesID", true);
	GetDataMember("ShowSpellID", true);
	GetDataMember("ShowTierID", true);
	GetDataMember("ShowDescriptions", true);
	GetDataMember("ShowModels", true);
	GetDataMember("ShowMapID", true);
	GetDataMember("ShowSpeciesID", true);
	GetDataMember("ShowQuestID", true);
	GetDataMember("ShowFilterID", false);
	GetDataMember("ShowItemID", true);
	GetDataMember("ShowItemString", false);
	GetDataMember("ShowSourceID", false);
	GetDataMember("ShowVisualID", false);
	GetDataMember("ShowUnobtainableAppearanceInformation", false);
	
	-- Create the Settings Menu and show version information
	app.print(format(L("LOADING"), GetAddOnMetadata("AllTheThings", "Version")));
	CreateSettingsMenu();
	if GetDataMember("AutoRefreshSaves") then
		app:RefreshData(false, true);
	end
end
app.events.PLAYER_LOGIN = function()
	app:UnregisterEvent("PLAYER_LOGIN");
	RefreshLocation(true);
	RefreshSaves();
	LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject(app.DisplayName, {
		type = "launcher",
		icon = L("LOGO_SMALL"),
		OnTooltipShow = function(self)
			GameTooltip:SetText(app.DisplayName);
			GameTooltip:AddLine(L("MINIMAP_MOUSEOVER_TEXT"), 1, 1, 1);
			GameTooltip:Show();
		end,
		OnClick = function(self, button)
			if button == "RightButton" then
				-- Right Button opens the Options menu.
				ShowInterfaceOptions();
			else
				-- Left Button Toggles the App
				app:ToggleWindow("Prime");
			end
		end,
	})
end
app.events.SCENARIO_UPDATE = RefreshLocationForScenarioUpdate;
app.events.ZONE_CHANGED_NEW_AREA = RefreshLocation;
app.events.PLAYER_LEVEL_UP = function(newLevel)
	app.Level = newLevel;
	app:UpdateWindows();
end
app.events.BOSS_KILL = function(id, name, ...)
	-- This is so that when you kill a boss, you can trigger 
	-- an automatic update of your saved instance cache. 
	-- (It does lag a little, but you can disable this if you want.)
	-- Waiting until the LOOT_CLOSED occurs will prevent the failed Auto Loot bug.
	-- print("BOSS_KILL", id, name, ...);
	app:UnregisterEvent("LOOT_CLOSED");
	app:RegisterEvent("LOOT_CLOSED");
end
app.events.LOOT_CLOSED = function()
	-- Once the loot window closes after killing a boss, THEN trigger the update.
	app:UnregisterEvent("LOOT_CLOSED");
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	app:RegisterEvent("UPDATE_INSTANCE_INFO");
	RequestRaidInfo();
end
app.events.UPDATE_INSTANCE_INFO = function()
	-- We got new information, not refresh the saves. :D
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	RefreshSaves();
end
app.events.ACHIEVEMENT_EARNED = function(...)
	print("ACHIEVEMENT_EARNED");
	print(...);
end
app.events.COMPANION_LEARNED = function(...)
	GetMountInfoCache();
	app:RefreshData(false, true);
	PlayFanfare();
	wipe(searchCache);
end
app.events.COMPANION_UNLEARNED = function(...)
	app:RefreshData(false, true);
end
app.events.TOYS_UPDATED = function(itemID, new)
	if itemID and not GetDataSubMember("CollectedToys", itemID) then
		SetDataSubMember("CollectedToys", itemID, true);
		app:RefreshData(false, true);
		PlayFanfare();
		wipe(searchCache);
		
		if GetDataMember("ShowNotifications", true) then
			local name, link = GetItemInfo(itemID);
			if link then print(format(L("ITEM_ID_ADDED"), link, itemID)); end
		end
	end
end
app.events.TRANSMOG_COLLECTION_SOURCE_ADDED = function(sourceID)
	if sourceID and (GetDataSubMember("CollectedSources", sourceID) or 0) ~= 1 then
		local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID);
		SetDataSubMember("CollectedSources", sourceID, 1);
		
		-- If the user isn't a Completionist... We need to flag the shared appearances as collected as well. :/
		if GetDataMember("CompletionistMode") then
			if GetDataMember("ShowNotifications", true) then
				-- NOTE: The itemlink that gets passed is BASE ITEM LINK, not the full item link.
				-- So this may show green items where an epic was obtained. (particularly with Legion drops)
				-- This is okay since items of this type share their appearance regardless of the power of the item.
				local name, link = GetItemInfo(sourceInfo.itemID);
				print(format(L("ITEM_ID_ADDED"), link or name or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), sourceInfo.itemID));
			end
		else
			local shared = 0;
			local categoryID, appearanceID, canEnchant, texture, isCollected, itemLink = C_TransmogCollection_GetAppearanceSourceInfo(sourceID);
			if categoryID then
				for i, otherSourceID in ipairs(C_TransmogCollection_GetAllAppearanceSources(appearanceID)) do
					if not GetDataSubMember("CollectedSources", otherSourceID) then
						if C_TransmogCollection_GetSourceInfo(otherSourceID).categoryID == categoryID then
							SetDataSubMember("CollectedSources", otherSourceID, 2);
							shared = shared + 1;
						end
					end
				end
			end
			
			if GetDataMember("ShowNotifications", true) then
				-- NOTE: The itemlink that gets passed is BASE ITEM LINK, not the full item link.
				-- So this may show green items where an epic was obtained. (particularly with Legion drops)
				-- This is okay since items of this type share their appearance regardless of the power of the item.
				local name, link = GetItemInfo(sourceInfo.itemID);
				print(format(L(shared > 0 and "ITEM_ID_ADDED_SHARED" or "ITEM_ID_ADDED"), link or name or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), sourceInfo.itemID, shared));
			end
		end
		
		-- New way of updating the status for transmog collection
		
		-- Refresh the Data and Celebrate!
		app:RefreshData(false, true);
		PlayFanfare();
		wipe(searchCache);
	end
end
app.events.TRANSMOG_COLLECTION_SOURCE_REMOVED = function(sourceID)
	if sourceID and GetDataSubMember("CollectedSources", sourceID) then
		local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID);
		SetDataSubMember("CollectedSources", sourceID, nil);
		
		-- If the user isn't a Completionist... We need to flag the shared appearances as collected as well. :/
		if GetDataMember("CompletionistMode") then
			if GetDataMember("ShowNotifications", true) then
				-- Oh shucks, that was nice of you to give this item to your friend.
				-- WAIT, WHAT? A VENDOR?! OH GOD NO! TODO: Warn a user when they vendor an appearance?
				local name, link = GetItemInfo(sourceInfo.itemID);
				print(format(L("ITEM_ID_REMOVED"), link or name or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), sourceInfo.itemID));
			end
		else
			local shared = 0;
			local categoryID, appearanceID, canEnchant, texture, isCollected, itemLink = C_TransmogCollection_GetAppearanceSourceInfo(sourceID);
			if categoryID then
				for i, otherSourceID in ipairs(C_TransmogCollection_GetAllAppearanceSources(appearanceID)) do
					if GetDataSubMember("CollectedSources", otherSourceID) then
						local otherSourceInfo = C_TransmogCollection_GetSourceInfo(otherSourceID);
						if not otherSourceInfo.isCollected and otherSourceInfo.categoryID == categoryID then
							SetDataSubMember("CollectedSources", otherSourceID, nil);
							shared = shared + 1;
						end
					end
				end
			end
			
			if GetDataMember("ShowNotifications", true) then
				-- Oh shucks, that was nice of you to give this item to your friend.
				-- WAIT, WHAT? A VENDOR?! OH GOD NO! TODO: Warn a user when they vendor an appearance?
				local name, link = GetItemInfo(sourceInfo.itemID);
				print(format(L(shared > 0 and "ITEM_ID_REMOVED_SHARED" or "ITEM_ID_REMOVED"), link or name or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), sourceInfo.itemID, shared));
			end
		end
		
		-- Refresh the Data and Cry!
		app:RefreshData(false, true);
		PlayRemoveSound();
		wipe(searchCache);
	end
end

-- Pet Journal fix
local count = 0;
app.events.PET_JOURNAL_LIST_UPDATE = function(...)
	GetMountInfoCache();
	app:RefreshData(false, true);
	count = count + 1;
	if count > 3 then app:UnregisterEvent("PET_JOURNAL_LIST_UPDATE"); end
end
