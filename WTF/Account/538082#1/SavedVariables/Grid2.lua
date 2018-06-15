
Grid2DB = {
	["namespaces"] = {
		["Grid2Frame"] = {
			["profiles"] = {
				["Healer"] = {
					["frameColor"] = {
						["a"] = 0,
						["b"] = 0.690196078431373,
						["g"] = 0.690196078431373,
						["r"] = 0.690196078431373,
					},
					["frameBorder"] = 1,
					["showTooltip"] = "Always",
					["frameBorderDistance"] = 0,
					["frameBorderTexture"] = "glow",
					["font"] = "Prototype",
					["frameHeight"] = 55,
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 119,
					["frameContentColor"] = {
						["r"] = 0.549019607843137,
					},
				},
			},
		},
		["Grid2Utils"] = {
		},
		["Grid2Layout"] = {
			["profiles"] = {
				["Healer"] = {
					["BorderB"] = 0.501960784313726,
					["layouts"] = {
						["raid"] = "By Group & Role",
						["party"] = "Party",
						["solo"] = "Solo",
						["arena"] = "By Group",
					},
					["BackgroundR"] = 1,
					["BorderR"] = 0.501960784313726,
					["BorderTexture"] = "Stripped_medium",
					["anchor"] = "TOP",
					["BackgroundG"] = 1,
					["PosY"] = -572.733048604532,
					["BackgroundA"] = 0,
					["BorderG"] = 0.501960784313726,
					["Spacing"] = 3,
					["horizontal"] = false,
					["PosX"] = -1.44058196104083,
					["BackgroundB"] = 1,
				},
			},
		},
		["Grid2AoeHeals"] = {
		},
		["Grid2Options"] = {
		},
		["Grid2RaidDebuffs"] = {
			["profiles"] = {
				["Healer"] = {
					["defaultEJ_difficulty"] = 16,
					["lastSelectedModule"] = "Legion",
					["enabledModules"] = {
						["Legion"] = true,
					},
					["lastSelectedInstance"] = 1024,
				},
			},
		},
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Amranar - Proudmoore"] = {
					"Amranar - Proudmoore", -- [1]
					"Amranar - Proudmoore", -- [2]
					"Amranar - Proudmoore", -- [3]
					"Healer", -- [4]
					["enabled"] = true,
				},
			},
		},
	},
	["profileKeys"] = {
		["Amranar - Proudmoore"] = "Healer",
		["Mallusof - Tichondrius"] = "Healer",
	},
	["profiles"] = {
		["Healer"] = {
			["hideBlizzardRaidFrames"] = true,
			["indicators"] = {
				["corner-top-left"] = {
					["fontSize"] = 8,
					["duration"] = true,
					["font"] = "Friz Quadrata TT",
					["reverseCooldown"] = true,
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
					["size"] = 20,
				},
				["side-top"] = {
					["type"] = "text",
					["fontSize"] = 8,
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
					["size"] = 20,
					["fontSize"] = 12,
					["level"] = 9,
					["fontJustifyH"] = "RIGHT",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["reverseCooldown"] = true,
					["type"] = "icon",
					["fontJustifyV"] = "BOTTOM",
				},
				["text-down"] = {
					["type"] = "text",
					["fontSize"] = 14,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["shadowDisabled"] = true,
					["level"] = 6,
					["textlength"] = 20,
					["fontFlags"] = "OUTLINE",
				},
				["absorbs-color"] = {
					["type"] = "bar-color",
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
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
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
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
				["corner-bottom-left"] = {
					["fontSize"] = 12,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["fontJustifyV"] = "BOTTOM",
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["fontJustifyH"] = "LEFT",
					["size"] = 20,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right"] = {
					["fontSize"] = 8,
					["duration"] = true,
					["font"] = "Friz Quadrata TT",
					["reverseCooldown"] = true,
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
					["size"] = 20,
				},
				["importantDebuffsBorder-color"] = {
					["type"] = "multibar-color",
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
				["buff-MassRegeneration"] = {
					["spellName"] = "Mass Regeneration",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-ShroudofPurgatory"] = {
					["spellName"] = "Shroud of Purgatory",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-MassSpellReflection"] = {
					["spellName"] = 114028,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-LastStand"] = {
					["spellName"] = "Last Stand",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-HealthFunnel"] = {
					["spellName"] = "Health Funnel",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
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
				["buff-ShieldFortress"] = {
					["spellName"] = 105914,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-DiebytheSword"] = {
					["spellName"] = "Die by the Sword",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-WildGrowth-mine"] = {
					["spellName"] = 48438,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.2,
						["g"] = 0.9,
						["b"] = 0.2,
					},
				},
				["buff-ShroudofConcealment"] = {
					["spellName"] = "Shroud of Concealment",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Feint"] = {
					["spellName"] = 1966,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Ironbark"] = {
					["spellName"] = 102342,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
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
				["buff-Rejuvenation-mine"] = {
					["spellName"] = 774,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0,
						["b"] = 0.6,
					},
				},
				["buff-UnendingResolve"] = {
					["spellName"] = 104773,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-IceboundFortitude"] = {
					["spellName"] = 48792,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-GreaterInvisibility"] = {
					["spellName"] = 113862,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-PrayerofMending-mine"] = {
					["spellName"] = 41635,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-FortifyingBrew"] = {
					["spellName"] = 120954,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-SurvivalInstincts"] = {
					["spellName"] = 61336,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
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
				["buff-DampenHarm"] = {
					["spellName"] = "Dampen Harm",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Atonement-mine"] = {
					["spellName"] = 81749,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["health-current"] = {
					["frequentHealth"] = true,
				},
				["buff-PainSuppression"] = {
					["spellName"] = 33206,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-ShieldWall"] = {
					["spellName"] = 871,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Cauterize"] = {
					["spellName"] = "Cauterize",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-GuardianofAncientKings"] = {
					["spellName"] = "Guardian of Ancient Kings",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-BlessingofProtection"] = {
					["spellName"] = "Blessing of Protection",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-ArdentDefender"] = {
					["spellName"] = 31850,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-PowerWord:Shield-mine"] = {
					["spellName"] = 17,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-DiffuseMagic"] = {
					["spellName"] = "Diffuse Magic",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-VampiricBlood"] = {
					["spellName"] = 55233,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-DancingRuneWeapon"] = {
					["spellName"] = 81256,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-SmokeBomb"] = {
					["spellName"] = 76577,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-DarkRegeneration"] = {
					["spellName"] = 108359,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Regrowth-mine"] = {
					["spellName"] = 8936,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.5,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["buff-AuraMastery"] = {
					["spellName"] = 31821,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Deterrence"] = {
					["spellName"] = 148467,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Renew-mine"] = {
					["spellName"] = 139,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-BlessingofSacrifice"] = {
					["spellName"] = "Blessing of Sacrifice",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-LifeCocoon"] = {
					["spellName"] = 116849,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-SpiritLinkTotem"] = {
					["spellName"] = "Spirit Link Totem",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-GuardianSpirit"] = {
					["spellName"] = 47788,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-DivineProtection"] = {
					["spellName"] = 498,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Evasion"] = {
					["spellName"] = 5277,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-GrimoireofSacrifice"] = {
					["spellName"] = "Grimoire of Sacrifice",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Anti-MagicZone"] = {
					["spellName"] = "Anti-Magic Zone",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-DivineShield"] = {
					["spellName"] = 642,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-CommandingShout"] = {
					["spellName"] = 97463,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Barkskin"] = {
					["spellName"] = 22812,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-HealingTideTotem"] = {
					["spellName"] = 108280,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-CauterizeMaster"] = {
					["spellName"] = "Cauterize Master",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Tranquility"] = {
					["spellName"] = 740,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Vigilance"] = {
					["spellName"] = "Vigilance",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Dispersion"] = {
					["spellName"] = 47585,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-CloakofShadows"] = {
					["spellName"] = 31224,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
					["multiplier"] = 1.6,
				},
				["buff-DivineHymn"] = {
					["spellName"] = "Divine Hymn",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Lifebloom-mine"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 0.6,
						["g"] = 0.9,
						["b"] = 0.6,
					},
					["type"] = "buff",
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["spellName"] = 33763,
					["colorCount"] = 3,
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.2,
						["g"] = 0.7,
						["b"] = 0.2,
					},
				},
				["buff-Anti-MagicShell"] = {
					["spellName"] = 48707,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-AstralShift"] = {
					["spellName"] = 108271,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-IceBlock"] = {
					["spellName"] = 45438,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-SpiritMend"] = {
					["spellName"] = "Spirit Mend",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-PowerWord:Barrier"] = {
					["spellName"] = 81782,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
			},
			["versions"] = {
				["Grid2"] = 5,
				["Grid2RaidDebuffs"] = 1,
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["raid-debuffs"] = 50,
				},
				["side-top"] = {
					["buff-Regrowth-mine"] = 99,
				},
				["corner-bottom-right"] = {
					["buff-Renew-mine"] = 100,
					["buff-Atonement-mine"] = 101,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["absorbs-color"] = {
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["border"] = {
				},
				["text-down-color"] = {
					["classcolor"] = 50,
				},
				["side-top-color"] = {
					["buff-Regrowth-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
				["health-color"] = {
					["debuffs-ImportantDebuffs"] = 53,
					["health-current"] = 50,
					["heal-absorbs"] = 52,
				},
				["corner-top-right"] = {
					["buff-SmokeBomb"] = 144,
					["buff-IceBlock"] = 131,
					["buff-MassRegeneration"] = 136,
					["buff-DancingRuneWeapon"] = 113,
					["buff-AstralShift"] = 103,
					["buff-AuraMastery"] = 104,
					["buff-HealthFunnel"] = 130,
					["buff-Deterrence"] = 115,
					["buff-ShieldFortress"] = 140,
					["buff-BlessingofSacrifice"] = 107,
					["buff-DiebytheSword"] = 116,
					["buff-SpiritLinkTotem"] = 145,
					["buff-GuardianSpirit"] = 127,
					["buff-ShroudofConcealment"] = 142,
					["buff-DivineProtection"] = 120,
					["buff-Evasion"] = 122,
					["buff-GrimoireofSacrifice"] = 126,
					["buff-Anti-MagicShell"] = 100,
					["buff-Anti-MagicZone"] = 101,
					["buff-DivineShield"] = 121,
					["buff-VampiricBlood"] = 150,
					["buff-CommandingShout"] = 111,
					["buff-Feint"] = 123,
					["buff-FortifyingBrew"] = 124,
					["buff-SurvivalInstincts"] = 147,
					["buff-CloakofShadows"] = 110,
					["buff-Ironbark"] = 133,
					["buff-GreaterInvisibility"] = 125,
					["buff-DampenHarm"] = 112,
					["buff-Barkskin"] = 105,
					["buff-PowerWord:Barrier"] = 139,
					["buff-HealingTideTotem"] = 129,
					["buff-LastStand"] = 134,
					["buff-CauterizeMaster"] = 109,
					["buff-Tranquility"] = 148,
					["buff-MassSpellReflection"] = 137,
					["buff-DivineHymn"] = 119,
					["buff-IceboundFortitude"] = 132,
					["buff-Dispersion"] = 118,
					["buff-PainSuppression"] = 138,
					["buff-LifeCocoon"] = 135,
					["buff-ShieldWall"] = 141,
					["buff-Vigilance"] = 151,
					["buff-Cauterize"] = 108,
					["buff-GuardianofAncientKings"] = 128,
					["buff-DarkRegeneration"] = 114,
					["buff-BlessingofProtection"] = 106,
					["buff-ArdentDefender"] = 102,
					["buff-ShroudofPurgatory"] = 143,
					["buff-SpiritMend"] = 146,
					["buff-UnendingResolve"] = 149,
					["buff-DiffuseMagic"] = 117,
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
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["death"] = 95,
					["offline"] = 93,
					["vehicle"] = 70,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["corner-bottom-left"] = {
					["buff-PowerWord:Shield-mine"] = 100,
					["buff-PrayerofMending-mine"] = 101,
				},
				["heals"] = {
					["color-IncommingHealsColor"] = 101,
					["shields"] = 100,
					["heals-incoming"] = 99,
				},
			},
		},
	},
}
