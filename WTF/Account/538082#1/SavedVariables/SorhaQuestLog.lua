
SorhaQuestLogDB = {
	["namespaces"] = {
		["QuestTracker"] = {
			["char"] = {
				["Amranar - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Val'sharah"] = true,
						["World Quests"] = false,
						["Cooking"] = true,
						["Druid Campaign"] = true,
						["Battle Pets"] = true,
						["Azsuna"] = false,
						["Bonus Objectives"] = false,
						["Dalaran"] = true,
						["Artifact"] = true,
						["Alchemy"] = true,
					},
				},
				["Mallusof - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Val'sharah"] = true,
						["Weekend Event"] = true,
						["World Quests"] = false,
						["The Emerald Nightmare"] = true,
						["Bonus Objectives"] = false,
						["Suramar"] = false,
						["Court of Stars"] = true,
						["Neltharion's Lair"] = true,
						["Shattrath City"] = true,
						["Battle Pets"] = true,
						["Artifact"] = true,
						["Darkmoon Faire"] = true,
						["Stormheim"] = true,
					},
				},
				["Praerend - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Artifact"] = false,
						["Blacksmithing"] = false,
						["End Time"] = false,
						["Warrior Campaign"] = false,
						["World Quests"] = false,
						["Auchindoun"] = false,
						["Spires of Arak"] = false,
						["Bonus Objectives"] = false,
						["Cooking"] = false,
						["Battle Pets"] = false,
						["The Ruby Sanctum"] = false,
						["Jewelcrafting"] = false,
						["Ironforge"] = false,
						["The Nexus"] = false,
						["Garrison Campaign"] = false,
						["Stormheim"] = false,
					},
				},
			},
			["profiles"] = {
				["Default"] = {
					["ConfirmQuestAbandons"] = false,
					["MinionLocation"] = {
						["Y"] = 253.139984130859,
						["X"] = -187.970199584961,
						["Point"] = "BOTTOMRIGHT",
						["RelativePoint"] = "BOTTOMRIGHT",
					},
					["GrowUpwards"] = true,
					["Fonts"] = {
						["QuestFont"] = "Prototype",
						["ObjectiveFont"] = "Prototype",
						["MinionTitleFont"] = "Prototype",
						["HeaderFont"] = "Prototype",
					},
					["ZonesAndQuests"] = {
						["QuestTitleIndent"] = 15,
						["ShowDescWhenNoObjectives"] = true,
						["CollapseOnLeave"] = true,
						["QuestAfterPadding"] = 1,
						["ObjectiveTextLast"] = true,
						["ExpandOnEnter"] = true,
						["DisplayPOITag"] = true,
						["ShowQuestLevels"] = false,
						["ObjectivesIndent"] = 5,
					},
				},
			},
		},
		["ScenarioTracker"] = {
			["profiles"] = {
				["Default"] = {
					["ShowTitle"] = false,
					["Fonts"] = {
						["ScenarioTaskFont"] = "Prototype",
						["ScenarioObjectiveFont"] = "Prototype",
						["ScenarioHeaderFont"] = "Prototype",
						["MinionTitleFont"] = "Prototype",
					},
					["MinionLocation"] = {
						["Y"] = -27.8865871429443,
						["X"] = 406.013519287109,
						["Point"] = "TOPLEFT",
						["RelativePoint"] = "TOPLEFT",
					},
				},
			},
		},
		["RemoteQuestsTracker"] = {
			["profiles"] = {
				["Default"] = {
					["MinionLocation"] = {
						["Y"] = 132.009552001953,
						["X"] = 182.664138793945,
					},
				},
			},
		},
		["AchievementTracker"] = {
			["profiles"] = {
				["Default"] = {
					["ShowTitle"] = false,
					["Fonts"] = {
						["AchievementTitleFont"] = "Prototype",
						["MinionTitleFont"] = "Prototype",
						["AchievementObjectiveFont"] = "Prototype",
					},
					["MinionLocation"] = {
						["Y"] = -24.8160419464111,
						["X"] = -275.01953125,
						["Point"] = "TOP",
						["RelativePoint"] = "TOP",
					},
				},
			},
		},
	},
	["profileKeys"] = {
		["Amranar - Proudmoore"] = "Default",
		["Mallusof - Proudmoore"] = "Default",
		["Praerend - Proudmoore"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["Modules"] = {
				["RemoteQuestsTracker"] = false,
			},
			["StatusBarTexture"] = "BantoBar",
		},
	},
}
