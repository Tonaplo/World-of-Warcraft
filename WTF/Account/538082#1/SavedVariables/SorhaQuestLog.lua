
SorhaQuestLogDB = {
	["namespaces"] = {
		["QuestTracker"] = {
			["char"] = {
				["Praerend - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Artifact"] = false,
						["Blacksmithing"] = false,
						["Stormheim"] = false,
						["Warrior Campaign"] = false,
						["World Quests"] = false,
						["Auchindoun"] = false,
						["Spires of Arak"] = false,
						["Bonus Objectives"] = false,
						["Cooking"] = false,
						["Ironforge"] = false,
						["The Ruby Sanctum"] = false,
						["Jewelcrafting"] = false,
						["Battle Pets"] = false,
						["The Nexus"] = false,
						["Garrison Campaign"] = false,
						["End Time"] = false,
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
						["Herbalism"] = true,
						["World Quests"] = false,
						["Cooking"] = true,
						["Azsuna"] = true,
						["Bonus Objectives"] = false,
						["Suramar"] = true,
						["Brawler's Guild"] = true,
						["Artifact"] = true,
						["Shattrath City"] = true,
						["Battle Pets"] = true,
						["Dalaran"] = true,
						["Druid Campaign"] = true,
						["Alchemy"] = true,
					},
				},
				["Farahn - Proudmoore"] = {
					["ZoneIsCollapsed"] = {
						["Engineering"] = true,
						["Battle Pets"] = true,
						["Azsuna"] = true,
						["Bonus Objectives"] = false,
						["World Quests"] = false,
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
						["Moon Guard Stronghold"] = true,
						["World Quests"] = false,
						["Hallow's End"] = true,
						["The Emerald Nightmare"] = true,
						["Shattrath City"] = true,
						["Bonus Objectives"] = false,
						["Battle Pets"] = true,
						["Darkmoon Faire"] = true,
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
