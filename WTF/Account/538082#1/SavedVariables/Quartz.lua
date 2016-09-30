
Quartz3DB = {
	["namespaces"] = {
		["Swing"] = {
		},
		["Buff"] = {
		},
		["Power"] = {
			["profiles"] = {
				["Default"] = {
					["y"] = 290,
					["x"] = 740,
					["w"] = 435,
					["showcombat"] = true,
					["switch"] = false,
					["barcolor"] = {
						0, -- [1]
						0, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["powercolor"] = {
						0.0117647058823529, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["showtarget"] = true,
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
					["w"] = 500,
					["barcolor"] = {
						nil, -- [1]
						0, -- [2]
						0.0313725490196078, -- [3]
						1, -- [4]
					},
					["x"] = 710,
				},
			},
		},
		["Interrupt"] = {
		},
		["Flight"] = {
			["profiles"] = {
				["Healer"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0.0823529411764706, -- [3]
						1, -- [4]
					},
					["deplete"] = true,
				},
				["DPS"] = {
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
				["Healer"] = {
					["x"] = 700,
				},
				["Default"] = {
					["x"] = 950.256469726562,
				},
				["DPS"] = {
					["x"] = 700,
				},
			},
		},
		["EnemyCasts"] = {
		},
		["Focus"] = {
			["profiles"] = {
				["Healer"] = {
					["y"] = 780,
					["h"] = 40,
					["w"] = 180,
					["x"] = 250,
				},
				["Default"] = {
					["x"] = 950.256469726562,
				},
				["DPS"] = {
					["h"] = 40,
					["w"] = 180,
					["y"] = 780,
					["x"] = 250,
				},
			},
		},
		["Player"] = {
			["profiles"] = {
				["Healer"] = {
					["hideicon"] = true,
					["h"] = 40,
					["y"] = 175,
					["w"] = 180,
					["x"] = 575,
					["border"] = "Blizzard Achievement Wood",
					["texture"] = "Healbot",
				},
				["Default"] = {
					["x"] = 925.256469726562,
				},
				["DPS"] = {
					["h"] = 40,
					["w"] = 190,
					["y"] = 380,
					["border"] = "Blizzard Achievement Wood",
					["x"] = 950,
					["texture"] = "Healbot",
					["hideicon"] = true,
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
				["Healer"] = {
					["y"] = 175,
					["h"] = 40,
					["w"] = 180,
					["x"] = 1330,
				},
				["Default"] = {
					["x"] = 950.256469726562,
				},
				["DPS"] = {
					["noInterruptChangeColor"] = true,
					["h"] = 30,
					["w"] = 300,
					["y"] = 800,
					["x"] = 900,
					["noInterruptChangeBorder"] = true,
				},
			},
		},
		["Mirror"] = {
		},
		["Range"] = {
		},
		["Latency"] = {
			["profiles"] = {
				["Healer"] = {
					["lagtextalignment"] = "right",
				},
				["DPS"] = {
					["lagtextalignment"] = "right",
				},
			},
		},
	},
	["profileKeys"] = {
		["Rahran - Proudmoore"] = "DPS",
		["Praerend - Proudmoore"] = "DPS",
		["Farahn - Proudmoore"] = "DPS",
		["Amranar - Proudmoore"] = "DPS",
		["Mallusof - Proudmoore"] = "DPS",
		["Granjior - Proudmoore"] = "DPS",
		["Fimwack - Proudmoore"] = "DPS",
		["Miriyal - Proudmoore"] = "DPS",
		["Greybone - Proudmoore"] = "DPS",
		["Morifa - Proudmoore"] = "DPS",
		["Faerand - Proudmoore"] = "DPS",
		["Kaldorath - Proudmoore"] = "DPS",
	},
	["profiles"] = {
		["Healer"] = {
			["modules"] = {
				["Buff"] = false,
				["EnemyCasts"] = true,
			},
			["hidesamwise"] = false,
		},
		["Default"] = {
		},
		["DPS"] = {
			["modules"] = {
				["Buff"] = false,
				["EnemyCasts"] = true,
			},
			["hidesamwise"] = false,
		},
	},
}
