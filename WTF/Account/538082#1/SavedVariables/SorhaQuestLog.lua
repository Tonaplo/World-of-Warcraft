
SorhaQuestLogDB = {
	["namespaces"] = {
		["QuestTracker"] = {
			["char"] = {
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
			},
			["profiles"] = {
				["Default"] = {
					["ConfirmQuestAbandons"] = false,
					["MinionLocation"] = {
						["Y"] = 184.19905090332,
						["X"] = -265.305877685547,
						["Point"] = "RIGHT",
						["RelativePoint"] = "RIGHT",
					},
					["Fonts"] = {
						["QuestFont"] = "Prototype",
						["HeaderFont"] = "Prototype",
						["ObjectiveFont"] = "Prototype",
						["MinionTitleFont"] = "Prototype",
					},
					["ZonesAndQuests"] = {
						["QuestTitleIndent"] = 15,
						["CollapseOnLeave"] = true,
						["ObjectiveTextLast"] = true,
						["ExpandOnEnter"] = true,
						["DisplayPOITag"] = true,
						["ShowQuestLevels"] = false,
						["QuestAfterPadding"] = 1,
						["ObjectivesIndent"] = 5,
						["ShowDescWhenNoObjectives"] = true,
					},
				},
			},
		},
		["ScenarioTracker"] = {
			["profiles"] = {
				["Default"] = {
					["ShowTitle"] = false,
					["MinionLocation"] = {
						["Y"] = -250.949127197266,
						["X"] = -177.044723510742,
						["Point"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["MinionParent"] = "SQLAchievementMinionBottom",
					["Fonts"] = {
						["ScenarioTaskFont"] = "Prototype",
						["ScenarioObjectiveFont"] = "Prototype",
						["ScenarioHeaderFont"] = "Prototype",
						["MinionTitleFont"] = "Prototype",
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
					["MinionLocation"] = {
						["Y"] = 184.966400146484,
						["X"] = -95.6901473999024,
						["Point"] = "RIGHT",
						["RelativePoint"] = "RIGHT",
					},
					["ShowTitle"] = false,
					["MinionParent"] = "SQLQuestMinionBottom",
					["Fonts"] = {
						["AchievementTitleFont"] = "Prototype",
						["MinionTitleFont"] = "Prototype",
						["AchievementObjectiveFont"] = "Prototype",
					},
				},
			},
		},
	},
	["profileKeys"] = {
		["Mallusof - Proudmoore"] = "Default",
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
