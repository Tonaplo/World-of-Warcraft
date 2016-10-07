
Quartz3DB = {
	["namespaces"] = {
		["Swing"] = {
		},
		["Power"] = {
			["profiles"] = {
				["Default"] = {
					["y"] = 290,
					["x"] = 740,
					["barcolor"] = {
						0, -- [1]
						0, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["showcombat"] = true,
					["switch"] = false,
					["showtarget"] = true,
					["powercolor"] = {
						0.0117647058823529, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["w"] = 435,
				},
				["Tank"] = {
					["showcombat"] = true,
					["showtarget"] = true,
					["powercolor"] = {
						nil, -- [1]
						0, -- [2]
						0.149019607843137, -- [3]
						1, -- [4]
					},
					["y"] = 380,
					["h"] = 25,
					["switch"] = false,
					["x"] = 710,
					["barcolor"] = {
						nil, -- [1]
						0, -- [2]
						0.0313725490196078, -- [3]
						1, -- [4]
					},
					["w"] = 500,
				},
			},
		},
		["Buff"] = {
		},
		["Interrupt"] = {
		},
		["Flight"] = {
			["profiles"] = {
				["DPS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0.0823529411764706, -- [3]
						1, -- [4]
					},
					["deplete"] = true,
				},
				["Healer"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0.0823529411764706, -- [3]
						1, -- [4]
					},
					["deplete"] = true,
				},
			},
		},
		["Pet"] = {
			["profiles"] = {
				["DPS"] = {
					["x"] = 700,
				},
				["Default"] = {
					["x"] = 950.256469726562,
				},
				["Healer"] = {
					["x"] = 700,
				},
			},
		},
		["Range"] = {
		},
		["Mirror"] = {
		},
		["Player"] = {
			["profiles"] = {
				["DPS"] = {
					["h"] = 40,
					["w"] = 190,
					["hideicon"] = true,
					["border"] = "Blizzard Achievement Wood",
					["x"] = 950,
					["texture"] = "Healbot",
					["y"] = 380,
				},
				["Default"] = {
					["x"] = 925.256469726562,
				},
				["Healer"] = {
					["hideicon"] = true,
					["h"] = 40,
					["y"] = 175,
					["border"] = "Blizzard Achievement Wood",
					["x"] = 575,
					["w"] = 180,
					["texture"] = "Healbot",
				},
			},
		},
		["GCD"] = {
		},
		["Procs"] = {
			["profiles"] = {
				["Default"] = {
					["fixCustomProcCaps"] = false,
					["spells"] = {
						["heroism"] = {
							["sound"] = "None",
						},
						["bloodlust"] = {
							["sound"] = "None",
						},
					},
				},
				["Tank"] = {
					["fixCustomProcCaps"] = false,
					["spells"] = {
						["heroism"] = {
							["sound"] = "None",
						},
						["bloodlust"] = {
							["sound"] = "None",
						},
					},
				},
			},
		},
		["Target"] = {
			["profiles"] = {
				["DPS"] = {
					["noInterruptChangeColor"] = true,
					["h"] = 30,
					["w"] = 300,
					["y"] = 800,
					["x"] = 900,
					["noInterruptChangeBorder"] = true,
				},
				["Default"] = {
					["x"] = 950.256469726562,
				},
				["Healer"] = {
					["y"] = 175,
					["h"] = 40,
					["w"] = 180,
					["x"] = 1330,
				},
			},
		},
		["Focus"] = {
			["profiles"] = {
				["DPS"] = {
					["h"] = 40,
					["w"] = 180,
					["y"] = 780,
					["x"] = 250,
				},
				["Default"] = {
					["x"] = 950.256469726562,
				},
				["Healer"] = {
					["y"] = 780,
					["h"] = 40,
					["w"] = 180,
					["x"] = 250,
				},
			},
		},
		["EnemyCasts"] = {
		},
		["Latency"] = {
			["profiles"] = {
				["DPS"] = {
					["lagtextalignment"] = "right",
				},
				["Healer"] = {
					["lagtextalignment"] = "right",
				},
			},
		},
	},
	["profileKeys"] = {
		["Rahran - Proudmoore"] = "DPS",
		["Praerend - Proudmoore"] = "DPS",
		["Farahn - Proudmoore"] = "DPS",
		["Kaldorath - Proudmoore"] = "DPS",
		["Faerand - Proudmoore"] = "DPS",
		["Granjior - Proudmoore"] = "DPS",
		["Morifa - Proudmoore"] = "DPS",
		["Fimwack - Proudmoore"] = "DPS",
		["Greybone - Proudmoore"] = "DPS",
		["Miriyal - Proudmoore"] = "DPS",
		["Mallusof - Proudmoore"] = "DPS",
		["Amranar - Proudmoore"] = "DPS",
	},
	["profiles"] = {
		["DPS"] = {
			["modules"] = {
				["EnemyCasts"] = true,
				["Buff"] = false,
			},
			["hidesamwise"] = false,
		},
		["Default"] = {
		},
		["Healer"] = {
			["modules"] = {
				["EnemyCasts"] = true,
				["Buff"] = false,
			},
			["hidesamwise"] = false,
		},
	},
}
