CDRMain = LibStub("AceAddon-3.0"):NewAddon("CDRMain", "AceConsole-3.0", "AceEvent-3.0")
AceGUI = LibStub("AceGUI-3.0")
created = false
currentFightSelected = nil;
currentEventSelected = nil;
local cachedFights = {}
local cachedEvents = {}

local EventTypes = {
	"Time",
	"BossCast",
}

local encounterNames = {
	"Nythendra",
	"Elerethe",
	"Ursoc",
	"Dragons of Nightmare",
	"Ilgy'noth",
	"Cenarius",
	"Xavius",
	"Odyn",
	"Guarm",
	"Helya",
	"Scorpyron",
	"Chronomatic Anomaly",
	"Trilliax",
	"Spellblade Auriel",
	"Tichondrius",
	"Krosus",
	"Botanist Tel'arn",
	"Star Augur",
	"Elisande",
	"Gul'dan"
}

local cooldownEvent = {
		index = nil,
		name = nil,
		eventType = nil,
}



--local defaultDB = {
--	fight = {
--		numEvents = 0,
--		}
--}

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function CDRMain:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("CDRDatabase", defaultDB)
	CDRMain:Print("CooldownRotation loaded")
	CDRMain:RegisterChatCommand("cdr", "SlashOpenMainWindow")
	self:RegisterEvent("TRADE_SKILL_UPDATE")
	self:RegisterEvent("PLAYER_LEVEL_UP")
	CDRMain:RegisterEvent("PLAYER_AVG_ITEM_LEVEL_UPDATE", "SaveData")
end

function CDRMain:OnEnable()
    -- Called when the addon is enabled
	CDRMain:SaveData()

end

function CDRMain:OnDisable()
    -- Called when the addon is disabled
end

function CDRMain:SlashOpenMainWindow(input)
	if created == false then
		CDRMain:SaveData()
		CDRMain:OpenMainWindow()
	end
end

function CDRMain:PLAYER_LEVEL_UP()
	CDRMain:SaveData()
end

function CDRMain:TRADE_SKILL_UPDATE()
	CDRMain:SaveData()
end

function CDRMain:SaveData()
	
end

function CDRMain:OpenMainWindow()
	
	-- Create a container frame
	mainFrame = AceGUI:Create("Window")
	mainFrame:SetCallback("OnClose",function(widget) AceGUI:Release(widget) created = false end)
	mainFrame:SetTitle("Cooldown Rotation")
	mainFrame:SetLayout("Flow")
	mainFrame:SetHeight(600)
	
	--label = AceGUI:Create("Heading")
	--mainFrame:AddChild(label)
	--label:SetText("This addon is designed to make a cooldown rotation for your healers. You can build a fight and have different cooldowns be called out by the addon, depending on the events happening. Currently, the plan is the be able to call cooldowns for two different types of events - Time based and boss ability based.")
	--label:SetRelativeWidth(1.0)
	
	local AddNewFightBox = AceGUI:Create("EditBox")
	AddNewFightBox:SetLabel("Create new Fight:")
	AddNewFightBox:SetWidth(200)
	AddNewFightBox:SetCallback("OnEnterPressed", AddFight )
	mainFrame:AddChild(AddNewFightBox)
	mainFrame.AddNewFightBox = AddNewFightBox;
	
	FightFrame = AceGUI:Create("DropdownGroup")
	FightFrame:SetTitle("")
	FightFrame:SetFullHeight(true)
	FightFrame:SetFullWidth(true)
	FightFrame:SetGroupList(cachedFights);
	FightFrame:SetLayout("Flow")
	FightFrame:SetCallback("OnGroupSelected", FightFrameDropDownChange)
	mainFrame:AddChild(FightFrame)
	mainFrame. FightFrame = FightFrame;
	
	local deleteFight = AceGUI:Create("Button")
	deleteFight:SetText("Delete Current Fight")
	deleteFight:SetFullWidth(true)
	deleteFight:SetCallback("OnClick", DeleteCurrentFight)
	FightFrame:AddChild(deleteFight)
	
	scrollcontainer = AceGUI:Create("InlineGroup")
	FightFrame:AddChild(scrollcontainer)
	scrollcontainer:SetTitle("Events:")
	scrollcontainer:SetWidth(200)
	scrollcontainer:SetHeight(150)
	scrollcontainer:SetLayout("Fill")

	EventScroller = AceGUI:Create("ScrollFrame")
	EventScroller:SetLayout("Flow")
	scrollcontainer:AddChild(EventScroller)
	mainFrame.EventScroller = EventScroller;
	
	GenerelBossInfoContainer = AceGUI:Create("InlineGroup") 
	FightFrame:AddChild(GenerelBossInfoContainer)
	GenerelBossInfoContainer:SetTitle("Generel Boss Info:")
	GenerelBossInfoContainer:SetWidth(450)
	GenerelBossInfoContainer:SetHeight(300)
	GenerelBossInfoContainer:SetLayout("flow")
	
	local BossSelect = AceGUI:Create("Dropdown")
	BossSelect:SetLabel("Boss:")
	BossSelect:SetMultiselect(false);
	BossSelect:SetWidth(200)
	BossSelect:SetList(encounterNames);
	BossSelect:SetCallback("OnValueChanged", function(self, event, key) CDRMain:Print("Boss Changed") end)
	GenerelBossInfoContainer:AddChild(BossSelect)
	
	local isEnabledBox = AceGUI:Create("CheckBox")
	isEnabledBox:SetType("checkbox")
	isEnabledBox:SetLabel("Enabled:")
	isEnabledBox:SetDescription("Only one cooldown rotation can be enabled per fight. Checking this will (should) uncheck all other rotations for this boss.")
	GenerelBossInfoContainer:AddChild(isEnabledBox)
	
	local EventNameBox = AceGUI:Create("EditBox")
	EventNameBox:SetLabel("Create new Event:")
	EventNameBox:SetWidth(200)
	EventNameBox:SetCallback("OnEnterPressed", AddEventToFight )
	GenerelBossInfoContainer:AddChild(EventNameBox)
	
	local deleteEvent = AceGUI:Create("Button")
	deleteEvent:SetText("Delete Current Event")
	deleteEvent:SetWidth(200)
	deleteEvent:SetCallback("OnClick", DeleteCurrentFight)
	GenerelBossInfoContainer:AddChild(deleteEvent)
	
	EventEditorContainer = AceGUI:Create("InlineGroup") 
	FightFrame:AddChild(EventEditorContainer)
	EventEditorContainer:SetTitle("No event selected")
	EventEditorContainer:SetWidth(600)
	EventEditorContainer:SetHeight(400)
	EventEditorContainer:SetLayout("Flow")
	mainFrame.EventEditorContainer = EventEditorContainer;
	
	
	
	local EventTypeSelect = AceGUI:Create("Dropdown")
	EventTypeSelect:SetLabel("Event Type:")
	EventTypeSelect:SetMultiselect(false);
	EventTypeSelect:SetWidth(200)
	EventTypeSelect:SetList(EventTypes);
	EventTypeSelect:SetValue(1);
	EventEditorContainer:AddChild(EventTypeSelect)
	
	created = true
