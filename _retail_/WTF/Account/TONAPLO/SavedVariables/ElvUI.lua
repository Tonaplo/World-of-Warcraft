
ElvDB = {
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
				[47540] = 3,
			},
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
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
		["Ragnaros"] = {
			["Elyrianna"] = "MAGE",
			["Puukaa"] = "DRUID",
			["Alurana"] = "PRIEST",
			["Miriyam"] = "MONK",
			["Amranar"] = "DRUID",
			["Granjior"] = "PALADIN",
			["Kindhoof"] = "PALADIN",
			["Volgor"] = "ROGUE",
			["Skyreacher"] = "SHAMAN",
			["Grommarg"] = "WARRIOR",
			["Deminath"] = "WARLOCK",
			["Morifa"] = "MAGE",
			["Navraj"] = "SHAMAN",
		},
		["Silvermoon"] = {
			["Algalonheal"] = "MONK",
			["Greyblood"] = "DEATHKNIGHT",
			["Praerend"] = "WARRIOR",
			["Faerand"] = "HUNTER",
			["Miriyam"] = "MONK",
			["Burdett"] = "DRUID",
			["Korugen"] = "PALADIN",
			["Rahran"] = "ROGUE",
			["Zearthan"] = "WARLOCK",
			["Kaldowrath"] = "DEMONHUNTER",
			["Vetold"] = "WARRIOR",
			["Mallusof"] = "PRIEST",
			["Amranar"] = "DRUID",
			["Thedodrouk"] = "MAGE",
			["Mogfarmer"] = "PRIEST",
			["Thorlan"] = "SHAMAN",
		},
		["Frostwolf"] = {
			["Luugo"] = "WARRIOR",
		},
	},
	["profiles"] = {
		["Algalonheal - Silvermoon"] = {
			["currentTutorial"] = 1,
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Auction"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["textFormat"] = "REM",
				},
				["honor"] = {
					["textFormat"] = "REM",
				},
				["azerite"] = {
					["textFormat"] = "REM",
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
				},
				["threat"] = {
					["enable"] = false,
				},
				["loginmessage"] = false,
				["talkingHeadFrameScale"] = 1,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["talkingHeadFrameBackdrop"] = true,
				["minimap"] = {
					["locationText"] = "SHOW",
					["locationFont"] = "Arial Narrow",
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
				["bonusObjectivePosition"] = "AUTO",
				["font"] = "Arial Narrow",
				["altPowerBar"] = {
					["width"] = 270,
				},
				["backdropfadecolor"] = {
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["objectiveFrameHeight"] = 400,
				["resurrectSound"] = true,
				["bottomPanel"] = false,
				["afk"] = false,
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-308,300",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,203,374",
				["GMMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,335",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,174",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,539,-26",
				["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,112",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,5,737",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,115,503",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,243,329",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-184",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,43",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,350",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,507",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,5,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-4",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,248,385",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,475,133",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,475,27",
				["BelowMinimapContainerMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-37,375",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,170,-203",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-92,57",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-308,328",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-1,139",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-264",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,419,-71",
				["ElvNP_PlayerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,557,-137",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,243,348",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-51,-274",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,272",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,5,272",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,67",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,322",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,4",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-308",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-249,-265",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-308,350",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-250,-266",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,5,248",
				["AlertFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-536,-274",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-226,-195",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,286",
			},
			["gridSize"] = 50,
			["v11NamePlateReset"] = true,
			["chat"] = {
				["font"] = "Arial Narrow",
				["panelColorConverted"] = true,
				["fontSize"] = 12,
				["panelHeight"] = 236,
				["tabFont"] = "Arial Narrow",
				["timeStampFormat"] = "%H:%M ",
				["tapFontSize"] = 12,
				["panelWidth"] = 472,
			},
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Arial Narrow",
					["fontOutline"] = "MONOCHROMEOUTLINE",
				},
				["font"] = "Arial Narrow",
			},
			["unitframe"] = {
				["font"] = "Arial Narrow",
				["colors"] = {
					["customhealthbackdrop"] = true,
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["healthMultiplier"] = 0.75,
					["castColor"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 1,
					},
					["auraBarByType"] = false,
					["auraBarTurtle"] = false,
					["health_backdrop"] = {
						["r"] = 0.298039215686275,
						["g"] = 0.298039215686275,
						["b"] = 0.298039215686275,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Blizzard",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "TOPRIGHT",
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
							["height"] = 4,
						},
						["width"] = 270,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
					["party"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["height"] = 13,
						},
						["height"] = 74,
						["rdebuffs"] = {
							["font"] = "Arial Narrow",
						},
						["enable"] = false,
						["width"] = 231,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 50,
							["text_format"] = "[namecolor][name]",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["enable"] = true,
							["style"] = "2D",
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 15,
							["position"] = "CENTER",
						},
						["orientation"] = "LEFT",
						["castbar"] = {
							["height"] = 28,
							["insideInfoPanel"] = false,
						},
						["disableMouseoverGlow"] = true,
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["power"] = {
							["attachTextTo"] = "Power",
							["xOffset"] = 0,
							["height"] = 15,
							["position"] = "CENTER",
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "CENTER",
							["xOffset"] = 0,
							["bgUseBarTexture"] = false,
						},
						["castbar"] = {
							["height"] = 28,
							["insideInfoPanel"] = false,
							["width"] = 272,
						},
						["classbar"] = {
							["height"] = 14,
						},
						["disableMouseoverGlow"] = true,
						["CombatIcon"] = {
							["anchorPoint"] = "TOPLEFT",
						},
						["aurabar"] = {
							["enable"] = false,
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
						["width"] = 270,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 270,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Arial Narrow",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["width"] = 92,
						["visibility"] = "[nogroup] hide;show",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current][health:percent]",
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["width"] = 246,
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
						},
						["disableTargetGlow"] = false,
						["castbar"] = {
							["iconSize"] = 32,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 270,
					},
				},
			},
			["datatexts"] = {
				["font"] = "Arial Narrow",
				["panels"] = {
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 50,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar6"] = {
					["visibility"] = "[petbattle] hide; show",
				},
				["bar2"] = {
					["enabled"] = true,
					["point"] = "TOPLEFT",
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 35,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 4,
					["point"] = "TOPLEFT",
					["buttonsize"] = 35,
				},
				["bar5"] = {
					["enabled"] = false,
					["visibility"] = "[petbattle] hide; show",
				},
				["lockActionBars"] = false,
				["keyDown"] = false,
				["font"] = "Arial Narrow",
				["desaturateOnCooldown"] = true,
				["useDrawSwipeOnCharges"] = true,
				["macrotext"] = true,
				["backdropSpacingConverted"] = true,
				["barPet"] = {
					["buttonsize"] = 24,
					["buttonsPerRow"] = 10,
				},
				["bar4"] = {
					["enabled"] = false,
					["visibility"] = "[petbattle] hide; show",
				},
			},
			["layoutSet"] = "healer",
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Arial Narrow",
				["itemLevelFont"] = "Arial Narrow",
				["clearSearchOnClose"] = true,
				["countFontSize"] = 12,
				["bankSize"] = 30,
				["itemLevelCustomColorEnable"] = true,
				["bagSize"] = 42,
				["itemLevelFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["useBlizzardCleanup"] = true,
				["showBindType"] = true,
				["scrapIcon"] = true,
				["bagWidth"] = 474,
			},
			["nameplates"] = {
				["font"] = "Arial Narrow",
				["highlight"] = false,
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["nonTargetTransparency"] = 1,
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["visibility"] = {
							["showInCombat"] = false,
						},
						["useStaticPosition"] = true,
					},
				},
			},
			["auras"] = {
				["font"] = "Arial Narrow",
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["size"] = 36,
				},
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["size"] = 40,
				},
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["font"] = "Expressway",
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bags"] = {
				["countFontSize"] = 9,
				["itemLevelFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.80000001192093,
					["b"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["r"] = 0.058823529411765,
				},
				["tabFontSize"] = 11,
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["fadeTabsNoBackdrop"] = false,
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelBackdrop"] = "HIDEBOTH",
			},
			["unitframe"] = {
				["fontSize"] = 9,
				["fontOutline"] = "THICKOUTLINE",
				["statusbar"] = "ElvUI Blank",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "TOP",
							["yOffset"] = -2,
						},
						["height"] = 50,
						["width"] = 122,
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["width"] = 122,
					},
					["player"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["perrow"] = 7,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["height"] = 35,
							["iconAttached"] = false,
							["width"] = 478,
						},
						["height"] = 80,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["anchorPoint"] = "BOTTOM",
							["numrows"] = 4,
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["healPrediction"] = {
							["enable"] = true,
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["height"] = 59,
						["verticalSpacing"] = 0,
						["width"] = 110,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 17,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["threatStyle"] = "NONE",
						["width"] = 189,
					},
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["spacing"] = 26,
						["castbar"] = {
							["width"] = 246,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["name"] = {
							["position"] = "LEFT",
						},
						["groupsPerRowCol"] = 5,
						["height"] = 28,
						["health"] = {
							["yOffset"] = -6,
						},
						["visibility"] = "[nogroup] hide;show",
						["width"] = 140,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["font"] = "Expressway",
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["BottomMiniPanel"] = "Time",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["headerFontSize"] = 11,
				["fontSize"] = 11,
				["smallTextFontSize"] = 11,
			},
			["v11NamePlateReset"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["font"] = "Expressway",
				["buffs"] = {
					["countFontSize"] = 11,
					["maxWraps"] = 2,
					["durationFontSize"] = 11,
				},
			},
		},
		["Healer"] = {
			["databars"] = {
				["reputation"] = {
					["textFormat"] = "REM",
					["enable"] = true,
				},
				["azerite"] = {
					["textFormat"] = "REM",
				},
				["honor"] = {
					["textFormat"] = "REM",
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
				["font"] = "Arial Narrow",
				["altPowerBar"] = {
					["width"] = 270,
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
				["bonusObjectivePosition"] = "AUTO",
				["resurrectSound"] = true,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["tabFont"] = "Arial Narrow",
				["font"] = "Arial Narrow",
				["panelWidth"] = 472,
				["panelHeight"] = 236,
				["timeStampFormat"] = "%H:%M ",
				["tapFontSize"] = 12,
				["fontSize"] = 12,
				["panelColorConverted"] = true,
			},
			["layoutSet"] = "healer",
			["gridSize"] = 50,
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["font"] = "Arial Narrow",
					["fontOutline"] = "MONOCHROMEOUTLINE",
					["height"] = 12,
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
				["clearSearchOnClose"] = true,
				["bankWidth"] = 474,
				["showBindType"] = true,
			},
			["unitframe"] = {
				["smoothbars"] = true,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 14,
						},
						["castbar"] = {
							["iconSize"] = 32,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
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
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "TOPRIGHT",
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
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["classbar"] = {
							["height"] = 14,
						},
						["disableMouseoverGlow"] = true,
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 272,
							["height"] = 28,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
							["height"] = 15,
							["xOffset"] = 0,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["xOffset"] = 0,
							["position"] = "CENTER",
							["bgUseBarTexture"] = false,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "TOPLEFT",
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
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
							["height"] = 15,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["height"] = 28,
						},
						["disableMouseoverGlow"] = true,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
							["xOffset"] = 50,
							["text_format"] = "[namecolor][name]",
						},
						["portrait"] = {
							["enable"] = true,
							["style"] = "2D",
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
							["xOffset"] = 0,
							["size"] = 12,
						},
						["width"] = 92,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["numGroups"] = 8,
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = -16,
							["maxDuration"] = 300,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["width"] = 246,
						["infoPanel"] = {
							["height"] = 17,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current][health:percent]",
						},
						["height"] = 60,
						["buffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = 16,
							["maxDuration"] = 300,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
				["font"] = "Arial Narrow",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["customhealthbackdrop"] = true,
					["auraBarByType"] = false,
					["health_backdrop"] = {
						["b"] = 0.298039215686275,
						["g"] = 0.298039215686275,
						["r"] = 0.298039215686275,
					},
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
					["healthMultiplier"] = 0.75,
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Blizzard",
				["thinBorders"] = true,
			},
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["font"] = "Arial Narrow",
				["fontOutline"] = "OUTLINE",
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
				["bar1"] = {
					["buttonspacing"] = 1,
					["point"] = "TOPLEFT",
					["buttonsPerRow"] = 4,
					["buttonsize"] = 35,
				},
				["font"] = "Arial Narrow",
				["useDrawSwipeOnCharges"] = true,
				["barPet"] = {
					["buttonsPerRow"] = 10,
					["buttonsize"] = 24,
				},
				["backdropSpacingConverted"] = true,
				["bar2"] = {
					["buttonspacing"] = 1,
					["enabled"] = true,
					["point"] = "TOPLEFT",
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
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-308,300",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,203,374",
				["GMMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,335",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,174",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,539,-26",
				["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,112",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,5,737",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,115,503",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,243,329",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-184",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,43",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,350",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,507",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,5,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-4",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,286",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,475,133",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,475,27",
				["BelowMinimapContainerMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-37,375",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,170,-203",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-264",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-308,328",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-1,139",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-92,57",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,5,272",
				["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,322",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-308,350",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-51,-274",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,272",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,419,-71",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-250,-266",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,67",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-308",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,4",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-249,-265",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,243,348",
				["ElvNP_PlayerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,557,-137",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,5,248",
				["AlertFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-536,-274",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-226,-195",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,248,385",
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
		["Melee DPS"] = {
			["currentTutorial"] = 1,
			["general"] = {
				["bottomPanel"] = false,
			},
			["movers"] = {
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,315,88",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,314,-491",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["VehicleLeaveButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-341,262",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,35",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-544,191",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,188,-163",
				["ElvUF_PetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,386,-481",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-316,99",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-544,257",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-548,4",
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["unitframe"] = {
				["font"] = "Arial Narrow",
				["units"] = {
					["target"] = {
						["aurabar"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFont"] = "Arial Narrow",
						},
					},
					["player"] = {
						["aurabar"] = {
							["enable"] = false,
						},
					},
				},
			},
			["datatexts"] = {
				["font"] = "Arial Narrow",
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["tooltip"] = {
				["font"] = "Arial Narrow",
			},
		},
		["Default"] = {
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Elyrianna - Ragnaros"] = {
			["currentTutorial"] = 4,
			["v11NamePlateReset"] = true,
		},
	},
	["gold"] = {
		["Icecrown"] = {
			["Miriyal"] = 349767457,
			["Farahn"] = 230742422,
			["Greybone"] = 1057408649,
			["Faerand"] = 331153422,
			["Korugen"] = 155863290,
			["Rahran"] = 675092443,
			["Zearthan"] = 131667803,
			["Mallusof"] = 3328775861,
			["Kaldorath"] = 1299206327,
			["Thedodrouk"] = 138469620,
			["Weston"] = 89043632,
			["Praerend"] = 433018415,
		},
		["Tichondrius"] = {
			["Alura"] = 3667278,
			["Kindhoof"] = 1185891689,
		},
		["Ragnaros"] = {
			["Elyrianna"] = 1390612694,
			["Puukaa"] = 10125,
			["Alurana"] = 10250,
			["Miriyam"] = 3047276,
			["Amranar"] = 20555092,
			["Granjior"] = 12150836,
			["Kindhoof"] = 1011011311,
			["Volgor"] = 5951615,
			["Skyreacher"] = 10125,
			["Grommarg"] = 259210358,
			["Deminath"] = 1644721410,
			["Morifa"] = 4810568,
			["Navraj"] = 46481292,
		},
		["Silvermoon"] = {
			["Algalonheal"] = 2450950,
			["Greyblood"] = 50001666,
			["Praerend"] = 50008392,
			["Faerand"] = 49866879,
			["Miriyam"] = 50006009,
			["Burdett"] = 50002789,
			["Korugen"] = 50005200,
			["Rahran"] = 50004771,
			["Zearthan"] = 50000568,
			["Kaldowrath"] = 50007118,
			["Vetold"] = 10000,
			["Mallusof"] = 11953590077,
			["Amranar"] = 675879547,
			["Thedodrouk"] = 50004745,
			["Mogfarmer"] = 50008209,
			["Thorlan"] = 50003048,
		},
		["Frostwolf"] = {
			["Luugo"] = 0,
		},
	},
	["faction"] = {
		["Silvermoon"] = {
			["Algalonheal"] = "Alliance",
			["Greyblood"] = "Alliance",
			["Praerend"] = "Alliance",
			["Amranar"] = "Alliance",
			["Miriyam"] = "Alliance",
			["Faerand"] = "Alliance",
			["Korugen"] = "Alliance",
			["Rahran"] = "Alliance",
			["Zearthan"] = "Alliance",
			["Kaldowrath"] = "Alliance",
			["Vetold"] = "Alliance",
			["Mallusof"] = "Alliance",
			["Burdett"] = "Alliance",
			["Thedodrouk"] = "Alliance",
			["Mogfarmer"] = "Alliance",
			["Thorlan"] = "Alliance",
		},
		["Ragnaros"] = {
			["Elyrianna"] = "Horde",
			["Puukaa"] = "Horde",
			["Alurana"] = "Horde",
			["Miriyam"] = "Horde",
			["Amranar"] = "Horde",
			["Granjior"] = "Horde",
			["Kindhoof"] = "Horde",
			["Volgor"] = "Horde",
			["Skyreacher"] = "Horde",
			["Grommarg"] = "Horde",
			["Deminath"] = "Horde",
			["Morifa"] = "Horde",
			["Navraj"] = "Horde",
		},
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["profileKeys"] = {
		["Elyrianna - Ragnaros"] = "Elyrianna - Ragnaros",
		["Kaldowrath - Silvermoon"] = "Healer",
		["Puukaa - Ragnaros"] = "Healer",
		["Korugen - Icecrown"] = "Healer",
		["Amranar - Silvermoon"] = "Auction",
		["Korugen - Silvermoon"] = "Healer",
		["Greyblood - Silvermoon"] = "Healer",
		["Amranar - Ragnaros"] = "Default",
		["Algalonheal - Silvermoon"] = "Healer",
		["Thedodrouk - Silvermoon"] = "Healer",
		["Grommarg - Ragnaros"] = "Melee DPS",
		["Praerend - Icecrown"] = "Healer",
		["Zearthan - Icecrown"] = "Healer",
		["Kindhoof - Ragnaros"] = "Healer",
		["Skyreacher - Ragnaros"] = "Healer",
		["Kindhoof - Tichondrius"] = "Healer",
		["Vetold - Silvermoon"] = "Default",
		["Alura - Tichondrius"] = "Healer",
		["Miriyal - Icecrown"] = "Healer",
		["Faerand - Icecrown"] = "Healer",
		["Miriyam - Silvermoon"] = "Healer",
		["Volgor - Ragnaros"] = "Default",
		["Deminath - Ragnaros"] = "Default",
		["Thorlan - Silvermoon"] = "Healer",
		["Navraj - Ragnaros"] = "Default",
		["Burdett - Silvermoon"] = "Healer",
		["Granjior - Ragnaros"] = "Default",
		["Rahran - Icecrown"] = "Healer",
		["Mogfarmer - Silvermoon"] = "Healer",
		["Weston - Icecrown"] = "Healer",
		["Rahran - Silvermoon"] = "Healer",
		["Praerend - Silvermoon"] = "Healer",
		["Faerand - Silvermoon"] = "Healer",
		["Miriyam - Ragnaros"] = "Default",
		["Kaldorath - Icecrown"] = "Healer",
		["Thedodrouk - Icecrown"] = "Healer",
		["Farahn - Icecrown"] = "Healer",
		["Greybone - Icecrown"] = "Healer",
		["Morifa - Ragnaros"] = "Default",
		["Zearthan - Silvermoon"] = "Healer",
		["Alurana - Ragnaros"] = "Healer",
		["Mallusof - Silvermoon"] = "Healer",
		["Mallusof - Icecrown"] = "Healer",
	},
	["serverID"] = {
		[3391] = {
			["Silvermoon"] = true,
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Elyrianna - Ragnaros"] = "Elyrianna - Ragnaros",
		["Kaldowrath - Silvermoon"] = "Kaldowrath - Silvermoon",
		["Puukaa - Ragnaros"] = "Puukaa - Ragnaros",
		["Rahran - Icecrown"] = "Rahran - Icecrown",
		["Amranar - Silvermoon"] = "Amranar - Silvermoon",
		["Korugen - Silvermoon"] = "Korugen - Silvermoon",
		["Greyblood - Silvermoon"] = "Greyblood - Silvermoon",
		["Amranar - Ragnaros"] = "Amranar - Ragnaros",
		["Algalonheal - Silvermoon"] = "Algalonheal - Silvermoon",
		["Thedodrouk - Silvermoon"] = "Thedodrouk - Silvermoon",
		["Grommarg - Ragnaros"] = "Grommarg - Ragnaros",
		["Praerend - Icecrown"] = "Praerend - Icecrown",
		["Zearthan - Icecrown"] = "Zearthan - Icecrown",
		["Kindhoof - Ragnaros"] = "Kindhoof - Ragnaros",
		["Skyreacher - Ragnaros"] = "Skyreacher - Ragnaros",
		["Kindhoof - Tichondrius"] = "Kindhoof - Tichondrius",
		["Vetold - Silvermoon"] = "Vetold - Silvermoon",
		["Alura - Tichondrius"] = "Alura - Tichondrius",
		["Miriyal - Icecrown"] = "Miriyal - Icecrown",
		["Faerand - Icecrown"] = "Faerand - Icecrown",
		["Miriyam - Silvermoon"] = "Miriyam - Silvermoon",
		["Volgor - Ragnaros"] = "Volgor - Ragnaros",
		["Deminath - Ragnaros"] = "Deminath - Ragnaros",
		["Thorlan - Silvermoon"] = "Thorlan - Silvermoon",
		["Navraj - Ragnaros"] = "Navraj - Ragnaros",
		["Granjior - Ragnaros"] = "Granjior - Ragnaros",
		["Burdett - Silvermoon"] = "Burdett - Silvermoon",
		["Korugen - Icecrown"] = "Korugen - Icecrown",
		["Luugo - Frostwolf"] = "Luugo - Frostwolf",
		["Farahn - Icecrown"] = "Farahn - Icecrown",
		["Weston - Icecrown"] = "Weston - Icecrown",
		["Rahran - Silvermoon"] = "Rahran - Silvermoon",
		["Praerend - Silvermoon"] = "Praerend - Silvermoon",
		["Faerand - Silvermoon"] = "Faerand - Silvermoon",
		["Miriyam - Ragnaros"] = "Miriyam - Ragnaros",
		["Greybone - Icecrown"] = "Greybone - Icecrown",
		["Thedodrouk - Icecrown"] = "Thedodrouk - Icecrown",
		["Kaldorath - Icecrown"] = "Kaldorath - Icecrown",
		["Mogfarmer - Silvermoon"] = "Mogfarmer - Silvermoon",
		["Morifa - Ragnaros"] = "Morifa - Ragnaros",
		["Zearthan - Silvermoon"] = "Zearthan - Silvermoon",
		["Alurana - Ragnaros"] = "Alurana - Ragnaros",
		["Mallusof - Silvermoon"] = "Mallusof - Silvermoon",
		["Mallusof - Icecrown"] = "Mallusof - Icecrown",
	},
	["profiles"] = {
		["Elyrianna - Ragnaros"] = {
			["install_complete"] = 11.41,
		},
		["Kaldowrath - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Puukaa - Ragnaros"] = {
			["install_complete"] = "11.33",
		},
		["Rahran - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Amranar - Silvermoon"] = {
			["install_complete"] = "11.27",
		},
		["Korugen - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Greyblood - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Amranar - Ragnaros"] = {
		},
		["Algalonheal - Silvermoon"] = {
			["install_complete"] = 11.371,
		},
		["Thedodrouk - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Grommarg - Ragnaros"] = {
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["install_complete"] = "11.33",
		},
		["Praerend - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Zearthan - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Kindhoof - Ragnaros"] = {
			["install_complete"] = "11.18",
		},
		["Skyreacher - Ragnaros"] = {
			["install_complete"] = "11.33",
		},
		["Kindhoof - Tichondrius"] = {
			["install_complete"] = "11.01",
		},
		["Vetold - Silvermoon"] = {
		},
		["Alura - Tichondrius"] = {
			["general"] = {
				["glossTex"] = "Blizzard",
				["normTex"] = "Blizzard",
			},
			["install_complete"] = "11.12",
		},
		["Miriyal - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Faerand - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Miriyam - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Volgor - Ragnaros"] = {
		},
		["Deminath - Ragnaros"] = {
		},
		["Thorlan - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Navraj - Ragnaros"] = {
		},
		["Granjior - Ragnaros"] = {
		},
		["Burdett - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Korugen - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Luugo - Frostwolf"] = {
		},
		["Farahn - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Weston - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Rahran - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Praerend - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Faerand - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Miriyam - Ragnaros"] = {
		},
		["Greybone - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Thedodrouk - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Kaldorath - Icecrown"] = {
			["install_complete"] = "11.01",
		},
		["Mogfarmer - Silvermoon"] = {
			["install_complete"] = 11.41,
		},
		["Morifa - Ragnaros"] = {
		},
		["Zearthan - Silvermoon"] = {
			["install_complete"] = "11.18",
		},
		["Alurana - Ragnaros"] = {
			["install_complete"] = "11.33",
		},
		["Mallusof - Silvermoon"] = {
			["general"] = {
				["chatBubbleName"] = true,
			},
			["install_complete"] = "11.18",
		},
		["Mallusof - Icecrown"] = {
			["general"] = {
				["normTex"] = "Blizzard",
				["minimap"] = {
					["hideCalendar"] = false,
				},
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
