
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
						["Font"] = "Prototype",
						["InfoPanel"] = {
							["Horizontal"] = "Right",
							["Vertical"] = "Top",
						},
						["X"] = -600,
					},
				},
			},
			["realm"] = {
				["Bleeding Hollow"] = {
					["Gold"] = {
						["Horde"] = {
							["Rentror"] = 470,
							["Zaliga"] = 7678001,
							["Evisca"] = 303004,
							["Gorog"] = 993959,
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
						["Horde"] = {
							["Morifa"] = 513584056,
						},
						["Alliance"] = {
							["Miriyal"] = 254652133,
							["Farahn"] = 17368778,
							["Greybone"] = 23493761,
							["Amranar"] = 590918703,
							["Granjior"] = 550791164,
							["Kaldorath"] = 316865179,
							["Faerand"] = 209958642,
							["Mallusof"] = 1162234125,
							["Rahran"] = 273582302,
							["Morifa"] = 560270717,
							["Fimwack"] = 376030026,
							["Praerend"] = 553875697,
						},
					},
				},
				["Tichondrius"] = {
					["Gold"] = {
						["Horde"] = {
							["Alura"] = 645368,
							["Lorvol"] = 10000,
						},
						["Alliance"] = {
							["Zethan"] = 10000,
							["Korugen"] = 10000,
							["Mallusof"] = 970310042,
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
				["Korugen - Tichondrius"] = {
					["Player"] = {
						["Bars"] = {
							["ClassIcons"] = {
							},
						},
					},
				},
				["Zethan - Tichondrius"] = {
					["Player"] = {
						["Bars"] = {
							["ClassIcons"] = {
							},
						},
					},
				},
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
						["show_v2_party_textures"] = false,
						["ShowV2Textures"] = false,
						["show_v2_textures"] = false,
						["ShowV2PartyTextures"] = false,
						["show_v2_arena_textures"] = false,
						["ShowV2ArenaTextures"] = false,
					},
					["Focus"] = {
						["Castbar"] = {
							["Colors"] = {
								["Bar"] = {
									["a"] = 0.680000007152557,
									["r"] = 0,
									["g"] = 1,
									["b"] = 0,
								},
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
							["General"] = {
								["Width"] = 400,
								["Y"] = 230,
								["X"] = 643,
								["Height"] = 35,
								["IndividualColor"] = true,
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
							["Health"] = {
								["Color"] = "Individual",
								["IndividualColor"] = {
									["b"] = 0,
									["g"] = 1,
									["r"] = 0,
								},
							},
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
							["Shield"] = {
								["Color"] = {
									["a"] = 1,
									["r"] = 1,
									["g"] = 0,
									["b"] = 0,
								},
								["BarColor"] = {
									["a"] = 0.680000007152557,
									["b"] = 0,
									["g"] = 0,
									["r"] = 1,
								},
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
							["General"] = {
								["Point"] = "TOP",
								["Width"] = 400,
								["Y"] = -280,
								["X"] = 0,
								["Height"] = 30,
								["IndividualColor"] = true,
							},
						},
						["Icons"] = {
							["PvP"] = {
								["Enable"] = true,
							},
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
								["IndividualColor"] = {
									["b"] = 0,
									["g"] = 1,
									["r"] = 0,
								},
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
						["Border"] = {
							["EdgeSize"] = 8,
							["EdgeFile"] = "1 Pixel",
							["Aggro"] = true,
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
								["ShortClassification"] = true,
								["Format"] = "Name + Level",
								["RelativePoint"] = "TOPRIGHT",
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
						["Point"] = "BOTTOMRIGHT",
						["Y"] = 310,
						["X"] = -50,
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
							["Colors"] = {
								["Bar"] = {
									["a"] = 1,
									["g"] = 1,
									["r"] = 1,
								},
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
							["General"] = {
								["Point"] = "CENTER",
								["Width"] = 400,
								["Y"] = -200,
								["X"] = 0,
								["Height"] = 30,
								["Icon"] = false,
							},
						},
						["Icons"] = {
							["Combat"] = {
								["Y"] = -20,
								["Enable"] = true,
							},
							["Resting"] = {
								["Enable"] = true,
							},
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
							["SoulShards"] = {
								["Y"] = -4,
								["X"] = 25,
								["Lock"] = false,
								["Padding"] = 1,
								["Width"] = 200,
								["Texture"] = "Otravi",
							},
							["DruidMana"] = {
								["OverPower"] = false,
								["Enable"] = false,
							},
							["Chi"] = {
								["Y"] = 90,
								["X"] = 375,
								["Lock"] = false,
								["Width"] = 200,
								["Texture"] = "oUF LUI",
							},
							["TotalAbsorb"] = {
								["Enable"] = true,
							},
							["Health"] = {
								["IndividualColor"] = {
									["b"] = 0,
									["g"] = 1,
									["r"] = 0,
								},
							},
							["HealPrediction"] = {
								["Enable"] = true,
							},
							["ClassIcons"] = {
								["Y"] = 90,
								["X"] = 375,
								["Lock"] = false,
								["Width"] = 200,
								["Texture"] = "oUF LUI",
							},
						},
						["Border"] = {
							["EdgeSize"] = 8,
							["EdgeFile"] = "1 Pixel",
							["Aggro"] = true,
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
						["Icons"] = {
							["Raid"] = {
								["Y"] = 0,
								["Enable"] = true,
								["Size"] = 60,
							},
						},
						["Width"] = 80,
						["Y"] = 150,
						["X"] = 0,
						["GroupPadding"] = 1,
						["Backdrop"] = {
							["Color"] = {
								["a"] = 0.110000014305115,
							},
							["Texture"] = "None",
						},
						["Height"] = 40,
						["Padding"] = 1,
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
								["IndividualColor"] = {
									["b"] = 0,
									["g"] = 1,
									["r"] = 0,
								},
							},
							["Power"] = {
								["Enable"] = true,
							},
						},
						["Texts"] = {
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
							["Name"] = {
								["Point"] = "LEFT",
								["RelativePoint"] = "LEFT",
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
						["Alliance - Proudmoore"] = {
							"/cw Legira-Proudmoore thanks!", -- [1]
							"/cw Galk-Sargeras nee taht?", -- [2]
							" ?", -- [3]
							"/cw Legira-Proudmoore thanks!", -- [4]
							" ?", -- [5]
							"/macro", -- [6]
							" gone", -- [7]
							"/cw Legira-Proudmoore no worries :)", -- [8]
							"/cw Legira-Proudmoore thanks!", -- [9]
							"/cw Legira-Proudmoore no worries :)", -- [10]
							"/macro", -- [11]
							"/cw Galk-Sargeras nee taht?", -- [12]
							"/i we could just stay where we were", -- [13]
							" ?", -- [14]
							"/g Damn!", -- [15]
							"/cw Legira-Proudmoore thanks!", -- [16]
							"/cw Galk-Sargeras nee taht?", -- [17]
							" ?", -- [18]
							"/cw Legira-Proudmoore thanks!", -- [19]
							" ?", -- [20]
							"/macro", -- [21]
							"/cw Legira-Proudmoore no worries :)", -- [22]
							"/macro", -- [23]
							"/i we could just stay where we were", -- [24]
							"/g Damn!", -- [25]
							"/cw Galk-Sargeras nee taht?", -- [26]
							"/cw Legira-Proudmoore thanks!", -- [27]
							"/macro", -- [28]
							"/i we could just stay where we were", -- [29]
							"/cw Galk-Sargeras nee taht?", -- [30]
							"/macro", -- [31]
							"/cw Galk-Sargeras nee taht?", -- [32]
						},
						["Horde - Proudmoore"] = {
							"/i Could we have a countdown on Vari, instead of instantpull? :)", -- [1]
							"/i I'll nova the adds to the left", -- [2]
							"/i So we can run behind them", -- [3]
							"/i Hex?", -- [4]
							"/i spread", -- [5]
							"/i lightning", -- [6]
							"/i out of middle", -- [7]
							"/i next", -- [8]
							"/i west side will be ccd", -- [9]
							"/i or there", -- [10]
							"/i better there", -- [11]
							"/i spread", -- [12]
							"/cw Eretriä-BurningBlade Instead of saying people are shit and all kinds of offensive and frankly stupid things... Try with positivity first. It makes people dislike you less.", -- [13]
							"/cw Eretriä-BurningBlade See", -- [14]
							"/cw Eretriä-BurningBlade Stuff like that is why I muted you", -- [15]
							"/cw Eretriä-BurningBlade have a better day", -- [16]
							"/i I like this group", -- [17]
							"/i Leear, need that?", -- [18]
							" gz!", -- [19]
							" Finally! :)", -- [20]
							" How does it feel? :P", -- [21]
							" oh", -- [22]
							" and do WQs now", -- [23]
							" they are A BREEZE :P", -- [24]
							" hahaha", -- [25]
							"/i hero on pull, or?", -- [26]
							"/i He did tho", -- [27]
							"/i same", -- [28]
							"/cw Amiity-Zul'jin It's an upgrade for me, sorruy", -- [29]
							"/cw Amiity-Zul'jin cheers !:)", -- [30]
							"/cw Buzhidaone-Illidan Need that relic?", -- [31]
							"/cw Buzhidaone-Illidan gz then! :)", -- [32]
						},
						["Alliance - Tichondrius"] = {
							"/4 lawl", -- [1]
							"/ROLL", -- [2]
							"/g I hate this tier leggo shit", -- [3]
							"/s thanks Rpm", -- [4]
							"/4 lawl", -- [5]
							"/g I hate this tier leggo shit", -- [6]
							"/4 lawl", -- [7]
							"/g 0", -- [8]
							"/g that's were you're wrong", -- [9]
							" I havent killed either?", -- [10]
							" no but ok", -- [11]
							"/ROLL", -- [12]
							"/s thanks Rpm", -- [13]
							"/4 lawl", -- [14]
							"/g I hate this tier leggo shit", -- [15]
							"/4 lawl", -- [16]
							"/g 0", -- [17]
							" I havent killed either?", -- [18]
							"/ROLL", -- [19]
							"/4 lawl", -- [20]
							"/g 0", -- [21]
							"/ROLL", -- [22]
							"/g 0", -- [23]
							"/raid I havent popped Hymn at all", -- [24]
							"/raid when do you want it", -- [25]
							"/4 yeah, but if we have 2 that do that, we have a tendency to overlap", -- [26]
							"/raid I'm sorry", -- [27]
							"/raid 121", -- [28]
							"/roll 50000", -- [29]
							"/raid 1", -- [30]
							"/ROLL 50000", -- [31]
							"/cw Kaligon-Tichondrius lol", -- [32]
						},
						["Horde - Bleeding Hollow"] = {
							" Did Ragefire with a bunch of level 19-20s", -- [1]
							"/i ok", -- [2]
							" Did Ragefire with a bunch of level 19-20s", -- [3]
							" Also Prot Warrior deals a good amount of damage on AoE", -- [4]
							" Did Ragefire with a bunch of level 19-20s", -- [5]
							"/i ok", -- [6]
							"/i have a good one! :)", -- [7]
							" Also Prot Warrior deals a good amount of damage on AoE", -- [8]
							"/i got one from autopop up", -- [9]
							" Did Ragefire with a bunch of level 19-20s", -- [10]
							" Also Prot Warrior deals a good amount of damage on AoE", -- [11]
							" Did Ragefire with a bunch of level 19-20s", -- [12]
							"/i ok", -- [13]
							" Also Prot Warrior deals a good amount of damage on AoE", -- [14]
							" Did Ragefire with a bunch of level 19-20s", -- [15]
							"/i ok", -- [16]
							" Did Ragefire with a bunch of level 19-20s", -- [17]
							" Also Prot Warrior deals a good amount of damage on AoE", -- [18]
							"/i ok", -- [19]
							" Also Prot Warrior deals a good amount of damage on AoE", -- [20]
							" Did Ragefire with a bunch of level 19-20s", -- [21]
							"/i ok", -- [22]
							" Did Ragefire with a bunch of level 19-20s", -- [23]
							" Also Prot Warrior deals a good amount of damage on AoE", -- [24]
							" Did Ragefire with a bunch of level 19-20s", -- [25]
							" Also Prot Warrior deals a good amount of damage on AoE", -- [26]
							"/target Draaka", -- [27]
							"/1 Yeah, that's gone now", -- [28]
							"/1 Dungeons are still good", -- [29]
							"/1 But you can stay in teh same zone to quest afterwards", -- [30]
							"/1 Heirlooms, got nerfed, not the other way around. :)", -- [31]
							"/1 Depends on level though. 30-60 slowed down alot", -- [32]
						},
						["Horde - Tichondrius"] = {
							" aight logging over", -- [1]
							" why", -- [2]
							" what?", -- [3]
							"/cw Duisternis Instant invite = Instant decline", -- [4]
							" aight logging over", -- [5]
							" but suiper bowl", -- [6]
							" why", -- [7]
							" what?", -- [8]
							"/cw Duisternis Instant invite = Instant decline", -- [9]
							" aight logging over", -- [10]
							"/cw Duisternis Instant invite = Instant decline", -- [11]
							" but suiper bowl", -- [12]
							" what?", -- [13]
							" aight logging over", -- [14]
							" but suiper bowl", -- [15]
							" aight logging over", -- [16]
							" why", -- [17]
							"/cw Duisternis Instant invite = Instant decline", -- [18]
							" but suiper bowl", -- [19]
							" what?", -- [20]
							" aight logging over", -- [21]
							" but suiper bowl", -- [22]
							" aight logging over", -- [23]
							" why", -- [24]
							" but suiper bowl", -- [25]
							" aight logging over", -- [26]
							" why", -- [27]
							" aight logging over", -- [28]
							"/s this way", -- [29]
							"/i this way", -- [30]
							"/i far away", -- [31]
							"/i no heals", -- [32]
						},
					},
				},
			},
			["profiles"] = {
				["Korugen - Tichondrius"] = {
					["modules"] = {
					},
				},
				["Default"] = {
					["y"] = 46.0000018399687,
					["x"] = 27.9999974495862,
					["modules"] = {
					},
				},
				["Base"] = {
					["modules"] = {
					},
					["x"] = 33.3724626035666,
					["General"] = {
						["Font"] = {
							["Font"] = "Prototype",
						},
						["MinimalistTabs"] = false,
					},
					["y"] = 43.6975475017343,
				},
				["Zethan - Tichondrius"] = {
					["modules"] = {
					},
				},
				["Lorvol - Tichondrius"] = {
					["modules"] = {
					},
				},
				["Alura - Tichondrius"] = {
					["modules"] = {
					},
				},
			},
		},
		["Panels"] = {
			["profiles"] = {
				["Korugen - Tichondrius"] = {
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
				["Default"] = {
					["MicroMenu"] = {
						["IsShown"] = true,
					},
					["Minimap"] = {
						["IsShown"] = true,
					},
				},
				["Base"] = {
					["Minimap"] = {
						["IsShown"] = true,
					},
					["Chat"] = {
						["AlwaysShow"] = true,
						["IsShown"] = true,
					},
					["Tps"] = {
						["Width"] = 600,
					},
					["Raid"] = {
						["Direction"] = "SOLID",
						["Animation"] = "None",
						["IsShown"] = true,
						["Width"] = 370,
						["Anchor"] = "CompactRaidFrameContainer",
						["Height"] = 205,
					},
					["MicroMenu"] = {
						["IsShown"] = true,
					},
				},
				["Zethan - Tichondrius"] = {
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
				["Lorvol - Tichondrius"] = {
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
				["Alura - Tichondrius"] = {
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
				["Korugen - Tichondrius"] = {
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
				["Zethan - Tichondrius"] = {
					["micromenu_btn"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.8, -- [4]
					},
					["color_bottom"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["tpsborder"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["tps"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["chat"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["bar"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.7, -- [4]
					},
					["micromenu_bg"] = {
						0.27, -- [1]
						0, -- [2]
						0.7, -- [3]
						0.8, -- [4]
					},
					["orb_cycle"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["color_top"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["raid"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["theme"] = "Warlock",
					["micromenu_bg2"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.7, -- [4]
					},
					["chatborder"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["minimap"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["editbox"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["bar2"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["dpsborder"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["dps"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["raidborder"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["chat2"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["orb_hover"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["sidebar"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["micromenu_btn_hover"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.8, -- [4]
					},
					["micromenu"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
					},
					["navi"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.6, -- [4]
					},
					["chat2border"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
					["orb"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
					},
					["navi_hover"] = {
						0.57, -- [1]
						0.22, -- [2]
						1, -- [3]
						0.4, -- [4]
					},
				},
				["Lorvol - Tichondrius"] = {
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
					["raidborder"] = {
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
					["orb_hover"] = {
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
					["micromenu_btn_hover"] = {
						0.04, -- [1]
						0.39, -- [2]
						0.98, -- [3]
						0.8, -- [4]
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
				["Alura - Tichondrius"] = {
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
						["HorizontalSpacing"] = 3,
						["Duration"] = {
							["Font"] = "Prototype",
							["Size"] = 18,
						},
						["NumRows"] = 10,
						["Y"] = 250,
						["X"] = 505,
						["Count"] = {
							["Font"] = "Prototype",
						},
						["SortMethod"] = "Index",
						["Anchor"] = "BOTTOMLEFT",
						["AurasPerRow"] = 4,
						["Size"] = 60,
					},
					["Buffs"] = {
						["Consolidate"] = false,
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
				["Korugen - Tichondrius"] = {
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
				["Default"] = {
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
					["Bottombar3"] = {
						["State"] = {
							"3", -- [1]
							["Alt"] = "3",
							["Ctrl"] = "3",
						},
					},
					["SidebarLeft1"] = {
						["State"] = {
							"9", -- [1]
						},
					},
					["SidebarRight1"] = {
						["State"] = {
							"10", -- [1]
						},
						["IsOpen"] = true,
					},
				},
				["Alura - Tichondrius"] = {
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
				["Zethan - Tichondrius"] = {
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
				["Base"] = {
					["General"] = {
						["MacroFont"] = "Prototype",
						["ShowMacro"] = true,
						["HotkeyFont"] = "Prototype",
						["ShowEquipped"] = true,
						["CountFont"] = "Prototype",
						["ShowHotkey"] = true,
					},
					["Bottombar1"] = {
						["State"] = {
							"1", -- [1]
							"7", -- [2]
							"1", -- [3]
							[5] = "1",
							["Alt"] = "1",
							["Ctrl"] = "1",
						},
						["Y"] = 5,
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
					["ExtraActionBar"] = {
						["Y"] = 40,
						["X"] = 290,
					},
					["Bottombar4"] = {
						["State"] = {
							"7", -- [1]
							["Alt"] = "7",
							["Ctrl"] = "7",
						},
					},
					["SidebarLeft2"] = {
						["Anchor"] = "BT4Bar8",
						["State"] = {
							"1", -- [1]
						},
					},
					["BottomTexture"] = {
						["Enable"] = false,
						["Y"] = 180,
					},
					["Bottombar2"] = {
						["State"] = {
							"2", -- [1]
							["Alt"] = "2",
							["Ctrl"] = "2",
						},
						["Y"] = 35,
					},
					["Bottombar6"] = {
						["State"] = {
							"9", -- [1]
							["Alt"] = "9",
							["Ctrl"] = "9",
						},
					},
					["SidebarLeft1"] = {
						["Anchor"] = "BT4Bar10",
						["State"] = {
							"3", -- [1]
						},
					},
					["Bottombar3"] = {
						["State"] = {
							"1", -- [1]
							["Alt"] = "5",
							["Ctrl"] = "5",
						},
					},
					["TopTexture"] = {
						["Y"] = 430,
						["X"] = 590,
						["Enable"] = false,
						["Alpha"] = 1,
					},
					["SidebarRight1"] = {
						["Enable"] = false,
						["Anchor"] = "BT4Bar9",
						["State"] = {
							"4", -- [1]
						},
					},
				},
				["Lorvol - Tichondrius"] = {
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
		["Korugen - Tichondrius"] = "Base",
		["Kaldorath - Proudmoore"] = "Base",
		["Gorog - Bleeding Hollow"] = "Base",
		["Praerend - Proudmoore"] = "Base",
		["Lorvol - Tichondrius"] = "Base",
		["Fimwack - Proudmoore"] = "Base",
		["Greybone - Proudmoore"] = "Base",
		["Faerand - Proudmoore"] = "Base",
		["Rahran - Proudmoore"] = "Base",
		["Amranar - Proudmoore"] = "Base",
		["Farahn - Proudmoore"] = "Base",
		["Rentror - Bleeding Hollow"] = "Base",
		["Mallusof - Tichondrius"] = "Base",
		["Gottagetlia - Aggramar"] = "Base",
		["Granjior - Proudmoore"] = "Base",
		["Zaliga - Bleeding Hollow"] = "Base",
		["Morifa - Proudmoore"] = "Base",
		["Miriyal - Proudmoore"] = "Base",
		["Zethan - Tichondrius"] = "Base",
		["Alura - Tichondrius"] = "Base",
		["Evisca - Bleeding Hollow"] = "Base",
	},
	["global"] = {
		["luiconfig"] = {
			["Korugen - Tichondrius"] = {
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
			["Lorvol - Tichondrius"] = {
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
			["Rentror - Bleeding Hollow"] = {
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
			["Zethan - Tichondrius"] = {
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
			["Alura - Tichondrius"] = {
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
		},
	},
	["profiles"] = {
		["Korugen - Tichondrius"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
		["Default"] = {
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
				["Y"] = -100,
				["X"] = -2000,
				["Health"] = {
					["Texture"] = "LUI_Gradient",
				},
				["Hideuf"] = true,
			},
			["Minimap"] = {
				["Font"] = {
					["Font"] = "Prototype",
				},
			},
		},
		["Zethan - Tichondrius"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
		["Lorvol - Tichondrius"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
		["Alura - Tichondrius"] = {
			["modules"] = {
				["Merchant"] = false,
			},
		},
	},
}
LUIGold = nil
LUI_Themes = nil
LUI_Layouts = nil
