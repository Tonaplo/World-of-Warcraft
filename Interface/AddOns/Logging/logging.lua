function logOnLoad(self)
	self:RegisterEvent("PLAYER_ENTERING_WORLD");
	if (logInstances == nil) then logInstances = {}; end
	SLASH_LOGGING1 = "/logging";
	SlashCmdList["LOGGING"] = function(message, editbox) logSlashCmd(message,editbox) end;
end

function logSlashCmd(message,editbox)
	local inInstance, instanceType = IsInInstance();
	if (instanceType == "raid") then
		local name, type, difficulty, difficultyName, maxPlayers, playerDifficulty, isDynamicInstance, mapID, instanceGroupSize = GetInstanceInfo();
		for i=1,#logInstances do
			if (logInstances[i].mapID == mapID) then
				table.remove(logInstances,i);
				logFrame:Show();
				break;
			end
		end
	end

end

function logEvent(self, event, ...)
	if (event == "PLAYER_ENTERING_WORLD") then
		local inInstance, instanceType = IsInInstance();
		if (inInstance and instanceType == "raid" and not LoggingCombat()) then
			local saved = false;
			local name, type, difficulty, difficultyName, maxPlayers, playerDifficulty, isDynamicInstance, mapID, instanceGroupSize = GetInstanceInfo();
			for i=1,#logInstances do
				if (logInstances[i].mapID == mapID) then
					if (logInstances[i].option) then
						LoggingCombat(true); 
						SendChatMessage("<Logging> Logging started.", "RAID", nil);
					end
					saved = true;
					break;
				end
			end
			if (not saved) then
				logFrame:Show();
			end
		end
	end
end

function logStart(log)
	if (logFrame_Remember:GetChecked()) then
		local name, type, difficulty, difficultyName, maxPlayers, playerDifficulty, isDynamicInstance, mapID, instanceGroupSize = GetInstanceInfo();
		logInstances[#logInstances+1] = {	["mapID"]			= mapID,
											["difficulty"]		= difficulty,
											["option"] 			= log	};	
	end
	if (log) then
		LoggingCombat(true); 
		SendChatMessage("<Logging> Logging started.", "RAID", nil);
		logFrame:Hide();
		PlaySound("igMainMenuOpen");
	else
		if (LoggingCombat()) then
			LoggingCombat(false);
			SendChatMessage("<Logging> Logging stopped.", "RAID", nil);
		end
		PlaySound("igMainMenuOpen");
		logFrame:Hide();
	end
	
end