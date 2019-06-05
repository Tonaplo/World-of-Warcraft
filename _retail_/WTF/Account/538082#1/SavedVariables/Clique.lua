
CliqueDB = nil
CliqueDB3 = {
	["char"] = {
		["Alura - Tichondrius"] = {
			["spec1_profileKey"] = "Alura - Tichondrius",
			["specswap"] = false,
			["downclick"] = false,
			["fastooc"] = true,
			["spec2_profileKey"] = "Alura - Tichondrius",
			["spec3_profileKey"] = "Alura - Tichondrius",
			["alerthidden"] = true,
		},
		["Kindhoof - Tichondrius"] = {
			["spec1_profileKey"] = "Kindhoof - Tichondrius",
			["alerthidden"] = true,
			["downclick"] = false,
			["fastooc"] = false,
			["spec3_profileKey"] = "Kindhoof - Tichondrius",
			["spec2_profileKey"] = "Kindhoof - Tichondrius",
			["specswap"] = false,
		},
	},
	["profileKeys"] = {
		["Alura - Tichondrius"] = "All",
		["Kindhoof - Tichondrius"] = "All",
	},
	["profiles"] = {
		["Kindhoof - Tichondrius"] = {
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
		["All"] = {
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
					["spell"] = "Cleanse Toxins",
					["key"] = "BUTTON2",
					["sets"] = {
						["spec1"] = true,
						["friend"] = true,
						["spec2"] = true,
					},
					["icon"] = 135953,
					["type"] = "spell",
				}, -- [3]
				{
					["spell"] = "Purify",
					["key"] = "BUTTON2",
					["sets"] = {
						["spec1"] = true,
						["friend"] = true,
						["spec2"] = true,
					},
					["icon"] = 135894,
					["type"] = "spell",
				}, -- [4]
			},
		},
	},
}
