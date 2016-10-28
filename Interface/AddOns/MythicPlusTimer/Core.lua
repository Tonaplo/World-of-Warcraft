MythicPlusTimer = LibStub("AceAddon-3.0"):NewAddon("MythicPlusTimer", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0");

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:OnInitialize()
    if MythicPlusTimerDB == nil then
        MythicPlusTimerDB = {}
    end

    MythicPlusTimer.L = LibStub("AceLocale-3.0"):GetLocale("MythicPlusTimer")

    MythicPlusTimerCMTimer:Init();
end

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:OnEnable()
    self:RegisterEvent("CHALLENGE_MODE_START");
    self:RegisterEvent("CHALLENGE_MODE_COMPLETED");
    self:RegisterEvent("CHALLENGE_MODE_RESET");
    self:RegisterEvent("PLAYER_ENTERING_WORLD");
    
    self:RegisterChatCommand("mpt", "CMTimerChatCommand");
end

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:CHALLENGE_MODE_START()
    MythicPlusTimerCMTimer:OnStart();
end

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:StartCMTimer()
    MythicPlusTimer:CancelCMTimer()
    MythicPlusTimer.cmTimer = self:ScheduleRepeatingTimer("OnCMTimerTick", 1)
end

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:CHALLENGE_MODE_COMPLETED()
    MythicPlusTimerCMTimer:OnComplete();
end

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:CHALLENGE_MODE_RESET()
    MythicPlusTimerCMTimer:OnReset();
end

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:OnCMTimerTick()
    MythicPlusTimerCMTimer:Draw();
end

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:PLAYER_ENTERING_WORLD()
    MythicPlusTimerCMTimer:ReStart();
end

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:CancelCMTimer()
    if MythicPlusTimer.cmTimer then
        self:CancelTimer(MythicPlusTimer.cmTimer)
        MythicPlusTimer.cmTimer = nil
    end
end

-- ---------------------------------------------------------------------------------------------------------------------
function MythicPlusTimer:CMTimerChatCommand(input)
    if input == "toggle" then
        MythicPlusTimerCMTimer:ToggleFrame()
    else
        self:Print("/mpt toggle: " .. MythicPlusTimer.L["ToggleCommandText"])
    end
end
