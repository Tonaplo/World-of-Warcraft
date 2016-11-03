
SorhaQuestLogDB = {
	["namespaces"] = {
		["QuestTracker"] = {
			["char"] = {
				["Praerend - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Artifact"] = true,
						["Blacksmithing"] = true,
						["End Time"] = true,
						["Warrior Campaign"] = true,
						["World Quests"] = false,
						["Auchindoun"] = true,
						["Azsuna"] = true,
						["Bonus Objectives"] = false,
						["Cooking"] = true,
						["Ironforge"] = true,
						["The Ruby Sanctum"] = true,
						["Jewelcrafting"] = true,
						["Battle Pets"] = true,
						["Spires of Arak"] = true,
						["Garrison Campaign"] = true,
						["Stormheim"] = true,
					},
				},
				["Rahran - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Val'sharah"] = false,
						["Blackrock Foundry"] = true,
						["Rogue"] = true,
						["Shadowmoon Valley"] = true,
						["World Quests"] = false,
						["Bonus Objectives"] = false,
						["Leatherworking"] = true,
						["Garrison Support"] = true,
						["Battle Pets"] = true,
					},
				},
				["Morifa - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Hall of the Guardian"] = false,
						["Seasonal"] = false,
						["World Quests"] = false,
						["Bonus Objectives"] = false,
						["Battle Pets"] = false,
					},
				},
				["Amranar - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Val'sharah"] = true,
						["Highmountain"] = true,
						["World Quests"] = false,
						["Brawler's Guild"] = true,
						["Druid Campaign"] = true,
						["Cooking"] = true,
						["Azsuna"] = true,
						["Bonus Objectives"] = false,
						["Suramar"] = true,
						["Battle Pets"] = true,
						["Dalaran"] = true,
						["Alchemy"] = true,
						["Herbalism"] = true,
					},
				},
				["Farahn - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Battle Pets"] = true,
						["World Quests"] = false,
						["Azsuna"] = false,
						["Bonus Objectives"] = false,
						["Engineering"] = true,
					},
				},
				["Mallusof - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Val'sharah"] = true,
						["Weekend Event"] = true,
						["World Quests"] = false,
						["The Emerald Nightmare"] = true,
						["Battle Pets"] = true,
						["Suramar"] = false,
						["Court of Stars"] = true,
						["Neltharion's Lair"] = true,
						["Shattrath City"] = true,
						["Bonus Objectives"] = false,
						["Darkmoon Faire"] = true,
						["Artifact"] = true,
						["Stormheim"] = true,
					},
				},
				["Mallusof - Tichondrius"] = {
					["ZoneIsCollapsed"] = {
						["Artifact"] = true,
						["Battlegrounds"] = true,
						["World Quests"] = false,
						["Hallow's End"] = true,
						["The Emerald Nightmare"] = true,
						["Tailoring"] = true,
						["Suramar"] = true,
						["The Hunt for Illidan Stormrage"] = true,
						["Darkmoon Faire"] = true,
						["Bonus Objectives"] = false,
						["Battle Pets"] = true,
						["Deadwind Pass"] = true,
						["Trial of Valor"] = true,
						["Black Rook Hold"] = false,
					},
				},
			},
			["profiles"] = {
				["Default"] = {
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
					["ConfirmQuestAbandons"] = false,
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
	},
	["profileKeys"] = {
		["Praerend - Proudmoore"] = "Default",
		["Rahran - Proudmoore"] = "Default",
		["Morifa - Proudmoore"] = "Default",
		["Amranar - Proudmoore"] = "Default",
		["Farahn - Proudmoore"] = "Default",
		["Mallusof - Proudmoore"] = "Default",
		["Mallusof - Tichondrius"] = "Default",
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
