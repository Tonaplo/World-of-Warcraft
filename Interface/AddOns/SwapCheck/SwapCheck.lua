SLASH_SWAPCHECK1 =  '/swapcheck';
SlashCmdList["SWAPCHECK"] = SwapCheck_slashHandler;

function SlashCmdList.SWAPCHECK(msg, editbox) -- 4.

	if msg == 'list' then
		local a = {};
		for n in pairs(swapBlasterList) do table.insert(a, n) end
		table.sort(a);
		SendChatMessage("List of Fuckfaces:", "GUILD", DEFAULT_CHAT_FRAME.editBox.languageID);
 
		for name, value in pairs(swapBlasterList) do
			SendChatMessage(name .. " swapblasted " .. value .. " times" , "GUILD", DEFAULT_CHAT_FRAME.editBox.languageID);
		end
	elseif msg == 'reset' then
		print("SwapCheck was |cff00ff00Reset|r");
		swapBlasterList = {};
		lastSwapCaster = nil;
		lastSwapTime = 0;
	end
end

function SwapCheck_EventHandler(self, event, ...)
	
	-- Report that the addon is loaded and initialize globals
	if event == "ADDON_LOADED" and select(1,...) == "SwapCheck" then
		if swapBlasterList == nil then
			swapBlasterList = {};
		end
		if lastSwapCaster ~= nil then
			lastSwapCaster = nil;
		end
		if lastSwapTime ~= 0 then
			lastSwapTime = 0;
		end
	
		print("SwapCheck is |cff00ff00Enabled|r");
		print("Type /swapcheck list to get a list of the trolls using this cursed item.");
		print("Type /swapcheck reset to reset current data.");
		swapBlasterList = {};
		lastSwapCaster = nil;
		lastSwapTime = 0;
	end
	
	if event == "UNIT_SPELLCAST_SUCCEEDED" then
	
		local unitID, spell, rank, lineID, spellID = ...;
		
		-- check for the swapblaster spellID before requesting more info.
		-- Also check for the swapblaster explosion spellID, in case it's used on someone with Neutral Silencer.
		if spellID == 161399 or spellID == 182081 then
			-- Check that it isnt the second cast of the swap before marking it.
			local currentTime = GetTime();
			local casterName = UnitName(unitID);
			if not (lastSwapCaster == casterName and currentTime + 1 < lastSwapTime) then
				-- Initialize the troll if it's the first time he decided to be an asshole.
				
				if swapBlasterList[casterName] == nil then
					swapBlasterList[casterName] = 0;
				end
				
				-- Send chat messages
				swapBlasterList[casterName] = swapBlasterList[casterName] + 1;
				SendChatMessage("A fuckface called " .. casterName .. " used Swapblaster and should be fucking shot", "YELL", DEFAULT_CHAT_FRAME.editBox.languageID);
				SendChatMessage("Hey " .. casterName .. " you're an asshole for using the Swapblaster.", "WHISPER", nil, casterName)
			
				-- Mark the last person that did this horrible thing.
				lastSwapTime = currentTime;
				lastSwapCaster = casterName;
			end
		end
	end
end

