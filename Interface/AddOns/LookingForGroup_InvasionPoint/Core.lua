local AceAddon = LibStub("AceAddon-3.0")
local LookingForGroup = AceAddon:GetAddon("LookingForGroup")
local LookingForGroup_InvasionPoint = AceAddon:NewAddon("LookingForGroup_InvasionPoint","AceEvent-3.0")

function LookingForGroup_InvasionPoint:OnInitialize()
	self.maps = {"aurinor","bonich","cen'gar","naigtal","sangua","val"}
end

function LookingForGroup_InvasionPoint:OnEnable()
	self:RegisterEvent("LOADING_SCREEN_DISABLED")
	self:RegisterMessage("LFG_ICON_MIDDLE_CLICK","LOADING_SCREEN_DISABLED")
end

local function cofunc(secure,player_is_leader)
	local map = C_Map.GetBestMapForUnit("player")
	if not map or map < 921 or 932 < map then
		return
	end
	local pos = map-920
	local confirm_keyword
	if 6 < pos then
		confirm_keyword = "greater invasion"
	else
		confirm_keyword = LookingForGroup_InvasionPoint.maps[pos]
	end
	local function create()
		local ilvl = GetAverageItemLevel() - 60
		if ilvl < 0 then
			ilvl = 0
		end
		C_LFGList.CreateListing(C_PvP.IsWarModeActive() and 17 or 16,ilvl,0,true,false)
	end
	local name = C_Map.GetMapInfo(map).name
	local function search(fiop)
		return LookingForGroup.Search(6,{not fiop and {matches = {confirm_keyword}} or nil},C_PvP.IsWarModeActive() and LE_LFG_LIST_FILTER_PVP or LE_LFG_LIST_FILTER_PVE,0)
	end
	if LookingForGroup.accepted(name,search,create,secure,true,nil,confirm_keyword) then
		return
	end
	local current = coroutine.running()
	local function resume()
		coroutine.resume(current,0)
	end
	LookingForGroup_InvasionPoint:RegisterEvent("LOADING_SCREEN_DISABLED",function()
		local map = C_Map.GetBestMapForUnit("player")
		if not map or map < 921 or 932 < map then
			coroutine.resume(current,0)
		end
	end)
	if pos < 7 then
		LookingForGroup_InvasionPoint:RegisterEvent("SCENARIO_COMPLETED",resume)
	else
		local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
		LookingForGroup_InvasionPoint:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED",function()
			local e,timeStamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = CombatLogGetCurrentEventInfo()
			if event == "UNIT_DIED" and bit.band(destFlags,COMBATLOG_OBJECT_TYPE_NPC) ~= 0 and bit.band(destFlags,COMBATLOG_OBJECT_REACTION_HOSTILE) ~= 0 and name:find(destName) then
				coroutine.resume(current,0)
			end
		end)
	end
	LookingForGroup_InvasionPoint:RegisterEvent("GROUP_LEFT",function()
		coroutine.resume(current,2)
	end)
	LookingForGroup.autoloop(name,search,create,0,true,nil,confirm_keyword)
	LookingForGroup_InvasionPoint:UnregisterEvent("GROUP_LEFT")
	LookingForGroup_InvasionPoint:UnregisterEvent("SCENARIO_COMPLETED")
	LookingForGroup_InvasionPoint:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	LookingForGroup_InvasionPoint:RegisterEvent("LOADING_SCREEN_DISABLED")
end

function LookingForGroup_InvasionPoint:LOADING_SCREEN_DISABLED(event)
	local player_is_leader = UnitIsGroupLeader("player") and C_LFGList.GetActiveEntryInfo()
	if IsInGroup() and not player_is_leader then return end
	if event == "LFG_ICON_MIDDLE_CLICK" then
		coroutine.wrap(cofunc)(true,player_is_leader)
	else
		StaticPopup_Hide("LookingForGroup_HardwareAPIDialog")
		C_Timer.After(3,coroutine.wrap(cofunc))
	end
end