--TUTORIAL
if (not xl_conditionertutorial) then
	xl_conditionertutorial = {
		[1] = 0,	--open spellbook
		[2] = 0,	--add spells
		[3] = 0,	--remove spells
		[4] = 0,	--re-arrange spells
		[5] = 0,	--open conditions
		[6] = 0,	--enable conditions
		[7] = 0,	--disable conditions and inform cooldown behavior
		[8] = 0,	--re-size icons
		[9] = 0,	--drag icons
		[10] = 0,	--rotate display
		[11] = 0,	--menu options
		[12] = 0,	--nameplate docking
		[13] = 0,	--ctrl right click to change sides
		[14] = 0, 	--complete
		current_step = 1,
		spell_drags = 0,
	}
end

local conditioner_anchors = {
	{x = "BOTTOM", y = SpellbookMicroButton, z = "TOP", w = 0, h = 30, adjustx = 0, adjusty = -20, target = SpellbookMicroButton},				--1
	{x = "LEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 5, adjustx = 0, adjusty = 0, target = SpellButton1},					--2
	{x = "LEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 5, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},			--3
	{x = "LEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 5, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},			--4
	{x = "LEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 5, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},			--5
	{x = "BOTTOM", y = SpellBookSkillLineTab1, z = "TOP", w = 0, h = 0, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},				--6
	{x = "BOTTOM", y = SpellBookSkillLineTab1, z = "TOP", w = 0, h = 0, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},				--7
	{x = "LEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 0, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},			--8
	{x = "LEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 0, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},			--9
	{x = "LEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 0, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},			--10
	{x = "BOTTOMLEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 15, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},	--11
	{x = "BOTTOMLEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 15, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},	--12
	{x = "BOTTOMLEFT", y = SpellBookSkillLineTab1, z = "TOPRIGHT", w = 55, h = 15, adjustx = 0, adjusty = 0, target = SpellBookSkillLineTab1},	--13
	{x = "TOP", y = UIParent, z = "TOP", w = 0, h = -UIParent:GetHeight()/4, adjustx = 0, adjusty = 0, target = SpellBookFrameCloseButton},		--14
}

local conditioner_tutorial_strings = {
	"Open your Spellbook to get started!",
	"Drag 3 spells into the priority list.",
	"Sweet! Right Click to remove spells from the priority list.",
	"You can also pick up spells to re-arrange them anywhere with Left Click.",
	"Great! Now let's view and set conditions for a spell.",
	"Click to enable or disable conditions.",
	"By default, spells are sorted by cooldown and priority.",
	"You can re-size with the Mouse Wheel.",
	"You can drag with the Left Mouse Button.",
	"Right Click to rotate the display!",
	"Don't forget there are some extra general options available.",
	"You can dock your tracked spell icons to a nameplate or move them freely.",
	"CTRL + Right Click changes docking positions.",
	"Tutorial Complete! Experiment with the simple, yet powerful conditions!"
}

--we need a tutorial frame we can re-use, I never want to show more than 1 at a time "Interface\TutorialFrame\UI-TUTORIAL-FRAME" Interface\Transmogrify\PurpleIconAlertAnts.blp EtherealLines.blp

local condition_w = 5
local condition_h = 5

local conditioner_tutorialframe = CreateFrame("Frame", "ConditionerTutorialFrame", UIParent)
conditioner_tutorialframe:SetPoint("CENTER")
conditioner_tutorialframe.text = conditioner_tutorialframe:CreateFontString("CheckListText", "OVERLAY", "GameTooltipText")
conditioner_tutorialframe.text:SetPoint("CENTER", conditioner_tutorialframe, "CENTER")
conditioner_tutorialframe.text:SetText("|cff00ffffCONDITIONER|r\n" .. conditioner_tutorial_strings[1])
conditioner_tutorialframe.text:SetTextColor(1,1,0)
conditioner_tutorialframe.text:SetJustifyH("CENTER")
conditioner_tutorialframe.text:SetJustifyV("CENTER")
conditioner_tutorialframe:SetSize(200, 100)
conditioner_tutorialframe.text:SetWidth(conditioner_tutorialframe:GetWidth()/1.5)

local conditioner_background = CreateFrame("Frame", nil, conditioner_tutorialframe)
conditioner_background:SetPoint("TOPLEFT", conditioner_tutorialframe, "TOPLEFT", 20, -8)
conditioner_background:SetPoint("BOTTOMRIGHT", conditioner_tutorialframe, "BOTTOMRIGHT", -20, 8)
conditioner_background.texture = conditioner_background:CreateTexture()
conditioner_background.texture:SetAllPoints(conditioner_background)
conditioner_background.texture:SetTexture("Interface\\FrameGeneral\\UI-Background-Marble")
conditioner_background:SetFrameLevel(conditioner_tutorialframe:GetFrameLevel() - 1)

--highlight
conditioner_background.highlight = CreateFrame("Frame", nil, conditioner_tutorialframe)
conditioner_background.highlight:SetAllPoints(conditioner_background)
conditioner_background.highlight.texture = conditioner_background.highlight:CreateTexture()
conditioner_background.highlight.texture:SetPoint("CENTER", conditioner_background.highlight, "CENTER", 0, 0)
conditioner_background.highlight.texture:SetTexture("Interface\\Buttons\\UI-Common-MouseHilight")
conditioner_background.highlight.texture:SetSize(conditioner_tutorialframe:GetWidth()*1.5, conditioner_tutorialframe:GetHeight()*1.5)
conditioner_background.highlight.texture:SetBlendMode("ADD")
conditioner_background.highlight:Hide()

conditioner_tutorialframe:SetScript("OnEnter", function(self,...) conditioner_background.highlight:Show() end)
conditioner_tutorialframe:SetScript("OnLeave", function(self,...) conditioner_background.highlight:Hide() end)

local conditioner_border = CreateFrame("Frame", nil, conditioner_tutorialframe, "ConditionerTutorialLarge")
conditioner_border.PendingFrame:SetPoint("TOPLEFT", conditioner_background,"TOPLEFT", -70, 38)
conditioner_border.PendingFrame:SetPoint("BOTTOMRIGHT", conditioner_background,"BOTTOMRIGHT", 70, -38)
conditioner_border.PendingFrame.Glow:SetPoint("TOPLEFT", conditioner_background,"TOPLEFT", -70, 38)
conditioner_border.PendingFrame.Glow:SetPoint("BOTTOMRIGHT", conditioner_background,"BOTTOMRIGHT", 70, -38)
conditioner_border.PendingFrame.Ants:SetAllPoints(conditioner_tutorialframe)
conditioner_border.PendingFrame.Ants:Hide()

local conditioner_smoke = CreateFrame("Frame", nil, conditioner_tutorialframe, "ConditionerSmoke")
conditioner_smoke:SetAllPoints(conditioner_tutorialframe)
conditioner_smoke.Glowframe:SetAllPoints(conditioner_smoke)

function ConditionerTutorial_Anim()
	conditioner_smoke.Smoke1:ClearAllPoints()
	conditioner_smoke.Smoke1:SetSize(20,conditioner_tutorialframe:GetHeight()/1.25)
	conditioner_smoke.Smoke1:SetPoint("CENTER", conditioner_tutorialframe, "LEFT", 20, 0)

	conditioner_smoke.Smoke2:ClearAllPoints()
	conditioner_smoke.Smoke2:SetPoint("CENTER", conditioner_tutorialframe, "RIGHT", -20, 0)
	conditioner_smoke.Smoke2:SetSize(20,conditioner_tutorialframe:GetHeight()/1.25)

	conditioner_smoke.Smoke3:ClearAllPoints()
	conditioner_smoke.Smoke3:SetPoint("CENTER", conditioner_tutorialframe, "LEFT", 20, 0)
	conditioner_smoke.Smoke3:SetSize(20,conditioner_tutorialframe:GetHeight()/1.25)

	conditioner_smoke.Smoke4:ClearAllPoints()
	conditioner_smoke.Smoke4:SetPoint("CENTER", conditioner_tutorialframe, "RIGHT", -20, 0)
	conditioner_smoke.Smoke4:SetSize(20,conditioner_tutorialframe:GetHeight()/1.25)

	conditioner_smoke.Wisp1:SetSize(conditioner_tutorialframe:GetWidth()/4, 20)
	conditioner_smoke.Wisp1:ClearAllPoints()
	conditioner_smoke.Wisp1:SetPoint("BOTTOM", conditioner_tutorialframe, "BOTTOMRIGHT", -conditioner_tutorialframe:GetWidth()/4,  10)

	conditioner_smoke.Wisp2:SetSize(conditioner_tutorialframe:GetWidth()/4, 20)
	conditioner_smoke.Wisp2:ClearAllPoints()
	conditioner_smoke.Wisp2:SetPoint("TOP", conditioner_tutorialframe, "TOPLEFT", conditioner_tutorialframe:GetWidth()/4, -10)

	conditioner_smoke.Wisp3:SetSize(20, conditioner_tutorialframe:GetHeight()/4)
	conditioner_smoke.Wisp3:ClearAllPoints()
	conditioner_smoke.Wisp3:SetPoint("LEFT", conditioner_tutorialframe, "BOTTOMLEFT", 30, 0)

	conditioner_smoke.Wisp4:SetSize(20, conditioner_tutorialframe:GetHeight()/4)
	conditioner_smoke.Wisp4:ClearAllPoints()
	conditioner_smoke.Wisp4:SetPoint("RIGHT", conditioner_tutorialframe, "TOPRIGHT", -30, 0)

	conditioner_smoke.Wisp5:SetSize(conditioner_tutorialframe:GetWidth()/4, 25)
	conditioner_smoke.Wisp5:ClearAllPoints()
	conditioner_smoke.Wisp5:SetPoint("BOTTOM", conditioner_tutorialframe, "BOTTOMRIGHT", -conditioner_tutorialframe:GetWidth()/2, 10)

	conditioner_smoke.Wisp6:SetSize(conditioner_tutorialframe:GetWidth()/4, 25)
	conditioner_smoke.Wisp6:ClearAllPoints()
	conditioner_smoke.Wisp6:SetPoint("TOP", conditioner_tutorialframe, "TOPLEFT", conditioner_tutorialframe:GetWidth()/2, -10)

	conditioner_smoke.Wisp7:SetSize(25, conditioner_tutorialframe:GetHeight()/2)
	conditioner_smoke.Wisp7:ClearAllPoints()
	conditioner_smoke.Wisp7:SetPoint("LEFT", conditioner_tutorialframe, "BOTTOMLEFT", 30, 0)

	conditioner_smoke.Wisp8:SetSize(25, conditioner_tutorialframe:GetHeight()/2)
	conditioner_smoke.Wisp8:ClearAllPoints()
	conditioner_smoke.Wisp8:SetPoint("RIGHT", conditioner_tutorialframe, "TOPRIGHT", -30, 0)

	conditioner_smoke.Wisp9:SetSize(conditioner_tutorialframe:GetWidth()/4, 20)
	conditioner_smoke.Wisp9:ClearAllPoints()
	conditioner_smoke.Wisp9:SetPoint("BOTTOM", conditioner_tutorialframe, "BOTTOMRIGHT", -conditioner_tutorialframe:GetWidth()/3, 10)

	conditioner_smoke.Wisp10:SetSize(conditioner_tutorialframe:GetWidth()/4, 20)
	conditioner_smoke.Wisp10:ClearAllPoints()
	conditioner_smoke.Wisp10:SetPoint("TOP", conditioner_tutorialframe, "TOPLEFT", conditioner_tutorialframe:GetWidth()/3, -10)

	conditioner_smoke.Wisp11:SetSize(20, conditioner_tutorialframe:GetHeight()/4)
	conditioner_smoke.Wisp11:ClearAllPoints()
	conditioner_smoke.Wisp11:SetPoint("LEFT", conditioner_tutorialframe, "BOTTOMLEFT", 20, 0)

	conditioner_smoke.Wisp12:SetSize(20, conditioner_tutorialframe:GetHeight()/4)
	conditioner_smoke.Wisp12:ClearAllPoints()
	conditioner_smoke.Wisp12:SetPoint("RIGHT", conditioner_tutorialframe, "TOPRIGHT", -20, 0)

	conditioner_smoke.TransmogSelectedAnim:Play()
	conditioner_smoke.TransmogSelectedAnim2:Play()
	conditioner_smoke.TransmogSelectedAnim3:Play()
	conditioner_smoke.TransmogSelectedAnim4:Play()
	conditioner_smoke.TransmogSelectedAnim5:Play()
end

function ConditionerResetTutorial()
	xl_conditionertutorial = {
		[1] = 0,	--open spellbook
		[2] = 0,	--add spells
		[3] = 0,	--remove spells
		[4] = 0,	--re-arrange spells
		[5] = 0,	--open conditions
		[6] = 0,	--enable conditions
		[7] = 0,	--disable conditions and inform cooldown behavior
		[8] = 0,	--re-size icons
		[9] = 0,	--drag icons
		[10] = 0,	--rotate display
		[11] = 0,	--menu options
		[12] = 0,	--nameplate docking
		[13] = 0,	--ctrl right click to change sides
		[14] = 0,
		current_step = 1,
		spell_drags = 0,
	}
	ConditionerTutorial_Alert(1)
	conditioner_anchors[2].target = SpellButton1
	HideUIPanel(SpellBookFrame)
end

function ConditionerFlagTutorial()
	xl_conditionertutorial = {
		[1] = 1,	--open spellbook
		[2] = 1,	--add spells
		[3] = 1,	--remove spells
		[4] = 1,	--re-arrange spells
		[5] = 1,	--open conditions
		[6] = 1,	--enable conditions
		[7] = 1,	--disable conditions and inform cooldown behavior
		[8] = 1,	--re-size icons
		[9] = 1,	--drag icons
		[10] = 1,	--rotate display
		[11] = 1,	--menu options
		[12] = 1,	--nameplate docking
		[13] = 1,	--ctrl right click to change sides
		[14] = 1,
		current_step = 15,
		spell_drags = 0,
	}
	conditioner_tutorialframe:Hide()
	conditioner_border.AnimFrame:Hide()
	conditioner_border.PendingFrame.Ants:Hide()
end

function ConditionerTutorial_Dismiss(step)
	if (step) then
		if (step == 2) then
			xl_conditionertutorial.spell_drags = xl_conditionertutorial.spell_drags + 1
			if (xl_conditionertutorial.spell_drags >= 3) then
				if (step == xl_conditionertutorial.current_step) then
					conditioner_tutorialframe:Hide()
					conditioner_border.AnimFrame:Hide()
					conditioner_border.PendingFrame.Ants:Hide()
					xl_conditionertutorial[step] = 1
					xl_conditionertutorial.current_step = xl_conditionertutorial.current_step + 1
				else
					--nothing
				end
			else
				if (xl_conditionertutorial.spell_drags == 1) then
					conditioner_tutorialframe.text:SetText("|cff00ffffCONDITIONER|r\n" .. "Spells are displayed on your screen based on their current cooldown. 2 more...")
					conditioner_anchors[step].target = SpellButton2
				elseif (xl_conditionertutorial.spell_drags == 2) then
					conditioner_tutorialframe.text:SetText("|cff00ffffCONDITIONER|r\n" .. "Almost done! Just drag 1 more spell into the priority list!")
					conditioner_anchors[step].target = SpellButton3
				end
				conditioner_border.PendingFrame.Ants:SetParent(conditioner_anchors[step].target)
				conditioner_border.PendingFrame.Ants:ClearAllPoints()
				conditioner_border.PendingFrame.Ants:SetPoint("BOTTOMLEFT", conditioner_anchors[step].target, "BOTTOMLEFT")
				conditioner_border.PendingFrame.Ants:SetSize(conditioner_anchors[step].target:GetWidth() + conditioner_anchors[step].adjustx, conditioner_anchors[step].target:GetHeight() + conditioner_anchors[step].adjusty)

				conditioner_border.AnimFrame:SetParent(conditioner_anchors[step].target)
				conditioner_border.AnimFrame:ClearAllPoints()
				conditioner_border.AnimFrame:SetPoint("BOTTOMLEFT", conditioner_anchors[step].target, "BOTTOMLEFT")
				conditioner_border.AnimFrame:SetSize(conditioner_anchors[step].target:GetWidth() + conditioner_anchors[step].adjustx, conditioner_anchors[step].target:GetHeight() + conditioner_anchors[step].adjusty)

				conditioner_border.AnimFrame.Glow:ClearAllPoints()
				conditioner_border.AnimFrame.OuterGlow:ClearAllPoints()

				conditioner_border.AnimFrame.Glow:SetPoint("CENTER", conditioner_border.AnimFrame, "CENTER")
				conditioner_border.AnimFrame.Glow:SetSize(conditioner_border.AnimFrame:GetWidth()*1.5, conditioner_border.AnimFrame:GetHeight()*1.5)

				conditioner_border.AnimFrame.OuterGlow:SetPoint("CENTER", conditioner_border.AnimFrame, "CENTER")
				conditioner_border.AnimFrame.OuterGlow:SetSize(conditioner_border.AnimFrame:GetWidth(), conditioner_border.AnimFrame:GetHeight())

				conditioner_border.AnimFrame.Anim:Play()
			end
		else
			if (step == xl_conditionertutorial.current_step) then
				conditioner_tutorialframe:Hide()
				conditioner_border.AnimFrame:Hide()
				conditioner_border.PendingFrame.Ants:Hide()
				xl_conditionertutorial[step] = 1
				xl_conditionertutorial.current_step = xl_conditionertutorial.current_step + 1
			else
				--nothing
			end
		end
	else
		conditioner_tutorialframe:Hide()
		conditioner_border.AnimFrame:Hide()
		conditioner_border.PendingFrame.Ants:Hide()
		if (xl_conditionertutorial[xl_conditionertutorial.current_step]) then
			xl_conditionertutorial[xl_conditionertutorial.current_step] = 1
			xl_conditionertutorial.current_step = xl_conditionertutorial.current_step + 1
		else
			--doesn't exist, we're done
		end
	end
end

function ConditionerTutorial_Alert(step, optional, optional2)
	if (xl_conditionertutorial[step]) and (xl_conditionertutorial[step] == 0) then
		if (xl_conditionertutorial.current_step == step) then
			if (optional2) then
				conditioner_anchors[step].y = optional2
			end
			conditioner_tutorialframe:SetParent(conditioner_anchors[step].y)
			conditioner_tutorialframe:ClearAllPoints()
			conditioner_tutorialframe:SetPoint(conditioner_anchors[step].x, conditioner_anchors[step].y, conditioner_anchors[step].z, conditioner_anchors[step].w, conditioner_anchors[step].h)
			conditioner_tutorialframe.text:SetText("|cff00ffffCONDITIONER|r\n" .. conditioner_tutorial_strings[step])

			if (step == 2) then
				if (xl_conditionertutorial.spell_drags == 1) then
					conditioner_tutorialframe.text:SetText("|cff00ffffCONDITIONER|r\n" .. "Spells are displayed on your screen based on their current cooldown. 2 more...")
					conditioner_anchors[step].target = SpellButton2
				elseif (xl_conditionertutorial.spell_drags == 2) then
					conditioner_tutorialframe.text:SetText("|cff00ffffCONDITIONER|r\n" .. "Almost done! Just drag 1 more spell into the priority list!")
					conditioner_anchors[step].target = SpellButton3
				end
			end

			conditioner_tutorialframe:Show()

			if (conditioner_anchors[step]) then
				conditioner_border.AnimFrame:Show()
				conditioner_border.PendingFrame.Ants:Show()

				if (optional) then
					conditioner_anchors[step].target = optional
				end

				conditioner_border.PendingFrame.Ants:SetParent(conditioner_anchors[step].target)
				conditioner_border.PendingFrame.Ants:ClearAllPoints()
				conditioner_border.PendingFrame.Ants:SetPoint("BOTTOMLEFT", conditioner_anchors[step].target, "BOTTOMLEFT")
				conditioner_border.PendingFrame.Ants:SetSize(conditioner_anchors[step].target:GetWidth() + conditioner_anchors[step].adjustx, conditioner_anchors[step].target:GetHeight() + conditioner_anchors[step].adjusty)

				conditioner_border.AnimFrame:SetParent(conditioner_anchors[step].target)
				conditioner_border.AnimFrame:ClearAllPoints()
				conditioner_border.AnimFrame:SetPoint("BOTTOMLEFT", conditioner_anchors[step].target, "BOTTOMLEFT")
				conditioner_border.AnimFrame:SetSize(conditioner_anchors[step].target:GetWidth() + conditioner_anchors[step].adjustx, conditioner_anchors[step].target:GetHeight() + conditioner_anchors[step].adjusty)

				conditioner_border.AnimFrame.Glow:ClearAllPoints()
				conditioner_border.AnimFrame.OuterGlow:ClearAllPoints()

				conditioner_border.AnimFrame.Glow:SetPoint("CENTER", conditioner_border.AnimFrame, "CENTER")
				conditioner_border.AnimFrame.Glow:SetSize(conditioner_border.AnimFrame:GetWidth()*1.5, conditioner_border.AnimFrame:GetHeight()*1.5)

				conditioner_border.AnimFrame.OuterGlow:SetPoint("CENTER", conditioner_border.AnimFrame, "CENTER")
				conditioner_border.AnimFrame.OuterGlow:SetSize(conditioner_border.AnimFrame:GetWidth(), conditioner_border.AnimFrame:GetHeight())

				conditioner_border.AnimFrame.Anim:Play()
			else
				conditioner_border.AnimFrame.Anim:Stop()
				conditioner_border.PendingFrame.Ants:Hide()
			end
		end
	end
end

function ConditionerTutorial_Model()
	if (not conditioner_tutorialframe.Model) then
		conditioner_tutorialframe.Model = CreateFrame("PlayerModel", nil, conditioner_tutorialframe)
		conditioner_tutorialframe.Model:SetSize(100, 100)
		conditioner_tutorialframe.Model:SetPoint("CENTER", conditioner_tutorialframe, "TOPRIGHT")
		
		if (UnitFactionGroup("player") == "Alliance") then
			conditioner_tutorialframe.Model:SetDisplayInfo(37526)
		else
			conditioner_tutorialframe.Model:SetDisplayInfo(37527)
		end
		conditioner_tutorialframe.Model:SetAnimation(69)
		conditioner_tutorialframe.Model.timer = 0
		conditioner_tutorialframe.Model:SetRotation(0.5)
		conditioner_tutorialframe.Model:SetFrameStrata("FULLSCREEN_DIALOG")
		conditioner_tutorialframe.Model.displayIDs = {
		15369, 6294, 78712,	78810, 21195, 21135, 74504,
		74514, 68501, 68500, 54329, 35248, 35231, 37526,
		37527, 13610, 51505, 49084, 49289, 58170, 54848}

		conditioner_tutorialframe.Model:SetScript("OnUpdate", function(self, elapsed)
			conditioner_tutorialframe.Model.timer = conditioner_tutorialframe.Model.timer + elapsed
			if (conditioner_tutorialframe.Model.timer > math.pi*2) then
				conditioner_tutorialframe.Model.timer = 0
			end
			conditioner_tutorialframe.Model:SetRotation(conditioner_tutorialframe.Model.timer)
		end)

		conditioner_tutorialframe.Model:SetScript("OnShow", function(self)
			local randomID = math.random(1, #self.displayIDs)
			local randomDisplayID = self.displayIDs[randomID]
			conditioner_tutorialframe.Model:SetDisplayInfo(randomDisplayID)
			conditioner_tutorialframe.Model:SetAnimation(69)
		end)
	end	
end

conditioner_tutorialframe:SetScript("OnShow", function(...)
	ConditionerTutorial_Model()
	ConditionerTutorial_Anim()
end)

conditioner_tutorialframe:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, 0)
	GameTooltip:SetText("Conditioner Tutorial", 1, 1, 1, true)
	GameTooltip:AddLine("Right Click to skip tutorial.", nil, nil, nil, true)
	GameTooltip:SetMinimumWidth(150)
	GameTooltip:Show()
end)
conditioner_tutorialframe:SetScript("OnLeave", function(self)
	GameTooltip:Hide()
end)

conditioner_tutorialframe:SetScript("OnMouseDown", function(self, button, down)
	if (button == "RightButton") then
		ConditionerFlagTutorial()
		PlaySound(1115)
	elseif (button == "LeftButton") then
		if (xl_conditionertutorial.current_step == 1) then
			ShowUIPanel(SpellBookFrame)
		elseif (xl_conditionertutorial.current_step == 14) then
			HideUIPanel(SpellBookFrame)
		end
	end
end)

conditioner_tutorialframe:Hide()

SpellBookFrame:HookScript("OnShow", function(...)
	ConditionerTutorial_Dismiss(1)
	ConditionerTutorial_Alert(2)
end)

SpellBookFrame:HookScript("OnHide", function(...)
	ConditionerTutorial_Dismiss(14)
end)