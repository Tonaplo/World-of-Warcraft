
EncounterDetailsDB = {
	["emotes"] = {
		{
			{
				3.349999999998545, -- [1]
				"Yes, Dark Lady.", -- [2]
				"Gurtogg Bloodboil", -- [3]
				7, -- [4]
			}, -- [1]
			{
				5.833999999995285, -- [1]
				"My blade seeks vengeance!", -- [2]
				"Blademaster Jubei'thos", -- [3]
				7, -- [4]
			}, -- [2]
			{
				7.032999999995809, -- [1]
				"I am everburning!", -- [2]
				"Blademaster Jubei'thos", -- [3]
				7, -- [4]
			}, -- [3]
			{
				11.88299999999435, -- [1]
				"|TInterface\\Icons\\inv_misc_boilingblood.blp:20|t %s begins to use |cFFFF0404|Hspell:184357|h[Tainted Blood]|h|r!", -- [2]
				"Gurtogg Bloodboil", -- [3]
				1, -- [4]
			}, -- [4]
			{
				11.88299999999435, -- [1]
				"More! I want MORE!", -- [2]
				"Gurtogg Bloodboil", -- [3]
				7, -- [4]
			}, -- [5]
			{
				13.09999999999855, -- [1]
				"%s |cFFFF0404|Hspell:184476|h[Reaps]|h|r all marked foes!", -- [2]
				"Dia Darkwhisper", -- [3]
				1, -- [4]
			}, -- [6]
			{
				13.09999999999855, -- [1]
				"It rips. It tears. It is boundless and eternal...", -- [2]
				"Dia Darkwhisper", -- [3]
				7, -- [4]
			}, -- [7]
			{
				13.48300000000018, -- [1]
				"The sweet mercy... of death.", -- [2]
				"Dia Darkwhisper", -- [3]
				7, -- [4]
			}, -- [8]
			["boss"] = "Hellfire High Council",
		}, -- [1]
		{
			{
				0.1990000000005239, -- [1]
				"The Eredar are no strangers to war. Are you so eager to meet your end?", -- [2]
				"Tyrant Velhari", -- [3]
				7, -- [4]
			}, -- [1]
			{
				5.466000000000349, -- [1]
				"|cFFFF0000%s|r activates an |cFFFF0000|Hspell:181718|h[Aura of Oppression]|h|r!", -- [2]
				"Tyrant Velhari", -- [3]
				1, -- [4]
			}, -- [2]
			{
				6.699000000000524, -- [1]
				"You are getting so very frail and weak.", -- [2]
				"Tyrant Velhari", -- [3]
				7, -- [4]
			}, -- [3]
			{
				9.116000000001804, -- [1]
				"|cFFFF0000%s|r activates an |cFFFF0000|Hspell:179986|h[Aura of Contempt]|h|r!", -- [2]
				"Tyrant Velhari", -- [3]
				1, -- [4]
			}, -- [4]
			{
				10.333000000006, -- [1]
				"Enforcer, enact my will!", -- [2]
				"Tyrant Velhari", -- [3]
				7, -- [4]
			}, -- [5]
			{
				10.333000000006, -- [1]
				"Harbinger, restore my wounds!", -- [2]
				"Tyrant Velhari", -- [3]
				7, -- [4]
			}, -- [6]
			{
				10.333000000006, -- [1]
				"The avatar of an |cFFFF0000%s|r enters the battle!", -- [2]
				"Ancient Enforcer", -- [3]
				1, -- [4]
			}, -- [7]
			{
				10.333000000006, -- [1]
				"The avatar of an |cFFFF0000%s|r enters the battle!", -- [2]
				"Ancient Harbinger", -- [3]
				1, -- [4]
			}, -- [8]
			{
				11.55900000000111, -- [1]
				"Enough! This is where you die!", -- [2]
				"Tyrant Velhari", -- [3]
				7, -- [4]
			}, -- [9]
			{
				13.99900000000343, -- [1]
				"|cFFFF0000%s|r activates an |cFFFF0000|Hspell:179991|h[Aura of Malice]|h|r!", -- [2]
				"Tyrant Velhari", -- [3]
				1, -- [4]
			}, -- [10]
			{
				15.19900000000052, -- [1]
				"The Sovereign watches over me!", -- [2]
				"Tyrant Velhari", -- [3]
				7, -- [4]
			}, -- [11]
			{
				15.19900000000052, -- [1]
				"The avatar of an |cFFFF0000%s|r enters the battle!", -- [2]
				"Ancient Sovereign", -- [3]
				1, -- [4]
			}, -- [12]
			["boss"] = "Tyrant Velhari",
		}, -- [2]
		{
			{
				3.875, -- [1]
				"No! The binding... I cannot control...", -- [2]
				"Soul of Socrethar", -- [3]
				7, -- [4]
			}, -- [1]
			{
				10.42599999999948, -- [1]
				"My soul itself shall strike you down!", -- [2]
				"Soul of Socrethar", -- [3]
				7, -- [4]
			}, -- [2]
			["boss"] = "Socrethar the Eternal",
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
		[179583] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Fel Lord Zakuun",
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
		[184355] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Gurtogg Bloodboil",
		},
		[183023] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Soulbound Construct",
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
		[181873] = {
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
		[186134] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Xhul'horac",
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
		[179743] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Fel Lord Zakuun",
		},
		[184476] = {
			["school"] = 32,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Dia Darkwhisper",
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
		[181912] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Shadow-Lord Iskar",
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
		[181718] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[186532] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Wild Pyromaniac",
		},
		[187107] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Archimonde",
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
		[188950] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Desecration",
		},
		[186993] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Blademaster Jubei'thos",
		},
		[182225] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Archimonde",
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
		[163988] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Imperator Mar'gok",
		},
		[158013] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
		},
		[181913] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Shadow-Lord Iskar",
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
		[177438] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
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
		[180166] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Tyrant Velhari",
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
		[180000] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Tyrant Velhari",
		},
		[157657] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Volatile Anomaly",
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
		[181192] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Dread Infernal",
		},
	},
}
