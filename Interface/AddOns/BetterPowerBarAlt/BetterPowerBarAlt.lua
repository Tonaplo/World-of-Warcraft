-- luacheck: no global
BetterPowerBarAltDB = BetterPowerBarAltDB or {}

local PlayerPowerBarAlt = PlayerPowerBarAlt
PlayerPowerBarAlt:SetMovable(true)
PlayerPowerBarAlt:SetUserPlaced(true)

local locked = true
local moving = nil
local usurped = nil

local overlay = CreateFrame("Frame", "BetterPowerBarAlt", PlayerPowerBarAlt)
overlay:SetAllPoints()
overlay:EnableMouse(true)

do
	local texture = overlay:CreateTexture()
	texture:SetAllPoints()
	texture:SetColorTexture(1, 1, 1, 0.1)
	texture:Hide()
	overlay.texture = texture
end

overlay:SetScript("OnMouseDown", function(self, button)
	if BetterPowerBarAltDB.locked then return end
	if button == "LeftButton" and not locked then
		PlayerPowerBarAlt:ClearAllPoints()
		PlayerPowerBarAlt:StartMoving()
		moving = true
	end
end)

overlay:SetScript("OnMouseUp", function(self, button)
	if BetterPowerBarAltDB.locked then return end
	if button == "RightButton" then
		locked = not locked
		self.texture:SetShown(not locked)
		self:EnableMouseWheel(not locked)

	elseif button == "MiddleButton" then
		if not locked then
			PlayerPowerBarAlt:SetScale(1)
			BetterPowerBarAltDB.scale = nil
		end

	elseif moving then
		moving = nil
		PlayerPowerBarAlt:StopMovingOrSizing()

		local point, _, _, x, y = PlayerPowerBarAlt:GetPoint(1)
		BetterPowerBarAltDB.point = point
		BetterPowerBarAltDB.x = x
		BetterPowerBarAltDB.y = y

	elseif IsShiftKeyDown() then
		BetterPowerBarAltDB.showText = not BetterPowerBarAltDB.showText
		local statusFrame = PlayerPowerBarAlt.statusFrame
		if statusFrame.enabled then
			statusFrame:Show()
			UnitPowerBarAltStatus_UpdateText(statusFrame)
		end
	end
end)

overlay:SetScript("OnMouseWheel", function(self, delta)
	local scale = PlayerPowerBarAlt:GetScale() + (0.1 * delta)
	PlayerPowerBarAlt:SetScale(scale)
	BetterPowerBarAltDB.scale = scale
end)

overlay:SetScript("OnShow", function()
	-- use the counterBar region for clicks if its shown
	if PlayerPowerBarAlt.counterBar:IsShown() then
		overlay:SetAllPoints(PlayerPowerBarAlt.counterBar)
	else
		overlay:SetAllPoints(PlayerPowerBarAlt)
	end

	local parent = PlayerPowerBarAlt:GetParent()
	if parent == UIParent then
		if BetterPowerBarAltDB.point then
			PlayerPowerBarAlt:ClearAllPoints()
			PlayerPowerBarAlt:SetPoint(BetterPowerBarAltDB.point, BetterPowerBarAltDB.x, BetterPowerBarAltDB.y)
		end
		if BetterPowerBarAltDB.showText and PlayerPowerBarAlt.statusFrame.enabled then
			PlayerPowerBarAlt.statusFrame:Show()
			UnitPowerBarAltStatus_UpdateText(PlayerPowerBarAlt.statusFrame)
		end

		if BetterPowerBarAltDB.scale then
			PlayerPowerBarAlt:SetScale(BetterPowerBarAltDB.scale)
		end
	elseif not usurped then
		usurped = true
		local suspect = parent:GetName() or UNKNOWN
		print(("|cff33ff99BetterPowerBarAlt|r: Another addon is positioning the frame (%s). BetterPowerBarAlt will no longer try position the frame to avoid conflicts."):format(suspect))
	end
end)

