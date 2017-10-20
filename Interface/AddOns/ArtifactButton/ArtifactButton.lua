-- Author: Nerino1
-- Create Date : 10/25/2016
-- Version 5.0

local f=CreateFrame("frame");
f:RegisterEvent("PLAYER_LOGIN");
loaded = IsAddOnLoaded("Pawn");

local function eventhandler(self,event)
	if event == "PLAYER_LOGIN" then
		if UnitLevel("player") <= 97 then
			artifactbtn:Hide()
			do return end
		end
	if IsAddOnLoaded("Pawn") then
		-- print("Pawn's on");
		btn:SetPoint("BOTTOMLEFT", 60, 10)
		btn:SetWidth(60)
	else
		btn:SetPoint("BOTTOMLEFT", 15, 10)
	end
		-- DEFAULT_CHAT_FRAME:AddMessage("Artifact Button Loaded.");
	end
end

f:SetScript("OnEvent",eventhandler);

btn = CreateFrame("Button", "artifactbtn", PaperDollFrame, "OptionsButtonTemplate");
btn:SetText("Artifact")
btn:SetScript("OnClick", function() QueryArtifact() end)


function openArtifactWeapon()
    SocketInventoryItem(16);
end

function QueryArtifact()
    local QUALITY = {}
    QUALITY.POOR = 0;
    QUALITY.COMMON = 1;
    QUALITY.UNCOMMON = 2;
    QUALITY.RARE = 3;
    QUALITY.EPIC = 4;
    QUALITY.LEGENDARY = 5;
    QUALITY.ARTIFACT = 6;
    QUALITY.HEIRLOOM = 7;
    local currentWeapon = GetInventoryItemID("player", GetInventorySlotInfo("MainHandSlot"));
    if currentWeapon == nil then
        print("You do not have any weapon equipped.");
        return
    end
    name, link, quality, iLvl, reqLvl, class, subclass, maxStack, equipSlot, texture, vendorSellPrice = GetItemInfo(currentWeapon);
    if quality == QUALITY["ARTIFACT"] then
        openArtifactWeapon();
    else
        print("Currently equipped weapon is not an Artifact.");
    end
end