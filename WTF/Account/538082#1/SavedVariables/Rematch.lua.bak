
RematchSaved = {
	[117951] = {
		{
			"BattlePet-0-00000FAC7469", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000FAC742A", -- [1]
			118, -- [2]
			572, -- [3]
			297, -- [4]
			1934, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000FAC740F", -- [1]
			390, -- [2]
			436, -- [3]
			490, -- [4]
			1155, -- [5]
		}, -- [3]
		["tab"] = 2,
		["teamName"] = "Nameless Mystic",
	},
	[117934] = {
		{
			"BattlePet-0-00000FAC742A", -- [1]
			118, -- [2]
			572, -- [3]
			934, -- [4]
			1934, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000FAC7469", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000FAC736A", -- [1]
			110, -- [2]
			197, -- [3]
			159, -- [4]
			903, -- [5]
		}, -- [3]
		["tab"] = 2,
		["teamName"] = "Sissix",
	},
	[99035] = {
		{
			"BattlePet-0-00000FAC736A", -- [1]
			110, -- [2]
			197, -- [3]
			159, -- [4]
			903, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000FAC7469", -- [1]
			515, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000FAC7398", -- [1]
			1359, -- [2]
			1357, -- [3]
			1354, -- [4]
			1451, -- [5]
		}, -- [3]
		["tab"] = 2,
		["teamName"] = "Durian Strongfruit",
	},
	[117950] = {
		{
			"BattlePet-0-00000FAC7469", -- [1]
			115, -- [2]
			779, -- [3]
			334, -- [4]
			844, -- [5]
		}, -- [1]
		{
			"BattlePet-0-00000FAC7466", -- [1]
			210, -- [2]
			442, -- [3]
			212, -- [4]
			190, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000FAC7373", -- [1]
			210, -- [2]
			212, -- [3]
			650, -- [4]
			458, -- [5]
		}, -- [3]
		["tab"] = 2,
		["teamName"] = "Madam Viciosa",
	},
}
RematchSettings = {
	["ScriptFilters"] = {
		{
			"Unnamed Pets", -- [1]
			"-- Collected pets that still have their original name.\n\nreturn owned and not customName", -- [2]
		}, -- [1]
		{
			"Partially Leveled", -- [1]
			"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0", -- [2]
		}, -- [2]
		{
			"Unique Abilities", -- [1]
			"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend", -- [2]
		}, -- [3]
		{
			"Pets Without Rares", -- [1]
			"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend", -- [2]
		}, -- [4]
		{
			"Hybrid Counters", -- [1]
			"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n", -- [2]
		}, -- [5]
	},
	["QueueSortOrder"] = 1,
	["XPos"] = 697.395629882813,
	["FavoriteFilters"] = {
	},
	["Sort"] = {
		["Order"] = 2,
		["FavoritesFirst"] = true,
	},
	["JournalPanel"] = 1,
	["BackupCount"] = 0,
	["TeamGroups"] = {
		{
			"General", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [1]
		{
			"The Broken Shore", -- [1]
			1118739, -- [2]
		}, -- [2]
	},
	["Filters"] = {
		["Other"] = {
		},
		["Strong"] = {
		},
		["Types"] = {
		},
		["Tough"] = {
		},
		["Level"] = {
		},
		["Sources"] = {
		},
		["Similar"] = {
		},
		["Breed"] = {
		},
		["Script"] = {
		},
		["Rarity"] = {
		},
		["Collected"] = {
		},
		["Favorite"] = {
		},
		["Moveset"] = {
		},
	},
	["SpecialSlots"] = {
	},
	["AllowHiddenPetsDefaulted"] = true,
	["CollapsedOptHeaders"] = {
	},
	["UseTypeBar"] = true,
	["PreferredMode"] = 1,
	["ActivePanel"] = 1,
	["Sanctuary"] = {
		["BattlePet-0-000008A6D4E2"] = {
			1, -- [1]
			nil, -- [2]
			190, -- [3]
			25, -- [4]
			1806, -- [5]
			276, -- [6]
			227, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008A6D3F0"] = {
			1, -- [1]
			nil, -- [2]
			458, -- [3]
			25, -- [4]
			1338, -- [5]
			248, -- [6]
			206, -- [7]
			2, -- [8]
		},
		["BattlePet-0-000008A6D3E7"] = {
			2, -- [1]
			nil, -- [2]
			903, -- [3]
			25, -- [4]
			1384, -- [5]
			322, -- [6]
			257, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008A6D48C"] = {
			1, -- [1]
			nil, -- [2]
			1155, -- [3]
			25, -- [4]
			1725, -- [5]
			276, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008A6D415"] = {
			1, -- [1]
			nil, -- [2]
			1451, -- [3]
			25, -- [4]
			1400, -- [5]
			260, -- [6]
			325, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008A6D4E6"] = {
			4, -- [1]
			nil, -- [2]
			844, -- [3]
			25, -- [4]
			1400, -- [5]
			276, -- [6]
			309, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008A6D4A6"] = {
			2, -- [1]
			nil, -- [2]
			1934, -- [3]
			25, -- [4]
			1627, -- [5]
			289, -- [6]
			244, -- [7]
			4, -- [8]
		},
	},
	["JournalUsed"] = true,
	["CornerPos"] = "BOTTOMLEFT",
	["LevelingQueue"] = {
	},
	["loadedTeam"] = 117934,
	["YPos"] = 250.59748840332,
	["SelectedTab"] = 2,
	["PetNotes"] = {
	},
}
