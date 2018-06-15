
CliqueDB = nil
CliqueDB3 = {
	["char"] = {
		["Mallusof - Tichondrius"] = {
			["spec1_profileKey"] = "Priest - Disc",
			["fastooc"] = false,
			["downclick"] = false,
			["spec3_profileKey"] = "Priest - Shadow",
			["spec2_profileKey"] = "Priest - Holy",
			["specswap"] = true,
		},
	},
	["profileKeys"] = {
		["Mallusof - Tichondrius"] = "Priest - Holy",
	},
	["profiles"] = {
		["Priest - Disc"] = {
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
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [2]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [3]
				{
					["spell"] = "Mass Dispel",
					["key"] = "SHIFT-BUTTON2",
					["sets"] = {
						["global"] = true,
					},
					["icon"] = 135739,
					["type"] = "spell",
				}, -- [4]
				{
					["spell"] = "Holy Word: Chastise",
					["key"] = "X",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 135886,
					["type"] = "spell",
				}, -- [5]
				{
					["spell"] = "Holy Fire",
					["key"] = "R",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 135972,
					["type"] = "spell",
				}, -- [6]
				{
					["spell"] = "Guardian Spirit",
					["key"] = "SHIFT-T",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 237542,
					["type"] = "spell",
				}, -- [7]
				{
					["spell"] = "Light of T'uure",
					["key"] = "2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 1295540,
					["type"] = "spell",
				}, -- [8]
				{
					["spell"] = "Leap of Faith",
					["key"] = "T",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 463835,
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
					["spell"] = "Renew",
					["key"] = "SHIFT-1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135953,
					["type"] = "spell",
				}, -- [11]
				{
					["spell"] = "Heal",
					["key"] = "SHIFT-3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135913,
					["type"] = "spell",
				}, -- [12]
				{
					["spell"] = "Holy Word: Serenity",
					["key"] = "F",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135937,
					["type"] = "spell",
				}, -- [13]
				{
					["spell"] = "Smite",
					["key"] = "E",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 135924,
					["type"] = "spell",
				}, -- [14]
				{
					["spell"] = "Prayer of Mending",
					["key"] = "SHIFT-2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135944,
					["type"] = "spell",
				}, -- [15]
				{
					["spell"] = "Dispel Magic",
					["key"] = "BUTTON2",
					["sets"] = {
						["enemy"] = true,
					},
					["icon"] = 136066,
					["type"] = "spell",
				}, -- [16]
				{
					["spell"] = "Flash Heal",
					["key"] = "3",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135907,
					["type"] = "spell",
				}, -- [17]
				{
					["spell"] = "Purify",
					["key"] = "BUTTON2",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135894,
					["type"] = "spell",
				}, -- [18]
				{
					["spell"] = "Binding Heal",
					["key"] = "1",
					["sets"] = {
						["friend"] = true,
					},
					["icon"] = 135883,
					["type"] = "spell",
				}, -- [19]
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
	},
}
