
EncounterDetailsDB = {
	["emotes"] = {
		{
			{
				0.2029999999999745, -- [1]
				"Let the echoes of doom resound across this wretched world, that all who live may hear them and despair.", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [1]
			{
				2.287000000000262, -- [1]
				"This meaningless little world has already succumbed to my corruption. The land itself seethes with the mark of the legion!", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [2]
			{
				4.870000000000346, -- [1]
				"The light will not fail!", -- [2]
				"Exarch Yrel", -- [3]
				7, -- [4]
			}, -- [3]
			{
				7.320000000000164, -- [1]
				"Look upon the endless forces of the Burning Legion and know the folly of your resistance.", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [4]
			{
				9.73700000000008, -- [1]
				"Lok'tar ogar! They are pushed back! To the portal! Gul'dan is mine!", -- [2]
				"Grommash Hellscream", -- [3]
				7, -- [4]
			}, -- [5]
			{
				9.73700000000008, -- [1]
				"I grow tired of this pointless game. You face the immortal Legion, scourge of a thousand worlds.", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [6]
			{
				12.17900000000009, -- [1]
				"I will shatter this pathetic world! Its broken husk will be torn apart in the twisting nether for all time!", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [7]
			["boss"] = "Archimonde",
		}, -- [1]
		{
			{
				0.1, -- [1]
				"Your foolish crusade ends here, mortals. The legion comes and with it this world breathes its dying breath!", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [1]
			{
				3.417000000001281, -- [1]
				"This meaningless little world has already succumbed to my corruption. The land itself seethes with the mark of the legion!", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [2]
			{
				7.065999999998894, -- [1]
				"The light will not fail!", -- [2]
				"Exarch Yrel", -- [3]
				7, -- [4]
			}, -- [3]
			{
				10.73300000000018, -- [1]
				"Look upon the endless forces of the Burning Legion and know the folly of your resistance.", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [4]
			{
				12.06599999999889, -- [1]
				"I grow tired of this pointless game. You face the immortal Legion, scourge of a thousand worlds.", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [5]
			{
				13.16600000000108, -- [1]
				"Lok'tar ogar! They are pushed back! To the portal! Gul'dan is mine!", -- [2]
				"Grommash Hellscream", -- [3]
				7, -- [4]
			}, -- [6]
			{
				13.16600000000108, -- [1]
				"I will shatter this pathetic world! Its broken husk will be torn apart in the twisting nether for all time!", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [7]
			["boss"] = "Archimonde",
		}, -- [2]
		{
			{
				3.483000000000175, -- [1]
				"This meaningless little world has already succumbed to my corruption. The land itself seethes with the mark of the legion!", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [1]
			{
				3.483000000000175, -- [1]
				"The light will not fail!", -- [2]
				"Exarch Yrel", -- [3]
				7, -- [4]
			}, -- [2]
			{
				5.916000000000167, -- [1]
				"Look upon the endless forces of the Burning Legion and know the folly of your resistance.", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [3]
			{
				8.332999999999629, -- [1]
				"Lok'tar ogar! They are pushed back! To the portal! Gul'dan is mine!", -- [2]
				"Grommash Hellscream", -- [3]
				7, -- [4]
			}, -- [4]
			{
				8.332999999999629, -- [1]
				"I grow tired of this pointless game. You face the immortal Legion, scourge of a thousand worlds.", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [5]
			{
				9.38299999999981, -- [1]
				"I will shatter this pathetic world! Its broken husk will be torn apart in the twisting nether for all time!", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [6]
			["boss"] = "Archimonde",
		}, -- [3]
	},
	["encounter_spells"] = {
		[182212] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Fel Iron Summoner",
		},
		[156138] = {
			["school"] = 1,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Fel Lord Zakuun",
		},
		[179582] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Fel Lord Zakuun",
		},
		[184449] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Dia Darkwhisper",
		},
		[186662] = {
			["school"] = 4,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Felborne Overfiend",
		},
		[183331] = {
			["school"] = 32,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Soul of Socrethar",
		},
		[183969] = {
			["school"] = 32,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Desecration",
		},
		[157769] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Gorian Warmage",
		},
		[184355] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Gurtogg Bloodboil",
		},
		[179583] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Fel Lord Zakuun",
		},
		[183023] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Soulbound Construct",
		},
		[157801] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Gorian Warmage",
		},
		[186663] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Felborne Overfiend",
		},
		[179993] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[174126] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Gorian Warmage",
		},
		[185175] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Fel Iron Summoner",
		},
		[190223] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Xhul'horac",
		},
		[181873] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Shadow-Lord Iskar",
		},
		[186134] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Xhul'horac",
		},
		[181718] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[179986] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[181191] = {
			["school"] = 4,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Dread Infernal",
		},
		[181912] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Shadow-Lord Iskar",
		},
		[184357] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Gurtogg Bloodboil",
		},
		[181089] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Imperator Mar'gok",
		},
		[179743] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Fel Lord Zakuun",
		},
		[186271] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Xhul'horac",
		},
		[174057] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Imperator Mar'gok",
		},
		[179987] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[181192] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Dread Infernal",
		},
		[184476] = {
			["school"] = 32,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Dia Darkwhisper",
		},
		[186532] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Wild Pyromaniac",
		},
		[184847] = {
			["school"] = 8,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
			["source"] = "Gurtogg Bloodboil",
		},
		[189540] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
			["source"] = "Soulbound Construct",
		},
		[163988] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Imperator Mar'gok",
		},
		[191068] = {
			["school"] = 32,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Desecration",
		},
		[187107] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Archimonde",
		},
		[179681] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Fel Lord Zakuun",
		},
		[181138] = {
			["school"] = 64,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Fel Imp",
		},
		[188950] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Desecration",
		},
		[182225] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Archimonde",
		},
		[181913] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Shadow-Lord Iskar",
		},
		[186993] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Blademaster Jubei'thos",
		},
		[177438] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
		},
		[158013] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
		},
		[41062] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Blademaster Jubei'thos",
		},
		[180166] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[184675] = {
			["school"] = 32,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Dia Darkwhisper",
		},
		[157278] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Imperator Mar'gok",
		},
		[182171] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
		},
		[181827] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Shadowfel Warden",
		},
		[181683] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[159515] = {
			["school"] = 64,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Imperator Mar'gok",
		},
		[181132] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Fel Imp",
		},
		[164004] = {
			["school"] = 64,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
		},
		[184676] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
			["source"] = "Dia Darkwhisper",
		},
		[157657] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Volatile Anomaly",
		},
		[180000] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[188614] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
		},
		[185590] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Archimonde",
		},
		[179991] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[158012] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
		},
		[181134] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Fel Imp",
		},
	},
}
