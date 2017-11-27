
LUIDB = {
	["namespaces"] = {
		["Swing"] = {
			["profiles"] = {
				["Base"] = {
					["Enable"] = false,
					["Text"] = {
						["Font"] = "Prototype",
						["Enable"] = true,
					},
					["General"] = {
						["X"] = -90,
					},
				},
			},
		},
		["RaidMenu"] = {
			["profiles"] = {
				["Base"] = {
					["ShowToolTips"] = true,
				},
			},
		},
		["Vengeance"] = {
		},
		["Art Work"] = {
		},
		["Bags"] = {
			["profiles"] = {
				["Base"] = {
					["Enable"] = false,
				},
			},
		},
		["Infotext"] = {
			["profiles"] = {
				["Base"] = {
					["Durability"] = {
						["Font"] = "Prototype",
					},
					["Guild"] = {
						["sortASC"] = {
							false, -- [1]
						},
						["Font"] = "Prototype",
						["sortCols"] = {
							"note", -- [1]
							"class", -- [2]
						},
					},
					["Bags"] = {
						["Font"] = "Prototype",
					},
					["Currency"] = {
						["Enable"] = true,
						["X"] = 250,
						["Display"] = 1508,
						["Font"] = "Prototype",
					},
					["Gold"] = {
						["Font"] = "Prototype",
					},
					["Clock"] = {
						["Time24"] = true,
						["Font"] = "Prototype",
					},
					["Instance"] = {
						["Enable"] = true,
						["Font"] = "Prototype",
					},
					["FPS"] = {
						["Font"] = "Prototype",
					},
					["Friends"] = {
						["Font"] = "Prototype",
					},
					["Memory"] = {
						["Enable"] = false,
						["Font"] = "Prototype",
					},
					["DPS"] = {
						["Enable"] = false,
						["Font"] = "Prototype",
					},
					["CombatLock"] = true,
					["DualSpec"] = {
						["Enable"] = true,
						["ShowSpentPoints"] = false,
						["X"] = -600,
						["InfoPanel"] = {
							["Horizontal"] = "Right",
							["Vertical"] = "Top",
						},
						["Font"] = "Prototype",
					},
				},
			},
			["realm"] = {
				["Bleeding Hollow"] = {
					["Gold"] = {
						["Horde"] = {
							["Zaliga"] = 7678001,
							["Evisca"] = 1646,
							["Gorog"] = 22438,
						},
					},
				},
				["Aggramar"] = {
					["Gold"] = {
						["Horde"] = {
							["Gottagetlia"] = 319950,
						},
					},
				},
				["Proudmoore"] = {
					["Gold"] = {
						["Alliance"] = {
							["Miriyal"] = 175698976,
							["Farahn"] = 75333179,
							["Greybone"] = 73632888,
							["Amranar"] = 537829888,
							["Granjior"] = 523873677,
							["Kaldorath"] = 322480427,
							["Faerand"] = 149944150,
							["Mallusof"] = 1162234125,
							["Rahran"] = 589727917,
							["Morifa"] = 539824085,
							["Fimwack"] = 320665333,
							["Praerend"] = 786631223,
						},
					},
				},
				["Tichondrius"] = {
					["Gold"] = {
						["Alliance"] = {
							["Mallusof"] = 1157060103,
						},
					},
				},
			},
		},
		["Unitframes"] = {
			["global"] = {
				["Mallusof"] = {
					["Party"] = {
						["Y"] = -55.5457916259766,
						["X"] = 159.210083007813,
					},
					["Boss"] = {
						["Y"] = 205.941268920898,
						["X"] = 453.880889892578,
						["Point"] = "BOTTOMLEFT",
					},
					["Settings"] = {
						["ShowV2PartyTextures"] = false,
						["ShowV2ArenaTextures"] = false,
					},
					["Focus"] = {
						["Y"] = 248.361129760742,
						["X"] = 239.659820556641,
						["Point"] = "LEFT",
					},
					["Target"] = {
						["Y"] = -205.116638183594,
						["X"] = 381.128936767578,
						["Castbar"] = {
							["General"] = {
								["Y"] = -159.178176879883,
								["X"] = -367.784484863281,
								["Point"] = "RIGHT",
							},
						},
					},
					["ToT"] = {
						["Y"] = -249.999954223633,
						["X"] = -415.672241210938,
						["Point"] = "RIGHT",
					},
					["Version"] = 3600,
					["Player"] = {
						["Y"] = -200.000091552734,
						["X"] = -310.519439697266,
						["Castbar"] = {
							["General"] = {
								["Y"] = -148.80192565918,
								["X"] = -365.631866455078,
								["Point"] = "CENTER",
							},
						},
					},
				},
			},
			["profiles"] = {
				["Base"] = {
					["Party"] = {
						["Enable"] = false,
						["ShowPlayer"] = true,
						["X"] = 130.55744934082,
						["Castbar"] = {
							["General"] = {
								["Enable"] = false,
							},
						},
						["Y"] = 35.9801292419434,
						["Fader"] = {
							["UseGlobalSettings"] = false,
						},
						["Bars"] = {
							["Health"] = {
								["Color"] = "Gradient",
							},
						},
					},
					["Settings"] = {
						["ShowV2Textures"] = false,
						["show_v2_textures"] = false,
						["ShowV2ArenaTextures"] = false,
						["show_v2_arena_textures"] = false,
						["show_v2_party_textures"] = false,
						["ShowV2PartyTextures"] = false,
					},
					["Focus"] = {
						["Castbar"] = {
							["General"] = {
								["Width"] = 400,
								["Y"] = 230,
								["X"] = 643,
								["Height"] = 35,
								["IndividualColor"] = true,
							},
							["Shield"] = {
								["Color"] = {
									["a"] = 0.680000007152557,
									["r"] = 0,
									["g"] = 1,
									["b"] = 0,
								},
								["BarColor"] = {
									["a"] = 0.680000007152557,
									["r"] = 1,
									["g"] = 0,
									["b"] = 0,
								},
								["IndividualBorder"] = false,
								["IndividualColor"] = true,
								["Texture"] = "Blizzard Dialog",
							},
							["Text"] = {
								["Name"] = {
									["Font"] = "Prototype",
									["OffsetX"] = 0,
									["Size"] = 15,
								},
								["Time"] = {
									["Font"] = "Prototype",
									["ShowMax"] = true,
									["Size"] = 15,
								},
							},
							["Colors"] = {
								["Bar"] = {
									["a"] = 0.680000007152557,
									["r"] = 0,
									["g"] = 1,
									["b"] = 0,
								},
							},
						},
						["Y"] = -50,
						["X"] = 239.659820556641,
						["Aura"] = {
							["Buffs"] = {
								["Enable"] = true,
							},
						},
						["Bars"] = {
							["Power"] = {
								["Enable"] = true,
							},
							["Full"] = {
								["Enable"] = true,
							},
						},
						["Point"] = "LEFT",
						["Texts"] = {
							["Power"] = {
								["Point"] = "LEFT",
								["Enable"] = true,
								["Y"] = 0,
								["Size"] = 14,
							},
						},
					},
					["Target"] = {
						["Portrait"] = {
							["Y"] = 10,
							["X"] = 300,
							["Height"] = 100,
							["Width"] = 100,
						},
						["Castbar"] = {
							["General"] = {
								["Point"] = "CENTER",
								["Width"] = 250,
								["Y"] = -285,
								["X"] = 350,
								["Height"] = 30,
								["IndividualColor"] = true,
								["Icon"] = false,
							},
							["Shield"] = {
								["BarColor"] = {
									["a"] = 0.680000007152557,
									["b"] = 0,
									["g"] = 0,
									["r"] = 1,
								},
								["Color"] = {
									["a"] = 0.680000007152557,
									["r"] = 0,
									["g"] = 1,
									["b"] = 0,
								},
								["IndividualBorder"] = false,
								["IndividualColor"] = true,
							},
							["Text"] = {
								["Name"] = {
									["Font"] = "Prototype",
								},
								["Time"] = {
									["Font"] = "Prototype",
									["ShowMax"] = false,
									["Size"] = 15,
								},
							},
							["Colors"] = {
								["Shield"] = {
									["a"] = 0.1,
									["b"] = 0,
									["g"] = 0,
									["r"] = 0.5,
								},
								["Bar"] = {
									["a"] = 0.680000007152557,
									["b"] = 0,
									["g"] = 1,
									["r"] = 0,
								},
							},
						},
						["Border"] = {
							["EdgeSize"] = 8,
							["EdgeFile"] = "1 Pixel",
							["Aggro"] = true,
						},
						["X"] = 350.000030517578,
						["Aura"] = {
							["Debuffs"] = {
								["GrowthX"] = "RIGHT",
								["PlayerOnly"] = true,
								["Y"] = -35,
								["X"] = 0,
								["InitialAnchor"] = "BOTTOMLEFT",
								["IncludePet"] = true,
								["GrowthY"] = "DOWN",
								["FadeOthers"] = false,
							},
							["Buffs"] = {
								["Num"] = 8,
								["GrowthX"] = "LEFT",
								["DisableCooldown"] = true,
								["ColorByType"] = true,
								["Y"] = -35,
								["X"] = 0,
								["InitialAnchor"] = "BOTTOMRIGHT",
								["GrowthY"] = "DOWN",
								["AuraTimer"] = true,
							},
						},
						["Bars"] = {
							["TotalAbsorb"] = {
								["Enable"] = true,
							},
							["Health"] = {
								["Color"] = "Gradient",
							},
							["Power"] = {
								["Color"] = "By Type",
							},
							["HealPrediction"] = {
								["Enable"] = true,
							},
							["ComboPoints"] = {
								["BackgroundColor"] = {
									["Enable"] = false,
								},
							},
						},
						["Icons"] = {
							["PvP"] = {
								["Enable"] = true,
							},
						},
						["Texts"] = {
							["PowerPercent"] = {
								["Enable"] = true,
								["Y"] = -15,
								["IndividualColor"] = {
									["b"] = 1,
									["g"] = 1,
									["r"] = 1,
								},
								["Size"] = 14,
							},
							["Name"] = {
								["ColorNameByClass"] = false,
								["Point"] = "TOPRIGHT",
								["X"] = -5,
								["RelativePoint"] = "TOPRIGHT",
								["Format"] = "Name + Level",
								["ShortClassification"] = true,
								["Size"] = 14,
							},
							["Power"] = {
								["Enable"] = false,
								["IndividualColor"] = {
									["b"] = 1,
									["g"] = 1,
									["r"] = 1,
								},
							},
							["Health"] = {
								["Enable"] = false,
							},
							["HealthPercent"] = {
								["Point"] = "RIGHT",
								["ShowAlways"] = true,
								["Y"] = 0,
								["RelativePoint"] = "RIGHT",
								["Size"] = 12,
							},
							["HealthMissing"] = {
								["IndividualColor"] = {
									["b"] = 1,
									["g"] = 1,
									["r"] = 1,
								},
								["Size"] = 15,
							},
							["PowerMissing"] = {
								["IndividualColor"] = {
									["b"] = 1,
									["g"] = 1,
									["r"] = 1,
								},
								["Size"] = 13,
							},
						},
					},
					["XP_Rep"] = {
						["Reputation"] = {
							["AlwaysShow"] = true,
							["Enable"] = false,
						},
						["General"] = {
							["Font"] = "Prototype",
						},
					},
					["PetTarget"] = {
						["Point"] = "LEFT",
						["Y"] = -243.912719726563,
						["X"] = 35.2860870361328,
					},
					["PartyTarget"] = {
						["Enable"] = false,
					},
					["Layout"] = "Mallusof",
					["Pet"] = {
						["Y"] = -300,
						["X"] = -350,
					},
					["ToT"] = {
						["Y"] = -150,
						["X"] = 350,
					},
					["PartyPet"] = {
						["Enable"] = false,
					},
					["Player"] = {
						["Castbar"] = {
							["General"] = {
								["Point"] = "CENTER",
								["Width"] = 400,
								["Y"] = -200,
								["X"] = 0,
								["Height"] = 30,
								["Icon"] = false,
							},
							["Text"] = {
								["Name"] = {
									["Font"] = "Prototype",
								},
								["Time"] = {
									["Font"] = "Prototype",
									["Size"] = 15,
								},
							},
							["Colors"] = {
								["Bar"] = {
									["a"] = 1,
									["g"] = 1,
									["r"] = 1,
								},
							},
						},
						["Border"] = {
							["EdgeSize"] = 8,
							["EdgeFile"] = "1 Pixel",
							["Aggro"] = true,
						},
						["Y"] = -200.000091552734,
						["X"] = -350.000030517578,
						["Bars"] = {
							["AltPower"] = {
								["Enable"] = true,
								["Height"] = 15,
							},
							["Power"] = {
								["Color"] = "By Type",
							},
							["HealPrediction"] = {
								["Enable"] = true,
							},
							["DruidMana"] = {
								["OverPower"] = false,
								["Enable"] = false,
							},
							["TotalAbsorb"] = {
								["Enable"] = true,
							},
							["Health"] = {
								["Color"] = "Gradient",
							},
							["SoulShards"] = {
								["Y"] = -4,
								["X"] = 25,
								["Lock"] = false,
								["Padding"] = 1,
								["Width"] = 200,
								["Texture"] = "Otravi",
							},
							["ClassIcons"] = {
							},
						},
						["Icons"] = {
							["Combat"] = {
								["Enable"] = true,
							},
							["Resting"] = {
								["Enable"] = true,
							},
						},
						["Texts"] = {
							["Power"] = {
								["Enable"] = false,
							},
							["AltPower"] = {
								["Enable"] = true,
								["Font"] = "Prototype",
							},
							["PowerPercent"] = {
								["Enable"] = true,
							},
							["Health"] = {
								["Enable"] = false,
							},
						},
					},
					["Version"] = 3600,
					["Raid"] = {
						["Point"] = "BOTTOM",
						["Enable"] = false,
						["Backdrop"] = {
							["Color"] = {
								["a"] = 0.110000014305115,
							},
							["Texture"] = "None",
						},
						["Width"] = 80,
						["Y"] = 150,
						["X"] = 0,
						["GroupPadding"] = 1,
						["Icons"] = {
							["Raid"] = {
								["Y"] = 0,
								["Enable"] = true,
								["Size"] = 60,
							},
						},
						["Height"] = 40,
						["Bars"] = {
							["TotalAbsorb"] = {
								["Enable"] = true,
							},
							["Health"] = {
								["Color"] = "Gradient",
								["Width"] = 80,
								["Height"] = 35,
							},
							["Power"] = {
								["Color"] = "By Type",
								["Width"] = 80,
								["Y"] = -35,
							},
							["HealPrediction"] = {
								["Enable"] = true,
							},
						},
						["Padding"] = 1,
						["Texts"] = {
							["HealthPercent"] = {
								["ShowAlways"] = true,
								["Y"] = -10,
								["Color"] = "Gradient",
								["X"] = 0,
							},
						},
					},
					["Colors"] = {
						["Smooth"] = {
							{
								0.690196078431373, -- [1]
								0.309803921568627, -- [2]
								0.309803921568627, -- [3]
								1, -- [4]
							}, -- [1]
							{
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							}, -- [2]
						},
					},
					["Maintank"] = {
						["Y"] = 350.000030517578,
					},
					["BossTarget"] = {
						["Castbar"] = {
							["General"] = {
								["Enable"] = false,
							},
						},
					},
					["Boss"] = {
						["Castbar"] = {
							["X"] = -310,
							["General"] = {
								["Enable"] = true,
							},
							["Text"] = {
								["Name"] = {
									["Font"] = "Prototype",
								},
								["Time"] = {
									["Font"] = "Prototype",
								},
							},
						},
						["Point"] = "RIGHT",
						["Y"] = 300,
						["X"] = -400,
						["Padding"] = 40,
						["Bars"] = {
							["Health"] = {
								["Color"] = "Gradient",
							},
							["Power"] = {
								["Enable"] = true,
							},
						},
						["Texts"] = {
							["Name"] = {
								["Point"] = "LEFT",
								["RelativePoint"] = "LEFT",
							},
							["HealthPercent"] = {
								["Point"] = "RIGHT",
								["Enable"] = true,
								["ShowAlways"] = true,
								["RelativePoint"] = "RIGHT",
								["IndividualColor"] = {
									["b"] = 1,
									["g"] = 1,
									["r"] = 1,
								},
								["Size"] = 17,
							},
						},
					},
				},
				["Zaliga - Bleeding Hollow"] = {
					["Player"] = {
						["Bars"] = {
							["ClassIcons"] = {
							},
						},
					},
				},
				["Default"] = {
					["Player"] = {
						["Bars"] = {
							["ClassIcons"] = {
							},
						},
					},
				},
			},
		},
		["Threat"] = {
			["profiles"] = {
				["Base"] = {
					["Text"] = {
						["Precision"] = 2,
					},
					["General"] = {
						["expMode"] = true,
						["Width"] = 410,
						["Y"] = 5,
						["X"] = 770,
						["showRested"] = true,
						["TankHide"] = false,
					},
					["Appearance"] = {
						["BGTexture"] = "PlaterBackground",
						["Color"] = "Individual",
						["IndividualColor"] = {
							["g"] = 0.666666666666667,
							["r"] = 0,
						},
						["BGMultiplier"] = 0,
					},
				},
			},
		},
		["Mirror Bar"] = {
			["profiles"] = {
				["Base"] = {
					["Text"] = {
						["Name"] = {
							["Font"] = "Prototype",
						},
						["Time"] = {
							["Font"] = "Prototype",
						},
					},
					["General"] = {
						["ArchyBar"] = true,
					},
				},
			},
		},
		["RemoveThatBuff"] = {
			["profiles"] = {
				["Base"] = {
					["Enable"] = true,
				},
			},
		},
		["Merchant"] = {
			["profiles"] = {
				["Base"] = {
					["AutoSell"] = {
						["Enable"] = true,
					},
				},
			},
		},
		["Chat"] = {
			["namespaces"] = {
				["StickyChannels"] = {
					["profiles"] = {
						["Base"] = {
							["Channels"] = {
								["RAID_WARNING"] = true,
							},
						},
					},
				},
				["Buttons"] = {
					["profiles"] = {
						["Base"] = {
							["HideButtons"] = false,
						},
					},
				},
				["EditBox"] = {
					["profiles"] = {
						["Base"] = {
							["Anchor"] = "BOTTOM",
							["Font"] = {
								["Font"] = "Prototype",
							},
						},
					},
					["factionrealm"] = {
						["Alliance - Tichondrius"] = {
							"/p no", -- [1]
							"/s inv", -- [2]
							"/g WoW anniversaty event", -- [3]
							"/s inv", -- [4]
							"/1 Mage", -- [5]
							"/raid go?", -- [6]
							"/rl", -- [7]
							"/cw Kalithumos-Tichondrius inv", -- [8]
							"/rl", -- [9]
							"/p what key did you get?", -- [10]
							"/p I'll get him", -- [11]
							"/p no", -- [12]
							"/rl", -- [13]
							"/s inv", -- [14]
							"/cw Elorela-Tichondrius |cff71d5ff|Htalent:19764|h[Surge of Light]|h|r", -- [15]
							"/g WoW anniversaty event", -- [16]
							"/p no", -- [17]
							"/s inv", -- [18]
							"/g WoW anniversaty event", -- [19]
							"/s inv", -- [20]
							"/1 Mage", -- [21]
							"/rl", -- [22]
							"/p what key did you get?", -- [23]
							"/p no", -- [24]
							"/s inv", -- [25]
							"/g WoW anniversaty event", -- [26]
							"/s inv", -- [27]
							"/1 Mage", -- [28]
							"/p what key did you get?", -- [29]
							"/s inv", -- [30]
							"/1 Mage", -- [31]
							"/s inv", -- [32]
						},
						["Alliance - Proudmoore"] = {
							"/p well", -- [1]
							" lol sure", -- [2]
							"/p well", -- [3]
							" lol sure", -- [4]
							"/p well", -- [5]
							" welcome home :\"P{", -- [6]
							" lol sure", -- [7]
							"/p well", -- [8]
							" lol sure", -- [9]
							" welcome home :\"P{", -- [10]
							"/p well", -- [11]
							" welcome home :\"P{", -- [12]
							"/p well", -- [13]
							" welcome home :\"P{", -- [14]
							"/p well", -- [15]
							" lol sure", -- [16]
							"/p well", -- [17]
							" welcome home :\"P{", -- [18]
							" lol sure", -- [19]
							"/p well", -- [20]
							" lol sure", -- [21]
							" welcome home :\"P{", -- [22]
							"/p well", -- [23]
							" welcome home :\"P{", -- [24]
							"/p well", -- [25]
							" lol sure", -- [26]
							" welcome home :\"P{", -- [27]
							"/p well", -- [28]
							" welcome home :\"P{", -- [29]
							"/p well", -- [30]
							" welcome home :\"P{", -- [31]
							"/p well", -- [32]
						},
					},
				},
			},
			["profiles"] = {
				["Gottagetlia - Aggramar"] = {
					["modules"] = {
					},
				},
				["Zaliga - Bleeding Hollow"] = {
					["modules"] = {
					},
				},
				["Gorog - Bleeding Hollow"] = {
					["modules"] = {
					},
				},
				["Brity - Steamwheedle Cartel"] = {
					["modules"] = {
					},
				},
				["Evisca - Bleeding Hollow"] = {
					["modules"] = {
					},
				},
				["Base"] = {
					["y"] = 43.6975475017343,
					["x"] = 33.3724626035666,
					["General"] = {
						["Font"] = {
							["Font"] = "Prototype",
						},
						["MinimalistTabs"] = false,
					},
					["modules"] = {
					},
				},
				["Default"] = {
					["modules"] = {
					},
				},
			},
		},
		["Panels"] = {
			["profiles"] = {
				["Gottagetlia - Aggramar"] = {
					["Minimap"] = {
						["IsShown"] = true,
					},
					["MicroMenu"] = {
						["IsShown"] = true,
					},
				},
				["Zaliga - Bleeding Hollow"] = {
					["MicroMenu"] = {
						["IsShown"] = true,
					},
					["Minimap"] = {
						["IsShown"] = true,
					},
				},
				["Gorog - Bleeding Hollow"] = {
					["Dps"] = {
						["Anchor"] = "DetailsBaseFrame1",
						["OffsetY"] = 0,
						["Additional"] = "DetailsRowFrame1",
					},
					["MicroMenu"] = {
						["IsShown"] = true,
					},
					["Minimap"] = {
						["IsShown"] = true,
					},
				},
				["Brity - Steamwheedle Cartel"] = {
					["Dps"] = {
						["Anchor"] = "DetailsBaseFrame1",
						["OffsetY"] = 0,
						["Additional"] = "DetailsRowFrame1",
					},
					["Minimap"] = {
						["IsShown"] = true,
					},
					["MicroMenu"] = {
						["IsShown"] = true,
					},
				},
				["Evisca - Bleeding Hollow"] = {
					["Dps"] = {
						["Anchor"] = "DetailsBaseFrame1",
						["OffsetY"] = 0,
						["Additional"] = "DetailsRowFrame1",
					},
					["MicroMenu"] = {
						["IsShown"] = true,
					},
					["Minimap"] = {
						["IsShown"] = true,
					},
				},
				["Base"] = {
					["Chat"] = {
						["AlwaysShow"] = true,
						["IsShown"] = true,
					},
					["Minimap"] = {
						["IsShown"] = true,
					},
					["Tps"] = {
						["Width"] = 600,
					},
					["Raid"] = {
						["Direction"] = "SOLID",
						["Width"] = 370,
						["Height"] = 205,
						["Anchor"] = "CompactRaidFrameContainer",
						["Animation"] = "None",
					},
					["MicroMenu"] = {
						["IsShown"] = true,
					},
				},
				["Default"] = {
					["MicroMenu"] = {
						["IsShown"] = true,
					},
					["Minimap"] = {
						["IsShown"] = true,
					},
				},
			},
		},
		["Fader"] = {
			["profiles"] = {
				["Base"] = {
					["ForceGlobalSettings"] = false,
					["GlobalSettings"] = {
						["Combat"] = false,
					},
				},
			},
		},
		["Themes"] = {
			["profiles"] = {
				["Gottagetlia - Aggramar"] = {
					["micromenu_btn"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.8, -- [4]
					},
					["color_bottom"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.5, -- [4]
					},
					["tpsborder"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["tps"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["chat"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["bar"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.7, -- [4]
					},
					["micromenu_bg"] = {
						0, -- [1]
						0.09, -- [2]
						0.68, -- [3]
						0.8, -- [4]
					},
					["orb_cycle"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["color_top"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.5, -- [4]
					},
					["raid"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["theme"] = "Shaman",
					["micromenu_bg2"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.8, -- [4]
					},
					["chatborder"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["minimap"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						1, -- [4]
					},
					["editbox"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["bar2"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.6, -- [4]
					},
					["dpsborder"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["dps"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["micromenu_btn_hover"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.8, -- [4]
					},
					["orb_hover"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["chat2"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["sidebar"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["raidborder"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["micromenu"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
					},
					["navi"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.6, -- [4]
					},
					["chat2border"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
					["orb"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
					},
					["navi_hover"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.4, -- [4]
					},
				},
				["Zaliga - Bleeding Hollow"] = {
					["micromenu_btn"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.8, -- [4]
					},
					["color_bottom"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.5, -- [4]
					},
					["tpsborder"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["tps"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["chat"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["navi_hover"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["micromenu_bg"] = {
						0.65, -- [1]
						0.56, -- [2]
						0, -- [3]
						0.8, -- [4]
					},
					["orb_cycle"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["color_top"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.5, -- [4]
					},
					["raid"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["theme"] = "Rogue",
					["micromenu_bg2"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["orb"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
					},
					["chat2border"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["navi"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.6, -- [4]
					},
					["bar2"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.5, -- [4]
					},
					["dpsborder"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["dps"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["chat2"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["micromenu_btn_hover"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.8, -- [4]
					},
					["raidborder"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["sidebar"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["orb_hover"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["micromenu"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
					},
					["editbox"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["minimap"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						1, -- [4]
					},
					["chatborder"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.4, -- [4]
					},
					["bar"] = {
						0.95, -- [1]
						0.86, -- [2]
						0.16, -- [3]
						0.7, -- [4]
					},
				},
				["Gorog - Bleeding Hollow"] = {
					["micromenu_btn"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.8, -- [4]
					},
					["color_bottom"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.55, -- [4]
					},
					["tpsborder"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["tps"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["chat"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["navi_hover"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["micromenu_bg"] = {
						0.7, -- [1]
						0.48, -- [2]
						0.25, -- [3]
						0.8, -- [4]
					},
					["orb_cycle"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["color_top"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.55, -- [4]
					},
					["raid"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["theme"] = "Warrior",
					["micromenu_bg2"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.7, -- [4]
					},
					["orb"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
					},
					["chat2border"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["navi"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.6, -- [4]
					},
					["bar2"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.6, -- [4]
					},
					["dpsborder"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["dps"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["chat2"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["micromenu_btn_hover"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.8, -- [4]
					},
					["raidborder"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["sidebar"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.5, -- [4]
					},
					["orb_hover"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["micromenu"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
					},
					["editbox"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["minimap"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						1, -- [4]
					},
					["chatborder"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.4, -- [4]
					},
					["bar"] = {
						1, -- [1]
						0.78, -- [2]
						0.55, -- [3]
						0.7, -- [4]
					},
				},
				["Brity - Steamwheedle Cartel"] = {
					["micromenu_btn"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.8, -- [4]
					},
					["color_bottom"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.5, -- [4]
					},
					["tpsborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["tps"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["chat"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["bar"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.7, -- [4]
					},
					["micromenu_bg"] = {
						0.6, -- [1]
						0.6, -- [2]
						0.6, -- [3]
						0.8, -- [4]
					},
					["orb_cycle"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["color_top"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.5, -- [4]
					},
					["raid"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["theme"] = "Priest",
					["micromenu_bg2"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.7, -- [4]
					},
					["chatborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["minimap"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						1, -- [4]
					},
					["editbox"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["bar2"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.6, -- [4]
					},
					["dpsborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["dps"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["raidborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["chat2"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["orb_hover"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["sidebar"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["micromenu_btn_hover"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.8, -- [4]
					},
					["micromenu"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
					},
					["navi"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.6, -- [4]
					},
					["chat2border"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["orb"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
					},
					["navi_hover"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
				},
				["Evisca - Bleeding Hollow"] = {
					["micromenu_btn"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.8, -- [4]
					},
					["color_bottom"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.5, -- [4]
					},
					["tpsborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["tps"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["chat"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["navi_hover"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["micromenu_bg"] = {
						0.6, -- [1]
						0.6, -- [2]
						0.6, -- [3]
						0.8, -- [4]
					},
					["orb_cycle"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["color_top"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.5, -- [4]
					},
					["raid"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["theme"] = "Priest",
					["micromenu_bg2"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.7, -- [4]
					},
					["orb"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
					},
					["chat2border"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["navi"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.6, -- [4]
					},
					["bar2"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.6, -- [4]
					},
					["dpsborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["dps"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["orb_hover"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["raidborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["micromenu_btn_hover"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.8, -- [4]
					},
					["sidebar"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["chat2"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["micromenu"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
					},
					["editbox"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["minimap"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						1, -- [4]
					},
					["chatborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["bar"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.7, -- [4]
					},
				},
				["Base"] = {
					["micromenu_btn"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.8, -- [4]
					},
					["color_bottom"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.5, -- [4]
					},
					["tpsborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["tps"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["chat"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["bar"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["micromenu_bg"] = {
						0.6, -- [1]
						0.6, -- [2]
						0.6, -- [3]
						0.8, -- [4]
					},
					["orb_cycle"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["color_top"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.5, -- [4]
					},
					["raid"] = {
						0.901960784313726, -- [1]
						0.901960784313726, -- [2]
						0.901960784313726, -- [3]
						0, -- [4]
					},
					["theme"] = "Priest",
					["micromenu_bg2"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.7, -- [4]
					},
					["chatborder"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["minimap"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						1, -- [4]
					},
					["editbox"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["bar2"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.600000023841858, -- [4]
					},
					["dpsborder"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.400000035762787, -- [4]
					},
					["dps"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["micromenu_btn_hover"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.8, -- [4]
					},
					["orb_hover"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["chat2"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["sidebar"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["raidborder"] = {
						0.901960784313726, -- [1]
						0.901960784313726, -- [2]
						0.901960784313726, -- [3]
						0.300000011920929, -- [4]
					},
					["micromenu"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
					},
					["navi"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.6, -- [4]
					},
					["chat2border"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
					["orb"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
					},
					["navi_hover"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						0.4, -- [4]
					},
				},
				["Default"] = {
					["micromenu_btn"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.8, -- [4]
					},
					["color_bottom"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.5, -- [4]
					},
					["tpsborder"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["tps"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["chat"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["bar"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.7, -- [4]
					},
					["micromenu_bg"] = {
						0.66, -- [1]
						0, -- [2]
						0.43, -- [3]
						0.8, -- [4]
					},
					["orb_cycle"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["color_top"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.5, -- [4]
					},
					["raid"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["theme"] = "Paladin",
					["micromenu_bg2"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.7, -- [4]
					},
					["chatborder"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["minimap"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						1, -- [4]
					},
					["editbox"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["bar2"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.6, -- [4]
					},
					["dpsborder"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["dps"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["raidborder"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["chat2"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["orb_hover"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["sidebar"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["micromenu_btn_hover"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.8, -- [4]
					},
					["micromenu"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
					},
					["navi"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.6, -- [4]
					},
					["chat2border"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
					["orb"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
					},
					["navi_hover"] = {
						0.96, -- [1]
						0.21, -- [2]
						0.73, -- [3]
						0.4, -- [4]
					},
				},
			},
		},
		["Forte"] = {
		},
		["Micromenu"] = {
		},
		["Auras"] = {
			["profiles"] = {
				["Base"] = {
					["Debuffs"] = {
						["Duration"] = {
							["Font"] = "Prototype",
						},
						["Y"] = -150,
						["X"] = -200,
						["Count"] = {
							["Font"] = "Prototype",
						},
						["Anchor"] = "TOPRIGHT",
					},
					["Buffs"] = {
						["Duration"] = {
							["Font"] = "Prototype",
						},
						["Y"] = -75,
						["X"] = -200,
						["Count"] = {
							["Font"] = "Prototype",
						},
						["Anchor"] = "TOPRIGHT",
					},
				},
			},
		},
		["Bars"] = {
			["profiles"] = {
				["Default"] = {
					["SidebarRight1"] = {
						["IsOpen"] = true,
					},
				},
				["Gorog - Bleeding Hollow"] = {
					["StatesLoaded"] = true,
					["Bottombar5"] = {
						["State"] = {
							"5", -- [1]
							["Alt"] = "5",
							["Ctrl"] = "5",
						},
					},
					["Bottombar1"] = {
						["State"] = {
							"1", -- [1]
							"3", -- [2]
							"5", -- [3]
							"4", -- [4]
							["Alt"] = "1",
							["Ctrl"] = "1",
						},
					},
					["SidebarRight2"] = {
						["State"] = {
							"8", -- [1]
						},
					},
					["SidebarLeft1"] = {
						["State"] = {
							"9", -- [1]
						},
					},
					["SidebarLeft2"] = {
						["State"] = {
							"7", -- [1]
						},
					},
					["Bottombar2"] = {
						["State"] = {
							"2", -- [1]
							["Alt"] = "2",
							["Ctrl"] = "2",
						},
					},
					["Bottombar6"] = {
						["State"] = {
							"6", -- [1]
							["Alt"] = "6",
							["Ctrl"] = "6",
						},
					},
					["Bottombar4"] = {
						["State"] = {
							"4", -- [1]
							["Alt"] = "4",
							["Ctrl"] = "4",
						},
					},
					["Bottombar3"] = {
						["State"] = {
							"3", -- [1]
							["Alt"] = "3",
							["Ctrl"] = "3",
						},
					},
					["SidebarRight1"] = {
						["State"] = {
							"10", -- [1]
						},
					},
				},
				["Zaliga - Bleeding Hollow"] = {
					["StatesLoaded"] = true,
					["Bottombar5"] = {
						["State"] = {
							"5", -- [1]
							["Alt"] = "5",
							["Ctrl"] = "5",
						},
					},
					["Bottombar1"] = {
						["State"] = {
							"1", -- [1]
							"3", -- [2]
							"5", -- [3]
							["Alt"] = "1",
							["Ctrl"] = "1",
						},
					},
					["SidebarRight2"] = {
						["State"] = {
							"8", -- [1]
						},
					},
					["Bottombar4"] = {
						["State"] = {
							"4", -- [1]
							["Alt"] = "4",
							["Ctrl"] = "4",
						},
					},
					["Bottombar3"] = {
						["State"] = {
							"3", -- [1]
							["Alt"] = "3",
							["Ctrl"] = "3",
						},
					},
					["Bottombar2"] = {
						["State"] = {
							"2", -- [1]
							["Alt"] = "2",
							["Ctrl"] = "2",
						},
					},
					["Bottombar6"] = {
						["State"] = {
							"6", -- [1]
							["Alt"] = "6",
							["Ctrl"] = "6",
						},
					},
					["SidebarLeft1"] = {
						["State"] = {
							"9", -- [1]
						},
					},
					["SidebarLeft2"] = {
						["State"] = {
							"7", -- [1]
						},
					},
					["SidebarRight1"] = {
						["State"] = {
							"10", -- [1]
						},
					},
				},
				["Base"] = {
					["General"] = {
						["MacroFont"] = "Prototype",
						["ShowMacro"] = true,
						["ShowHotkey"] = true,
						["ShowEquipped"] = true,
						["CountFont"] = "Prototype",
						["HotkeyFont"] = "Prototype",
					},
					["BottomTexture"] = {
						["Y"] = 180,
						["Enable"] = false,
					},
					["SidebarRight2"] = {
						["State"] = {
							"2", -- [1]
						},
					},
					["StatesLoaded"] = true,
					["Bottombar5"] = {
						["State"] = {
							"8", -- [1]
							["Alt"] = "8",
							["Ctrl"] = "8",
						},
					},
					["VehicleExit"] = {
						["Y"] = -400,
						["X"] = -260,
					},
					["SidebarLeft1"] = {
						["State"] = {
							"3", -- [1]
						},
						["Anchor"] = "BT4Bar10",
					},
					["ExtraActionBar"] = {
						["Y"] = 40,
						["X"] = 290,
					},
					["Bottombar3"] = {
						["State"] = {
							"1", -- [1]
							["Alt"] = "5",
							["Ctrl"] = "5",
						},
					},
					["Bottombar1"] = {
						["Y"] = 5,
						["State"] = {
							"1", -- [1]
							"7", -- [2]
							[5] = "1",
							["Alt"] = "1",
							["Ctrl"] = "1",
						},
					},
					["TopTexture"] = {
						["Y"] = 430,
						["X"] = 590,
						["Enable"] = false,
						["Alpha"] = 1,
					},
					["Bottombar6"] = {
						["State"] = {
							"9", -- [1]
							["Alt"] = "9",
							["Ctrl"] = "9",
						},
					},
					["Bottombar2"] = {
						["Y"] = 35,
						["State"] = {
							"2", -- [1]
							["Alt"] = "2",
							["Ctrl"] = "2",
						},
					},
					["SidebarLeft2"] = {
						["State"] = {
							"1", -- [1]
						},
						["Anchor"] = "BT4Bar8",
					},
					["Bottombar4"] = {
						["State"] = {
							"7", -- [1]
							["Alt"] = "7",
							["Ctrl"] = "7",
						},
					},
					["SidebarRight1"] = {
						["Enable"] = false,
						["Anchor"] = "BT4Bar9",
						["State"] = {
							"4", -- [1]
						},
					},
				},
				["Evisca - Bleeding Hollow"] = {
					["StatesLoaded"] = true,
					["Bottombar5"] = {
						["State"] = {
							"5", -- [1]
							["Alt"] = "5",
							["Ctrl"] = "5",
						},
					},
					["Bottombar1"] = {
						["State"] = {
							"1", -- [1]
							"3", -- [2]
							["Alt"] = "1",
							["Ctrl"] = "1",
						},
					},
					["SidebarRight2"] = {
						["State"] = {
							"8", -- [1]
						},
					},
					["Bottombar4"] = {
						["State"] = {
							"4", -- [1]
							["Alt"] = "4",
							["Ctrl"] = "4",
						},
					},
					["Bottombar3"] = {
						["State"] = {
							"3", -- [1]
							["Alt"] = "3",
							["Ctrl"] = "3",
						},
					},
					["Bottombar2"] = {
						["State"] = {
							"2", -- [1]
							["Alt"] = "2",
							["Ctrl"] = "2",
						},
					},
					["Bottombar6"] = {
						["State"] = {
							"6", -- [1]
							["Alt"] = "6",
							["Ctrl"] = "6",
						},
					},
					["SidebarLeft1"] = {
						["State"] = {
							"9", -- [1]
						},
					},
					["SidebarLeft2"] = {
						["State"] = {
							"7", -- [1]
						},
					},
					["SidebarRight1"] = {
						["State"] = {
							"10", -- [1]
						},
					},
				},
			},
		},
		["Cooldown"] = {
			["profiles"] = {
				["Base"] = {
					["Text"] = {
						["Font"] = "Prototype",
					},
					["General"] = {
						["MinDuration"] = 2,
					},
				},
			},
		},
		["InterruptAnnouncer"] = {
			["profiles"] = {
				["Base"] = {
					["General"] = {
						["EnableRaid"] = false,
						["EnablePet"] = false,
					},
				},
			},
		},
	},
	["profileKeys"] = {
		["Kaldorath - Proudmoore"] = "Base",
		["Gorog - Bleeding Hollow"] = "Base",
		["Praerend - Proudmoore"] = "Base",
		["Fimwack - Proudmoore"] = "Base",
		["Greybone - Proudmoore"] = "Base",
		["Faerand - Proudmoore"] = "Base",
		["Rahran - Proudmoore"] = "Base",
		["Farahn - Proudmoore"] = "Base",
		["Mallusof - Tichondrius"] = "Base",
		["Gottagetlia - Aggramar"] = "Base",
		["Granjior - Proudmoore"] = "Base",
		["Zaliga - Bleeding Hollow"] = "Base",
		["Morifa - Proudmoore"] = "Base",
		["Miriyal - Proudmoore"] = "Base",
		["Amranar - Proudmoore"] = "Base",
		["Evisca - Bleeding Hollow"] = "Evisca - Bleeding Hollow",
		["Brity - Steamwheedle Cartel"] = "Brity - Steamwheedle Cartel",
	},
	["global"] = {
		["luiconfig"] = {
			["Kaldorath - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["Auras"] = 2,
					["bars"] = 2.4,
					["threatbar"] = 2,
					["mirrorbar"] = 1,
				},
			},
			["Gorog - Bleeding Hollow"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["threatbar"] = 2,
					["Auras"] = 2,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["bars"] = 2.4,
					["mirrorbar"] = 1,
				},
			},
			["Amranar - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["vengeance"] = 2,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["Auras"] = 2,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["threatbar"] = 2,
					["bars"] = 2.4,
					["omen"] = 3300,
					["mirrorbar"] = 1,
				},
			},
			["Fimwack - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["mirrorbar"] = 1,
					["bars"] = 2.4,
					["threatbar"] = 2,
					["Auras"] = 2,
				},
			},
			["Greybone - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["mirrorbar"] = 1,
					["bars"] = 2.4,
					["threatbar"] = 2,
					["Auras"] = 2,
				},
			},
			["Faerand - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["Auras"] = 2,
					["bars"] = 2.4,
					["threatbar"] = 2,
					["mirrorbar"] = 1,
				},
			},
			["Rahran - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["mirrorbar"] = 1,
					["bars"] = 2.4,
					["threatbar"] = 2,
					["Auras"] = 2,
				},
			},
			["Farahn - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["vengeance"] = 2,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["mirrorbar"] = 1,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["threatbar"] = 2,
					["bars"] = 2.4,
					["omen"] = 3300,
					["Auras"] = 2,
				},
			},
			["Evisca - Bleeding Hollow"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["threatbar"] = 2,
					["Auras"] = 2,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["bars"] = 2.4,
					["mirrorbar"] = 1,
				},
			},
			["Mallusof - Tichondrius"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["vengeance"] = 2,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["Micromenu"] = 1.5,
					["lui"] = 3403,
					["mirrorbar"] = 1,
					["threatbar"] = 2,
					["bars"] = 2.4,
					["omen"] = 3300,
					["Auras"] = 2,
				},
			},
			["Gottagetlia - Aggramar"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["mirrorbar"] = 1,
					["bars"] = 2.4,
					["threatbar"] = 2,
					["Auras"] = 2,
				},
			},
			["Granjior - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["mirrorbar"] = 1,
					["bars"] = 2.4,
					["threatbar"] = 2,
					["Auras"] = 2,
				},
			},
			["Zaliga - Bleeding Hollow"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["Auras"] = 2,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["bars"] = 2.4,
					["threatbar"] = 2,
					["mirrorbar"] = 1,
				},
			},
			["Miriyal - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["mirrorbar"] = 1,
					["bars"] = 2.4,
					["threatbar"] = 2,
					["Auras"] = 2,
				},
			},
			["Mallusof - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["vengeance"] = 2,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["Micromenu"] = 1.5,
					["lui"] = 3403,
					["mirrorbar"] = 1,
					["threatbar"] = 2,
					["bars"] = 2.4,
					["omen"] = 3300,
					["Auras"] = 2,
				},
			},
			["Praerend - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["vengeance"] = 2,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["Micromenu"] = 1.5,
					["lui"] = 3403,
					["mirrorbar"] = 1,
					["threatbar"] = 2,
					["bars"] = 2.4,
					["omen"] = 3300,
					["Auras"] = 2,
				},
			},
			["Morifa - Proudmoore"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["panels"] = 1.2,
					["bartender"] = 3300,
					["Auras"] = 2,
					["lui"] = 3403,
					["mirrorbar"] = 1,
					["threatbar"] = 2,
					["bars"] = 2.4,
					["omen"] = 3300,
					["Micromenu"] = 1.5,
				},
			},
			["Brity - Steamwheedle Cartel"] = {
				["IsConfigured"] = true,
				["Versions"] = {
					["raidmenu"] = 2.4,
					["swing"] = 2,
					["RaidMenu"] = true,
					["interrupt"] = 2,
					["threatbar"] = 2,
					["bartender"] = 3300,
					["lui"] = 3403,
					["Micromenu"] = 1.5,
					["bars"] = 2.4,
					["mirrorbar"] = 1,
					["Auras"] = 2,
				},
			},
		},
	},
	["profiles"] = {
		["Gottagetlia - Aggramar"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
		["Zaliga - Bleeding Hollow"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
		["Gorog - Bleeding Hollow"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
		["Brity - Steamwheedle Cartel"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
		["Evisca - Bleeding Hollow"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
		["Base"] = {
			["modules"] = {
				["Merchant"] = true,
				["Cooldown"] = false,
				["Auras"] = true,
			},
			["General"] = {
				["HideTalentSpam"] = true,
				["DamageFont"] = "Prototype",
			},
			["Tooltip"] = {
				["Y"] = -200,
				["X"] = 0,
				["Health"] = {
					["Texture"] = "LUI_Gradient",
				},
				["Scale"] = 1.2,
			},
			["Minimap"] = {
				["Font"] = {
					["Font"] = "Prototype",
				},
			},
		},
		["Default"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
	},
}
LUIGold = nil
LUI_Themes = nil
LUI_Layouts = nil