overlay:SetScript("OnHide", function()
	-- the last power value isn't cleared so it'll be shown if it isn't used again but the frame is (DMF counter/timer setup)
	PlayerPowerBarAlt.statusFrame.text:SetText("")
end)

overlay:SetScript("OnEnter", function() UnitPowerBarAlt_OnEnter(PlayerPowerBarAlt) end)
overlay:SetScript("OnLeave", function()
	if not BetterPowerBarAltDB.showText then
		PlayerPowerBarAlt.statusFrame:Hide()
	end
	GameTooltip:Hide()
end)

overlay:SetScript("OnEvent", function(self, event, arg1)
	if event == "CVAR_UPDATE" and arg1 == "STATUS_TEXT_DISPLAY" then
		UnitPowerBarAltStatus_UpdateText(PlayerPowerBarAlt)
	end
end)
overlay:RegisterEvent("CVAR_UPDATE")

-- in case the frame is under the ui or offscreen
SLASH_BETTERPOWERBARALT1 = "/bpba"
SlashCmdList["BETTERPOWERBARALT"] = function(input)
	if input == "reset" then
		BetterPowerBarAltDB.locked = nil
		PlayerPowerBarAlt:ClearAllPoints()
		PlayerPowerBarAlt:SetPoint("CENTER")
		print("|cff33ff99BetterPowerBarAlt|r:", "Frame position reset")
	elseif input == "toggle" then
		if UnitAlternatePowerInfo("player") then return end -- don't mess with it if it's real!

		UnitPowerBarAlt_TearDown(PlayerPowerBarAlt)
		if not PlayerPowerBarAlt:IsShown() then
			-- good ol' maw of madness bar
			UnitPowerBarAlt_SetUp(PlayerPowerBarAlt, 26)
			local textureInfo = {
				frame = { "Interface\\UNITPOWERBARALT\\UndeadMeat_Horizontal_Frame", 1, 1, 1 },
				background = { "Interface\\UNITPOWERBARALT\\Generic1Player_Horizontal_Bgnd", 1, 1, 1 },
				fill = { "Interface\\UNITPOWERBARALT\\Generic1_Horizontal_Fill", 0.16862745583057, 0.87450987100601, 0.24313727021217 },
				spark = { nil, 1, 1, 1 },
				flash = { "Interface\\UNITPOWERBARALT\\Meat_Horizontal_Flash", 1, 1, 1 },
			}
			for name, info in next, textureInfo do
				local texture = PlayerPowerBarAlt[name]
				local path, r, g, b = unpack(info)
				texture:SetTexture(path)
				texture:SetVertexColor(r, g, b)
			end

			PlayerPowerBarAlt.minPower = 0
			PlayerPowerBarAlt.maxPower = 300
			PlayerPowerBarAlt.range = PlayerPowerBarAlt.maxPower - PlayerPowerBarAlt.minPower
			PlayerPowerBarAlt.value = 150
			PlayerPowerBarAlt.displayedValue = PlayerPowerBarAlt.value
			TextStatusBar_UpdateTextStringWithValues(PlayerPowerBarAlt.statusFrame, PlayerPowerBarAlt.statusFrame.text, PlayerPowerBarAlt.displayedValue, PlayerPowerBarAlt.minPower, PlayerPowerBarAlt.maxPower)

			PlayerPowerBarAlt:UpdateFill()
			PlayerPowerBarAlt:Show()
		else
			UnitPowerBarAlt_TearDown(PlayerPowerBarAlt)
			PlayerPowerBarAlt:Hide()
		end
	elseif input == "lock" then
		BetterPowerBarAltDB.locked = not BetterPowerBarAltDB.locked or nil
		if not locked then
			locked = true
			overlay.texture:Hide()
			overlay:EnableMouseWheel(false)
		end
		print("|cff33ff99BetterPowerBarAlt|r:", "Frame", BetterPowerBarAltDB.locked and "locked" or "unlocked")
	else
		print("Usage: /bpba [reset||toggle||lock]")
		print("Reset the frame position, toggle showing frame, or lock the frame")
	end
end
