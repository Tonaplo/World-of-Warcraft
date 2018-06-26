
CliqueDB = nil
CliqueDB3 = {
	["char"] = {
		["Kaldorath - Proudmoore"] = {
			["spec1_profileKey"] = "Kaldorath - Proudmoore",
			["spec2_profileKey"] = "Kaldorath - Proudmoore",
			["downclick"] = false,
			["fastooc"] = false,
			["specswap"] = false,
		},
		["Amranar - Proudmoore"] = {
			["spec1_profileKey"] = "Druid - Balance",
			["spec2_profileKey"] = "Druid - Feral",
			["downclick"] = false,
			["fastooc"] = false,
			["spec4_profileKey"] = "Druid - Resto",
			["spec3_profileKey"] = "Druid - Guardian",
			["specswap"] = true,
		},
		["Farahn - Proudmoore"] = {
			["spec1_profileKey"] = "Shaman - Resto",
			["specswap"] = true,
			["downclick"] = false,
			["fastooc"] = false,
			["spec3_profileKey"] = "Shaman - Resto",
			["spec2_profileKey"] = "Shaman - Resto",
		},
		["Mallusof - Tichondrius"] = {
			["spec1_profileKey"] = "Priest - Disc",
			["blizzframes"] = {
				["PlayerFrame"] = false,
			},
			["downclick"] = false,
			["fastooc"] = false,
			["spec3_profileKey"] = "Priest - Shadow",
			["specswap"] = true,
			["spec2_profileKey"] = "Priest - Holy",
		},
		["Praerend - Proudmoore"] = {
			["spec1_profileKey"] = "Praerend - Proudmoore",
			["spec3_profileKey"] = "Praerend - Proudmoore",
			["downclick"] = false,
			["fastooc"] = false,
			["specswap"] = false,
			["spec2_profileKey"] = "Praerend - Proudmoore",
		},
		["Granjior - Proudmoore"] = {
			["spec1_profileKey"] = "Paladin - Holy",
			["fastooc"] = false,
			["specswap"] = true,
			["downclick"] = false,
			["spec2_profileKey"] = "Non-Healer",
			["spec3_profileKey"] = "Non-Healer",
		},
		["Morifa - Proudmoore"] = {
			["spec1_profileKey"] = "Morifa - Proudmoore",
			["specswap"] = false,
			["downclick"] = false,
			["fastooc"] = false,
			["spec3_profileKey"] = "Morifa - Proudmoore",
			["spec2_profileKey"] = "Morifa - Proudmoore",
		},
		["Miriyal - Proudmoore"] = {
			["spec1_profileKey"] = "Non-Healer",
			["spec2_profileKey"] = "Monk - Mistweaver",
			["downclick"] = false,
			["fastooc"] = false,
			["spec3_profileKey"] = "Non-Healer",
			["specswap"] = true,
		},
		["Greybone - Proudmoore"] = {
			["spec1_profileKey"] = "Greybone - Proudmoore",
			["spec3_profileKey"] = "Greybone - Proudmoore",
			["downclick"] = false,
			["fastooc"] = false,
			["spec2_profileKey"] = "Greybone - Proudmoore",
			["specswap"] = false,
		},
		["Fimwack - Proudmoore"] = {
			["spec1_profileKey"] = "Fimwack - Proudmoore",
			["spec2_profileKey"] = "Fimwack - Proudmoore",
			["downclick"] = false,
			["fastooc"] = false,
			["spec3_profileKey"] = "Fimwack - Proudmoore",
			["specswap"] = false,
		},
		["Faerand - Proudmoore"] = {
			["spec1_profileKey"] = "Faerand - Proudmoore",
			["spec3_profileKey"] = "Faerand - Proudmoore",
			["downclick"] = false,
			["fastooc"] = false,
			["spec2_profileKey"] = "Faerand - Proudmoore",
			["specswap"] = false,
		},
		["Rahran - Proudmoore"] = {
			["spec1_profileKey"] = "Rahran - Proudmoore",
			["spec2_profileKey"] = "Rahran - Proudmoore",
			["downclick"] = false,
			["fastooc"] = false,
			["specswap"] = false,
			["spec3_profileKey"] = "Rahran - Proudmoore",
		},
	},
	["profileKeys"] = {
		["Korugen - Tichondrius"] = "Korugen - Tichondrius",
		["Kaldorath - Proudmoore"] = "Non-Healer",
		["Amranar - Proudmoore"] = "Druid - Guardian",
		["Farahn - Proudmoore"] = "Shaman - Resto",
		["Praerend - Proudmoore"] = "Non-Healer",
		["Mallusof - Tichondrius"] = "Priest - Holy",
		["Rahran - Proudmoore"] = "Non-Healer",
		["Granjior - Proudmoore"] = "Non-Healer",
		["Fimwack - Proudmoore"] = "Non-Healer",
		["Miriyal - Proudmoore"] = "Non-Healer",
		["Greybone - Proudmoore"] = "Non-Healer",
		["Morifa - Proudmoore"] = "Non-Healer",
		["Faerand - Proudmoore"] = "Non-Healer",
		["Mallusof - Icecrown"] = "Mallusof - Icecrown",
	},
	["profiles"] = {
		["Korugen - Tichondrius"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Monk - Mistweaver"] = {
			["bindings"] = {
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
						["ooc"] = true,
					},
				}, -- [1]
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [2]
				{
					["spell"] = "Life Cocoon",
					["key"] = "SHIFT-T",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 627485,
					["type"] = "spell",
				}, -- [3]
				{
					["spell"] = "Vivify",
					["key"] = "SHIFT-F",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 1360980,
					["type"] = "spell",
				}, -- [4]
				{
					["spell"] = "Enveloping Mist",
					["key"] = "F",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 775461,
					["type"] = "spell",
				}, -- [5]
				{
					["spell"] = "Renewing Mist",
					["key"] = "SHIFT-2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 627487,
					["type"] = "spell",
				}, -- [6]
				{
					["spell"] = "Effuse",
					["key"] = "3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 1360977,
					["type"] = "spell",
				}, -- [7]
				{
					["spell"] = "Detox",
					["key"] = "BUTTON2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 460692,
					["type"] = "spell",
				}, -- [8]
				{
					["spell"] = "Sheilun's Gift",
					["key"] = "SHIFT-1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 1242282,
					["type"] = "spell",
				}, -- [9]
			},
		},
		["Druid - Resto"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
				{
					["spell"] = "Ironbark",
					["key"] = "SHIFT-T",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 572025,
					["type"] = "spell",
				}, -- [3]
				{
					["spell"] = "Rebirth",
					["key"] = "SHIFT-Z",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 136080,
					["type"] = "spell",
				}, -- [4]
				{
					["spell"] = "Swiftmend",
					["key"] = "F",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 134914,
					["type"] = "spell",
				}, -- [5]
				{
					["spell"] = "Healing Touch",
					["key"] = "SHIFT-3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 136041,
					["type"] = "spell",
				}, -- [6]
				{
					["spell"] = "Innervate",
					["key"] = "X",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 136048,
					["type"] = "spell",
				}, -- [7]
				{
					["spell"] = "Wild Growth",
					["key"] = "Q",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 236153,
					["type"] = "spell",
				}, -- [8]
				{
					["spell"] = "Rejuvenation",
					["key"] = "SHIFT-1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 136081,
					["type"] = "spell",
				}, -- [9]
				{
					["spell"] = "Regrowth",
					["key"] = "3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 136085,
					["type"] = "spell",
				}, -- [10]
				{
					["spell"] = "Lifebloom",
					["key"] = "1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 134206,
					["type"] = "spell",
				}, -- [11]
			},
		},
		["Paladin - Holy"] = {
			["bindings"] = {
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
						["ooc"] = true,
					},
				}, -- [1]
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [2]
				{
					["spell"] = "Lay on Hands",
					["key"] = "T",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135928,
					["type"] = "spell",
				}, -- [3]
				{
					["spell"] = "Light of the Martyr",
					["key"] = "2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 1360762,
					["type"] = "spell",
				}, -- [4]
				{
					["spell"] = "Blessing of Sacrifice",
					["key"] = "SHIFT-2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135966,
					["type"] = "spell",
				}, -- [5]
				{
					["spell"] = "Tyr's Deliverance",
					["key"] = "SHIFT-F",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 1122562,
					["type"] = "spell",
				}, -- [6]
				{
					["spell"] = "Holy Light",
					["key"] = "SHIFT-3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135981,
					["type"] = "spell",
				}, -- [7]
				{
					["spell"] = "Holy Shock",
					["key"] = "F",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135972,
					["type"] = "spell",
				}, -- [8]
				{
					["spell"] = "Blessing of Freedom",
					["key"] = "4",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135968,
					["type"] = "spell",
				}, -- [9]
				{
					["spell"] = "Cleanse",
					["key"] = "BUTTON2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135949,
					["type"] = "spell",
				}, -- [10]
				{
					["spell"] = "Flash of Light",
					["key"] = "3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135907,
					["type"] = "spell",
				}, -- [11]
				{
					["spell"] = "Blessing of Protection",
					["key"] = "C",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135964,
					["type"] = "spell",
				}, -- [12]
				{
					["spell"] = "Beacon of Light",
					["key"] = "SHIFT-1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 236247,
					["type"] = "spell",
				}, -- [13]
				{
					["spell"] = "Beacon of Faith",
					["key"] = "1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 1030095,
					["type"] = "spell",
				}, -- [14]
			},
		},
		["Non-Healer"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Priest - Shadow"] = {
			["bindings"] = {
				{
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Shaman - Resto"] = {
			["bindings"] = {
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
						["ooc"] = true,
					},
				}, -- [1]
				{
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [2]
				{
					["spell"] = "Chain Heal",
					["key"] = "Q",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 136042,
					["type"] = "spell",
				}, -- [3]
				{
					["spell"] = "Riptide",
					["key"] = "F",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 252995,
					["type"] = "spell",
				}, -- [4]
				{
					["spell"] = "Healing Wave",
					["key"] = "SHIFT-3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 136043,
					["type"] = "spell",
				}, -- [5]
				{
					["spell"] = "Purge",
					["key"] = "BUTTON2",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 136075,
					["type"] = "spell",
				}, -- [6]
				{
					["spell"] = "Purify Spirit",
					["key"] = "BUTTON2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 236288,
					["type"] = "spell",
				}, -- [7]
				{
					["spell"] = "Healing Surge",
					["key"] = "3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 136044,
					["type"] = "spell",
				}, -- [8]
			},
		},
		["Druid - Guardian"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Priest - Disc"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Priest - Holy"] = {
			["bindings"] = {
				{
					["spell"] = "Mass Resurrection",
					["key"] = "SHIFT-BUTTON2",
					["sets"] = {
						["friend"] = true,
						["ooc"] = true,
					},
					["icon"] = 413586,
					["type"] = "spell",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
						["ooc"] = true,
					},
				}, -- [2]
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [3]
				{
					["spell"] = "Purify",
					["key"] = "BUTTON2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135894,
					["type"] = "spell",
				}, -- [4]
				{
					["spell"] = "Dispel Magic",
					["key"] = "BUTTON2",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 136066,
					["type"] = "spell",
				}, -- [5]
				{
					["spell"] = "Prayer of Mending",
					["key"] = "SHIFT-2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135944,
					["type"] = "spell",
				}, -- [6]
				{
					["spell"] = "Heal",
					["key"] = "SHIFT-3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135913,
					["type"] = "spell",
				}, -- [7]
				{
					["spell"] = "Mass Dispel",
					["key"] = "SHIFT-BUTTON2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135739,
					["type"] = "spell",
				}, -- [8]
				{
					["spell"] = "Binding Heal",
					["key"] = "1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135883,
					["type"] = "spell",
				}, -- [9]
				{
					["spell"] = "Prayer of Healing",
					["key"] = "Q",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135943,
					["type"] = "spell",
				}, -- [10]
				{
					["spell"] = "Leap of Faith",
					["key"] = "T",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 463835,
					["type"] = "spell",
				}, -- [11]
				{
					["spell"] = "Holy Word: Serenity",
					["key"] = "F",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135937,
					["type"] = "spell",
				}, -- [12]
				{
					["spell"] = "Guardian Spirit",
					["key"] = "SHIFT-T",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 237542,
					["type"] = "spell",
				}, -- [13]
				{
					["spell"] = "Light of T'uure",
					["key"] = "2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 1295540,
					["type"] = "spell",
				}, -- [14]
				{
					["spell"] = "Flash Heal",
					["key"] = "3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135907,
					["type"] = "spell",
				}, -- [15]
				{
					["spell"] = "Renew",
					["key"] = "SHIFT-1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135953,
					["type"] = "spell",
				}, -- [16]
			},
		},
		["Mallusof - Icecrown"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
	},
}
