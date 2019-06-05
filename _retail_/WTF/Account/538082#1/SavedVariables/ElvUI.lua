
ElvDB = {
	["profileKeys"] = {
		["Weston - Icecrown"] = "Healer",
		["Faerand - Icecrown"] = "Healer",
		["Praerend - Icecrown"] = "Healer",
		["Zearthan - Icecrown"] = "Healer",
		["Farahn - Icecrown"] = "Healer",
		["Kaldorath - Icecrown"] = "Healer",
		["Thedodrouk - Icecrown"] = "Healer",
		["Korugen - Icecrown"] = "Healer",
		["Miriyal - Icecrown"] = "Healer",
		["Kindhoof - Tichondrius"] = "Healer",
		["Greybone - Icecrown"] = "Healer",
		["Rahran - Icecrown"] = "Healer",
		["Alura - Tichondrius"] = "Healer",
		["Mallusof - Icecrown"] = "Healer",
	},
	["gold"] = {
		["Frostwolf"] = {
			["Luugo"] = 0,
		},
		["Icecrown"] = {
			["Miriyal"] = 342065545,
			["Farahn"] = 211180832,
			["Greybone"] = 1006986327,
			["Faerand"] = 333606961,
			["Korugen"] = 104526455,
			["Rahran"] = 622300025,
			["Zearthan"] = 131022154,
			["Mallusof"] = 2296782299,
			["Kaldorath"] = 1284418582,
			["Thedodrouk"] = 123779300,
			["Weston"] = 12676693,
			["Praerend"] = 805934294,
		},
		["Tichondrius"] = {
			["Alura"] = 3667278,
			["Kindhoof"] = 1165307403,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["Frostwolf"] = {
			["Luugo"] = "WARRIOR",
		},
		["Icecrown"] = {
			["Miriyal"] = "MONK",
			["Farahn"] = "SHAMAN",
			["Greybone"] = "DEATHKNIGHT",
			["Faerand"] = "HUNTER",
			["Korugen"] = "PALADIN",
			["Rahran"] = "ROGUE",
			["Zearthan"] = "WARLOCK",
			["Mallusof"] = "PRIEST",
			["Kaldorath"] = "DEMONHUNTER",
			["Thedodrouk"] = "MAGE",
			["Weston"] = "DRUID",
			["Praerend"] = "WARRIOR",
		},
		["Tichondrius"] = {
			["Alura"] = "PRIEST",
			["Kindhoof"] = "PALADIN",
		},
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["ElvUI_Explosives"] = {
				},
				["Explosives"] = {
				},
				["ElvUI_Boss"] = {
				},
				["ElvUI_NonTarget"] = {
				},
				["ElvUI_Target"] = {
				},
				["Boss"] = {
				},
			},
		},
		["general"] = {
			["showMissingTalentAlert"] = true,
			["AceGUI"] = {
				["top"] = 966,
				["height"] = 677,
				["left"] = 988,
				["width"] = 872,
			},
			["locale"] = "enUS",
			["UIScale"] = 0.71111,
		},
		["unitframe"] = {
			["aurafilters"] = {
				["Whitelist"] = {
					["spells"] = {
						["Renew"] = {
							["enable"] = true,
							["priority"] = 0,
							["stackThreshold"] = 0,
						},
					},
				},
			},
			["ChannelTicks"] = {
				[47540] = 4,
			},
		},
	},
	["profiles"] = {
		["Healer"] = {
			["databars"] = {
				["reputation"] = {
					["textFormat"] = "REM",
					["enable"] = true,
					["width"] = 222,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
				},
				["azerite"] = {
					["textFormat"] = "REM",
					["width"] = 222,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
				},
				["experience"] = {
					["width"] = 348,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["height"] = 10,
				},
				["honor"] = {
					["textFormat"] = "REM",
					["height"] = 10,
					["width"] = 222,
					["orientation"] = "HORIZONTAL",
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["spacing"] = 8,
					["enable"] = false,
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
				},
				["backdropfadecolor"] = {
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["font"] = "Arial Narrow",
				["altPowerBar"] = {
					["width"] = 248,
				},
				["minimap"] = {
					["locationFont"] = "Arial Narrow",
					["locationText"] = "SHOW",
					["icons"] = {
						["difficulty"] = {
							["yOffset"] = 1,
						},
						["classHall"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 220,
				},
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["objectiveFrameHeight"] = 400,
				["talkingHeadFrameScale"] = 1,
				["objectiveFrameAutoHide"] = false,
				["bonusObjectivePosition"] = "AUTO",
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["tabFont"] = "Arial Narrow",
				["font"] = "Arial Narrow",
				["tapFontSize"] = 12,
				["panelWidth"] = 472,
				["fontSize"] = 12,
				["panelColorConverted"] = true,
				["panelHeight"] = 236,
				["timeStampFormat"] = "%H:%M ",
			},
			["layoutSet"] = "healer",
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,317",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,202,373",
				["GMMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,335",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-381,251",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,539,-26",
				["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-381,251",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,115,503",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,243,329",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-184",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,43",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,350",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,507",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-4",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,314",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,475,133",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,475,27",
				["BelowMinimapContainerMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-37,375",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,170,-203",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-264",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-318,328",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-1,139",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-92,57",
				["ElvNP_PlayerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,557,-137",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-250,-266",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-318,350",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-51,-274",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,272",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,419,-71",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,67",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-308",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,4",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-249,-265",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,243,348",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,273",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,248",
				["AlertFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-536,-274",
				["DebuffsMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,263,276",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,248,385",
			},
			["gridSize"] = 50,
			["tooltip"] = {
				["healthBar"] = {
					["font"] = "Arial Narrow",
					["fontOutline"] = "MONOCHROMEOUTLINE",
					["height"] = 12,
				},
				["font"] = "Arial Narrow",
				["fontSize"] = 12,
			},
			["unitframe"] = {
				["statusbar"] = "Blizzard",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = -16,
							["numrows"] = 1,
							["maxDuration"] = 300,
						},
						["width"] = 246,
						["infoPanel"] = {
							["height"] = 17,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current][health:percent]",
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["height"] = 60,
						["buffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = 16,
							["maxDuration"] = 300,
						},
						["castbar"] = {
							["width"] = 246,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 14,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 270,
							["iconSize"] = 32,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["party"] = {
						["height"] = 74,
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Arial Narrow",
						},
						["power"] = {
							["height"] = 13,
						},
						["width"] = 231,
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Arial Narrow",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 270,
						["castbar"] = {
							["width"] = 270,
						},
					},
					["target"] = {
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 350,
							["height"] = 28,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
							["height"] = 15,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["orientation"] = "LEFT",
					},
					["raid"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "BOTTOMLEFT",
							["xOffset"] = 2,
						},
						["visibility"] = "[nogroup] hide;show",
						["enable"] = false,
						["rdebuffs"] = {
							["xOffset"] = 30,
							["yOffset"] = 25,
							["font"] = "Arial Narrow",
							["size"] = 30,
						},
						["growthDirection"] = "RIGHT_UP",
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["width"] = 92,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["numGroups"] = 8,
					},
					["player"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 350,
							["height"] = 28,
						},
						["classbar"] = {
							["height"] = 14,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["xOffset"] = 0,
							["position"] = "CENTER",
							["height"] = 15,
							["attachTextTo"] = "Power",
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 250,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["position"] = "CENTER",
							["xOffset"] = 0,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "TOPLEFT",
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
							["height"] = 4,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
				},
				["smoothbars"] = true,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["customhealthbackdrop"] = true,
					["healthMultiplier"] = 0.75,
					["auraBarTurtle"] = false,
					["castColor"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 0,
					},
					["health"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 0,
					},
					["health_backdrop"] = {
						["b"] = 0.298039215686275,
						["g"] = 0.298039215686275,
						["r"] = 0.298039215686275,
					},
					["auraBarByType"] = false,
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Arial Narrow",
				["thinBorders"] = true,
			},
			["datatexts"] = {
				["time24"] = true,
				["panels"] = {
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Arial Narrow",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonspacing"] = 1,
					["enabled"] = false,
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 50,
					["visibility"] = "[petbattle] hide; show",
				},
				["desaturateOnCooldown"] = true,
				["keyDown"] = false,
				["font"] = "Arial Narrow",
				["useDrawSwipeOnCharges"] = true,
				["barPet"] = {
					["buttonsPerRow"] = 10,
					["buttonsize"] = 24,
				},
				["backdropSpacingConverted"] = true,
				["bar1"] = {
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 35,
				},
				["bar2"] = {
					["buttonspacing"] = 1,
					["enabled"] = true,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 35,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar5"] = {
					["enabled"] = false,
					["visibility"] = "[petbattle] hide; show",
				},
				["lockActionBars"] = false,
				["bar6"] = {
					["visibility"] = "[petbattle] hide; show",
				},
				["macrotext"] = true,
				["bar4"] = {
					["enabled"] = false,
					["visibility"] = "[petbattle] hide; show",
				},
			},
			["nameplates"] = {
				["highlight"] = false,
				["nonTargetTransparency"] = 1,
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["useStaticPosition"] = true,
						["visibility"] = {
							["showInCombat"] = false,
						},
					},
				},
				["font"] = "Arial Narrow",
			},
			["bags"] = {
				["itemLevelFont"] = "Arial Narrow",
				["bagSize"] = 42,
				["itemLevelCustomColorEnable"] = true,
				["junkIcon"] = true,
				["bankSize"] = 30,
				["itemLevelFontOutline"] = "OUTLINE",
				["useBlizzardCleanup"] = true,
				["countFontSize"] = 12,
				["itemLevelFontSize"] = 12,
				["bagWidth"] = 474,
				["scrapIcon"] = true,
				["countFont"] = "Arial Narrow",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["bankWidth"] = 474,
				["clearSearchOnClose"] = true,
				["showBindType"] = true,
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["size"] = 36,
				},
				["font"] = "Arial Narrow",
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["size"] = 40,
				},
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Luugo - Frostwolf"] = "Luugo - Frostwolf",
		["Weston - Icecrown"] = "Weston - Icecrown",
		["Farahn - Icecrown"] = "Farahn - Icecrown",
		["Praerend - Icecrown"] = "Praerend - Icecrown",
		["Zearthan - Icecrown"] = "Zearthan - Icecrown",
		["Faerand - Icecrown"] = "Faerand - Icecrown",
		["Kaldorath - Icecrown"] = "Kaldorath - Icecrown",
		["Thedodrouk - Icecrown"] = "Thedodrouk - Icecrown",
		["Korugen - Icecrown"] = "Korugen - Icecrown",
		["Miriyal - Icecrown"] = "Miriyal - Icecrown",
		["Kindhoof - Tichondrius"] = "Kindhoof - Tichondrius",
		["Greybone - Icecrown"] = "Greybone - Icecrown",
		["Rahran - Icecrown"] = "Rahran - Icecrown",
		["Alura - Tichondrius"] = "Alura - Tichondrius",
		["Mallusof - Icecrown"] = "Mallusof - Icecrown",
	},
	["profiles"] = {
		["Luugo - Frostwolf"] = {
		},
		["Weston - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Farahn - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Praerend - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Zearthan - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Faerand - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Kaldorath - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Thedodrouk - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Korugen - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Miriyal - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Kindhoof - Tichondrius"] = {
			["install_complete"] = "11.01",
		},
		["Greybone - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Rahran - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Alura - Tichondrius"] = {
			["general"] = {
				["glossTex"] = "Blizzard",
				["normTex"] = "Blizzard",
			},
			["install_complete"] = "11.12",
		},
		["Mallusof - Icecrown"] = {
			["general"] = {
				["minimap"] = {
					["hideCalendar"] = false,
				},
				["normTex"] = "Blizzard",
				["dmgfont"] = "Arial Narrow",
				["namefont"] = "Arial Narrow",
				["chatBubbleName"] = true,
				["glossTex"] = "Blizzard",
			},
			["theme"] = "default",
			["install_complete"] = "10.92",
		},
	},
}
