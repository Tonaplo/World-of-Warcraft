
EasyFramesDB = {
	["profileKeys"] = {
		["Praerend - Icecrown"] = "Default",
		["Alura - Tichondrius"] = "Healers",
		["Mallusof - Icecrown"] = "DPS",
	},
	["profiles"] = {
		["Healers"] = {
			["target"] = {
				["portrait"] = "1",
				["showNameInsideFrame"] = true,
			},
			["player"] = {
				["showRoleIcon"] = true,
				["showStatusTexture"] = true,
				["portrait"] = "1",
				["showNameInsideFrame"] = true,
			},
			["general"] = {
				["framesPoints"] = {
					["target"] = {
						"CENTER", -- [1]
						nil, -- [2]
						"CENTER", -- [3]
						309, -- [4]
						-170, -- [5]
					},
					["player"] = {
						"CENTER", -- [1]
						nil, -- [2]
						"CENTER", -- [3]
						-342.000030517578, -- [4]
						-170, -- [5]
					},
					["focus"] = {
						"TOPLEFT", -- [1]
						{
							["variablesLoaded"] = true,
							["firstTimeLoaded"] = 1,
						}, -- [2]
						"TOPLEFT", -- [3]
						250.000015258789, -- [4]
						-240, -- [5]
					},
				},
				["frameToSetPoints"] = "focus",
			},
			["focus"] = {
				["portrait"] = "1",
				["showNameInsideFrame"] = true,
			},
		},
		["DPS"] = {
			["player"] = {
				["healthBarFontFamily"] = "Friz Quadrata TT",
				["manaFormat"] = "2",
				["portrait"] = "1",
				["playerNameFontFamily"] = "Friz Quadrata TT",
				["showStatusTexture"] = false,
				["showHitIndicator"] = true,
				["useManaFormatFullValues"] = false,
				["showAttackBackground"] = true,
				["attackBackgroundOpacity"] = 0.7,
				["useHealthFormatFullValues"] = false,
				["showSpecialbar"] = true,
				["manaBarFontStyle"] = "OUTLINE",
				["showPVPIcon"] = true,
				["playerNameFontSize"] = 10,
				["customHealthFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["showGroupIndicator"] = true,
				["showNameInsideFrame"] = true,
				["showRestIcon"] = true,
				["showRoleIcon"] = false,
				["healthFormat"] = "3",
				["manaBarFontSize"] = 10,
				["scaleFrame"] = 1.2,
				["customManaFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["showName"] = true,
				["manaBarFontFamily"] = "Friz Quadrata TT",
				["customManaFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["customHealthFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["healthBarFontSize"] = 10,
				["healthBarFontStyle"] = "OUTLINE",
				["playerNameFontStyle"] = "NONE",
			},
			["general"] = {
				["lightTexture"] = false,
				["maxBuffCount"] = 32,
				["enemyFrameDefaultColors"] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				["colorBasedOnCurrentHealth"] = false,
				["highlightDispelledBuff"] = true,
				["classColored"] = true,
				["maxDebuffCount"] = 16,
				["framesPoints"] = {
					["target"] = {
						"CENTER", -- [1]
						nil, -- [2]
						"CENTER", -- [3]
						200, -- [4]
						-170, -- [5]
					},
					["player"] = {
						"CENTER", -- [1]
						nil, -- [2]
						"CENTER", -- [3]
						-200, -- [4]
						-170, -- [5]
					},
					["focus"] = {
						"TOPLEFT", -- [1]
						{
							["variablesLoaded"] = true,
							["firstTimeLoaded"] = 1,
						}, -- [2]
						"TOPLEFT", -- [3]
						250.000015258789, -- [4]
						-240, -- [5]
					},
				},
				["selfBuffSize"] = 28,
				["showOnlyMyDebuff"] = false,
				["neutralFrameDefaultColors"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["hideOutOfCombatOpacity"] = 0.1,
				["showWelcomeMessage"] = true,
				["classPortraits"] = true,
				["barTexture"] = "Blizzard",
				["forceManaBarTexture"] = false,
				["friendlyFrameDefaultColors"] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["dispelledBuffScale"] = 1,
				["frameToSetPoints"] = "target",
				["brightFrameBorder"] = 1,
				["ifPlayerCanDispelBuff"] = false,
				["hideOutOfCombat"] = false,
				["customBuffSize"] = true,
				["hideOutOfCombatWithFullHP"] = false,
				["buffSize"] = 22,
			},
			["focus"] = {
				["healthBarFontFamily"] = "Friz Quadrata TT",
				["manaFormat"] = "2",
				["scaleFrame"] = 1.2,
				["showToTFrame"] = true,
				["useHealthFormatFullValues"] = false,
				["showAttackBackground"] = false,
				["showNameInsideFrame"] = true,
				["reverseDirectionLosingHP"] = false,
				["showPVPIcon"] = true,
				["focusNameFontFamily"] = "Friz Quadrata TT",
				["customHealthFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["focusNameFontSize"] = 10,
				["customManaFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["attackBackgroundOpacity"] = 0.7,
				["focusNameFontStyle"] = "NONE",
				["healthFormat"] = "3",
				["manaBarFontSize"] = 10,
				["customManaFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["useManaFormatFullValues"] = false,
				["showName"] = true,
				["manaBarFontStyle"] = "OUTLINE",
				["healthBarFontSize"] = 10,
				["customHealthFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["portrait"] = "1",
				["healthBarFontStyle"] = "OUTLINE",
				["manaBarFontFamily"] = "Friz Quadrata TT",
			},
			["target"] = {
				["healthBarFontFamily"] = "Friz Quadrata TT",
				["manaFormat"] = "2",
				["scaleFrame"] = 1.2,
				["showToTFrame"] = true,
				["targetNameFontFamily"] = "Friz Quadrata TT",
				["useHealthFormatFullValues"] = false,
				["showAttackBackground"] = false,
				["attackBackgroundOpacity"] = 0.7,
				["reverseDirectionLosingHP"] = false,
				["showPVPIcon"] = true,
				["manaBarFontFamily"] = "Friz Quadrata TT",
				["customHealthFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["customManaFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["customManaFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["targetNameFontSize"] = 10,
				["healthFormat"] = "3",
				["targetNameFontStyle"] = "NONE",
				["manaBarFontSize"] = 10,
				["showTargetCastbar"] = false,
				["useManaFormatFullValues"] = false,
				["showName"] = true,
				["portrait"] = "1",
				["healthBarFontSize"] = 10,
				["customHealthFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["manaBarFontStyle"] = "OUTLINE",
				["healthBarFontStyle"] = "OUTLINE",
				["showNameInsideFrame"] = true,
			},
			["pet"] = {
				["healthBarFontFamily"] = "Friz Quadrata TT",
				["customPoints"] = false,
				["petNameFontFamily"] = "Friz Quadrata TT",
				["showStatusTexture"] = true,
				["petNameFontSize"] = 10,
				["useManaFormatFullValues"] = false,
				["showAttackBackground"] = true,
				["lockedMovableFrame"] = true,
				["showHitIndicator"] = true,
				["customHealthFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["useHealthFormatFullValues"] = false,
				["manaFormat"] = "2",
				["attackBackgroundOpacity"] = 0.7,
				["customManaFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["healthFormat"] = "2",
				["manaBarFontSize"] = 9,
				["scaleFrame"] = 1,
				["customManaFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["showName"] = true,
				["manaBarFontFamily"] = "Friz Quadrata TT",
				["healthBarFontSize"] = 9,
				["customHealthFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["manaBarFontStyle"] = "OUTLINE",
				["healthBarFontStyle"] = "OUTLINE",
				["petNameFontStyle"] = "NONE",
			},
			["party"] = {
				["healthBarFontFamily"] = "Friz Quadrata TT",
				["manaFormat"] = "2",
				["scaleFrame"] = 1.2,
				["useHealthFormatFullValues"] = false,
				["partyNameFontFamily"] = "Friz Quadrata TT",
				["partyNameFontSize"] = 10,
				["customHealthFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["manaBarFontFamily"] = "Friz Quadrata TT",
				["useManaFormatFullValues"] = false,
				["healthFormat"] = "2",
				["manaBarFontSize"] = 9,
				["partyNameFontStyle"] = "NONE",
				["customManaFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["showName"] = true,
				["manaBarFontStyle"] = "OUTLINE",
				["customManaFormat"] = "%CURRENT% / %MAX% (%PERCENT%%)",
				["customHealthFormatFormulas"] = {
					["gt10M"] = "%.fM",
					["gt1B"] = "%.fB",
					["gt100T"] = "%.fk",
					["gt100M"] = "%.fM",
					["gt1T"] = "%.fk",
					["gt1M"] = "%.1fM",
				},
				["healthBarFontSize"] = 9,
				["healthBarFontStyle"] = "OUTLINE",
				["showPetFrames"] = true,
			},
		},
		["Default"] = {
		},
		["healer"] = {
			["target"] = {
				["portrait"] = "1",
				["showNameInsideFrame"] = true,
			},
			["player"] = {
				["showRoleIcon"] = true,
				["showStatusTexture"] = true,
				["portrait"] = "1",
				["showNameInsideFrame"] = true,
			},
			["general"] = {
				["framesPoints"] = {
					["target"] = {
						"CENTER", -- [1]
						nil, -- [2]
						"CENTER", -- [3]
						309, -- [4]
						-170, -- [5]
					},
					["player"] = {
						"CENTER", -- [1]
						nil, -- [2]
						"CENTER", -- [3]
						-342.000030517578, -- [4]
						-170, -- [5]
					},
					["focus"] = {
						"TOPLEFT", -- [1]
						{
							["variablesLoaded"] = true,
							["firstTimeLoaded"] = 1,
						}, -- [2]
						"TOPLEFT", -- [3]
						250.000015258789, -- [4]
						-240, -- [5]
					},
				},
				["frameToSetPoints"] = "focus",
			},
			["focus"] = {
				["showNameInsideFrame"] = true,
				["portrait"] = "1",
			},
		},
	},
}