end

function AddFight(widget, event, text)
	if(text) then
		cachedFights[text] = text;
		mainFrame.FightFrame:SetGroupList(cachedFights);
		mainFrame.FightFrame:SetGroup(text)
		mainFrame.AddNewFightBox:SetText("");
	end
end

function AddEventToFight(widget, event, text)
	if(text) then
		cachedEvents[text] = text;
		local eventElement = AceGUI:Create("InteractiveLabel")
		eventElement:SetText(text)
		eventElement:SetCallback("OnEnter", function(self) self:SetColor(0,1,0) end)
		eventElement:SetCallback("OnLeave", function(self) self:SetColor(1,1,1) end)
		eventElement:SetCallback("OnClick", OnEventSelected)
		eventElement:SetFullWidth(true)
		mainFrame.EventScroller:AddChild(eventElement)
		OnEventAdded(text)
		widget:SetText("");
	end
end

function DeleteCurrentFight()
	if(currentFightSelected) then 
		cachedFights[currentFightSelected] = nil;
		mainFrame.FightFrame:SetGroupList(cachedFights);
		mainFrame.FightFrame:SetGroup();
	else 
		CDRMain:Print("No fight selected to delete!")
	end
end

function DeleteCurrentEvent()
	if(currentEventSelected) then 
		cachedEvents[currentEventSelected] = nil;
		mainFrame.FightFrame:SetGroupList(cachedFights);
		mainFrame.FightFrame:SetGroup();
	else 
		CDRMain:Print("No fight selected to delete!")
	end
end

function OnEventSelected(self)
	currentEventSelected = self.label:GetText();
	EventEditorContainer:SetTitle("Currently editing event: " .. self.label:GetText())
end

function OnEventAdded(text)
	currentEventSelected = text;
	EventEditorContainer:SetTitle("Currently editing event: " .. text)
end

function FightFrameDropDownChange(widget, event, group)
	currentFightSelected = group;
end

function CDRMain:GetClassColor(input)
	
	if input == "DEATHKNIGHT" then
		return "c41f3b"
	elseif input == "WARRIOR" then
		return "c79c6e"
	elseif input == "DRUID" then
		return "ff7d0a"
	elseif input == "HUNTER" then
		return "abd473"
	elseif input == "MAGE" then
		return "69ccf0"
	elseif input == "MONK" then
		return "00ff96"
	elseif input == "PALADIN" then
		return "f58cba"
	elseif input == "PRIEST" then
		return "ffffff"
	elseif input == "ROGUE" then
		return "fff569"
	elseif input == "SHAMAN" then
		return "0070de"
	elseif input == "WARLOCK" then
		return "9482c9"
	elseif input == "DEMONHUNTER" then
		return "A330C9"
	end
	
	--No class stored yet
	return "FFFFFF"
end

local options = {
    name = "Cooldown Rotation",
    handler = CDRMain,
    type = 'group',
    args = {
        msg = {
            type = 'input',
            name = 'My Message',
            desc = 'The message for my addon',
            set = 'SetMyMessage',
            get = 'GetMyMessage',
        },
    },
}