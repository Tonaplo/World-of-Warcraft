
OneRing_Config = {
	["CenterActions"] = {
		["tAbilities"] = "ABuep4BpwxE",
		["SpecMenu"] = "ABuep4Bpwxec",
	},
	["CharProfiles"] = {
		["Proudmoore-Farahn-3"] = "All",
		["Proudmoore-Fimwack-2"] = "default",
	},
	["_GameLocale"] = "enUS",
	["_OPieVersion"] = "Vanilla 4 (3.92)",
	["ProfileStorage"] = {
		["default"] = {
			["ClickActivation"] = true,
			["SliceBinding"] = true,
			["Bindings"] = {
				["Base"] = "SHIFT-G",
				["Mounts"] = "SHIFT-H",
			},
			["ShowRecharge"] = true,
			["ShowCooldowns"] = true,
			["CenterAction"] = true,
			["RingOptions"] = {
				["Mounts#NoClose"] = false,
				["Mounts#ClickActivation"] = true,
				["Macros#NoClose"] = false,
			},
			["NoClose"] = true,
			["UseDefaultBindings"] = false,
		},
		["All"] = {
			["ClickActivation"] = true,
			["SliceBinding"] = true,
			["Bindings"] = {
				["Base"] = "SHIFT-G",
				["Mounts"] = "SHIFT-H",
			},
			["UseDefaultBindings"] = false,
			["NoClose"] = true,
			["CenterAction"] = true,
			["RingOptions"] = {
				["Mounts#NoClose"] = false,
				["Mounts#ClickActivation"] = true,
				["Macros#NoClose"] = false,
			},
			["ShowCooldowns"] = true,
			["ShowRecharge"] = true,
		},
	},
	["PersistentStorage"] = {
		["RingKeeper"] = {
			["Pots"] = {
				{
					"item", -- [1]
					127840, -- [2]
					["sliceToken"] = "ABuep5oDlqa",
				}, -- [1]
				{
					"item", -- [1]
					127835, -- [2]
					["sliceToken"] = "ABuep5oDlqp",
				}, -- [2]
				{
					"item", -- [1]
					127846, -- [2]
					["sliceToken"] = "ABuep5oDlqo",
				}, -- [3]
				{
					["sliceToken"] = "ABuep5oDlq4",
					["icon"] = 1339449,
					["id"] = "/click ORLOpen Base",
				}, -- [4]
				{
					"item", -- [1]
					109220, -- [2]
					["sliceToken"] = "ABuepxugBVe",
				}, -- [5]
				{
					"item", -- [1]
					142117, -- [2]
					["sliceToken"] = "ABueaHfn6ur",
				}, -- [6]
				{
					"item", -- [1]
					127839, -- [2]
					["sliceToken"] = "ABue3rO4Twe",
				}, -- [7]
				["name"] = "Pots",
				["save"] = true,
			},
			["SpecMenu"] = {
				{
					["id"] = "/cast {{spell:50977/193753/126892/193759}}",
					["sliceToken"] = "OPCTAc",
				}, -- [1]
				{
					"item", -- [1]
					110560, -- [2]
					["sliceToken"] = "OPCTAg",
				}, -- [2]
				{
					"item", -- [1]
					140192, -- [2]
					["sliceToken"] = "OPCTAd",
				}, -- [3]
				{
					"item", -- [1]
					6948, -- [2]
					["sliceToken"] = "OPCTAh",
				}, -- [4]
				{
					"toy", -- [1]
					64488, -- [2]
					["sliceToken"] = "OPCTAi",
				}, -- [5]
				{
					"item", -- [1]
					141605, -- [2]
					["sliceToken"] = "ABuepjqUmtB",
				}, -- [6]
				{
					["sliceToken"] = "ABuep4Bpwxec",
					["id"] = "/click ORLOpen Base",
					["icon"] = 1339449,
					["fastClick"] = true,
				}, -- [7]
				["name"] = "Travel",
				["save"] = true,
				["hotkey"] = "ALT-H",
			},
			["CommonTrades"] = {
				{
					["id"] = "/cast {{spell:3908/51309}}",
					["sliceToken"] = "OPCCTt",
				}, -- [1]
				{
					["id"] = "/cast {{spell:2108/51302}}",
					["sliceToken"] = "OPCCTl",
				}, -- [2]
				{
					["id"] = "/cast {{spell:2018/51300}}",
					["sliceToken"] = "OPCCTb",
				}, -- [3]
				{
					["id"] = "/cast [mod] {{spell:31252}}; {{spell:25229/51311}};",
					["sliceToken"] = "OPCCTj",
				}, -- [4]
				{
					["id"] = "/cast [mod] {{spell:13262}}; {{spell:7411/51313}}",
					["sliceToken"] = "OPCCTe",
				}, -- [5]
				{
					["id"] = "/cast {{spell:2259/51304}}",
					["sliceToken"] = "OPCCTa",
				}, -- [6]
				{
					["sliceToken"] = "OPCCTc",
					["id"] = "/cast [mod] {{spell:818}}; {{spell:2550/51296}}",
				}, -- [7]
				{
					["id"] = "/cast [mod] {{spell:51005}}; {{spell:45357/45363}}",
					["sliceToken"] = "OPCCTi",
				}, -- [8]
				{
					["sliceToken"] = "OPCCTf",
					["id"] = "/cast {{spell:3273/45542}}",
				}, -- [9]
				{
					["sliceToken"] = "OPCCTg",
					["id"] = "/cast {{spell:4036/51306}}",
				}, -- [10]
				{
					["id"] = "/cast [mod] {{spell:80451}}; {{spell:78670/89722}}",
					["sliceToken"] = "OPCCTr",
				}, -- [11]
				{
					["id"] = 53428,
					["sliceToken"] = "OPCCTu",
				}, -- [12]
				{
					["sliceToken"] = "OPCCTm",
					["id"] = 2656,
				}, -- [13]
				{
					["id"] = 13262,
					["sliceToken"] = "ABuepjqUmtwi",
				}, -- [14]
				{
					["sliceToken"] = "ABuep4BpwxeZ",
					["id"] = "/click ORLOpen Base",
					["icon"] = 1339449,
					["fastClick"] = true,
				}, -- [15]
				{
					["sliceToken"] = "ABuepxI/Peu",
					["id"] = "/equip Underlight Angler\n/use {{spell:131474}}",
					["caption"] = "Fishing",
				}, -- [16]
				{
					["sliceToken"] = "ABuesXHE2Xe",
					["id"] = 134359,
				}, -- [17]
				["noPersistentCA"] = true,
				["name"] = "Trade Skills",
				["noOpportunisticCA"] = true,
				["save"] = true,
				["hotkey"] = "ALT-T",
			},
			["OPieFlagStore"] = {
				["FlushedDefaultColors"] = true,
			},
			["Mounts"] = {
				{
					["sliceToken"] = "ABuepjqUmtwy",
					["id"] = 150544,
				}, -- [1]
				{
					["sliceToken"] = "ABuepjqUmtwt",
					["id"] = 61425,
				}, -- [2]
				{
					["sliceToken"] = "ABuepjqUmtw1",
					["id"] = 72286,
				}, -- [3]
				{
					["show"] = "[spec:255/254/253] hide;",
					["sliceToken"] = "ABuepElZQEe",
					["id"] = 229377,
				}, -- [4]
				{
					["id"] = 229376,
					["sliceToken"] = "ABuea4sWRNe",
				}, -- [5]
				{
					["id"] = 229388,
					["sliceToken"] = "ABuea4/4zZe",
				}, -- [6]
				{
					["id"] = 229387,
					["sliceToken"] = "ABueajwKJge",
				}, -- [7]
				{
					["id"] = 231442,
					["sliceToken"] = "ABueaz9T4ae",
				}, -- [8]
				{
					["id"] = 229417,
					["sliceToken"] = "ABuea5g/T6e",
				}, -- [9]
				{
					["id"] = 229386,
					["sliceToken"] = "ABuea5k9m/e",
				}, -- [10]
				{
					["id"] = 229385,
					["sliceToken"] = "ABuea5PhMXe",
				}, -- [11]
				{
					["id"] = 232412,
					["sliceToken"] = "ABueax2PbEe",
				}, -- [12]
				{
					["id"] = 231434,
					["sliceToken"] = "ABueaxptLhe",
				}, -- [13]
				{
					["sliceToken"] = "ABueacciiTe",
					["id"] = 231435,
				}, -- [14]
				{
					["id"] = 783,
					["sliceToken"] = "ABueaX/fZYr",
				}, -- [15]
				["name"] = "Mounts",
				["save"] = true,
			},
			["onsumables"] = {
				{
					"item", -- [1]
					140587, -- [2]
					["sliceToken"] = "ABuepjqUmtZ",
				}, -- [1]
				{
					"item", -- [1]
					138292, -- [2]
					["sliceToken"] = "ABuepjqUmtL",
				}, -- [2]
				{
					"item", -- [1]
					133572, -- [2]
					["sliceToken"] = "ABuepjqUmtK",
				}, -- [3]
				{
					"item", -- [1]
					133570, -- [2]
					["sliceToken"] = "ABuepjqUmtJ",
				}, -- [4]
				{
					"item", -- [1]
					127847, -- [2]
					["sliceToken"] = "ABuepjqUmtH",
				}, -- [5]
				{
					["sliceToken"] = "ABuepjqUmt0",
					["icon"] = 1339449,
					["id"] = "/click ORLOpen Base",
				}, -- [6]
				{
					"item", -- [1]
					113509, -- [2]
					["sliceToken"] = "ABuepjv9NWu",
				}, -- [7]
				{
					"item", -- [1]
					127770, -- [2]
					["sliceToken"] = "ABuepjv9NWy",
				}, -- [8]
				{
					"item", -- [1]
					153023, -- [2]
					["sliceToken"] = "ABueaAYKAle",
				}, -- [9]
				["name"] = "Consumables",
				["save"] = true,
			},
			["WorldMarkers"] = {
				{
					"worldmark", -- [1]
					1, -- [2]
					["sliceToken"] = "OPCWMb",
				}, -- [1]
				{
					"worldmark", -- [1]
					2, -- [2]
					["sliceToken"] = "OPCWMg",
				}, -- [2]
				{
					"worldmark", -- [1]
					3, -- [2]
					["sliceToken"] = "OPCWMp",
				}, -- [3]
				{
					"worldmark", -- [1]
					4, -- [2]
					["sliceToken"] = "OPCWMr",
				}, -- [4]
				{
					"worldmark", -- [1]
					5, -- [2]
					["sliceToken"] = "OPCWMy",
				}, -- [5]
				{
					"worldmark", -- [1]
					6, -- [2]
					["sliceToken"] = "OPCWMo",
				}, -- [6]
				{
					"worldmark", -- [1]
					7, -- [2]
					["sliceToken"] = "OPCWMs",
				}, -- [7]
				{
					"worldmark", -- [1]
					8, -- [2]
					["sliceToken"] = "OPCWMw",
				}, -- [8]
				{
					"worldmark", -- [1]
					0, -- [2]
					["sliceToken"] = "OPCWMc",
					["c"] = "ccd8e5",
				}, -- [9]
				["name"] = "World Markers",
				["save"] = true,
				["hotkey"] = "[group] ALT-Y",
				["internal"] = true,
			},
			["tAbilities"] = {
				{
					["id"] = 1706,
					["sliceToken"] = "ABuep4BpwxR",
				}, -- [1]
				{
					["id"] = 2006,
					["sliceToken"] = "ABuep4Bpwx7",
				}, -- [2]
				{
					["sliceToken"] = "ABuep4BpwxE",
					["id"] = "/click ORLOpen Base",
					["caption"] = "Base",
					["icon"] = 1339449,
					["fastClick"] = true,
				}, -- [3]
				{
					["id"] = 232698,
					["sliceToken"] = "ABuepjqUmtwp",
				}, -- [4]
				{
					["id"] = 31687,
					["sliceToken"] = "ABuep5Et2m1",
				}, -- [5]
				{
					["id"] = 190336,
					["sliceToken"] = "ABuep5Et2mr",
				}, -- [6]
				{
					["id"] = 546,
					["sliceToken"] = "ABuepcdn0Le",
				}, -- [7]
				{
					["id"] = 883,
					["sliceToken"] = "ABuep7oyKRe",
				}, -- [8]
				{
					["id"] = 203539,
					["sliceToken"] = "ABuepYX/fJ1",
				}, -- [9]
				{
					["id"] = 203538,
					["sliceToken"] = "ABuepYX/fJr",
				}, -- [10]
				{
					["id"] = 2823,
					["sliceToken"] = "ABuepPCKkae",
				}, -- [11]
				{
					["id"] = 29893,
					["sliceToken"] = "ABuepDog/Wl",
				}, -- [12]
				{
					["id"] = 111771,
					["sliceToken"] = "ABuepDog/Wk",
				}, -- [13]
				{
					["id"] = 698,
					["sliceToken"] = "ABuepDog/Wj",
				}, -- [14]
				{
					["id"] = 20707,
					["sliceToken"] = "ABuepDog/W4",
				}, -- [15]
				{
					["id"] = 18540,
					["sliceToken"] = "ABuepDog/Wh",
				}, -- [16]
				{
					["id"] = 5697,
					["sliceToken"] = "ABuepDog/Wg",
				}, -- [17]
				{
					["id"] = 688,
					["sliceToken"] = "ABueazSzU/e",
				}, -- [18]
				{
					["id"] = 46584,
					["sliceToken"] = "ABueaWHtzHe",
				}, -- [19]
				{
					["id"] = 6201,
					["sliceToken"] = "ABueskR0Um1",
				}, -- [20]
				{
					["id"] = 697,
					["sliceToken"] = "ABueskR0Umr",
				}, -- [21]
				{
					["id"] = 691,
					["sliceToken"] = "ABuesnWstVe",
				}, -- [22]
				{
					["id"] = 3714,
					["sliceToken"] = "ABuesnYYbWe",
				}, -- [23]
				{
					["id"] = 30146,
					["sliceToken"] = "ABuesm1/8Lt",
				}, -- [24]
				{
					["id"] = 224871,
					["sliceToken"] = "ABuesG8z4qe",
				}, -- [25]
				{
					["id"] = 212036,
					["sliceToken"] = "ABue3cjatfe",
				}, -- [26]
				["name"] = "Abilities",
				["save"] = true,
			},
			["RaidSymbols"] = {
				{
					"raidmark", -- [1]
					1, -- [2]
					["sliceToken"] = "OPCRSy",
				}, -- [1]
				{
					"raidmark", -- [1]
					2, -- [2]
					["sliceToken"] = "OPCRSo",
				}, -- [2]
				{
					"raidmark", -- [1]
					3, -- [2]
					["sliceToken"] = "OPCRSp",
				}, -- [3]
				{
					"raidmark", -- [1]
					4, -- [2]
					["sliceToken"] = "OPCRSg",
				}, -- [4]
				{
					"raidmark", -- [1]
					5, -- [2]
					["sliceToken"] = "OPCRSs",
				}, -- [5]
				{
					"raidmark", -- [1]
					6, -- [2]
					["sliceToken"] = "OPCRSb",
				}, -- [6]
				{
					"raidmark", -- [1]
					7, -- [2]
					["sliceToken"] = "OPCRSr",
				}, -- [7]
				{
					"raidmark", -- [1]
					8, -- [2]
					["sliceToken"] = "OPCRSw",
				}, -- [8]
				{
					"raidmark", -- [1]
					0, -- [2]
					["sliceToken"] = "OPCRSc",
				}, -- [9]
				["name"] = "Target Markers",
				["save"] = true,
				["hotkey"] = "ALT-R",
				["internal"] = true,
			},
			["Base"] = {
				{
					["sliceToken"] = "ABuep4Bpwxd",
					["id"] = "/click ORLOpen SpecMenu",
					["caption"] = "Travel",
					["icon"] = 134414,
				}, -- [1]
				{
					["sliceToken"] = "ABuep4BpwxS",
					["id"] = "/click ORLOpen CommonTrades",
					["caption"] = "Trade Skills",
					["icon"] = 134707,
				}, -- [2]
				{
					["sliceToken"] = "ABuep4Bpwxeb",
					["id"] = "/click ORLOpen Macros",
					["caption"] = "Macros",
					["icon"] = 1505928,
				}, -- [3]
				{
					["sliceToken"] = "ABuepjqUmtV",
					["id"] = "/click ORLOpen onsumables",
					["caption"] = "Consumables",
					["icon"] = 134055,
				}, -- [4]
				{
					["sliceToken"] = "ABuepjqUmtwq",
					["id"] = "/click ORLOpen tAbilities",
					["caption"] = "Class Abilities",
					["icon"] = 132147,
				}, -- [5]
				{
					["sliceToken"] = "ABuep5oDlq5",
					["icon"] = 1385152,
					["id"] = "/click ORLOpen Pots",
				}, -- [6]
				["name"] = "Base",
				["save"] = true,
				["hotkey"] = "SHIFT-G",
			},
			["Macros"] = {
				{
					"macro", -- [1]
					"WeakAuras", -- [2]
					["sliceToken"] = "ABuep4Bpwxe4",
				}, -- [1]
				{
					"macro", -- [1]
					"Tich", -- [2]
					["sliceToken"] = "ABuep4Bpwxeh",
				}, -- [2]
				{
					"macro", -- [1]
					"reload ui", -- [2]
					["sliceToken"] = "ABuep4Bpwxeg",
				}, -- [3]
				{
					"macro", -- [1]
					"Opie", -- [2]
					["sliceToken"] = "ABuep4Bpwxef",
				}, -- [4]
				{
					"macro", -- [1]
					"focus", -- [2]
					["sliceToken"] = "ABuep4Bpwxeo",
				}, -- [5]
				{
					["sliceToken"] = "ABuep4Bpwxe2",
					["caption"] = "Back",
					["icon"] = 1339449,
					["id"] = "/click ORLOpen Base",
				}, -- [6]
				{
					["sliceToken"] = "ABuepR6IT1u",
					["caption"] = "Exorsus Raid Tools",
					["icon"] = 136106,
					["id"] = "/rt",
				}, -- [7]
				{
					"macro", -- [1]
					"Clique", -- [2]
					["sliceToken"] = "ABue3cIAn1e",
				}, -- [8]
				{
					"macro", -- [1]
					"grid2", -- [2]
					["sliceToken"] = "ABue3vGAs0e",
				}, -- [9]
				["name"] = "Macros",
				["save"] = true,
			},
		},
	},
	["_GameVersion"] = "7.3.5",
}
