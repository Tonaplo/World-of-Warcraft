
Grid2DB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Granjior - Proudmoore"] = {
					"Healer", -- [1]
					"Non-Healer", -- [2]
					"Non-Healer", -- [3]
					["enabled"] = true,
				},
				["Mallusof - Tichondrius"] = {
					"Healer", -- [1]
					"Healer", -- [2]
					"Non-Healer", -- [3]
					["enabled"] = true,
				},
				["Miriyal - Proudmoore"] = {
					"Non-Healer", -- [1]
					"Healer", -- [2]
					"Non-Healer", -- [3]
					["enabled"] = true,
				},
				["Amranar - Proudmoore"] = {
					"Non-Healer", -- [1]
					"Non-Healer", -- [2]
					"Non-Healer", -- [3]
					"Healer", -- [4]
					["enabled"] = true,
				},
				["Farahn - Proudmoore"] = {
					"Non-Healer", -- [1]
					"Non-Healer", -- [2]
					"Healer", -- [3]
					["enabled"] = true,
				},
				["Alura - Tichondrius"] = {
					"Healer", -- [1]
					"Healer", -- [2]
					"Non-Healer", -- [3]
					["enabled"] = true,
				},
				["Mallusof - Icecrown"] = {
					"Healer", -- [1]
					"Healer", -- [2]
					"Non-Healer", -- [3]
					["enabled"] = true,
				},
			},
		},
		["Grid2RaidDebuffs"] = {
			["profiles"] = {
				["Non-Healer"] = {
					["autodetect"] = {
						["zones"] = {
							[1188] = true,
						},
						["debuffs"] = {
							[245994] = "1188@946@Aggramar",
							[245990] = "1188@946@Aggramar",
							[244736] = "1188@946@Aggramar",
						},
					},
					["defaultEJ_difficulty"] = 16,
					["lastSelectedModule"] = "Legion",
					["enabledModules"] = {
						["Legion"] = true,
					},
					["lastSelectedInstance"] = 1015,
				},
				["Healer"] = {
					["defaultEJ_difficulty"] = 16,
					["lastSelectedModule"] = "Legion",
					["debuffs"] = {
						[1188] = {
							["Aggramar"] = {
								245994, -- [1]
								245990, -- [2]
								244736, -- [3]
								["order"] = 10,
								["ejid"] = 1984,
							},
						},
					},
					["enabledModules"] = {
						["Legion"] = true,
					},
					["lastSelectedInstance"] = 1015,
				},
			},
		},
		["Grid2Layout"] = {
			["profiles"] = {
				["Non-Healer"] = {
					["BackgroundG"] = 1,
					["groupAnchor"] = "TOPRIGHT",
					["BorderB"] = 0.501960784313726,
					["layouts"] = {
						["arena"] = "By Group",
						["raid"] = "By Group & Role",
						["solo"] = "Solo",
						["party"] = "Party",
					},
					["PosY"] = -601.173910506476,
					["BackgroundB"] = 1,
					["BorderG"] = 0.501960784313726,
					["BorderTexture"] = "Stripped_medium",
					["BackgroundA"] = 0,
					["BorderR"] = 0.501960784313726,
					["PosX"] = -14.5161313765057,
					["anchor"] = "TOPRIGHT",
					["horizontal"] = false,
					["Spacing"] = 3,
					["BackgroundR"] = 1,
				},
				["Healer"] = {
					["BorderB"] = 0.501960784313726,
					["layouts"] = {
						["party"] = "Party",
						["arena"] = "By Group",
						["solo"] = "Solo",
						["raid"] = "By Group & Role",
					},
					["BackgroundR"] = 1,
					["BorderR"] = 0.501960784313726,
					["PosX"] = -1.43926714785334,
					["anchor"] = "TOP",
					["BackgroundG"] = 1,
					["minimapIcon"] = {
						["hide"] = true,
					},
					["PosY"] = -572.021416570135,
					["BackgroundA"] = 0,
					["BorderG"] = 0.501960784313726,
					["BorderTexture"] = "Stripped_medium",
					["horizontal"] = false,
					["BackgroundB"] = 1,
					["Spacing"] = 3,
				},
			},
		},
		["Grid2AoeHeals"] = {
		},
		["Grid2Options"] = {
			["profiles"] = {
				["Non-Healer"] = {
					["L"] = {
						["indicators"] = {
							["icon-center"] = "icon-top",
							["text-down"] = "text-center",
						},
					},
				},
				["Healer"] = {
					["L"] = {
						["indicators"] = {
							["text-down"] = "text-center",
							["icon-center"] = "icon-top",
						},
					},
				},
			},
		},
		["Grid2Frame"] = {
			["profiles"] = {
				["Non-Healer"] = {
					["frameColor"] = {
						["a"] = 0,
						["b"] = 0.690196078431373,
						["g"] = 0.690196078431373,
						["r"] = 0.690196078431373,
					},
					["frameHeight"] = 40,
					["frameBorder"] = 1,
					["frameBorderTexture"] = "glow",
					["font"] = "Prototype",
					["showTooltip"] = "Always",
					["orientation"] = "HORIZONTAL",
					["frameContentColor"] = {
						["r"] = 0.549019607843137,
					},
					["frameWidth"] = 70,
					["frameBorderDistance"] = 0,
				},
				["Healer"] = {
					["frameColor"] = {
						["a"] = 0,
						["r"] = 0.690196078431373,
						["g"] = 0.690196078431373,
						["b"] = 0.690196078431373,
					},
					["frameBorder"] = 1,
					["showTooltip"] = "Always",
					["frameBorderDistance"] = 0,
					["frameBorderTexture"] = "glow",
					["font"] = "Prototype",
					["frameHeight"] = 55,
					["frameContentColor"] = {
						["r"] = 0.549019607843137,
					},
					["frameWidth"] = 119,
					["orientation"] = "HORIZONTAL",
				},
			},
		},
		["Grid2Utils"] = {
		},
	},
	["profileKeys"] = {
		["Korugen - Tichondrius"] = "Non-Healer",
		["Kaldorath - Proudmoore"] = "Non-Healer",
		["Praerend - Proudmoore"] = "Non-Healer",
		["Fimwack - Proudmoore"] = "Non-Healer",
		["Greybone - Proudmoore"] = "Non-Healer",
		["Deminath - Hyjal"] = "Non-Healer",
		["Faerand - Proudmoore"] = "Non-Healer",
		["Rahran - Proudmoore"] = "Non-Healer",
		["Farahn - Proudmoore"] = "Non-Healer",
		["Mallusof - Tichondrius"] = "Healer",
		["Granjior - Proudmoore"] = "Non-Healer",
		["Morifa - Proudmoore"] = "Non-Healer",
		["Miriyal - Proudmoore"] = "Non-Healer",
		["Amranar - Proudmoore"] = "Non-Healer",
		["Zethan - Tichondrius"] = "Non-Healer",
		["Alura - Tichondrius"] = "Healer",
		["Mallusof - Icecrown"] = "Healer",
	},
	["profiles"] = {
		["Non-Healer"] = {
			["hideBlizzardRaidFrames"] = true,
			["indicators"] = {
				["corner-top-left"] = {
					["maxIcons"] = 3,
					["type"] = "icons",
					["iconSize"] = 20,
					["level"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["reverseCooldown"] = true,
				},
				["side-top"] = {
					["fontSize"] = 8,
					["type"] = "text",
					["level"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["duration"] = true,
					["textlength"] = 12,
					["font"] = "Friz Quadrata TT",
				},
				["corner-bottom-right"] = {
					["maxIcons"] = 3,
					["type"] = "icons",
					["iconSize"] = 20,
					["level"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["reverseCooldown"] = true,
				},
				["text-down"] = {
					["fontSize"] = 10,
					["type"] = "text",
					["shadowDisabled"] = true,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 20,
					["fontFlags"] = "OUTLINE",
				},
				["absorbs-color"] = {
					["type"] = "bar-color",
				},
				["icon-left"] = {
					["type"] = "icon",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 1,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["fontSize"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 8,
					["type"] = "icon",
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["fontSize"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["type"] = "icon",
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["alpha"] = {
					["type"] = "alpha",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Blizzard Raid Bar",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 1,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["texture"] = "Gradient",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-bottom-left"] = {
					["disableStack"] = true,
					["type"] = "icons",
					["borderOpacity"] = 0,
					["iconSpacing"] = 0,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 3,
					["orientation"] = "HORIZONTAL",
					["iconSize"] = 20,
					["level"] = 8,
					["maxIconsPerRow"] = 3,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["importantDebuffsBorder-color"] = {
					["type"] = "multibar-color",
				},
				["corner-top-right"] = {
					["maxIcons"] = 3,
					["type"] = "icons",
					["iconSize"] = 20,
					["level"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["reverseCooldown"] = true,
				},
			},
			["statusMap"] = {
				["corner-top-left"] = {
				},
				["side-top"] = {
				},
				["corner-bottom-right"] = {
					["buffs-Bottom-Right-Buffs-mine"] = 50,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["absorbs-color"] = {
				},
				["icon-left"] = {
					["dungeon-role"] = 157,
				},
				["border"] = {
				},
				["text-down-color"] = {
					["classcolor"] = 50,
				},
				["side-top-color"] = {
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["leader"] = 156,
					["death"] = 155,
				},
				["health-color"] = {
					["debuffs-ImportantDebuffs"] = 53,
					["health-current"] = 50,
					["heal-absorbs"] = 52,
				},
				["corner-top-right"] = {
					["buffs-DefensiveCooldowns"] = 50,
				},
				["heals-color"] = {
					["heal-absorbs"] = 52,
					["color-IncommingHealsColor"] = 53,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["health"] = {
					["health-current"] = 50,
					["heal-absorbs"] = 51,
				},
				["corner-bottom-left"] = {
					["buffs-Bottom-Left-Buffs-mine"] = 50,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["death"] = 95,
					["offline"] = 93,
					["vehicle"] = 70,
				},
				["heals"] = {
					["shields"] = 100,
				},
			},
			["versions"] = {
				["Grid2"] = 5,
				["Grid2RaidDebuffs"] = 1,
			},
			["statuses"] = {
				["buffs-Bottom-Right-Buffs-mine"] = {
					["auras"] = {
						"Rejuvenation", -- [1]
						"Rejuvenation (Germination)", -- [2]
						"Renew", -- [3]
						"Atonement", -- [4]
					},
					["type"] = "buffs",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["heal-absorbs"] = {
					["thresholdMedium"] = 0,
					["color3"] = {
						["r"] = 0.231372549019608,
					},
					["thresholdLow"] = 0,
					["color2"] = {
						["g"] = 1,
						["r"] = 0.0588235294117647,
					},
					["color1"] = {
						["g"] = 1,
						["r"] = 0.0705882352941177,
					},
				},
				["color-absorbs-color"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "color",
				},
				["color-IncommingHealsColor"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 0.5,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["leader"] = {
					["hideInCombat"] = true,
				},
				["debuffs-ImportantDebuffs"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["auras"] = {
						"Fulminating Pulse", -- [1]
						"Chilled Blood", -- [2]
						"Ravenous Blaze", -- [3]
						"Withering Roots", -- [4]
						"Soulblight", -- [5]
						"Soulbomb", -- [6]
						"Soulburst", -- [7]
					},
				},
				["heals-incoming"] = {
					["multiplier"] = 1.6,
					["includePlayerHeals"] = true,
				},
				["role"] = {
					["hideInCombat"] = true,
				},
				["buffs-Bottom-Left-Buffs-mine"] = {
					["auras"] = {
						"Prayer of Mending", -- [1]
						"Power Word: Shield", -- [2]
						"Regrowth", -- [3]
						"Wild Growth", -- [4]
					},
					["type"] = "buffs",
					["mine"] = 1,
					["color1"] = {
						["a"] = 0,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["debuffs-AllDebuffs"] = {
					["type"] = "debuffs",
					["auras"] = {
						"Challenger's Burden", -- [1]
						"Exhaustion", -- [2]
						"Sated", -- [3]
						"Fatigued", -- [4]
						"Temporal Displacement", -- [5]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["dungeon-role"] = {
					["hideDamagers"] = true,
					["hideInCombat"] = true,
				},
				["raid-debuffs"] = {
					["debuffs"] = {
						[1045] = {
							197541, -- [1]
							213583, -- [2]
							197333, -- [3]
							197941, -- [4]
							195032, -- [5]
							214893, -- [6]
							194945, -- [7]
							192519, -- [8]
							192520, -- [9]
							202913, -- [10]
							202919, -- [11]
							214625, -- [12]
							203685, -- [13]
							204899, -- [14]
							199917, -- [15]
							206019, -- [16]
							214804, -- [17]
							200904, -- [18]
						},
						[1046] = {
							193597, -- [1]
							193716, -- [2]
							197326, -- [3]
							193152, -- [4]
							193171, -- [5]
							193018, -- [6]
							193093, -- [7]
							192050, -- [8]
							191855, -- [9]
							192094, -- [10]
							192131, -- [11]
							192706, -- [12]
							192985, -- [13]
							192675, -- [14]
							192794, -- [15]
						},
						[1079] = {
							203957, -- [1]
							220871, -- [2]
							200227, -- [3]
							199811, -- [4]
							200040, -- [5]
							196074, -- [6]
							195791, -- [7]
							203649, -- [8]
							220481, -- [9]
							196115, -- [10]
							196562, -- [11]
							196804, -- [12]
							220443, -- [13]
							197776, -- [14]
						},
						[1081] = {
							197418, -- [1]
							197546, -- [2]
							197687, -- [3]
							197821, -- [4]
							197484, -- [5]
							198245, -- [6]
							198073, -- [7]
							198446, -- [8]
							198501, -- [9]
							194956, -- [10]
							195254, -- [11]
							194966, -- [12]
							198820, -- [13]
							199143, -- [14]
						},
						[1114] = {
							228054, -- [1]
							227982, -- [2]
							193367, -- [3]
							227903, -- [4]
							228058, -- [5]
							228519, -- [6]
							202476, -- [7]
							232450, -- [8]
							227570, -- [9]
							227566, -- [10]
							227539, -- [11]
							228250, -- [12]
							228246, -- [13]
							228226, -- [14]
							192044, -- [15]
							198088, -- [16]
							228915, -- [17]
							227959, -- [18]
							227475, -- [19]
							192044, -- [20]
							227781, -- [21]
						},
						[1147] = {
							233430, -- [1]
							233983, -- [2]
							235213, -- [3]
							235240, -- [4]
							240209, -- [5]
							236304, -- [6]
							236550, -- [7]
							236519, -- [8]
							236603, -- [9]
							234996, -- [10]
							234995, -- [11]
							236330, -- [12]
							236541, -- [13]
							233263, -- [14]
							239264, -- [15]
							236712, -- [16]
							231363, -- [17]
							230345, -- [18]
							234264, -- [19]
							233279, -- [20]
							233062, -- [21]
							231998, -- [22]
							231729, -- [23]
							231770, -- [24]
							234128, -- [25]
							236449, -- [26]
							236241, -- [27]
							236515, -- [28]
							235989, -- [29]
							236361, -- [30]
							235968, -- [31]
							239932, -- [32]
							234295, -- [33]
							240911, -- [34]
							238505, -- [35]
							238429, -- [36]
							239216, -- [37]
							239155, -- [38]
							236710, -- [39]
							241822, -- [40]
							236555, -- [41]
							236494, -- [42]
							236604, -- [43]
							239739, -- [44]
							232913, -- [45]
							230139, -- [46]
							232754, -- [47]
							230201, -- [48]
							230384, -- [49]
							230358, -- [50]
						},
						[1024] = {
							223373, -- [1]
							223355, -- [2]
							219602, -- [3]
						},
						[1087] = {
							209602, -- [1]
							209676, -- [2]
							224333, -- [3]
							209628, -- [4]
							208165, -- [5]
							211457, -- [6]
							207906, -- [7]
							207261, -- [8]
							207278, -- [9]
						},
						[1088] = {
							206482, -- [1]
							206788, -- [2]
							208910, -- [3]
							208506, -- [4]
							206641, -- [5]
							208203, -- [6]
							205344, -- [7]
							206677, -- [8]
							218502, -- [9]
							219049, -- [10]
							218424, -- [11]
							218342, -- [12]
							218809, -- [13]
							206585, -- [14]
							206936, -- [15]
							206589, -- [16]
							206388, -- [17]
							205649, -- [18]
							206398, -- [19]
							206965, -- [20]
							207143, -- [21]
							212492, -- [22]
							215458, -- [23]
							212587, -- [24]
							212647, -- [25]
							213083, -- [26]
							206607, -- [27]
							206609, -- [28]
							206615, -- [29]
							212099, -- [30]
							212568, -- [31]
							206883, -- [32]
							206222, -- [33]
							206221, -- [34]
							208672, -- [35]
							208802, -- [36]
							221891, -- [37]
							221603, -- [38]
							206896, -- [39]
							211261, -- [40]
							209615, -- [41]
							209973, -- [42]
							209971, -- [43]
							211887, -- [44]
							209170, -- [45]
							209599, -- [46]
							206480, -- [47]
							213238, -- [48]
							212795, -- [49]
							208230, -- [50]
							216024, -- [51]
							216040, -- [52]
							204766, -- [53]
							214657, -- [54]
							214662, -- [55]
							211659, -- [56]
							204471, -- [57]
						},
						[1094] = {
							207409, -- [1]
							206651, -- [2]
							211802, -- [3]
							205771, -- [4]
							209158, -- [5]
							205612, -- [6]
							210451, -- [7]
							208385, -- [8]
							211634, -- [9]
							197943, -- [10]
							204859, -- [11]
							198006, -- [12]
							198108, -- [13]
							197980, -- [14]
							205611, -- [15]
							204504, -- [16]
							203045, -- [17]
							203096, -- [18]
							204463, -- [19]
							203646, -- [20]
							210279, -- [21]
							210315, -- [22]
							213162, -- [23]
							226821, -- [24]
							211507, -- [25]
							211471, -- [26]
							214529, -- [27]
							212886, -- [28]
							215845, -- [29]
							210099, -- [30]
							209469, -- [31]
							209471, -- [32]
							210984, -- [33]
							208697, -- [34]
							208929, -- [35]
							215128, -- [36]
							203110, -- [37]
							203102, -- [38]
							207681, -- [39]
							204731, -- [40]
							203770, -- [41]
							203125, -- [42]
							203787, -- [43]
							203086, -- [44]
							204044, -- [45]
							203121, -- [46]
							205341, -- [47]
							204078, -- [48]
							214543, -- [49]
							215307, -- [50]
							215460, -- [51]
							213124, -- [52]
							210850, -- [53]
							215582, -- [54]
							218519, -- [55]
							210228, -- [56]
						},
						[1188] = {
							245990, -- [1]
							245994, -- [2]
							244736, -- [3]
						},
						[1065] = {
							192799, -- [1]
							198496, -- [2]
							200732, -- [3]
							200404, -- [4]
							200154, -- [5]
							201953, -- [6]
							210150, -- [7]
							199176, -- [8]
							205549, -- [9]
						},
						[1066] = {
							201379, -- [1]
							201146, -- [2]
							197783, -- [3]
							201172, -- [4]
							201159, -- [5]
							203619, -- [6]
							203641, -- [7]
							202361, -- [8]
							202266, -- [9]
							202414, -- [10]
							202306, -- [11]
							202779, -- [12]
							202792, -- [13]
							203364, -- [14]
							202217, -- [15]
							202341, -- [16]
							202300, -- [17]
						},
						[1067] = {
							196376, -- [1]
							198376, -- [2]
							198408, -- [3]
							200182, -- [4]
							200238, -- [5]
							204502, -- [6]
							200111, -- [7]
							199345, -- [8]
							199460, -- [9]
							199389, -- [10]
							191326, -- [11]
							204611, -- [12]
							204574, -- [13]
							204666, -- [14]
						},
						[1015] = {
							218888, -- [1]
							217925, -- [2]
							217966, -- [3]
							218012, -- [4]
							170196, -- [5]
							217362, -- [6]
							217362, -- [7]
						},
						[1041] = {
							196838, -- [1]
							197556, -- [2]
							193826, -- [3]
							193702, -- [4]
							198263, -- [5]
							198072, -- [6]
							198088, -- [7]
							197961, -- [8]
							193092, -- [9]
							191284, -- [10]
							193235, -- [11]
							192048, -- [12]
							191976, -- [13]
							192305, -- [14]
							192018, -- [15]
						},
						[1042] = {
							194325, -- [1]
							194216, -- [2]
							194266, -- [3]
							197264, -- [4]
							227233, -- [5]
							197858, -- [6]
							193211, -- [7]
							193364, -- [8]
							193460, -- [9]
						},
						[1018] = {
							219349, -- [1]
						},
						[1017] = {
							212867, -- [1]
							212852, -- [2]
							213665, -- [3]
							219045, -- [4]
							218888, -- [5]
						},
					},
				},
				["health-current"] = {
					["frequentHealth"] = true,
				},
				["buffs-DefensiveCooldowns"] = {
					["type"] = "buffs",
					["auras"] = {
						"Anti-Magic Shell", -- [1]
						"Ardent Defender", -- [2]
						"Barkskin", -- [3]
						"Blessing of Sacrifice", -- [4]
						"Blessing of Protection", -- [5]
						"Bristling Fur", -- [6]
						"Dancing Rune Weapon", -- [7]
						"Deterrence", -- [8]
						"Divine Protection", -- [9]
						"Evanesce", -- [10]
						"Frenzied Regeneration", -- [11]
						"Guardian of Ancient Kings", -- [12]
						"Guardian Spirit", -- [13]
						"Ironbark", -- [14]
						"Icebound Fortitude", -- [15]
						"Ice Block", -- [16]
						"Last Stand", -- [17]
						"Life Cocoon", -- [18]
						"Pain Suppression", -- [19]
						"Roar of Sacrifice", -- [20]
						"Survival Instincts", -- [21]
						"Shield Wall", -- [22]
						"Vampiric Blood", -- [23]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
			},
		},
		["Healer"] = {
			["hideBlizzardRaidFrames"] = true,
			["indicators"] = {
				["corner-top-left"] = {
					["type"] = "icons",
					["fontJustifyH"] = "CENTER",
					["fontJustifyV"] = "TOP",
					["maxIcons"] = 3,
					["font"] = "Prototype",
					["iconSize"] = 20,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["level"] = 8,
					["reverseCooldown"] = true,
					["fontSize"] = 12,
				},
				["side-top"] = {
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["duration"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
					["fontSize"] = 8,
				},
				["corner-bottom-right"] = {
					["maxIcons"] = 3,
					["type"] = "icons",
					["iconSize"] = 20,
					["level"] = 8,
					["reverseCooldown"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
				},
				["text-down"] = {
					["type"] = "text",
					["fontSize"] = 14,
					["shadowDisabled"] = true,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 20,
					["fontFlags"] = "OUTLINE",
				},
				["absorbs-color"] = {
					["type"] = "bar-color",
				},
				["icon-left"] = {
					["type"] = "icon",
					["size"] = 12,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 1,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["border"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["alpha"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "alpha",
				},
				["corner-top-right"] = {
					["maxIcons"] = 3,
					["type"] = "icons",
					["iconSize"] = 20,
					["level"] = 8,
					["reverseCooldown"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["texture"] = "Gradient",
				},
				["importantDebuffsBorder-color"] = {
					["type"] = "multibar-color",
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["corner-bottom-left"] = {
					["disableStack"] = true,
					["type"] = "icons",
					["borderOpacity"] = 0,
					["iconSpacing"] = 0,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 3,
					["iconSize"] = 20,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 8,
					["maxIconsPerRow"] = 3,
					["orientation"] = "HORIZONTAL",
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 1,
					["texture"] = "Blizzard Raid Bar",
				},
			},
			["statuses"] = {
				["heal-absorbs"] = {
					["thresholdMedium"] = 0,
					["color3"] = {
						["r"] = 0.231372549019608,
					},
					["thresholdLow"] = 0,
					["color2"] = {
						["g"] = 1,
						["r"] = 0.0588235294117647,
					},
					["color1"] = {
						["g"] = 1,
						["r"] = 0.0705882352941177,
					},
				},
				["role"] = {
					["hideInCombat"] = true,
				},
				["raid-debuffs"] = {
					["debuffs"] = {
						[1045] = {
							197541, -- [1]
							213583, -- [2]
							197333, -- [3]
							197941, -- [4]
							195032, -- [5]
							214893, -- [6]
							194945, -- [7]
							192519, -- [8]
							192520, -- [9]
							202913, -- [10]
							202919, -- [11]
							214625, -- [12]
							203685, -- [13]
							204899, -- [14]
							199917, -- [15]
							206019, -- [16]
							214804, -- [17]
							200904, -- [18]
						},
						[1046] = {
							193597, -- [1]
							193716, -- [2]
							197326, -- [3]
							193152, -- [4]
							193171, -- [5]
							193018, -- [6]
							193093, -- [7]
							192050, -- [8]
							191855, -- [9]
							192094, -- [10]
							192131, -- [11]
							192706, -- [12]
							192985, -- [13]
							192675, -- [14]
							192794, -- [15]
						},
						[1079] = {
							203957, -- [1]
							220871, -- [2]
							200227, -- [3]
							199811, -- [4]
							200040, -- [5]
							196074, -- [6]
							195791, -- [7]
							203649, -- [8]
							220481, -- [9]
							196115, -- [10]
							196562, -- [11]
							196804, -- [12]
							220443, -- [13]
							197776, -- [14]
						},
						[1081] = {
							197418, -- [1]
							197546, -- [2]
							197687, -- [3]
							197821, -- [4]
							197484, -- [5]
							198245, -- [6]
							198073, -- [7]
							198446, -- [8]
							198501, -- [9]
							194956, -- [10]
							195254, -- [11]
							194966, -- [12]
							198820, -- [13]
							199143, -- [14]
						},
						[1114] = {
							228054, -- [1]
							227982, -- [2]
							193367, -- [3]
							227903, -- [4]
							228058, -- [5]
							228519, -- [6]
							202476, -- [7]
							232450, -- [8]
							227570, -- [9]
							227566, -- [10]
							227539, -- [11]
							228250, -- [12]
							228246, -- [13]
							228226, -- [14]
							192044, -- [15]
							198088, -- [16]
							228915, -- [17]
							227959, -- [18]
							227475, -- [19]
							192044, -- [20]
							227781, -- [21]
						},
						[1147] = {
							233430, -- [1]
							233983, -- [2]
							235213, -- [3]
							235240, -- [4]
							240209, -- [5]
							236304, -- [6]
							236550, -- [7]
							236519, -- [8]
							236603, -- [9]
							234996, -- [10]
							234995, -- [11]
							236330, -- [12]
							236541, -- [13]
							233263, -- [14]
							239264, -- [15]
							236712, -- [16]
							231363, -- [17]
							230345, -- [18]
							234264, -- [19]
							233279, -- [20]
							233062, -- [21]
							231998, -- [22]
							231729, -- [23]
							231770, -- [24]
							234128, -- [25]
							236449, -- [26]
							236241, -- [27]
							236515, -- [28]
							235989, -- [29]
							236361, -- [30]
							235968, -- [31]
							239932, -- [32]
							234295, -- [33]
							240911, -- [34]
							238505, -- [35]
							238429, -- [36]
							239216, -- [37]
							239155, -- [38]
							236710, -- [39]
							241822, -- [40]
							236555, -- [41]
							236494, -- [42]
							236604, -- [43]
							239739, -- [44]
							232913, -- [45]
							230139, -- [46]
							232754, -- [47]
							230201, -- [48]
							230384, -- [49]
							230358, -- [50]
						},
						[1024] = {
							223373, -- [1]
							223355, -- [2]
							219602, -- [3]
						},
						[1087] = {
							209602, -- [1]
							209676, -- [2]
							224333, -- [3]
							209628, -- [4]
							208165, -- [5]
							211457, -- [6]
							207906, -- [7]
							207261, -- [8]
							207278, -- [9]
						},
						[1088] = {
							206482, -- [1]
							206788, -- [2]
							208910, -- [3]
							208506, -- [4]
							206641, -- [5]
							208203, -- [6]
							205344, -- [7]
							206677, -- [8]
							218502, -- [9]
							219049, -- [10]
							218424, -- [11]
							218342, -- [12]
							218809, -- [13]
							206585, -- [14]
							206936, -- [15]
							206589, -- [16]
							206388, -- [17]
							205649, -- [18]
							206398, -- [19]
							206965, -- [20]
							207143, -- [21]
							212492, -- [22]
							215458, -- [23]
							212587, -- [24]
							212647, -- [25]
							213083, -- [26]
							206607, -- [27]
							206609, -- [28]
							206615, -- [29]
							212099, -- [30]
							212568, -- [31]
							206883, -- [32]
							206222, -- [33]
							206221, -- [34]
							208672, -- [35]
							208802, -- [36]
							221891, -- [37]
							221603, -- [38]
							206896, -- [39]
							211261, -- [40]
							209615, -- [41]
							209973, -- [42]
							209971, -- [43]
							211887, -- [44]
							209170, -- [45]
							209599, -- [46]
							206480, -- [47]
							213238, -- [48]
							212795, -- [49]
							208230, -- [50]
							216024, -- [51]
							216040, -- [52]
							204766, -- [53]
							214657, -- [54]
							214662, -- [55]
							211659, -- [56]
							204471, -- [57]
						},
						[1094] = {
							207409, -- [1]
							206651, -- [2]
							211802, -- [3]
							205771, -- [4]
							209158, -- [5]
							205612, -- [6]
							210451, -- [7]
							208385, -- [8]
							211634, -- [9]
							197943, -- [10]
							204859, -- [11]
							198006, -- [12]
							198108, -- [13]
							197980, -- [14]
							205611, -- [15]
							204504, -- [16]
							203045, -- [17]
							203096, -- [18]
							204463, -- [19]
							203646, -- [20]
							210279, -- [21]
							210315, -- [22]
							213162, -- [23]
							226821, -- [24]
							211507, -- [25]
							211471, -- [26]
							214529, -- [27]
							212886, -- [28]
							215845, -- [29]
							210099, -- [30]
							209469, -- [31]
							209471, -- [32]
							210984, -- [33]
							208697, -- [34]
							208929, -- [35]
							215128, -- [36]
							203110, -- [37]
							203102, -- [38]
							207681, -- [39]
							204731, -- [40]
							203770, -- [41]
							203125, -- [42]
							203787, -- [43]
							203086, -- [44]
							204044, -- [45]
							203121, -- [46]
							205341, -- [47]
							204078, -- [48]
							214543, -- [49]
							215307, -- [50]
							215460, -- [51]
							213124, -- [52]
							210850, -- [53]
							215582, -- [54]
							218519, -- [55]
							210228, -- [56]
						},
						[1188] = {
							245990, -- [1]
							245994, -- [2]
							244736, -- [3]
						},
						[1065] = {
							192799, -- [1]
							198496, -- [2]
							200732, -- [3]
							200404, -- [4]
							200154, -- [5]
							201953, -- [6]
							210150, -- [7]
							199176, -- [8]
							205549, -- [9]
						},
						[1066] = {
							201379, -- [1]
							201146, -- [2]
							197783, -- [3]
							201172, -- [4]
							201159, -- [5]
							203619, -- [6]
							203641, -- [7]
							202361, -- [8]
							202266, -- [9]
							202414, -- [10]
							202306, -- [11]
							202779, -- [12]
							202792, -- [13]
							203364, -- [14]
							202217, -- [15]
							202341, -- [16]
							202300, -- [17]
						},
						[1067] = {
							196376, -- [1]
							198376, -- [2]
							198408, -- [3]
							200182, -- [4]
							200238, -- [5]
							204502, -- [6]
							200111, -- [7]
							199345, -- [8]
							199460, -- [9]
							199389, -- [10]
							191326, -- [11]
							204611, -- [12]
							204574, -- [13]
							204666, -- [14]
						},
						[1015] = {
							218888, -- [1]
							217925, -- [2]
							217966, -- [3]
							218012, -- [4]
							170196, -- [5]
							217362, -- [6]
							217362, -- [7]
						},
						[1041] = {
							196838, -- [1]
							197556, -- [2]
							193826, -- [3]
							193702, -- [4]
							198263, -- [5]
							198072, -- [6]
							198088, -- [7]
							197961, -- [8]
							193092, -- [9]
							191284, -- [10]
							193235, -- [11]
							192048, -- [12]
							191976, -- [13]
							192305, -- [14]
							192018, -- [15]
						},
						[1042] = {
							194325, -- [1]
							194216, -- [2]
							194266, -- [3]
							197264, -- [4]
							227233, -- [5]
							197858, -- [6]
							193211, -- [7]
							193364, -- [8]
							193460, -- [9]
						},
						[1018] = {
							219349, -- [1]
						},
						[1017] = {
							212867, -- [1]
							212852, -- [2]
							213665, -- [3]
							219045, -- [4]
							218888, -- [5]
						},
					},
				},
				["heals-incoming"] = {
					["multiplier"] = 1.6,
					["includePlayerHeals"] = true,
				},
				["debuffs-ImportantDebuffs"] = {
					["auras"] = {
						"Fulminating Pulse", -- [1]
						"Chilled Blood", -- [2]
						"Ravenous Blaze", -- [3]
						"Withering Roots", -- [4]
						"Soulblight", -- [5]
						"Soulbomb", -- [6]
						"Soulburst", -- [7]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["dungeon-role"] = {
					["hideDamagers"] = true,
					["hideInCombat"] = true,
				},
				["color-IncommingHealsColor"] = {
					["color1"] = {
						["a"] = 0.5,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0,
					},
					["type"] = "color",
				},
				["buffs-DefensiveCooldowns"] = {
					["type"] = "buffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["auras"] = {
						"Anti-Magic Shell", -- [1]
						"Ardent Defender", -- [2]
						"Barkskin", -- [3]
						"Blessing of Sacrifice", -- [4]
						"Blessing of Protection", -- [5]
						"Bristling Fur", -- [6]
						"Dancing Rune Weapon", -- [7]
						"Deterrence", -- [8]
						"Divine Protection", -- [9]
						"Evanesce", -- [10]
						"Frenzied Regeneration", -- [11]
						"Guardian of Ancient Kings", -- [12]
						"Guardian Spirit", -- [13]
						"Ironbark", -- [14]
						"Icebound Fortitude", -- [15]
						"Ice Block", -- [16]
						"Last Stand", -- [17]
						"Life Cocoon", -- [18]
						"Pain Suppression", -- [19]
						"Roar of Sacrifice", -- [20]
						"Survival Instincts", -- [21]
						"Shield Wall", -- [22]
						"Vampiric Blood", -- [23]
					},
				},
				["leader"] = {
					["hideInCombat"] = true,
				},
				["debuffs-AllDebuffs"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "debuffs",
					["debuffTypeColorize"] = true,
					["auras"] = {
						"Challenger's Burden", -- [1]
						"Exhaustion", -- [2]
						"Sated", -- [3]
						"Fatigued", -- [4]
						"Gift of the Sky", -- [5]
						"Gift of the Sea", -- [6]
						"Fel Heart Bond Frayed", -- [7]
						"Transporter Malfunction", -- [8]
						"Forbearance", -- [9]
						"Lord of Flames", -- [10]
						"Archbishop Benedictus' Restitution", -- [11]
						"Sin'dorei Spite", -- [12]
						"Temporal Displacement", -- [13]
					},
				},
				["health-current"] = {
					["frequentHealth"] = true,
				},
				["buffs-Bottom-Right-Buffs-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "buffs",
					["mine"] = 1,
					["auras"] = {
						"Rejuvenation", -- [1]
						"Rejuvenation (Germination)", -- [2]
						"Lifebloom", -- [3]
						"Renew", -- [4]
						"Atonement", -- [5]
						"Riptide", -- [6]
						"Tyr's Deliverance", -- [7]
						"Renewing Mist", -- [8]
						"Enveloping Mist", -- [9]
					},
				},
				["buffs-Bottom-Left-Buffs-mine"] = {
					["color1"] = {
						["a"] = 0,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "buffs",
					["mine"] = 1,
					["auras"] = {
						"Prayer of Mending", -- [1]
						"Power Word: Shield", -- [2]
						"Regrowth", -- [3]
						"Wild Growth", -- [4]
						"Beacon of Light", -- [5]
						"Beacon of Faith", -- [6]
						"Essence Font", -- [7]
					},
				},
			},
			["versions"] = {
				["Grid2"] = 5,
				["Grid2RaidDebuffs"] = 1,
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["debuffs-AllDebuffs"] = 50,
				},
				["side-top"] = {
				},
				["corner-bottom-right"] = {
					["buffs-Bottom-Right-Buffs-mine"] = 50,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["absorbs-color"] = {
				},
				["icon-left"] = {
					["dungeon-role"] = 157,
				},
				["border"] = {
				},
				["text-down-color"] = {
					["classcolor"] = 50,
				},
				["side-top-color"] = {
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["leader"] = 156,
					["death"] = 155,
				},
				["health-color"] = {
					["debuffs-ImportantDebuffs"] = 53,
					["health-current"] = 50,
					["debuffs-AllDebuffs"] = 54,
				},
				["corner-top-right"] = {
					["buffs-DefensiveCooldowns"] = 50,
				},
				["heals-color"] = {
					["color-IncommingHealsColor"] = 53,
					["heal-absorbs"] = 52,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["health"] = {
					["health-current"] = 50,
				},
				["corner-bottom-left"] = {
					["buffs-Bottom-Left-Buffs-mine"] = 50,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["heals"] = {
					["shields"] = 100,
					["heal-absorbs"] = 101,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["death"] = 95,
					["offline"] = 93,
					["vehicle"] = 70,
				},
			},
		},
	},
}
