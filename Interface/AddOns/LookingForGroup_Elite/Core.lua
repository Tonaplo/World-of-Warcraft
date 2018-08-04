local AceAddon = LibStub("AceAddon-3.0")
local LookingForGroup = AceAddon:GetAddon("LookingForGroup")
local LookingForGroup_Elite = AceAddon:NewAddon("LookingForGroup_Elite","AceEvent-3.0")
local UnitGUID = UnitGUID
local UnitTarget = UnitTarget
local UnitClassification = UnitClassification
local IsInGroup = IsInGroup

function LookingForGroup_Elite:OnInitialize()
end

function LookingForGroup_Elite:OnEnable()
	self:RegisterEvent("PLAYER_TARGET_CHANGED")
end

local function cofunc(npc_id,name,guid)
	local quest_id,questName
	local n_npcid = tonumber(npc_id)
	if 120393 <= n_npcid and n_npcid <= 127706 then
		local C_TaskQuest_GetQuestInfoByQuestID = C_TaskQuest.GetQuestInfoByQuestID
		for i=48000,50000 do
			local title = C_TaskQuest_GetQuestInfoByQuestID(i)
			if title and title:find(name) then
				quest_id = i
				questName = title
				break
			end
		end
	end
	if quest_id then
		local activityID = C_LFGList.GetActivityIDForQuestID(quest_id)
		local categoryID
		local filters
		if activityID then
			local fullName, shortName, lfgcategoryID, groupID, iLevel, lfgfilters, minLevel, maxPlayers, displayType = C_LFGList.GetActivityInfo(activityID)
			filters = lfgfilters
			categoryID = lfgcategoryID
		else
			if C_PvP.IsWarModeActive() then
				filters = LE_LFG_LIST_FILTER_PVP
				activityID = 17
			else
				filters = LE_LFG_LIST_FILTER_PVE
				activityID = 16
			end
			categoryID = 6
		end
--		local confirm_keyword = not C_LFGList.CanCreateQuestGroup(quest_id) and tostring(quest_id) or nil
		local confirm_keyword = tostring(quest_id)	 --temporary blizzard's API bug fixing
		local function create()
			local ilvl = GetAverageItemLevel() - 60
			if ilvl < 0 then
				ilvl = 0
			end
			if confirm_keyword then
				C_LFGList.CreateListing(activityID,ilvl,0,true,false)
			else
				C_LFGList.ClearCreationTextFields()
				C_LFGList.CreateListing(activityID,ilvl,0,true,false,quest_id)
			end
		end
		local function search()
			return LookingForGroup.Search(categoryID,{{matches = {confirm_keyword or questName}}},filters,0)
		end
		if LookingForGroup.accepted(questName,search,create,0,nil,quest_id,confirm_keyword) then
			return
		end
	else
		local activity_id = C_PvP.IsWarModeActive() and 457 or 456
		local function create()
			C_LFGList.CreateListing(activity_id,LookingForGroup.db.profile.auto_ilvl or 0,0,true,false)
		end
		local fullName, shortName, lfgcategoryID, groupID, iLevel, lfgfilters, minLevel, maxPlayers, displayType = C_LFGList.GetActivityInfo(activity_id)
		local function search()
			return LookingForGroup.Search(3,{{matches = {fullName}},{matches = {npc_id}}},lfgfilters,0)
		end
		if LookingForGroup.accepted(name,search,create,0,nil,nil,npc_id) then
			return
		end
	end
	local current = coroutine.running()
	LookingForGroup_Elite:RegisterEvent("LOADING_SCREEN_DISABLED",function()
		coroutine.resume(current,0)
	end)
	local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
	LookingForGroup_Elite:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED",function()
		local e,timeStamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = CombatLogGetCurrentEventInfo()
		if event == "UNIT_DIED" and destGUID == guid then
			coroutine.resume(current,0)
		end
	end)
	LookingForGroup.autoloop()
	LookingForGroup_Elite:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	LookingForGroup_Elite:RegisterEvent("LOADING_SCREEN_DISABLED")
	LookingForGroup_Elite:LOADING_SCREEN_DISABLED()
end

function LookingForGroup_Elite:PLAYER_TARGET_CHANGED()
	if IsInGroup() then
		return
	end
	local guid = UnitGUID("target")
	if guid then
		local classification = UnitClassification("target")
		if classification == "rareelite" then
			local npc_id = select(6,strsplit("-",guid))
			if npc_id then
				local name = UnitName("target")
				if name and UnitLevel("player") < UnitLevel("target") + 10 then
					local i=1
					local n=GetNumQuestLogEntries()
					while i<=n do
						local title = GetQuestLogTitle(i)
						if title:find(name) then
							break
						end
						i=i+1
					end
					if n<i then
						coroutine.wrap(cofunc)(npc_id,name,guid)
					end
				end
			end
		end
	end
end

function LookingForGroup_Elite:LOADING_SCREEN_DISABLED()
	if IsInInstance() then
		self:UnregisterEvent("PLAYER_TARGET_CHANGED")
	else
		self:RegisterEvent("PLAYER_TARGET_CHANGED")
	end
end