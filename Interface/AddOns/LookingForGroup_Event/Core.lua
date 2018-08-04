local LookingForGroup = LibStub("AceAddon-3.0"):GetAddon("LookingForGroup")
local Event = LookingForGroup:NewModule("Event","AceEvent-3.0")

--------------------------------------------------------------------------------------

function Event:OnInitialize()
end

function Event:OnEnable()
	self:RegisterEvent("LFG_LIST_APPLICANT_LIST_UPDATED")
	self:RegisterEvent("ADDON_ACTION_BLOCKED")
	self:RegisterEvent("LFG_LIST_ACTIVE_ENTRY_UPDATE")
	self:RegisterEvent("LFG_LIST_APPLICANT_UPDATED")
--	self:RegisterEvent("LFG_LIST_APPLICATION_STATUS_UPDATED")
	self:RegisterEvent("LFG_LIST_ENTRY_EXPIRED_TIMEOUT",FlashClientIcon)
	self:RegisterEvent("LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS",FlashClientIcon)
	LFGListFrame:UnregisterEvent("LFG_LIST_ACTIVE_ENTRY_UPDATE")
	LFGListFrame:UnregisterEvent("LFG_LIST_APPLICANT_LIST_UPDATED")
	LFGListFrame:UnregisterEvent("LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS")
	LFGListFrame:UnregisterEvent("LFG_LIST_ENTRY_EXPIRED_TIMEOUT")
--	LFGListFrame:UnregisterEvent("LFG_LIST_APPLICATION_STATUS_UPDATED")
end

function Event:LFG_LIST_APPLICANT_LIST_UPDATED(event,hasNewPending,hasNewPendingWithData,...)
	if LFGListUtil_IsEntryEmpowered() then
		local active, activityID, iLevel, honorLevel, name, comment, voiceChat, expiration, autoAccept, privateGroup, questID = C_LFGList.GetActiveEntryInfo()
		if autoAccept then
			if not IsInRaid(LE_PARTY_CATEGORY_HOME) and GetNumGroupMembers(LE_PARTY_CATEGORY_HOME) + C_LFGList.GetNumInvitedApplicantMembers() + C_LFGList.GetNumPendingApplicantMembers() > (MAX_PARTY_MEMBERS+1) then
				if activityID == 16 or activityID == 17 then
					local map = C_Map.GetBestMapForUnit("player")
					if map and (920 < map or map < 933) then
						ConvertToRaid()
					end
				else
					local fullName, shortName, categoryID, groupID, itemLevel, filters, minLevel, maxPlayers, displayType, activityOrder = C_LFGList.GetActivityInfo(activityID)
					if (categoryID == 1 or categoryID == 3 or categoryID == 6) and questID == nil then
						local kw = name:match("(%d+)")
						if kw and kw:len()<10 then
							questID = tonumber(kw)
						end
					end
					if questID then
						if groupID ~= 126 then  -- i am not sure whether rare elite can be completed in raid or not
							local tagID, tagName, wq_type, rarity, isElite, tradeskillLineIndex, displayTimeLeft = GetQuestTagInfo(questID)
							if rarity == 3 then
								ConvertToRaid()
							end
						end
					elseif categoryID == 3 or categoryID == 9 then
						StaticPopup_Show("LFG_LIST_AUTO_ACCEPT_CONVERT_TO_RAID")
					end
				end
			end
			if LookingForGroup.db.profile.taskbar_flash then
				FlashClientIcon()
			end
		elseif not InCombatLockdown() and ( hasNewPending and hasNewPendingWithData ) then
			if not LookingForGroup.db.profile.mute and LFGListUtil_IsEntryEmpowered() then
				local rqtb = LookingForGroup.get_request_tb
				if rqtb == nil then
					QueueStatusMinimapButton_SetGlowLock(QueueStatusMinimapButton, "lfglist-applicant", true)
				else
					local t = rqtb()
					if t and #t ~= 0 then
						QueueStatusMinimapButton_SetGlowLock(QueueStatusMinimapButton, "lfglist-applicant", true)	
					end
				end
			end
		end
	end
end

function Event:LFG_LIST_APPLICANT_UPDATED()
	if InCombatLockdown() or ( select(2,C_LFGList.GetNumApplicants()) == 0 ) then
		QueueStatusMinimapButton_SetGlowLock(QueueStatusMinimapButton, "lfglist-applicant", false)
	else
		local rqtb = LookingForGroup.get_request_tb and LookingForGroup.get_request_tb()
		if rqtb and #rqtb == 0 then
			QueueStatusMinimapButton_SetGlowLock(QueueStatusMinimapButton, "lfglist-applicant", false)
		elseif LookingForGroup.db.profile.taskbar_flash then
			FlashClientIcon()
		end
	end
end

function Event:ADDON_ACTION_BLOCKED(info,addon,method)
	if addon:find("LookingForGroup") and (method == "Search()" or method == "resume()" or method == "UNKNOWN()") then
		local profile = LookingForGroup.db.profile
		if not profile.hardware then
			profile.hardware = true
			LookingForGroup:Print(MODE,HARDWARE)
		end
	end
end

local function relisting()
	local active, activityID, iLevel, honorLevel, name, comment,
		voiceChat, expiration, autoAccept, privateGroup, questID = C_LFGList.GetActiveEntryInfo()
	if active then
		C_LFGList.UpdateListing(activityID,iLevel,honorLevel,autoAccept,privateGroup,questID)
	end
end

local relisting_timer

function Event:LFG_LIST_ACTIVE_ENTRY_UPDATE(event,creatednew)
	local active, _, _, _, _, _, _, expiration = C_LFGList.GetActiveEntryInfo()
	if relisting_timer then
		relisting_timer:Cancel()
		relisting_timer = nil
	end
	if active and not LookingForGroup.db.profile.hardware then
		if 10 < expiration then
			relisting_timer = C_Timer.NewTimer(expiration-10,relisting)
		else
			relisting()
		end
	end
	LFGListFrame_FixPanelValid(LFGListFrame)
	if active then
		LFGListFrame.EntryCreation.WorkingCover:Hide()
	else
		LFGListFrame_CheckPendingQuestIDSearch(LFGListFrame)
	end
	if creatednew and not LookingForGroup.db.profile.mute then
		PlaySound(SOUNDKIT.PVP_ENTER_QUEUE)
	end
end
--[[
local function handle_lfg_list_application_status_update(message,id)
	local info = ChatTypeInfo["SYSTEM"]
	local id, activityID, name, comment = C_LFGList.GetSearchResultInfo(id)
	local summary = string.match(comment,'^(.*)%(^1^.+^^%)$')
	if activityID == 44 and string.find(name,"#AV#") then
		name = string.sub(name,5)
	end
	DEFAULT_CHAT_FRAME:AddMessage(string.format(message, summary or name), info.r, info.g, info.b)
end

function Event:LFG_LIST_APPLICATION_STATUS_UPDATED(event, id, newStatus, oldStatus)
	if ( newStatus == "declined" ) then
		handle_lfg_list_application_status_update(LFG_LIST_APP_DECLINED_MESSAGE,id)
	elseif ( newStatus == "declined_full" ) then
		handle_lfg_list_application_status_update(LFG_LIST_APP_DECLINED_FULL_MESSAGE,id)
	elseif ( newStatus == "declined_delisted" ) then
		handle_lfg_list_application_status_update(LFG_LIST_APP_DECLINED_DELISTED_MESSAGE,id)
	elseif ( newStatus == "timedout" ) then
		handle_lfg_list_application_status_update(LFG_LIST_APP_TIMED_OUT_MESSAGE,id)
	end
end]]
