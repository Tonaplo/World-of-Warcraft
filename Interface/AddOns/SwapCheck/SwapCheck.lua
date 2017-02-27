SLASH_SWAPCHECK1 =  '/swapcheck';

swapBlasterList = {};

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
	end
end

function SwapCheck_EventHandler(self, event, ...) 
	if event == "ADDON_LOADED" and select(1,...) == "SwapCheck" then
		print("SwapCheck is |cff00ff00Enabled|r");
		print("Type /swapcheck to get a count of the cunts.");
		swapBlasterList = {};
	end
	
	if event == "UNIT_SPELLCAST_SUCCEEDED" then
		local unitID, spell, rank, lineID, spellID = ...;
		
		if spellID == 161399 then
			if swapBlasterList[UnitName(unitID)] == nil then
				swapBlasterList[UnitName(unitID)] = 0;
			end
			swapBlasterList[UnitName(unitID)] = swapBlasterList[UnitName(unitID)] + 1;
			SendChatMessage("A fuckface called " .. UnitName(unitID) .. " used Swapblaster and should be fucking shot", "YELL", DEFAULT_CHAT_FRAME.editBox.languageID);
			SendChatMessage("Hey " .. UnitName(unitID) .. " you're an asshole for using the Swapblaster.", "WHISPER", nil, UnitName(unitID))
		end
	end
end

