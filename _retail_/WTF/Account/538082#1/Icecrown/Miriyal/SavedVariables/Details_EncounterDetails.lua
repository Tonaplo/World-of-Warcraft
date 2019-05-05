
EncounterDetailsDB = {
	["emotes"] = {
		{
			{
				0.188000000081956, -- [1]
				"I am Lei Shen, slayer of kings and gods. You have made a grave mistake.", -- [2]
				"Lei Shen", -- [3]
				7, -- [4]
			}, -- [1]
			{
				3.78299999982119, -- [1]
				"You would challenge me in my own sanctum? Witness your folly!", -- [2]
				"Lei Shen", -- [3]
				7, -- [4]
			}, -- [2]
			{
				44.9729999997653, -- [1]
				"%s is about to end |cFFFF0000Supercharge Conduits|r!", -- [2]
				"Lei Shen", -- [3]
				1, -- [4]
			}, -- [3]
			{
				51.3939999998547, -- [1]
				"|TInterface\\Icons\\spell_nature_unrelentingstorm.blp:20|t The |cFFFF0000|Hspell:135681|h[East Conduit]|h|r has burned out and caused |cFFFF0000|Hspell:137176|h[Overloaded Circuits]|h|r!", -- [2]
				"Diffusion Chain Conduit", -- [3]
				1, -- [4]
			}, -- [4]
			{
				61.910000000149, -- [1]
				"Bah! I will crush you myself. Let us see how you fare against Lightning.", -- [2]
				"Lei Shen", -- [3]
				7, -- [4]
			}, -- [5]
			{
				63.12900000019, -- [1]
				"You are NOTHING! I wield the power of the heavens!", -- [2]
				"Lei Shen", -- [3]
				7, -- [4]
			}, -- [6]
			{
				104.296000000089, -- [1]
				"%s is about to end |cFFFF0000Supercharge Conduits|r!", -- [2]
				"Lei Shen", -- [3]
				1, -- [4]
			}, -- [7]
			{
				110.714000000153, -- [1]
				"|TInterface\\Icons\\spell_nature_unrelentingstorm.blp:20|t The |cFFFF0000|Hspell:135680|h[North Conduit]|h|r has burned out and caused |cFFFF0000|Hspell:137176|h[Overloaded Circuits]|h|r!", -- [2]
				"Static Shock Conduit", -- [3]
				1, -- [4]
			}, -- [8]
			{
				115.200000000186, -- [1]
				"NO! You are UNWORTHY! I... AM... THE THUNDER KING!", -- [2]
				"Lei Shen", -- [3]
				7, -- [4]
			}, -- [9]
			["boss"] = "Lei Shen",
		}, -- [1]
		{
			{
				0.195000000298023, -- [1]
				"More kindling for the flame! Come, Lu'lin... let us burn them to ash!", -- [2]
				"Suen", -- [3]
				7, -- [4]
			}, -- [1]
			{
				5.29400000022724, -- [1]
				"If I must...", -- [2]
				"Lu'lin", -- [3]
				7, -- [4]
			}, -- [2]
			{
				16.2669999999926, -- [1]
				"I can see the light.", -- [2]
				"Suen", -- [3]
				7, -- [4]
			}, -- [3]
			["boss"] = "Twin Consorts",
		}, -- [2]
		{
			{
				0.192999999970198, -- [1]
				"Good luck, Grandmaster!", -- [2]
				"Ban-Lu", -- [3]
				4, -- [4]
			}, -- [1]
			{
				0.192999999970198, -- [1]
				"Ro'shak! Grant me wings of flame!", -- [2]
				"Iron Qon", -- [3]
				7, -- [4]
			}, -- [2]
			{
				6.41899999976158, -- [1]
				"USELESS!", -- [2]
				"Iron Qon", -- [3]
				7, -- [4]
			}, -- [3]
			{
				12.1639999998733, -- [1]
				"Quet'zal! Unleash the storm upon my enemies!!!", -- [2]
				"Iron Qon", -- [3]
				7, -- [4]
			}, -- [4]
			{
				16.1129999998957, -- [1]
				"How can this be?!", -- [2]
				"Iron Qon", -- [3]
				7, -- [4]
			}, -- [5]
			["boss"] = "Iron Qon",
		}, -- [3]
	},
	["encounter_spells"] = {
		[133765] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Durumu the Forgotten",
		},
		[136860] = {
			["school"] = 8,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
		},
		[135695] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lei Shen",
		},
		[136294] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Tortos",
		},
		[136050] = {
			["school"] = 8,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Primordius",
		},
		[133767] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Durumu the Forgotten",
		},
		[136295] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lei Shen",
		},
		[137122] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Kazra'jin",
		},
		[138453] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Anima Golem",
		},
		[139548] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Megaera",
		},
		[133768] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Durumu the Forgotten",
		},
		[140092] = {
			["school"] = 8,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
			["source"] = "Ji-Kun",
		},
		[139549] = {
			["school"] = 16,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Megaera",
		},
		[137045] = {
			["school"] = 8,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lei Shen",
		},
		[136841] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Quivering Blob",
		},
		[135991] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Lei Shen",
		},
		[136190] = {
			["school"] = 8,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Sul the Sandcrawler",
		},
		[134820] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lei Shen",
		},
		[138070] = {
			["school"] = 8,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Unharnessed Power",
		},
		[139551] = {
			["school"] = 8,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Megaera",
		},
		[136913] = {
			["school"] = 8,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lei Shen",
		},
		[136366] = {
			["school"] = 8,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Lei Shen",
		},
		[138378] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Anima Golem",
		},
		[137344] = {
			["school"] = 2,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "High Priestess Mar'li",
		},
		[136189] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Sul the Sandcrawler",
		},
		[139412] = {
			["school"] = 4,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Suen",
		},
		[137528] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ji-Kun",
		},
		[137410] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Suen",
		},
		[136914] = {
			["school"] = 8,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
			["source"] = "Lei Shen",
		},
		[139316] = {
			["school"] = 8,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Putrid Waste",
		},
		[135681] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Lei Shen",
		},
		[137403] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Suen",
		},
		[136442] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Gara'jal's Soul",
		},
		[136954] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Dark Animus",
		},
		[136521] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Sul the Sandcrawler",
		},
		[139364] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Spirit Flayer",
		},
		[137118] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Lu'lin",
		},
	},
}
