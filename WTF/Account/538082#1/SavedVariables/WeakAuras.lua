
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Dream Simulacrum"] = {
			[206005] = "Interface\\Icons\\ability_xavius_dreamsimulacrum",
		},
		["Symbols of Death"] = {
			[212283] = "INTERFACE\\ICONS\\spell_shadow_rune",
		},
		["Immolate"] = {
			[157736] = "Interface\\Icons\\Spell_Fire_Immolation",
		},
		["Backdraft"] = {
			[117828] = "Interface\\Icons\\Ability_Warlock_Backdraft",
		},
		["Phantasmal Winds"] = {
			[181957] = "Interface\\Icons\\Spell_Frost_ArcticWinds",
		},
		["Hunger for Life"] = {
			[180148] = "Interface\\Icons\\ability_fixated_state_purple",
		},
		["Purge the Wicked"] = {
			[204213] = "Interface\\Icons\\Ability_Mage_FireStarter",
		},
		["Creeping Nightmares"] = {
			[210279] = "Interface\\Icons\\Ability_Warlock_Eradication",
		},
		["Blessing of T'uure"] = {
			[196644] = "Interface\\Icons\\inv_pet_naaru",
		},
		["Rot"] = {
			[203096] = "Interface\\Icons\\Spell_Shadow_CreepingPlague",
		},
		["Scorned Touch"] = {
			[211471] = "Interface\\Icons\\sha_spell_fire_blueimmolation_nightmare",
		},
		["Nightblade"] = {
			[195452] = "Interface\\Icons\\ability_rogue_nightblade",
		},
		["Thrash"] = {
			[106830] = "INTERFACE\\ICONS\\spell_druid_thrash",
		},
		["Fel Chakram"] = {
			[182178] = "Interface\\Icons\\ability_arakkoa_spinning_blade",
			[182200] = "Interface\\Icons\\ability_arakkoa_spinning_blade",
		},
		["Trauma"] = {
			[215537] = "Interface\\Icons\\Ability_Warrior_Trauma",
		},
		["Eradication"] = {
			[196414] = "Interface\\Icons\\Ability_Warlock_Eradication",
		},
		["Lacerate"] = {
			[185855] = "Interface\\Icons\\ability_hunter_laceration",
		},
		["Symbol of Hope"] = {
			[64901] = "Interface\\Icons\\Spell_Holy_SymbolOfHope",
		},
		["Shadow of Death"] = {
			[179864] = "Interface\\Icons\\Spell_Arcane_PrismaticCloak",
		},
		["Shield Block"] = {
			[132404] = "Interface\\Icons\\Ability_Defend",
		},
		["Touch of Doom"] = {
			[179977] = "Interface\\Icons\\ability_bossgorefiend_touchofdoom",
		},
		["Voidform"] = {
			[194249] = "Interface\\Icons\\spell_priest_voidform",
		},
		["Spew Corruption"] = {
			[208929] = "Interface\\Icons\\Spell_Shadow_SoulLeech",
		},
		["Eye of Anzu"] = {
			[179202] = "Interface\\Icons\\ability_felarakkoa_eyeofterrok",
		},
		["Divine Purpose"] = {
			[223819] = "Interface\\Icons\\Spell_Holy_MindVision",
		},
		["Rake"] = {
			[155722] = "Interface\\Icons\\Ability_Druid_Disembowel",
		},
		["Rip"] = {
			[1079] = "Interface\\Icons\\Ability_GhoulFrenzy",
		},
		["Mok'Nathal Tactics"] = {
			[201081] = "Interface\\Icons\\achievement_character_orc_male_brn",
		},
		["Ignore Pain"] = {
			[190456] = "Interface\\Icons\\ability_warrior_renewedvigor",
		},
		["Colossus Smash"] = {
			[208086] = "INTERFACE\\ICONS\\ability_warrior_colossussmash",
		},
		["Reparation"] = {
			[186478] = "Interface\\Icons\\Ability_Paladin_SacredCleansing",
		},
		["Tidal Waves"] = {
			[53390] = "Interface\\Icons\\Spell_Shaman_TidalWaves",
		},
		["Radiance of Anzu"] = {
			[185239] = "Interface\\Icons\\spell_burningbladeshaman_blazing_radiance",
		},
		["Shared Fate"] = {
			[179908] = "Interface\\Icons\\ability_warlock_soullink",
		},
		["Vulnerable"] = {
			[187131] = "Interface\\Icons\\Ability_Hunter_MasterMarksman",
		},
		["Flame Shock"] = {
			[188389] = "Interface\\Icons\\Spell_Fire_FlameShock",
		},
		["Vampiric Touch"] = {
			[34914] = "Interface\\Icons\\Spell_Holy_Stoicism",
		},
		["Shadow Word: Pain"] = {
			[216514] = "Interface\\Icons\\Spell_Shadow_ShadowWordPain",
			[589] = "Interface\\Icons\\Spell_Shadow_ShadowWordPain",
			[222074] = "Interface\\Icons\\Spell_Shadow_ShadowWordPain",
		},
		["Digest"] = {
			[181295] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
		},
	},
	["login_squelch_time"] = 10,
	["displays"] = {
		["HPriest Apotheosis 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant4.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Apotheosis",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 200183,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolySounds",
			["stacksPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["xOffset"] = 20,
			["id"] = "HPriest Apotheosis 2",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 200183,
			},
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["T18: HFC"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"Iskar: Eye of Anzu", -- [1]
				"Iskar: Raidance of Anzu", -- [2]
				"Iskar: Phantasmal Corruption", -- [3]
				"Iskar: Fel Chakram", -- [4]
				"Iskar - Phantasmal Winds 2", -- [5]
				"Socrethar: Volatile Fel Orb", -- [6]
				"Socrethar: Gift of the Man'ari", -- [7]
				"Fel Lord: Seed of Destruction", -- [8]
				"Fel Lord: Latent Energy", -- [9]
				"Xhul: Chains of Fel", -- [10]
				"Xhul: Fel Surge", -- [11]
				"Xhul: Void Surge", -- [12]
				"Digest", -- [13]
				"Shared Fate 1", -- [14]
				"Shared Fate 2", -- [15]
				"Fixate", -- [16]
				"Touch of Doom", -- [17]
				"Touch of Death", -- [18]
			},
			["animate"] = false,
			["regionType"] = "dynamicgroup",
			["xOffset"] = 26.8038330078125,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["yOffset"] = 364.547668457031,
			["anchorPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["sort"] = "none",
			["activeTriggerMode"] = 0,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "CENTER",
			["backgroundInset"] = 0,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "T18: HFC",
			["stagger"] = 0,
			["frameStrata"] = 1,
			["width"] = 1653.99990844727,
			["rotation"] = 0,
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["height"] = 90.0000610351563,
			["borderOffset"] = 16,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["radius"] = 200,
		},
		["Heroic Leap CD"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 6544,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 6544,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Heroic Leap",
				["use_spellName"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Heroic Leap CD",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["yOffset"] = 0,
			["parent"] = "Warrior Prot CDs",
			["inverse"] = false,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["xOffset"] = 225,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Revenge R"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 6572,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Revenge",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["spellName"] = 6572,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Revenge R",
			["xOffset"] = 45,
			["frameStrata"] = 1,
			["width"] = 40,
			["parent"] = "Warrior Prot CDs",
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Immolate"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "WARLOCK",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Warlock Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Immolate", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["spark"] = true,
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["barInFront"] = true,
			["stacksFont"] = "Friz Quadrata TT",
			["sparkHeight"] = 54,
			["sparkWidth"] = 24,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkHidden"] = "NEVER",
			["id"] = "Immolate",
			["frameStrata"] = 1,
			["width"] = 240,
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["timer"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["dispel"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 550,
			["stacksFlags"] = "None",
			["yOffset"] = 480,
			["anchorPoint"] = "BOTTOMLEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["init_completed"] = 1,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Interrupts and Dispells",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 527,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Purify",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 20,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["zoom"] = 0,
			["untrigger"] = {
				["spellName"] = 527,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["textFlags"] = "None",
			["border"] = false,
			["borderEdge"] = "None",
			["sparkOffsetX"] = 0,
			["borderSize"] = 16,
			["inverse"] = true,
			["icon_side"] = "LEFT",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["sparkHeight"] = 30,
			["auto"] = true,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["timer"] = true,
			["sparkHidden"] = "NEVER",
			["id"] = "dispel",
			["frameStrata"] = 1,
			["width"] = 400,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["stacksFont"] = "Friz Quadrata TT",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["Rogue Bars"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Symbols of Death", -- [1]
				"NightBlade", -- [2]
			},
			["animate"] = false,
			["anchorPoint"] = "CENTER",
			["xOffset"] = -240,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["radius"] = 200,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backgroundInset"] = 0,
			["id"] = "Rogue Bars",
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["yOffset"] = -80,
			["frameStrata"] = 1,
			["width"] = 240.000122070313,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["height"] = 52.0000305175781,
			["borderOffset"] = 16,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["HPriest PoM 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 33076,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_custom"] = false,
					["do_sound"] = true,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_custom"] = false,
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "None",
			["useTooltip"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "bounceDecay",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "slidebottom",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Prayer of Mending",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 33076,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolySounds",
			["stacksPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["yOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["xOffset"] = 20,
			["numTriggers"] = 1,
			["icon"] = true,
			["id"] = "HPriest PoM 2",
			["displayIcon"] = 135937,
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Nythendra Rot"] = {
			["parent"] = "Emerald Nightmare",
			["yOffset"] = 306.325012207031,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BoxingArenaSound.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["names"] = {
					"Rot", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 100,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 31,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Nythendra Rot",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["width"] = 100,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["untrigger"] = {
			},
			["xOffset"] = -254.906127929688,
			["icon"] = true,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Purge the Wicked"] = {
			["sparkWidth"] = 24,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Priest Bars",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Purge the Wicked", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["icon"] = true,
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["customTextUpdate"] = "update",
			["untrigger"] = {
			},
			["sparkHeight"] = 54,
			["sparkOffsetX"] = 0,
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["textFlags"] = "None",
			["id"] = "Purge the Wicked",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 240,
			["sparkRotation"] = 0,
			["borderOffset"] = 5,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["timer"] = true,
			["textSize"] = 12,
			["spark"] = true,
		},
		["Judgement R"] = {
			["parent"] = "Paladin Prot CDs",
			["untrigger"] = {
				["spellName"] = 20271,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Judgment",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["spellName"] = 20271,
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Judgement R",
			["xOffset"] = -125,
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = -265,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Emerald Nightmare"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Xavius Dream Sim", -- [1]
				"Cenarius: Scorned Touch", -- [2]
				"Nythendra Rot", -- [3]
				"Cenarius: Creeping Nightmares", -- [4]
				"Ilgynoth: Spew Corruption", -- [5]
			},
			["animate"] = false,
			["regionType"] = "dynamicgroup",
			["disjunctive"] = "all",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["backgroundInset"] = 0,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["yOffset"] = 328.205322265625,
			["frameStrata"] = 1,
			["width"] = 508,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["id"] = "Emerald Nightmare",
			["height"] = 100.000061035156,
			["radius"] = 200,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -375.247802734375,
		},
		["Last Stand R"] = {
			["parent"] = "Warrior Prot CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Last Stand",
				["use_spellName"] = true,
				["spellName"] = 12975,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Last Stand R",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["untrigger"] = {
				["spellName"] = 12975,
			},
			["xOffset"] = 270,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Ice Barrier Ready"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 11426,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Ice Barrier",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_unit"] = true,
				["spellName"] = 11426,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "Mage Procs",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Ice Barrier Ready",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["yOffset"] = 0,
			["inverse"] = false,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["disjunctive"] = "all",
			["xOffset"] = 0,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shaman Resto CDs"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"RipTide R", -- [1]
				"Riptide CD", -- [2]
				"Healing Stream Totem CD", -- [3]
				"Healing Stream Totem  R", -- [4]
				"Healing Rain R", -- [5]
				"Healing Rain  CD", -- [6]
				"Healing Tide Totem R", -- [7]
				"Healing Tide Totam CD", -- [8]
				"Spirit Link Totem CD", -- [9]
				"Spirit Link Totem R ", -- [10]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["xOffset"] = -170,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Shaman Resto CDs",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = -265,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["expanded"] = false,
		},
		["Ilgynoth: Spew Corruption"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["names"] = {
					"Spew Corruption", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 100,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 31,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Emerald Nightmare",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "Ilgynoth: Spew Corruption",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["width"] = 100,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["yOffset"] = 306.325012207031,
			["inverse"] = false,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["xOffset"] = -254.906127929688,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Thrash"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Druid Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Thrash", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["borderOffset"] = 5,
			["timer"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["border"] = false,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["spark"] = true,
			["barInFront"] = true,
			["sparkHeight"] = 54,
			["sparkWidth"] = 24,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["id"] = "Thrash",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 240,
			["zoom"] = 0,
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
		},
		["Void Bolt"] = {
			["disjunctive"] = "all",
			["customText"] = "function()\n    local _,duration = GetSpellCooldown(\"Void Eruption\")\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[\"Void Bolt\"].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[\"Void Bolt\"].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["spellName"] = 228266,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 1,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["spellName"] = 228266,
				["event"] = "Action Usable",
				["use_unit"] = true,
				["unit"] = "player",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Voidform", -- [1]
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%c",
			["regionType"] = "icon",
			["parent"] = "Priest Procs",
			["stacksPoint"] = "CENTER",
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Void Eruption",
						["use_spellName"] = true,
						["unit"] = "player",
						["showOn"] = "showAlways",
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellName"] = 228260,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 228260,
					},
				}, -- [1]
			},
			["numTriggers"] = 2,
			["frameStrata"] = 1,
			["width"] = 64,
			["xOffset"] = 0,
			["yOffset"] = -224,
			["inverse"] = false,
			["id"] = "Void Bolt",
			["desaturate"] = false,
			["displayIcon"] = 1035040,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["VT Refresh"] = {
			["disjunctive"] = "any",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "5.4",
				["ownOnly"] = true,
				["use_unit"] = true,
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["percentpower_operator"] = "<",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["names"] = {
					"Vampiric Touch", -- [1]
				},
				["event"] = "Power",
				["use_percentpower"] = true,
				["unit"] = "target",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["remOperator"] = "<=",
				["subeventPrefix"] = "SPELL",
				["percentpower"] = "85",
				["useRem"] = true,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["id"] = "VT Refresh",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["inverse"] = true,
						["spellIds"] = {
						},
						["unit"] = "target",
						["names"] = {
							"Vampiric Touch", -- [1]
						},
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["yOffset"] = -32,
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["parent"] = "Priest Procs",
			["numTriggers"] = 2,
			["desaturate"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 135978,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Mage Fire CDs"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Fire Blast R", -- [1]
				"Fire Blast CD", -- [2]
				"Dragons Breath R ", -- [3]
				"Dragons Breath CD", -- [4]
				"Combustion R", -- [5]
				"Combusion CD", -- [6]
				"Mirror Image CD", -- [7]
				"Mirror Image R", -- [8]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["xOffset"] = -170,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Mage Fire CDs",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = -265,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["expanded"] = false,
		},
		["Combusion CD"] = {
			["parent"] = "Mage Fire CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Combustion",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 190319,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = true,
			["id"] = "Combusion CD",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["spellName"] = 190319,
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["xOffset"] = 110,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Iskar: Fel Chakram"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_sound"] = true,
					["sound_path"] = "Sound\\Creature\\HoodWolf\\HoodWolfTransformPlayer01.wav",
					["sound"] = "Interface\\Addons\\SharedMedia_MyMedia\\sound\\alert.mp3",
					["do_message"] = false,
					["sound_channel"] = "Master",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["duration"] = "3",
				["names"] = {
					"Fel Chakram", -- [1]
				},
				["spellName"] = "Fel Chakram",
				["subeventPrefix"] = "SPELL",
				["use_sourceName"] = true,
				["unevent"] = "timed",
				["subeventSuffix"] = "_CAST_SUCCESS",
				["type"] = "aura",
				["unit"] = "player",
				["event"] = "Combat Log",
				["sourceName"] = "Shadow-Lord Iskar",
				["debuffType"] = "HARMFUL",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_sourceUnit"] = false,
				["use_unit"] = true,
				["use_specific_unit"] = true,
				["sourceUnit"] = "player",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_combat"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Move Out",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["cooldown"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Iskar: Fel Chakram",
			["untrigger"] = {
				["use_specific_unit"] = true,
				["unit"] = "member",
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["icon"] = true,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["displayIcon"] = "Interface\\Icons\\INV_Misc_SawBlade_01",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				0, -- [1]
				1, -- [2]
				0.196078431372549, -- [3]
				1, -- [4]
			},
		},
		["Vunerable"] = {
			["sparkWidth"] = 24,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Hunter Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Vulnerable", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotation"] = 0,
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["sparkHeight"] = 54,
			["textFlags"] = "None",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["id"] = "Vunerable",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 1,
			["width"] = 240,
			["zoom"] = 0,
			["barInFront"] = true,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["timer"] = true,
			["textSize"] = 12,
			["spark"] = true,
		},
		["Healing Stream Totem  R"] = {
			["xOffset"] = 65,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_charges"] = false,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["charges_operator"] = "<",
				["type"] = "status",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventPrefix"] = "SPELL",
				["event"] = "Action Usable",
				["use_unit"] = true,
				["realSpellName"] = "Healing Stream Totem",
				["use_spellName"] = true,
				["spellName"] = 5394,
				["unit"] = "player",
				["showOn"] = "showOnReady",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["charges"] = "1",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Healing Stream Totem  R",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["numTriggers"] = 1,
			["untrigger"] = {
				["spellName"] = 5394,
			},
			["inverse"] = false,
			["parent"] = "Shaman Resto CDs",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Spear Hand Strike"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 550,
			["stacksFlags"] = "None",
			["yOffset"] = 480,
			["anchorPoint"] = "BOTTOMLEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Interrupts and Dispells",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 116705,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Spear Hand Strike",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnCooldown",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 20,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 116705,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["textFlags"] = "None",
			["textSize"] = 12,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkOffsetX"] = 0,
			["borderSize"] = 16,
			["inverse"] = true,
			["icon_side"] = "LEFT",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["sparkHeight"] = 30,
			["borderOffset"] = 5,
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["id"] = "Spear Hand Strike",
			["frameStrata"] = 1,
			["width"] = 400,
			["timer"] = true,
			["auto"] = true,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["HPriest DS"] = {
			["parent"] = "PriestHolyIcons",
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 110744,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Divine Star",
				["use_spellName"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 17,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "HPriest DS",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["numTriggers"] = 1,
			["xOffset"] = 20,
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 110744,
			},
			["displayIcon"] = 135937,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Mage Procs"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Ice Barrier Ready", -- [1]
			},
			["animate"] = true,
			["regionType"] = "dynamicgroup",
			["disjunctive"] = "all",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["backgroundInset"] = 0,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["yOffset"] = -265,
			["frameStrata"] = 1,
			["width"] = 64.0001220703125,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["id"] = "Mage Procs",
			["height"] = 64.0000305175781,
			["radius"] = 200,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 350,
		},
		["DPriest LW"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Doodad\\SimonGame_LargeBlueTree.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Light's Wrath",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["spellName"] = 207946,
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["id"] = "DPriest LW",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 207946,
			},
			["numTriggers"] = 1,
			["inverse"] = true,
			["desaturate"] = false,
			["parent"] = "PriestDiscIcons",
			["icon"] = true,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Void Eruption"] = {
			["xOffset"] = 0,
			["untrigger"] = {
				["spellName"] = 228260,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["spellIds"] = {
				},
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Void Eruption",
				["use_spellName"] = true,
				["inverse"] = true,
				["names"] = {
					"Reparation", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["unevent"] = "auto",
				["spellName"] = 228260,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["customTriggerLogic"] = "\n\n",
			["regionType"] = "icon",
			["disjunctive"] = "all",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Void Eruption",
			["yOffset"] = -224,
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 2,
			["parent"] = "Priest Procs",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["inverse"] = true,
						["unit"] = "player",
						["names"] = {
							"Voidform", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["displayIcon"] = "Interface\\Icons\\Ability_Paladin_SacredCleansing",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Xhul: Chains of Fel"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "186500",
				["duration"] = "5",
				["names"] = {
					"Shadow of Death", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
				["unit"] = "player",
				["type"] = "aura",
				["spellName"] = "",
				["subeventSuffix"] = "_AURA_APPLIED",
				["custom_hide"] = "timed",
				["event"] = "Combat Log",
				["use_source"] = false,
				["spellIds"] = {
				},
				["use_spellName"] = false,
				["use_spellId"] = true,
				["name"] = "Chains of Fel",
				["use_sourceUnit"] = false,
				["unevent"] = "timed",
				["use_unit"] = true,
				["sourceUnit"] = "player",
				["fullscan"] = true,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Move Away",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Xhul: Chains of Fel",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\inv_belt_44b",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Healing Rain R"] = {
			["xOffset"] = 110,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Action Usable",
				["names"] = {
				},
				["realSpellName"] = "Healing Rain",
				["use_spellName"] = true,
				["spellName"] = 73920,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Healing Rain R",
			["parent"] = "Shaman Resto CDs",
			["frameStrata"] = 1,
			["width"] = 40,
			["icon"] = true,
			["numTriggers"] = 1,
			["inverse"] = false,
			["untrigger"] = {
				["spellName"] = 73920,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Druid Bars"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Rake", -- [1]
				"Rip", -- [2]
				"Thrash", -- [3]
			},
			["animate"] = false,
			["xOffset"] = -410,
			["disjunctive"] = "all",
			["expanded"] = false,
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["radius"] = 200,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "BOTTOM",
			["backgroundInset"] = 0,
			["id"] = "Druid Bars",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["align"] = "CENTER",
			["yOffset"] = -265,
			["frameStrata"] = 1,
			["width"] = 239.999938964844,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["height"] = 79.0000305175781,
			["borderOffset"] = 16,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["HPriest DH"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 64843,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 64843,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Divine Hymn",
				["use_spellName"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolyIcons",
			["stacksPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "HPriest DH",
			["frameStrata"] = 1,
			["width"] = 40,
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = true,
			["xOffset"] = 20,
			["yOffset"] = 0,
			["displayIcon"] = 135937,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shaman Elemental CDs"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Lava Burst CD", -- [1]
				"Lave Burst R", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["xOffset"] = -170,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Shaman Elemental CDs",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = -265,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["expanded"] = false,
		},
		["Lave Burst R"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 51505,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Lava Burst",
				["use_spellName"] = true,
				["spellName"] = 51505,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Lave Burst R",
			["parent"] = "Shaman Elemental CDs",
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["xOffset"] = 20,
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shield Block Refresh"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -224,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["ownOnly"] = true,
				["event"] = "Action Usable",
				["use_unit"] = true,
				["inverse"] = true,
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["names"] = {
					"Shield Block", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["unit"] = "player",
				["spellName"] = 228260,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "Shield Block Refresh",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Shield Block",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 2565,
					},
					["untrigger"] = {
						["spellName"] = 2565,
					},
				}, -- [1]
			},
			["untrigger"] = {
				["spellName"] = 228260,
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["parent"] = "Warrior Procs",
			["numTriggers"] = 2,
			["inverse"] = false,
			["desaturate"] = false,
			["xOffset"] = 0,
			["displayIcon"] = 132110,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest PWS 2"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Power Word: Shield",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 17,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestDiscSounds",
			["init_completed"] = 1,
			["stacksPoint"] = "BOTTOMRIGHT",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest PWS 2",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Power Word: Shield",
						["use_spellName"] = true,
						["unit"] = "player",
						["showOn"] = "showOnReady",
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellName"] = 17,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 17,
					},
				}, -- [1]
			},
			["disjunctive"] = "any",
			["frameStrata"] = 1,
			["width"] = 40,
			["numTriggers"] = 2,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["inverse"] = true,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 17,
			},
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Taunt CD"] = {
			["parent"] = "Warrior Prot CDs",
			["untrigger"] = {
				["spellName"] = 355,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Taunt",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 355,
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 40,
			["xOffset"] = 0,
			["id"] = "Taunt CD",
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Druid Procs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"GDruid Mangle", -- [1]
				"GDruid Thrash", -- [2]
				"GDruidMaul", -- [3]
			},
			["animate"] = false,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 220,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["backgroundInset"] = 0,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 6,
			["background"] = "None",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["yOffset"] = -120,
			["frameStrata"] = 1,
			["width"] = 204.000122070312,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["id"] = "Druid Procs",
			["height"] = 64.0000610351563,
			["radius"] = 200,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["Flame Shock"] = {
			["sparkWidth"] = 24,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Shaman Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Flame Shock", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotation"] = 0,
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["sparkHeight"] = 54,
			["textFlags"] = "None",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["id"] = "Flame Shock",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 1,
			["width"] = 240,
			["zoom"] = 0,
			["barInFront"] = true,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["timer"] = true,
			["textSize"] = 12,
			["spark"] = true,
		},
		["DPriest SM 2"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 123040,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Mindbender",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest SM 2",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["inverse"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 123040,
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Doodad\\SimonGame_LargeBlueTree.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shockwave CD"] = {
			["parent"] = "Warrior Prot CDs",
			["untrigger"] = {
				["spellName"] = 46968,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Shockwave",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 46968,
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["xOffset"] = 180,
			["id"] = "Shockwave CD",
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Victory Rush Use"] = {
			["parent"] = "Warrior Procs",
			["untrigger"] = {
				["spellName"] = 34428,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 34428,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["ownOnly"] = true,
				["event"] = "Action Usable",
				["use_unit"] = true,
				["realSpellName"] = "Victory Rush",
				["use_spellName"] = true,
				["inverse"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Victory Rush", -- [1]
				},
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["percenthealth"] = "70",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["unit"] = "player",
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["id"] = "Victory Rush Use",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 64,
			["desaturate"] = false,
			["numTriggers"] = 2,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -224,
			["displayIcon"] = 132342,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Colossus Smash R"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Colossus Smash",
				["use_spellName"] = true,
				["spellName"] = 167105,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Colossus Smash R",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["numTriggers"] = 1,
			["untrigger"] = {
				["spellName"] = 167105,
			},
			["parent"] = "Warrior Arms CDs",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["PriestDiscIcons"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"DPriest PWS", -- [1]
				"DPriest Penance", -- [2]
				"DPriest Scism", -- [3]
				"DPriest PWSolace", -- [4]
				"DPriest DS", -- [5]
				"DPriest Halo", -- [6]
				"DPriest LW", -- [7]
				"DPriest SM", -- [8]
				"DPriest Rapture", -- [9]
				"DPriest PS", -- [10]
				"DPriest PWB", -- [11]
			},
			["animate"] = false,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["radius"] = 200,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backgroundInset"] = 0,
			["id"] = "PriestDiscIcons",
			["selfPoint"] = "CENTER",
			["align"] = "CENTER",
			["yOffset"] = -265,
			["frameStrata"] = 1,
			["width"] = 460.000061035156,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["height"] = 40.0000305175781,
			["borderOffset"] = 16,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["Paladin Prot CDs"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Avenger Shield R", -- [1]
				"Avengers Shield  CD", -- [2]
				"Judgement R", -- [3]
				"Judgment  CD", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["xOffset"] = 0,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Paladin Prot CDs",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["expanded"] = false,
		},
		["Warlock Bars"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Backdraft", -- [1]
				"Eradication", -- [2]
				"Immolate", -- [3]
			},
			["animate"] = false,
			["anchorPoint"] = "CENTER",
			["xOffset"] = -410,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["radius"] = 200,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backgroundInset"] = 0,
			["id"] = "Warlock Bars",
			["selfPoint"] = "BOTTOM",
			["align"] = "CENTER",
			["yOffset"] = -265,
			["frameStrata"] = 1,
			["width"] = 239.999938964844,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["height"] = 79.0000305175781,
			["borderOffset"] = 16,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARLOCK",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["Solace"] = {
			["xOffset"] = 0,
			["untrigger"] = {
				["spellName"] = 129250,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["spellName"] = 129250,
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Power Word: Solace",
				["use_spellName"] = true,
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnReady",
				["names"] = {
					"Power Word: Solace", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Solace",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "pulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["yOffset"] = -96,
			["parent"] = "Priest Procs",
			["icon"] = true,
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Judgment  CD"] = {
			["parent"] = "Paladin Prot CDs",
			["yOffset"] = -265,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Judgment",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 20271,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "Judgment  CD",
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["spellName"] = 20271,
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["xOffset"] = -125,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest SoH 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Shotgun.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 64901,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Symbol of Hope",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolySounds",
			["cooldown"] = false,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["xOffset"] = 20,
			["id"] = "HPriest SoH 2",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 64901,
			},
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Warrior Procs"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Shield Block Refresh", -- [1]
				"Ignore Pain Refresh", -- [2]
				"Victory Rush Use", -- [3]
			},
			["animate"] = false,
			["xOffset"] = 350,
			["disjunctive"] = "all",
			["expanded"] = false,
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["borderOffset"] = 16,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "BOTTOMRIGHT",
			["radius"] = 200,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Warrior Procs",
			["yOffset"] = -265,
			["frameStrata"] = 1,
			["width"] = 63.9998779296875,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["align"] = "RIGHT",
			["height"] = 196,
			["backgroundInset"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["Spirit Link Totem CD"] = {
			["xOffset"] = 200,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_inverse"] = true,
				["unit"] = "player",
				["spellName"] = 98008,
				["charges_operator"] = "<",
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["subeventPrefix"] = "SPELL",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Spirit Link Totem",
				["use_spellName"] = true,
				["unevent"] = "auto",
				["use_unit"] = true,
				["showOn"] = "showOnCooldown",
				["debuffType"] = "HELPFUL",
				["use_charges"] = true,
				["charges"] = "1",
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["untrigger"] = {
				["spellName"] = 98008,
			},
			["parent"] = "Shaman Resto CDs",
			["id"] = "Spirit Link Totem CD",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Lacerate"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Hunter Bars",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Lacerate", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["timer"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = true,
			["sparkHeight"] = 54,
			["sparkWidth"] = 24,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["sparkHidden"] = "NEVER",
			["id"] = "Lacerate",
			["borderBackdrop"] = "Blizzard Tooltip",
			["frameStrata"] = 1,
			["width"] = 240,
			["untrigger"] = {
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["Iskar - Phantasmal Winds 2"] = {
			["xOffset"] = 0,
			["customText"] = "function(_, _, remainingTime, _, _, _, stacks)\n    local warnText1=\"Gegenlaufen!\\n\\n\\n\";\n    local warnText2=\"\\n\\nEYE!\"\n    return warnText1 .. \"|cffFFFFFF\".. tostring(remainingTime) .. \"s|r\\n\" .. warnText2;\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_sound"] = false,
					["sound_path"] = "Sound\\Creature\\HoodWolf\\HoodWolfTransformPlayer01.wav",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_message"] = false,
					["sound_channel"] = "Master",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "MONOCHROME|OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["duration"] = "3",
				["use_specific_unit"] = true,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["use_sourceName"] = true,
				["unevent"] = "timed",
				["subeventSuffix"] = "_CAST_SUCCESS",
				["type"] = "aura",
				["unit"] = "player",
				["event"] = "Combat Log",
				["sourceName"] = "Kormrok",
				["spellName"] = "Fel Chakram",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_sourceUnit"] = false,
				["names"] = {
					"Phantasmal Winds", -- [1]
				},
				["use_unit"] = true,
				["sourceUnit"] = "player",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["font"] = "font",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Push Back",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["stacksPoint"] = "BOTTOM",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["untrigger"] = {
				["unit"] = "member",
				["use_specific_unit"] = true,
			},
			["numTriggers"] = 1,
			["icon"] = true,
			["id"] = "Iskar - Phantasmal Winds 2",
			["displayIcon"] = "Interface\\Icons\\INV_Misc_SawBlade_01",
			["cooldown"] = true,
			["textColor"] = {
				0, -- [1]
				1, -- [2]
				0.196078431372549, -- [3]
				1, -- [4]
			},
		},
		["DPriest DS 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Divine Star",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 110744,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 17,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest DS 2",
			["additional_triggers"] = {
			},
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["stickyDuration"] = false,
			["inverse"] = true,
			["numTriggers"] = 1,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 110744,
			},
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant4.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Warrior Prot CDs"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Taunt CD", -- [1]
				"Taunt R", -- [2]
				"Revenge CD", -- [3]
				"Revenge R", -- [4]
				"Shield Slam CD", -- [5]
				"Shield Slam R", -- [6]
				"Thunder Clap CD", -- [7]
				"Thunder Clap  R", -- [8]
				"Shockwave R", -- [9]
				"Shockwave CD", -- [10]
				"Heroic Leap CD", -- [11]
				"Heroic Leap R", -- [12]
				"Last Stand CD", -- [13]
				"Last Stand R", -- [14]
				"Shield Wall CD", -- [15]
				"Shield Wall R", -- [16]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderOffset"] = 5,
			["expanded"] = false,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Warrior Prot CDs",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = -265,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["anchorPoint"] = "CENTER",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -170,
		},
		["DPriest Rapture"] = {
			["parent"] = "PriestDiscIcons",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Rapture",
				["use_spellName"] = true,
				["spellName"] = 47536,
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["cooldown"] = true,
			["id"] = "DPriest Rapture",
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Spells\\SimonGame_Visual_BadPress.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["desaturate"] = false,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 47536,
			},
			["numTriggers"] = 1,
			["inverse"] = true,
			["xOffset"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SWD Use"] = {
			["disjunctive"] = "any",
			["untrigger"] = {
				["spellName"] = 199911,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["ownOnly"] = true,
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
				["event"] = "Action Usable",
				["spellName"] = 199911,
				["realSpellName"] = "Shadow Word: Death",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["names"] = {
					"Shadow Word: Pain", -- [1]
				},
				["use_unit"] = true,
				["inverse"] = true,
				["unit"] = "target",
				["use_specific_unit"] = false,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
			},
			["yOffset"] = -32,
			["frameStrata"] = 1,
			["width"] = 64,
			["parent"] = "Priest Procs",
			["inverse"] = false,
			["numTriggers"] = 1,
			["desaturate"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "SWD Use",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shield Wall CD"] = {
			["xOffset"] = 315,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 871,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Shield Wall",
				["use_spellName"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 40,
			["parent"] = "Warrior Prot CDs",
			["untrigger"] = {
				["spellName"] = 871,
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["id"] = "Shield Wall CD",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["PriestHolyIcons"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"Priest H:Sanctuary", -- [1]
				"HPriest Serenity", -- [2]
				"HPriest PoM", -- [3]
				"HPriest CoH", -- [4]
				"HPriest DS", -- [5]
				"HPriest Halo", -- [6]
				"HPriest DH", -- [7]
				"HPriest GS", -- [8]
				"HPriest Apotheosis", -- [9]
				"HPriest SoH", -- [10]
			},
			["animate"] = false,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["radius"] = 200,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backgroundInset"] = 0,
			["id"] = "PriestHolyIcons",
			["selfPoint"] = "CENTER",
			["align"] = "CENTER",
			["yOffset"] = -265,
			["frameStrata"] = 1,
			["width"] = 417.999938964844,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["height"] = 40.0000305175781,
			["borderOffset"] = 16,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["Kick"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 550,
			["stacksFlags"] = "None",
			["yOffset"] = 480,
			["anchorPoint"] = "BOTTOMLEFT",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Interrupts and Dispells",
			["untrigger"] = {
				["spellName"] = 1766,
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 1766,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Kick",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnCooldown",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 20,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["timer"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkRotationMode"] = "AUTO",
			["border"] = false,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["inverse"] = true,
			["icon_side"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 30,
			["barInFront"] = true,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["textSize"] = 12,
			["sparkHidden"] = "NEVER",
			["id"] = "Kick",
			["frameStrata"] = 1,
			["width"] = 400,
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["auto"] = true,
			["borderOffset"] = 5,
			["zoom"] = 0,
		},
		["Avenger Shield R"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 31935,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Avenger's Shield",
				["use_spellName"] = true,
				["spellName"] = 31935,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Avenger Shield R",
			["xOffset"] = -170,
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = -265,
			["parent"] = "Paladin Prot CDs",
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Digest"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "181295",
				["duration"] = "40",
				["names"] = {
					"Artillery", -- [1]
				},
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["subeventSuffix"] = "",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_source"] = false,
				["unevent"] = "timed",
				["name"] = "Digest",
				["use_spellId"] = true,
				["spellIds"] = {
					182108, -- [1]
				},
				["use_sourceUnit"] = true,
				["subeventPrefix"] = "PARTY_KILL",
				["event"] = "Combat Log",
				["sourceUnit"] = "player",
				["fullscan"] = true,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_zone"] = true,
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Time left",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["stacksPoint"] = "BOTTOM",
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["id"] = "Digest",
			["displayIcon"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Fire Blast CD"] = {
			["parent"] = "Mage Fire CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Fire Blast",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 108853,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "Fire Blast CD",
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["spellName"] = 108853,
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["xOffset"] = 20,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Symbols of Death"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Rogue Bars",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Symbols of Death", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["zoom"] = 0,
			["borderOffset"] = 5,
			["timer"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["customTextUpdate"] = "update",
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 54,
			["sparkWidth"] = 24,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["sparkHidden"] = "NEVER",
			["id"] = "Symbols of Death",
			["borderBackdrop"] = "Blizzard Tooltip",
			["frameStrata"] = 1,
			["width"] = 240,
			["spark"] = true,
			["untrigger"] = {
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["DPriest PS"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Pain Suppression",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["spellName"] = 33206,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["id"] = "DPriest PS",
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 33206,
			},
			["inverse"] = true,
			["numTriggers"] = 1,
			["desaturate"] = false,
			["parent"] = "PriestDiscIcons",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Shotgun.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Backdraft"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "WARLOCK",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Warlock Bars",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Backdraft", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["timer"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = true,
			["sparkHeight"] = 54,
			["sparkWidth"] = 24,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["sparkHidden"] = "NEVER",
			["id"] = "Backdraft",
			["borderBackdrop"] = "Blizzard Tooltip",
			["frameStrata"] = 1,
			["width"] = 240,
			["untrigger"] = {
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["PriestDiscSounds"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"DPriest PWS 2", -- [1]
				"DPriest Penance 2", -- [2]
				"DPriest Scism 2", -- [3]
				"DPriest PWSolace 2", -- [4]
				"DPriest DS 2", -- [5]
				"DPriest Halo 2", -- [6]
				"DPriest LW 2", -- [7]
				"DPriest SM 2", -- [8]
				"DPriest Rapture 2", -- [9]
				"DPriest PS 2", -- [10]
				"DPriest PWB 2", -- [11]
			},
			["disjunctive"] = "all",
			["yOffset"] = -265,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backgroundInset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["stagger"] = 0,
			["height"] = 40.0000305175781,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 460.000061035156,
			["id"] = "PriestDiscSounds",
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["xOffset"] = 0,
			["align"] = "CENTER",
			["rotation"] = 0,
			["radius"] = 200,
			["selfPoint"] = "CENTER",
		},
		["HPriest CoH"] = {
			["xOffset"] = 20,
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 204883,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Circle of Healing",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["spellName"] = 204883,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 21,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant4.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["yOffset"] = 0,
			["additional_triggers"] = {
			},
			["parent"] = "PriestHolyIcons",
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["id"] = "HPriest CoH",
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest DS"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant4.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Divine Star",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["spellName"] = 110744,
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 17,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["id"] = "DPriest DS",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 110744,
			},
			["numTriggers"] = 1,
			["inverse"] = true,
			["desaturate"] = false,
			["parent"] = "PriestDiscIcons",
			["icon"] = true,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest Halo 2"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 120517,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Halo",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 18,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest Halo 2",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["numTriggers"] = 1,
			["inverse"] = true,
			["stickyDuration"] = false,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 120517,
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant4.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest SoH"] = {
			["parent"] = "PriestHolyIcons",
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Shotgun.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Symbol of Hope",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["spellName"] = 64901,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 64901,
			},
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["xOffset"] = 20,
			["numTriggers"] = 1,
			["icon"] = true,
			["id"] = "HPriest SoH",
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Taunt R"] = {
			["parent"] = "Warrior Prot CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Taunt",
				["use_spellName"] = true,
				["spellName"] = 355,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Taunt R",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["icon"] = true,
			["numTriggers"] = 1,
			["inverse"] = false,
			["untrigger"] = {
				["spellName"] = 355,
			},
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["PriestHolySounds"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"Priest H:Sanctuary 2", -- [1]
				"HPriest Serenity 2", -- [2]
				"HPriest PoM 2", -- [3]
				"HPriest CoH 2", -- [4]
				"HPriest DS 2", -- [5]
				"HPriest Halo 2", -- [6]
				"HPriest DH 2", -- [7]
				"HPriest GS 2", -- [8]
				"HPriest Apotheosis 2", -- [9]
				"HPriest SoH 2", -- [10]
			},
			["disjunctive"] = "all",
			["yOffset"] = -265,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backgroundInset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["stagger"] = 0,
			["height"] = 40.0000305175781,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 417.999938964844,
			["id"] = "PriestHolySounds",
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["xOffset"] = 0,
			["align"] = "CENTER",
			["rotation"] = 0,
			["radius"] = 200,
			["selfPoint"] = "CENTER",
		},
		["Lava Burst CD"] = {
			["parent"] = "Shaman Elemental CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_inverse"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["charges_operator"] = "<",
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Lava Burst",
				["use_spellName"] = true,
				["spellName"] = 51505,
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnCooldown",
				["custom_hide"] = "timed",
				["use_charges"] = true,
				["charges"] = "1",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "Lava Burst CD",
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["spellName"] = 51505,
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["xOffset"] = 20,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest DH 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 64843,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Divine Hymn",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 64843,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolySounds",
			["stacksPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "HPriest DH 2",
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["inverse"] = true,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Warrior Arms CDs"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Colossus Smash CD", -- [1]
				"Colossus Smash R", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["xOffset"] = -170,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Warrior Arms CDs",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = -265,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["expanded"] = false,
		},
		["HPriest Halo 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 120517,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Halo",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 18,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolySounds",
			["cooldown"] = false,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["xOffset"] = 20,
			["id"] = "HPriest Halo 2",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 120517,
			},
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Priest Procs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Void Eruption", -- [1]
				"Void Bolt", -- [2]
				"Solace", -- [3]
				"Solace CD", -- [4]
				"Shadowfiend", -- [5]
				"MindBlast", -- [6]
				"SWP Refresh", -- [7]
				"SWD Use", -- [8]
				"VT Refresh", -- [9]
			},
			["animate"] = true,
			["yOffset"] = -120,
			["disjunctive"] = "all",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["radius"] = 200,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "LEFT",
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 592,
			["stagger"] = 0,
			["xOffset"] = 220,
			["numTriggers"] = 1,
			["id"] = "Priest Procs",
			["height"] = 64.0000610351563,
			["backgroundInset"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "dynamicgroup",
		},
		["Blessing of T'uure"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Priest Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Blessing of T'uure", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = true,
			["textSize"] = 12,
			["timer"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["border"] = false,
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["sparkRotation"] = 0,
			["barInFront"] = true,
			["sparkHeight"] = 54,
			["sparkWidth"] = 24,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["id"] = "Blessing of T'uure",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 240,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkRotationMode"] = "AUTO",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["zoom"] = 0,
		},
		["Iskar: Eye of Anzu"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_glow"] = false,
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Artillery",
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "185239",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Eye of Anzu", -- [1]
				},
				["use_spellId"] = true,
				["name"] = "Radiance of Anzu",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
				},
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
						["normal"] = true,
						["heroic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_zone"] = true,
				["size"] = {
					["multi"] = {
						["twenty"] = true,
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Manager",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["cooldown"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Iskar: Eye of Anzu",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\spell_burningbladeshaman_blazing_radiance",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				0.188235294117647, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Shaman Bars"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Flame Shock", -- [1]
			},
			["animate"] = false,
			["regionType"] = "dynamicgroup",
			["disjunctive"] = "all",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderOffset"] = 16,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["radius"] = 200,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["selfPoint"] = "BOTTOM",
			["id"] = "Shaman Bars",
			["yOffset"] = -265,
			["frameStrata"] = 1,
			["width"] = 16,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["align"] = "CENTER",
			["height"] = 16,
			["backgroundInset"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -410,
		},
		["HPriest PoM"] = {
			["xOffset"] = 20,
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 33076,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_custom"] = false,
					["do_sound"] = true,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_custom"] = false,
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "None",
			["useTooltip"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounceDecay",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "slidebottom",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 33076,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Prayer of Mending",
				["use_spellName"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "HPriest PoM",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 40,
			["numTriggers"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["parent"] = "PriestHolyIcons",
			["yOffset"] = 0,
			["displayIcon"] = 135937,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Pummel"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 550,
			["stacksFlags"] = "None",
			["yOffset"] = 480,
			["anchorPoint"] = "BOTTOMLEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Interrupts and Dispells",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Pummel",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["spellName"] = 6552,
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 20,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["zoom"] = 0,
			["borderOffset"] = 5,
			["auto"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["border"] = false,
			["borderEdge"] = "None",
			["stacksFont"] = "Friz Quadrata TT",
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
			["sparkHeight"] = 30,
			["icon"] = true,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["timer"] = true,
			["sparkHidden"] = "NEVER",
			["id"] = "Pummel",
			["frameStrata"] = 1,
			["width"] = 400,
			["customTextUpdate"] = "update",
			["sparkRotation"] = 0,
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["textFlags"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["untrigger"] = {
				["spellName"] = 6552,
			},
		},
		["Heroic Leap R"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 6544,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Heroic Leap",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["spellName"] = 6544,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Heroic Leap R",
			["xOffset"] = 225,
			["frameStrata"] = 1,
			["width"] = 40,
			["parent"] = "Warrior Prot CDs",
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest GS"] = {
			["parent"] = "PriestHolyIcons",
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 47788,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Guardian Spirit",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["spellName"] = 47788,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["yOffset"] = 0,
			["id"] = "HPriest GS",
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Thunder Clap  R"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 6343,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Thunder Clap",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["spellName"] = 6343,
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Thunder Clap  R",
			["xOffset"] = 135,
			["frameStrata"] = 1,
			["width"] = 40,
			["parent"] = "Warrior Prot CDs",
			["numTriggers"] = 1,
			["inverse"] = false,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Priest H:Sanctuary"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "event",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 34861,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Holy Word: Sanctify",
				["use_spellName"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksPoint"] = "CENTER",
			["disjunctive"] = "any",
			["stickyDuration"] = false,
			["icon"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["id"] = "Priest H:Sanctuary",
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["frameStrata"] = 1,
			["width"] = 40,
			["parent"] = "PriestHolyIcons",
			["xOffset"] = 20,
			["inverse"] = true,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 34861,
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Holy_DivineProvidence",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Execution Sentence"] = {
			["parent"] = "Paladin Procs",
			["customText"] = "\n\n",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 213757,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_charges"] = false,
				["use_unit"] = true,
				["spellName"] = 213757,
				["type"] = "status",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Execution Sentence",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnReady",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksPoint"] = "CENTER",
			["disjunctive"] = "any",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["yOffset"] = -32,
			["additional_triggers"] = {
			},
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 64,
			["numTriggers"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["id"] = "Execution Sentence",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Last Stand CD"] = {
			["parent"] = "Warrior Prot CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Last Stand",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 12975,
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Last Stand CD",
			["xOffset"] = 270,
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["additional_triggers"] = {
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["untrigger"] = {
				["spellName"] = 12975,
			},
			["icon"] = true,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest LW 2"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Light's Wrath",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 207946,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest LW 2",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["inverse"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 207946,
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Doodad\\SimonGame_LargeBlueTree.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest Serenity"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Holy Word: Serenity",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["spellName"] = 2050,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 2050,
			},
			["id"] = "HPriest Serenity",
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["parent"] = "PriestHolyIcons",
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Crusader Strike"] = {
			["parent"] = "Paladin Procs",
			["customText"] = "function()\n    local _,duration = GetSpellCooldown(\"Crusader Strike\")\n    \n    if duration then\n        if duration > 1.5 then\n            WeakAuras.regions[\"Crusader Strike\"].region.icon:SetDesaturated(true)\n        else \n            WeakAuras.regions[\"Crusader Strike\"].region.icon:SetDesaturated(false)\n        end\n    end\nend",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 35395,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_charges"] = false,
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["spellName"] = 35395,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Crusader Strike",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%s %c",
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stacksPoint"] = "TOPRIGHT",
			["yOffset"] = -32,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["additional_triggers"] = {
			},
			["disjunctive"] = "any",
			["frameStrata"] = 1,
			["width"] = 64,
			["numTriggers"] = 1,
			["xOffset"] = 0,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Crusader Strike",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Interrupts and Dispells"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Pummel", -- [1]
				"Silence", -- [2]
				"Spear Hand Strike", -- [3]
				"Kick", -- [4]
				"dispel", -- [5]
				"massdispell", -- [6]
			},
			["animate"] = false,
			["xOffset"] = 55.042724609375,
			["regionType"] = "dynamicgroup",
			["border"] = "None",
			["yOffset"] = 851.701049804688,
			["anchorPoint"] = "BOTTOM",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["sort"] = "none",
			["activeTriggerMode"] = 0,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderOffset"] = 16,
			["id"] = "Interrupts and Dispells",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "CENTER",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 400,
			["stagger"] = 0,
			["radius"] = 200,
			["numTriggers"] = 1,
			["backgroundInset"] = 0,
			["height"] = 130.000061035156,
			["selfPoint"] = "BOTTOM",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["DPriest PS 2"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Pain Suppression",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 33206,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest PS 2",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["numTriggers"] = 1,
			["inverse"] = true,
			["stickyDuration"] = false,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 33206,
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Shotgun.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Riptide CD"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 61295,
				["charges_operator"] = "<",
				["use_remaining"] = false,
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unevent"] = "auto",
				["realSpellName"] = "Riptide",
				["use_spellName"] = true,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["showOn"] = "showOnCooldown",
				["use_charges"] = true,
				["charges"] = "1",
				["type"] = "status",
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["untrigger"] = {
				["spellName"] = 61295,
			},
			["parent"] = "Shaman Resto CDs",
			["id"] = "Riptide CD",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shared Fate 1"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "179909",
				["duration"] = "40",
				["subeventPrefix"] = "PARTY_KILL",
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["unevent"] = "timed",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_source"] = false,
				["subeventSuffix"] = "",
				["name"] = "Shared Fate",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["use_sourceUnit"] = true,
				["names"] = {
					"Shared Fate", -- [1]
				},
				["event"] = "Combat Log",
				["sourceUnit"] = "player",
				["fullscan"] = true,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_zone"] = true,
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Rooted",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["stacksPoint"] = "BOTTOM",
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Shared Fate 1",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Fixate"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "180148",
				["duration"] = "40",
				["names"] = {
					"Shared Fate", -- [1]
				},
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["subeventSuffix"] = "",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_source"] = false,
				["unevent"] = "timed",
				["name"] = "Hunger for Life",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["use_sourceUnit"] = true,
				["subeventPrefix"] = "PARTY_KILL",
				["event"] = "Combat Log",
				["sourceUnit"] = "player",
				["fullscan"] = true,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Fixate",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["id"] = "Fixate",
			["displayIcon"] = "Interface\\Icons\\ability_fixated_state_purple",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Socrethar: Gift of the Man'ari"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["glow_frame"] = "WeakAuras:Artillery",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["do_message"] = false,
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "185239",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Gift of the Man'ari", -- [1]
				},
				["use_spellId"] = true,
				["name"] = "Radiance of Anzu",
				["debuffType"] = "HARMFUL",
				["spellIds"] = {
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
						["normal"] = true,
						["heroic"] = true,
					},
				},
				["use_zone"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Move Out: 10yd",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["cooldown"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Socrethar: Gift of the Man'ari",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\spell_burningbladeshaman_blazing_radiance",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				0.188235294117647, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Touch of Doom"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "179977",
				["duration"] = "40",
				["names"] = {
					"Shared Fate", -- [1]
				},
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["unevent"] = "timed",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_source"] = false,
				["subeventSuffix"] = "",
				["name"] = "Touch of Doom",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["use_sourceUnit"] = true,
				["subeventPrefix"] = "PARTY_KILL",
				["event"] = "Combat Log",
				["sourceUnit"] = "player",
				["fullscan"] = true,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_zone"] = true,
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Move Out",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["stacksPoint"] = "BOTTOM",
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["id"] = "Touch of Doom",
			["displayIcon"] = "Interface\\Icons\\ability_bossgorefiend_touchofdoom",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest PWS"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Power Word: Shield",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["spellName"] = 17,
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["disjunctive"] = "any",
			["init_completed"] = 1,
			["stacksPoint"] = "BOTTOMRIGHT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 17,
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Power Word: Shield",
						["use_spellName"] = true,
						["unit"] = "player",
						["showOn"] = "showOnReady",
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellName"] = 17,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 17,
					},
				}, -- [1]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["numTriggers"] = 2,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
			},
			["inverse"] = true,
			["desaturate"] = false,
			["id"] = "DPriest PWS",
			["parent"] = "PriestDiscIcons",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["VT"] = {
			["sparkWidth"] = 24,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Priest Bars",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Vampiric Touch", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = true,
			["untrigger"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["icon"] = true,
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "AUTO",
			["sparkRotation"] = 0,
			["sparkHeight"] = 54,
			["sparkOffsetX"] = 0,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["sparkHidden"] = "NEVER",
			["id"] = "VT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["frameStrata"] = 1,
			["width"] = 240,
			["textFlags"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["borderOffset"] = 5,
			["zoom"] = 0,
			["textSize"] = 12,
		},
		["Xavius Dream Sim"] = {
			["parent"] = "Emerald Nightmare",
			["yOffset"] = 306.325012207031,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BoxingArenaSound.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["names"] = {
					"Dream Simulacrum", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 100,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 31,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Xavius Dream Sim",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["width"] = 100,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["xOffset"] = -254.906127929688,
			["icon"] = true,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest CoH 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 204883,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant4.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 204883,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Circle of Healing",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 21,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolySounds",
			["cooldown"] = false,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "HPriest CoH 2",
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Socrethar: Volatile Fel Orb"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_glow"] = false,
					["do_message"] = false,
					["do_sound"] = false,
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["glow_frame"] = "WeakAuras:Artillery",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "185239",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Volatile Fel Orb", -- [1]
				},
				["use_spellId"] = true,
				["name"] = "Radiance of Anzu",
				["custom_hide"] = "timed",
				["spellIds"] = {
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["normal"] = true,
						["heroic"] = true,
						["mythic"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_zone"] = true,
				["size"] = {
					["multi"] = {
						["twenty"] = true,
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Move Out",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["stacksPoint"] = "BOTTOM",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Socrethar: Volatile Fel Orb",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\spell_burningbladeshaman_blazing_radiance",
			["cooldown"] = true,
			["textColor"] = {
				0.188235294117647, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Warrior Bars"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Ignore Pain", -- [1]
				"Shield Block", -- [2]
				"Colossus Smash", -- [3]
				"Trauma", -- [4]
			},
			["animate"] = false,
			["xOffset"] = -410,
			["disjunctive"] = "all",
			["expanded"] = false,
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["backgroundInset"] = 0,
			["sort"] = "ascending",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "BOTTOM",
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["yOffset"] = -265,
			["frameStrata"] = 1,
			["width"] = 239.999938964844,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["id"] = "Warrior Bars",
			["height"] = 106.000030517578,
			["radius"] = 200,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["Rake"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Druid Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Rake", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = true,
			["textSize"] = 12,
			["timer"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["border"] = false,
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["sparkRotation"] = 0,
			["barInFront"] = true,
			["sparkHeight"] = 54,
			["sparkWidth"] = 24,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["id"] = "Rake",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 240,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkRotationMode"] = "AUTO",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["zoom"] = 0,
		},
		["Fel Lord: Seed of Destruction"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_sound"] = false,
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["glow_frame"] = "WeakAuras:Artillery",
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["do_message"] = false,
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "181508",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Artillery", -- [1]
				},
				["fullscan"] = true,
				["use_spellId"] = true,
				["name"] = "Seed of Destruction",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
				["spellIds"] = {
					182108, -- [1]
				},
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["heroic"] = true,
						["normal"] = true,
						["mythic"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Move out",
			["regionType"] = "icon",
			["cooldown"] = true,
			["parent"] = "T18: HFC",
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "181515",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_spellId"] = true,
						["name"] = "Seed of Destruction",
						["unit"] = "player",
						["names"] = {
							"Seed of Destruction", -- [1]
						},
						["fullscan"] = true,
						["spellIds"] = {
							181515, -- [1]
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["id"] = "Fel Lord: Seed of Destruction",
			["inverse"] = false,
			["frameStrata"] = 1,
			["width"] = 90,
			["disjunctive"] = "any",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 2,
			["yOffset"] = 0,
			["icon"] = true,
			["displayIcon"] = "Interface\\Icons\\Spell_Shadow_SeedOfDestruction",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["massdispell"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 550,
			["stacksFlags"] = "None",
			["yOffset"] = 480,
			["anchorPoint"] = "BOTTOMLEFT",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["init_completed"] = 1,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Interrupts and Dispells",
			["untrigger"] = {
				["spellName"] = 32375,
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Mass Dispel",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["spellName"] = 32375,
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 20,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["sparkWidth"] = 10,
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["barInFront"] = true,
			["sparkHeight"] = 30,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["customTextUpdate"] = "update",
			["sparkHidden"] = "NEVER",
			["id"] = "massdispell",
			["frameStrata"] = 1,
			["width"] = 400,
			["textSize"] = 12,
			["icon"] = true,
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["timer"] = true,
			["auto"] = true,
		},
		["Execution Sentence CD"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n",
			["untrigger"] = {
				["showOn"] = "showOnCooldown",
				["spellName"] = 213757,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_charges"] = false,
				["subeventPrefix"] = "SPELL",
				["spellName"] = 213757,
				["names"] = {
				},
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_unit"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Execution Sentence",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnCooldown",
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["remaining_operator"] = ">",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["desaturate"] = true,
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "Execution Sentence CD",
			["parent"] = "Paladin Procs",
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["xOffset"] = 0,
			["yOffset"] = -32,
			["disjunctive"] = "any",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Colossus Smash"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Warrior Bars",
			["customText"] = "f",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Colossus Smash", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["zoom"] = 0,
			["borderOffset"] = 5,
			["height"] = 25,
			["border"] = false,
			["borderEdge"] = "None",
			["customTextUpdate"] = "event",
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["spark"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sparkHeight"] = 54,
			["borderBackdrop"] = "Blizzard Tooltip",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["barInFront"] = true,
			["sparkHidden"] = "NEVER",
			["id"] = "Colossus Smash",
			["frameStrata"] = 1,
			["width"] = 240,
			["sparkWidth"] = 26,
			["sparkRotation"] = 0,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["SWP"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Priest Bars",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Shadow Word: Pain", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["zoom"] = 0,
			["borderOffset"] = 5,
			["spark"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["height"] = 25,
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sparkWidth"] = 24,
			["sparkHeight"] = 54,
			["borderBackdrop"] = "Blizzard Tooltip",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["id"] = "SWP",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 240,
			["untrigger"] = {
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["Tidal Waves"] = {
			["disjunctive"] = "all",
			["mirror"] = false,
			["yOffset"] = 85,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Serendipity",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["id"] = "Tidal Waves",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Tidal Waves", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 200,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["rotation"] = 0,
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Combo Strikes"] = {
			["outline"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    if aura_env.display ~= nil then\n        return aura_env.display\n    end\nend",
			["untrigger"] = {
				["custom"] = "function()\n    return true\nend",
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "event",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["custom"] = "aura_env.display = nil",
					["do_message"] = false,
					["do_custom"] = true,
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_hide"] = "timed",
				["custom_type"] = "event",
				["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
				["duration"] = "10",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["custom"] = "function(mainevent, time, subevent, wtf1, sourceGUID, sourceName, sourceFlags, wtf2, destGUID, destName, somenumber, wtf3, spellID, spellName, _, amount, _, _, _, crit)\n    if strfind(subevent, \"SUCCESS\")\n    and sourceGUID == UnitGUID(\"player\")\n    and (spellName == \"Tiger Palm\"\n        or spellName == \"Blackout Kick\"\n        or spellName == \"Rising Sun Kick\"\n        or spellName == \"Fists of Fury\"\n    or spellName == \"Whirling Dragon Punch\") then\n        aura_env.icon = select(3, GetSpellInfo(spellName))\n        aura_env.name = strsub(spellName, 1, 10)..\"...\"\n        return true\n    else return true\n    end\nend",
				["customName"] = "function()\n    if aura_env.name ~= nil then\n        return aura_env.name\n    else return \"Combo Strikes\"\n    end\nend",
				["spellIds"] = {
				},
				["customIcon"] = "function()\n    if aura_env.icon ~= nil then\n        return aura_env.icon\n    else return 135274\n    end\nend",
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Bazooka",
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%n",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["justify"] = "LEFT",
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "Combo Strikes",
			["additional_triggers"] = {
			},
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 64,
			["yOffset"] = -95.281982421875,
			["numTriggers"] = 1,
			["inverse"] = false,
			["xOffset"] = -276.427429199219,
			["stickyDuration"] = false,
			["displayIcon"] = 135274,
			["stacksPoint"] = "TOP",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shield Slam R"] = {
			["parent"] = "Warrior Prot CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Shield Slam",
				["use_spellName"] = true,
				["spellName"] = 23922,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Shield Slam R",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["untrigger"] = {
				["spellName"] = 23922,
			},
			["xOffset"] = 90,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Fel Lord: Latent Energy"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "182008",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Artillery", -- [1]
				},
				["fullscan"] = true,
				["use_spellId"] = true,
				["name"] = "Latent Energy",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
				["spellIds"] = {
					182108, -- [1]
				},
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
						["normal"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_zone"] = true,
				["size"] = {
					["multi"] = {
						["twenty"] = true,
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Dodge Waves",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["additional_triggers"] = {
			},
			["id"] = "Fel Lord: Latent Energy",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["glow_frame"] = "WeakAuras:Artillery",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["do_message"] = false,
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Shadow_ChillTouch",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest Penance 2"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 47540,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Penance",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest Penance 2",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["inverse"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 47540,
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shockwave R"] = {
			["parent"] = "Warrior Prot CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Shockwave",
				["use_spellName"] = true,
				["spellName"] = 46968,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Shockwave R",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["icon"] = true,
			["numTriggers"] = 1,
			["inverse"] = false,
			["untrigger"] = {
				["spellName"] = 46968,
			},
			["xOffset"] = 180,
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["GDruidMaul"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local _,duration = GetSpellCooldown(\"Mind Blast\")\n    \n    if duration then\n        if duration > 1.5 then\n            WeakAuras.regions[\"MindBlast\"].region.icon:SetDesaturated(true)\n        else \n            WeakAuras.regions[\"MindBlast\"].region.icon:SetDesaturated(false)\n        end\n    end\nend",
			["yOffset"] = -32,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_charges"] = false,
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Maul",
				["use_spellName"] = true,
				["unit"] = "player",
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["spellName"] = 6807,
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "Sft- F",
			["regionType"] = "icon",
			["desaturate"] = false,
			["stacksPoint"] = "BOTTOMRIGHT",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 6807,
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "GDruidMaul",
			["disjunctive"] = "any",
			["frameStrata"] = 1,
			["width"] = 64,
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["parent"] = "Druid Procs",
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest PWSolace 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 129250,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Power Word: Solace",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest PWSolace 2",
			["additional_triggers"] = {
			},
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["stickyDuration"] = false,
			["inverse"] = true,
			["numTriggers"] = 1,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 129250,
			},
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Priest H:Sanctuary 2"] = {
			["xOffset"] = 20,
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 34861,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "event",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Holy Word: Sanctify",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 34861,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksPoint"] = "CENTER",
			["parent"] = "PriestHolySounds",
			["stickyDuration"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["additional_triggers"] = {
			},
			["id"] = "Priest H:Sanctuary 2",
			["numTriggers"] = 1,
			["frameStrata"] = 1,
			["width"] = 40,
			["disjunctive"] = "any",
			["yOffset"] = 0,
			["inverse"] = true,
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "Interface\\Icons\\Spell_Holy_DivineProvidence",
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["T'uure"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["displayIcon"] = 1060983,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Priest Bars",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n  active",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellId"] = "196685",
				["ownOnly"] = true,
				["names"] = {
					"Purge the Wicked", -- [1]
				},
				["destUnit"] = "player",
				["subeventPrefix"] = "SPELL",
				["use_specific_unit"] = false,
				["use_unit"] = true,
				["debuffType"] = "HARMFUL",
				["type"] = "event",
				["sourceName"] = "Mallusof",
				["unevent"] = "timed",
				["custom_type"] = "event",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["event"] = "Combat Log",
				["unit"] = "target",
				["subeventSuffix"] = "_SUMMON",
				["use_spellId"] = true,
				["name"] = "Invoke the Naaru",
				["use_sourceUnit"] = false,
				["use_sourceName"] = true,
				["use_destUnit"] = false,
				["sourceUnit"] = "player",
				["duration"] = "15",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["zoom"] = 0,
			["borderOffset"] = 5,
			["timer"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["customTextUpdate"] = "update",
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 54,
			["sparkWidth"] = 24,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["sparkHidden"] = "NEVER",
			["id"] = "T'uure",
			["borderBackdrop"] = "Blizzard Tooltip",
			["frameStrata"] = 1,
			["width"] = 240,
			["spark"] = true,
			["untrigger"] = {
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["Eradication"] = {
			["sparkWidth"] = 24,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "WARLOCK",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Warlock Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Eradication", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["height"] = 25,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["icon"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "AUTO",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["sparkHeight"] = 54,
			["textFlags"] = "None",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["id"] = "Eradication",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 1,
			["width"] = 240,
			["barInFront"] = true,
			["spark"] = true,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["zoom"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
		},
		["Fire Blast R"] = {
			["parent"] = "Mage Fire CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Fire Blast",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["spellName"] = 108853,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Fire Blast R",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["untrigger"] = {
				["spellName"] = 108853,
			},
			["xOffset"] = 20,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Colossus Smash CD"] = {
			["parent"] = "Warrior Arms CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Colossus Smash",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 167105,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "Colossus Smash CD",
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["spellName"] = 167105,
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["xOffset"] = 20,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Iskar: Phantasmal Corruption"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_glow"] = false,
					["do_message"] = false,
					["do_sound"] = false,
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["glow_frame"] = "WeakAuras:Artillery",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "181824",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Artillery", -- [1]
				},
				["debuffType"] = "HARMFUL",
				["use_spellId"] = true,
				["name"] = "Phantasmal Corruption",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["fullscan"] = true,
				["spellIds"] = {
					182108, -- [1]
				},
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["normal"] = true,
						["heroic"] = true,
						["mythic"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Move Out",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["cooldown"] = true,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Iskar: Phantasmal Corruption",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\spell_fel_elementaldevastation",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				0, -- [1]
				1, -- [2]
				0.196078431372549, -- [3]
				1, -- [4]
			},
		},
		["HPriest GS 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 47788,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 47788,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Guardian Spirit",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolySounds",
			["cooldown"] = false,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "HPriest GS 2",
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Symbol of Hope"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Priest Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Symbol of Hope", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = true,
			["textSize"] = 12,
			["timer"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["border"] = false,
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["sparkRotation"] = 0,
			["barInFront"] = true,
			["sparkHeight"] = 54,
			["sparkWidth"] = 24,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderBackdrop"] = "Blizzard Tooltip",
			["id"] = "Symbol of Hope",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 240,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkRotationMode"] = "AUTO",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["zoom"] = 0,
		},
		["DPriest PWB 2"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 62618,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Power Word: Barrier",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest PWB 2",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["inverse"] = true,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 62618,
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RobotBlip.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Thunder Clap CD"] = {
			["xOffset"] = 135,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 6343,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Thunder Clap",
				["use_spellName"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 40,
			["parent"] = "Warrior Prot CDs",
			["untrigger"] = {
				["spellName"] = 6343,
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["id"] = "Thunder Clap CD",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Silence"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 550,
			["stacksFlags"] = "None",
			["yOffset"] = 480,
			["anchorPoint"] = "BOTTOMLEFT",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Interrupts and Dispells",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 15487,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Silence",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnCooldown",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 20,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotationMode"] = "AUTO",
			["borderSize"] = 16,
			["inverse"] = true,
			["icon_side"] = "LEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["sparkHeight"] = 30,
			["untrigger"] = {
				["spellName"] = 15487,
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["timer"] = true,
			["id"] = "Silence",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 400,
			["sparkOffsetX"] = 0,
			["sparkWidth"] = 10,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["auto"] = true,
			["borderOffset"] = 5,
			["zoom"] = 0,
		},
		["DPriest Halo"] = {
			["parent"] = "PriestDiscIcons",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Halo",
				["use_spellName"] = true,
				["spellName"] = 120517,
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 18,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["cooldown"] = true,
			["id"] = "DPriest Halo",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant4.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["desaturate"] = false,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 120517,
			},
			["numTriggers"] = 1,
			["inverse"] = true,
			["xOffset"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest Rapture 2"] = {
			["xOffset"] = 20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 47536,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Rapture",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest Rapture 2",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["numTriggers"] = 1,
			["inverse"] = true,
			["stickyDuration"] = false,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 47536,
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Spells\\SimonGame_Visual_BadPress.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shield Wall R"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 871,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
				},
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Shield Wall",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["spellName"] = 871,
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Shield Wall R",
			["xOffset"] = 315,
			["frameStrata"] = 1,
			["width"] = 40,
			["parent"] = "Warrior Prot CDs",
			["numTriggers"] = 1,
			["inverse"] = false,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest Serenity 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 2050,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellName"] = 2050,
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Holy Word: Serenity",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolySounds",
			["cooldown"] = false,
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "HPriest Serenity 2",
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["icon"] = true,
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest Halo"] = {
			["xOffset"] = 20,
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Halo",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["spellName"] = 120517,
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 18,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 120517,
			},
			["id"] = "HPriest Halo",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["parent"] = "PriestHolyIcons",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
			},
			["displayIcon"] = 135937,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shield Slam CD"] = {
			["parent"] = "Warrior Prot CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Shield Slam",
				["use_spellName"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["spellName"] = 23922,
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Shield Slam CD",
			["xOffset"] = 90,
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["additional_triggers"] = {
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["untrigger"] = {
				["spellName"] = 23922,
			},
			["icon"] = true,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Healing Rain  CD"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 73920,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_inverse"] = true,
				["unit"] = "player",
				["spellName"] = 73920,
				["charges_operator"] = "<",
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventPrefix"] = "SPELL",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Healing Rain",
				["use_spellName"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["showOn"] = "showOnCooldown",
				["debuffType"] = "HELPFUL",
				["use_charges"] = true,
				["charges"] = "1",
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["icon"] = true,
			["id"] = "Healing Rain  CD",
			["xOffset"] = 110,
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["parent"] = "Shaman Resto CDs",
			["additional_triggers"] = {
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Judgement"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local _,duration = GetSpellCooldown(\"Judgement\")\n    \n    if duration then\n        if duration > 1.5 then\n            WeakAuras.regions[\"Judgement\"].region.icon:SetDesaturated(true)\n        else \n            WeakAuras.regions[\"Judgement\"].region.icon:SetDesaturated(false)\n        end\n    end\nend",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 20271,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_charges"] = false,
				["names"] = {
				},
				["custom_hide"] = "timed",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Judgment",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showAlways",
				["unevent"] = "auto",
				["use_unit"] = true,
				["spellName"] = 20271,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%c",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["xOffset"] = 0,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "Judgement",
			["parent"] = "Paladin Procs",
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["disjunctive"] = "any",
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["yOffset"] = -32,
			["icon"] = true,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Iskar: Raidance of Anzu"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["glow_frame"] = "WeakAuras:Artillery",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["do_message"] = false,
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "185239",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Artillery", -- [1]
				},
				["custom_hide"] = "timed",
				["use_spellId"] = true,
				["name"] = "Radiance of Anzu",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["fullscan"] = true,
				["spellIds"] = {
					182108, -- [1]
				},
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["normal"] = true,
						["heroic"] = true,
						["mythic"] = true,
					},
				},
				["use_zone"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["stacksPoint"] = "BOTTOM",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Iskar: Raidance of Anzu",
			["yOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["icon"] = true,
			["numTriggers"] = 2,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["names"] = {
							"Eye of Anzu", -- [1]
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["displayIcon"] = "Interface\\Icons\\spell_burningbladeshaman_blazing_radiance",
			["cooldown"] = true,
			["textColor"] = {
				0, -- [1]
				1, -- [2]
				0.196078431372549, -- [3]
				1, -- [4]
			},
		},
		["Solace CD"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -160,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "pulse",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["remaining_operator"] = "<",
				["subeventPrefix"] = "SPELL",
				["remaining"] = "4",
				["custom_hide"] = "timed",
				["use_remaining"] = true,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["type"] = "status",
				["realSpellName"] = "Power Word: Solace",
				["use_spellName"] = true,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["showOn"] = "showOnCooldown",
				["unit"] = "player",
				["spellName"] = 129250,
				["names"] = {
					"Power Word: Solace", -- [1]
				},
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_combat"] = true,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 24,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = true,
			["id"] = "Solace CD",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 64,
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["numTriggers"] = 1,
			["untrigger"] = {
				["showOn"] = "showOnCooldown",
				["spellName"] = 129250,
			},
			["parent"] = "Priest Procs",
			["icon"] = true,
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Dragons Breath CD"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 31661,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Dragon's Breath",
				["use_spellName"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["icon"] = true,
			["id"] = "Dragons Breath CD",
			["xOffset"] = 65,
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["untrigger"] = {
				["spellName"] = 31661,
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["parent"] = "Mage Fire CDs",
			["additional_triggers"] = {
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Spirit Link Totem R "] = {
			["xOffset"] = 200,
			["untrigger"] = {
				["spellName"] = 98008,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Spirit Link Totem",
				["use_spellName"] = true,
				["spellName"] = 98008,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Spirit Link Totem R ",
			["parent"] = "Shaman Resto CDs",
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["yOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Avengers Shield  CD"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["yOffset"] = -265,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 31935,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Avenger's Shield",
				["use_spellName"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Paladin Prot CDs",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Avengers Shield  CD",
			["xOffset"] = -170,
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["untrigger"] = {
				["spellName"] = 31935,
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["additional_triggers"] = {
			},
			["icon"] = true,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest Apotheosis"] = {
			["xOffset"] = 20,
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant4.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 200183,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Apotheosis",
				["use_spellName"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksPoint"] = "CENTER",
			["icon"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "HPriest Apotheosis",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["numTriggers"] = 1,
			["parent"] = "PriestHolyIcons",
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 200183,
			},
			["displayIcon"] = 135937,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Dragons Breath R "] = {
			["xOffset"] = 65,
			["untrigger"] = {
				["spellName"] = 31661,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Dragon's Breath",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["spellName"] = 31661,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Dragons Breath R ",
			["parent"] = "Mage Fire CDs",
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["yOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["RipTide R"] = {
			["xOffset"] = 20,
			["untrigger"] = {
				["spellName"] = 61295,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Riptide",
				["use_spellName"] = true,
				["spellName"] = 61295,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "RipTide R",
			["parent"] = "Shaman Resto CDs",
			["frameStrata"] = 1,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["GDruid Thrash"] = {
			["xOffset"] = 0,
			["customText"] = "function()\n    local _,duration = GetSpellCooldown(\"Mind Blast\")\n    \n    if duration then\n        if duration > 1.5 then\n            WeakAuras.regions[\"MindBlast\"].region.icon:SetDesaturated(true)\n        else \n            WeakAuras.regions[\"MindBlast\"].region.icon:SetDesaturated(false)\n        end\n    end\nend",
			["yOffset"] = -32,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_charges"] = false,
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Thrash",
				["use_spellName"] = true,
				["spellName"] = 77758,
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "Q",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["cooldown"] = true,
			["parent"] = "Druid Procs",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["numTriggers"] = 1,
			["disjunctive"] = "any",
			["id"] = "GDruid Thrash",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 77758,
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Hunter Bars"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Vunerable", -- [1]
				"Lacerate", -- [2]
				"Way of the Mok'Nathal", -- [3]
			},
			["animate"] = false,
			["regionType"] = "dynamicgroup",
			["disjunctive"] = "all",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["backgroundInset"] = 0,
			["sort"] = "none",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["borderOffset"] = 16,
			["align"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["yOffset"] = -265,
			["frameStrata"] = 1,
			["width"] = 239.999938964844,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["id"] = "Hunter Bars",
			["height"] = 79.0000305175781,
			["radius"] = 200,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -410,
		},
		["NightBlade"] = {
			["sparkWidth"] = 24,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Rogue Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Nightblade", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["height"] = 25,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["spark"] = true,
			["icon"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "AUTO",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHeight"] = 54,
			["textFlags"] = "None",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["id"] = "NightBlade",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 1,
			["width"] = 240,
			["barInFront"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["borderOffset"] = 5,
			["zoom"] = 0,
			["textSize"] = 12,
		},
		["Mirror Image CD"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 55342,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Mirror Image",
				["use_spellName"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = true,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["icon"] = true,
			["id"] = "Mirror Image CD",
			["xOffset"] = 155,
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["untrigger"] = {
				["spellName"] = 55342,
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["parent"] = "Mage Fire CDs",
			["additional_triggers"] = {
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Healing Stream Totem CD"] = {
			["parent"] = "Shaman Resto CDs",
			["untrigger"] = {
				["spellName"] = 5394,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_inverse"] = true,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["charges_operator"] = "<",
				["charges"] = "1",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["use_unit"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["spellName"] = 5394,
				["realSpellName"] = "Healing Stream Totem",
				["use_spellName"] = true,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
				["showOn"] = "showOnCooldown",
				["use_remaining"] = false,
				["use_charges"] = true,
				["type"] = "status",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Healing Stream Totem CD",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["yOffset"] = 0,
			["inverse"] = false,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["xOffset"] = 65,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shared Fate 2"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "179908",
				["duration"] = "40",
				["names"] = {
					"Shared Fate", -- [1]
				},
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["subeventSuffix"] = "",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_source"] = false,
				["unevent"] = "timed",
				["name"] = "Shared Fate",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["use_sourceUnit"] = true,
				["subeventPrefix"] = "PARTY_KILL",
				["event"] = "Combat Log",
				["sourceUnit"] = "player",
				["fullscan"] = true,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Move",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Shared Fate 2",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Rip"] = {
			["sparkWidth"] = 24,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Druid Bars",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Rip", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["zoom"] = 0,
			["icon"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotationMode"] = "AUTO",
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["untrigger"] = {
			},
			["sparkHeight"] = 54,
			["textFlags"] = "None",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkOffsetX"] = 0,
			["id"] = "Rip",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 240,
			["spark"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["timer"] = true,
			["borderOffset"] = 5,
			["textSize"] = 12,
		},
		["Trauma"] = {
			["sparkWidth"] = 26,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Warrior Bars",
			["customText"] = "f",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "event",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Trauma", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["icon"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["spark"] = true,
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "AUTO",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 54,
			["sparkOffsetX"] = 0,
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["untrigger"] = {
			},
			["id"] = "Trauma",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 240,
			["textFlags"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["borderOffset"] = 5,
			["zoom"] = 0,
			["textSize"] = 12,
		},
		["DPriest PWSolace"] = {
			["parent"] = "PriestDiscIcons",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Power Word: Solace",
				["use_spellName"] = true,
				["spellName"] = 129250,
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["cooldown"] = true,
			["id"] = "DPriest PWSolace",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 40,
			["desaturate"] = false,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 129250,
			},
			["inverse"] = true,
			["numTriggers"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 20,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Paladin Procs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Blade of Justice", -- [1]
				"Crusader Strike", -- [2]
				"Judgement", -- [3]
				"Execution Sentence", -- [4]
				"Execution Sentence CD", -- [5]
				"Spend Holy Power", -- [6]
			},
			["xOffset"] = 220,
			["yOffset"] = -120,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backgroundInset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["stagger"] = 0,
			["height"] = 64.0000610351563,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = true,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 394,
			["id"] = "Paladin Procs",
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["disjunctive"] = "all",
			["align"] = "CENTER",
			["rotation"] = 0,
			["radius"] = 200,
			["selfPoint"] = "LEFT",
		},
		["DPriest Scism"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Schism",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["spellName"] = 214621,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["id"] = "DPriest Scism",
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 214621,
			},
			["inverse"] = true,
			["numTriggers"] = 1,
			["desaturate"] = false,
			["parent"] = "PriestDiscIcons",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Touch of Death"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "179977",
				["duration"] = "40",
				["names"] = {
					"Shadow of Death", -- [1]
				},
				["custom_hide"] = "timed",
				["type"] = "aura",
				["subeventSuffix"] = "",
				["unit"] = "player",
				["use_source"] = false,
				["unevent"] = "timed",
				["name"] = "Touch of Doom",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["use_sourceUnit"] = true,
				["subeventPrefix"] = "PARTY_KILL",
				["event"] = "Combat Log",
				["sourceUnit"] = "player",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_zone"] = true,
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
						["twenty"] = true,
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Move Out",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["id"] = "Touch of Death",
			["displayIcon"] = "Interface\\Icons\\Spell_Arcane_PrismaticCloak",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Blade of Justice"] = {
			["xOffset"] = 0,
			["customText"] = "function()\n    local _,duration = GetSpellCooldown(\"Blade of Justice\")\n    \n    if duration then\n        if duration > 1.5 then\n            WeakAuras.regions[\"Blade of Justice\"].region.icon:SetDesaturated(true)\n        else \n            WeakAuras.regions[\"Blade of Justice\"].region.icon:SetDesaturated(false)\n        end\n    end\nend",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 184575,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_charges"] = false,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["subeventPrefix"] = "SPELL",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Blade of Justice",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["showOn"] = "showAlways",
				["unevent"] = "auto",
				["use_unit"] = true,
				["spellName"] = 184575,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%c",
			["regionType"] = "icon",
			["parent"] = "Paladin Procs",
			["stacksPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "Blade of Justice",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["disjunctive"] = "any",
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["yOffset"] = -32,
			["icon"] = true,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Xhul: Fel Surge"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "186407",
				["duration"] = "5",
				["names"] = {
					"Shadow of Death", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
				["unit"] = "player",
				["type"] = "aura",
				["spellName"] = "",
				["unevent"] = "timed",
				["custom_hide"] = "timed",
				["use_source"] = false,
				["event"] = "Combat Log",
				["spellIds"] = {
				},
				["use_spellName"] = false,
				["use_spellId"] = true,
				["name"] = "Fel Surge",
				["use_sourceUnit"] = false,
				["subeventSuffix"] = "_AURA_APPLIED",
				["use_unit"] = true,
				["sourceUnit"] = "player",
				["fullscan"] = true,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Fel Surge",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["stacksPoint"] = "BOTTOM",
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["id"] = "Xhul: Fel Surge",
			["displayIcon"] = "Interface\\Icons\\spell_fel_incinerate",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Priest Bars"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Purge the Wicked", -- [1]
				"Blessing of T'uure", -- [2]
				"T'uure", -- [3]
				"Symbol of Hope", -- [4]
				"SWP", -- [5]
				"VT", -- [6]
			},
			["animate"] = true,
			["xOffset"] = -240,
			["disjunctive"] = "all",
			["expanded"] = false,
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["radius"] = 200,
			["sort"] = "ascending",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "TOP",
			["backgroundInset"] = 0,
			["id"] = "Priest Bars",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["align"] = "CENTER",
			["yOffset"] = -80,
			["frameStrata"] = 1,
			["width"] = 240.000122070313,
			["stagger"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["height"] = 160.000030517578,
			["borderOffset"] = 16,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["DPriest Scism 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Schism",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 214621,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestDiscSounds",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "DPriest Scism 2",
			["additional_triggers"] = {
			},
			["xOffset"] = 20,
			["frameStrata"] = 1,
			["width"] = 40,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["inverse"] = true,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 214621,
			},
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\chant2.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Ignore Pain"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Warrior Bars",
			["customText"] = "function()\n    return select(17, UnitBuff(\"player\", \"Ignore Pain\"))\nend\n\n\n",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n - %c",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["use_specific_unit"] = false,
				["names"] = {
					"Ignore Pain", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderOffset"] = 5,
			["auto"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["height"] = 25,
			["border"] = false,
			["borderEdge"] = "None",
			["barInFront"] = true,
			["borderSize"] = 16,
			["numTriggers"] = 1,
			["icon_side"] = "LEFT",
			["sparkWidth"] = 26,
			["textSize"] = 12,
			["sparkHeight"] = 54,
			["zoom"] = 0,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["id"] = "Ignore Pain",
			["sparkHidden"] = "NEVER",
			["sparkRotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 240,
			["customTextUpdate"] = "event",
			["icon"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["Combustion R"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 190319,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Combustion",
				["use_spellName"] = true,
				["spellName"] = 190319,
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Combustion R",
			["xOffset"] = 110,
			["frameStrata"] = 1,
			["width"] = 40,
			["parent"] = "Mage Fire CDs",
			["numTriggers"] = 1,
			["inverse"] = false,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Mirror Image R"] = {
			["xOffset"] = 155,
			["untrigger"] = {
				["spellName"] = 55342,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Mirror Image",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["spellName"] = 55342,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Mirror Image R",
			["parent"] = "Mage Fire CDs",
			["frameStrata"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["yOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Ignore Pain Refresh"] = {
			["parent"] = "Warrior Procs",
			["untrigger"] = {
				["spellName"] = 228260,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellName"] = 228260,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["ownOnly"] = true,
				["event"] = "Action Usable",
				["use_unit"] = true,
				["unevent"] = "auto",
				["use_spellName"] = true,
				["inverse"] = true,
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Ignore Pain", -- [1]
				},
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Ignore Pain",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 190456,
					},
					["untrigger"] = {
						["spellName"] = 190456,
					},
				}, -- [1]
			},
			["id"] = "Ignore Pain Refresh",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 64,
			["desaturate"] = false,
			["numTriggers"] = 2,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -224,
			["displayIcon"] = 1377132,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Spend Holy Power"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    return UnitPower(\"player\", SPELL_POWER_HOLY_POWER);\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["power"] = "3",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Power",
				["names"] = {
				},
				["unit"] = "player",
				["powertype"] = 9,
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_unit"] = true,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%c",
			["regionType"] = "icon",
			["parent"] = "Paladin Procs",
			["stickyDuration"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["yOffset"] = 100,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["names"] = {
							"Divine Purpose", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["disjunctive"] = "any",
			["frameStrata"] = 1,
			["width"] = 64,
			["numTriggers"] = 2,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["id"] = "Spend Holy Power",
			["displayIcon"] = 535593,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Revenge CD"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 6572,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 6572,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Revenge",
				["use_spellName"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "Revenge CD",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["parent"] = "Warrior Prot CDs",
			["yOffset"] = 0,
			["inverse"] = false,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["xOffset"] = 45,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["MindBlast"] = {
			["parent"] = "Priest Procs",
			["customText"] = "function()\n    local _,duration = GetSpellCooldown(\"Mind Blast\")\n    \n    if duration then\n        if duration > 1.5 then\n            WeakAuras.regions[\"MindBlast\"].region.icon:SetDesaturated(true)\n        else \n            WeakAuras.regions[\"MindBlast\"].region.icon:SetDesaturated(false)\n        end\n    end\nend",
			["yOffset"] = -32,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["use_charges"] = false,
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Mind Blast",
				["use_spellName"] = true,
				["unit"] = "player",
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["spellName"] = 8092,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%c",
			["regionType"] = "icon",
			["disjunctive"] = "any",
			["stacksPoint"] = "CENTER",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 8092,
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "MindBlast",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest Penance"] = {
			["parent"] = "PriestDiscIcons",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Penance",
				["use_spellName"] = true,
				["spellName"] = 47540,
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["cooldown"] = true,
			["id"] = "DPriest Penance",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["desaturate"] = false,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 47540,
			},
			["numTriggers"] = 1,
			["inverse"] = true,
			["xOffset"] = 20,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["DPriest SM"] = {
			["parent"] = "PriestDiscIcons",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Mindbender",
				["use_spellName"] = true,
				["spellName"] = 123040,
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["cooldown"] = true,
			["id"] = "DPriest SM",
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Doodad\\SimonGame_LargeBlueTree.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["desaturate"] = false,
			["numTriggers"] = 1,
			["inverse"] = true,
			["xOffset"] = 20,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 123040,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shield Block"] = {
			["sparkWidth"] = 26,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Warrior Bars",
			["customText"] = "f",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Shield Block", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["height"] = 25,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["icon"] = true,
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["customTextUpdate"] = "event",
			["sparkRotation"] = 0,
			["sparkHeight"] = 54,
			["untrigger"] = {
			},
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkOffsetX"] = 0,
			["id"] = "Shield Block",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 240,
			["textFlags"] = "None",
			["borderOffset"] = 5,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["timer"] = true,
			["textSize"] = 12,
			["spark"] = true,
		},
		["DPriest PWB"] = {
			["parent"] = "PriestDiscIcons",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RobotBlip.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Power Word: Barrier",
				["use_spellName"] = true,
				["spellName"] = 62618,
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 10,
					["multi"] = {
						[10] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["cooldown"] = true,
			["id"] = "DPriest PWB",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 40,
			["desaturate"] = false,
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 62618,
			},
			["inverse"] = true,
			["numTriggers"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 20,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Healing Tide Totam CD"] = {
			["parent"] = "Shaman Resto CDs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_inverse"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["charges_operator"] = "<",
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Healing Tide Totem",
				["use_spellName"] = true,
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnCooldown",
				["spellName"] = 108280,
				["use_charges"] = true,
				["charges"] = "1",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["desaturate"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "Healing Tide Totam CD",
			["frameStrata"] = 1,
			["width"] = 40,
			["untrigger"] = {
				["spellName"] = 108280,
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.532344847917557, -- [4]
			},
			["xOffset"] = 155,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Healing Tide Totem R"] = {
			["xOffset"] = 155,
			["untrigger"] = {
				["spellName"] = 108280,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Action Usable",
				["names"] = {
				},
				["realSpellName"] = "Healing Tide Totem",
				["use_spellName"] = true,
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["spellName"] = 108280,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Healing Tide Totem R",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["inverse"] = false,
			["parent"] = "Shaman Resto CDs",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HPriest DS 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    local spellName = \"Holy Word:Sanctify\"\n    local _,duration = GetSpellCooldown(spellName)\n    if duration then\n        if duration or duration < 1.5 then\n            WeakAuras.regions[spellName].region.icon:SetDesaturated(false)\n        else \n            WeakAuras.regions[spellName].region.icon:SetDesaturated(true)\n        end\n    end\n    \n    return \"\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Divine Star",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["spellName"] = 110744,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["single"] = 17,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "PriestHolySounds",
			["stacksPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["xOffset"] = 20,
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["inverse"] = true,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 110744,
			},
			["numTriggers"] = 1,
			["icon"] = true,
			["id"] = "HPriest DS 2",
			["displayIcon"] = 135937,
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["GDruid Mangle"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local _,duration = GetSpellCooldown(\"Mind Blast\")\n    \n    if duration then\n        if duration > 1.5 then\n            WeakAuras.regions[\"MindBlast\"].region.icon:SetDesaturated(true)\n        else \n            WeakAuras.regions[\"MindBlast\"].region.icon:SetDesaturated(false)\n        end\n    end\nend",
			["yOffset"] = -32,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_charges"] = false,
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Mangle",
				["use_spellName"] = true,
				["unit"] = "player",
				["use_unit"] = true,
				["showOn"] = "showAlways",
				["spellName"] = 33917,
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "F",
			["regionType"] = "icon",
			["desaturate"] = false,
			["stacksPoint"] = "BOTTOMRIGHT",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 33917,
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "GDruid Mangle",
			["disjunctive"] = "any",
			["frameStrata"] = 1,
			["width"] = 64,
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["parent"] = "Druid Procs",
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Xhul: Void Surge"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["spellId"] = "186333",
				["duration"] = "5",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
				["unit"] = "player",
				["type"] = "aura",
				["spellName"] = "",
				["subeventSuffix"] = "_AURA_APPLIED",
				["custom_hide"] = "timed",
				["use_source"] = false,
				["event"] = "Combat Log",
				["spellIds"] = {
				},
				["use_spellId"] = true,
				["use_spellName"] = false,
				["name"] = "Void Surge",
				["use_sourceUnit"] = false,
				["unevent"] = "timed",
				["names"] = {
					"Shadow of Death", -- [1]
				},
				["sourceUnit"] = "player",
				["fullscan"] = true,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 90,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 15,
			["displayStacks"] = "Void Surge",
			["regionType"] = "icon",
			["parent"] = "T18: HFC",
			["stacksPoint"] = "BOTTOM",
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Xhul: Void Surge",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 90,
			["inverse"] = false,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Shadow_DevouringPlague",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SWP Refresh"] = {
			["parent"] = "Priest Procs",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["rem"] = "4.3",
				["ownOnly"] = true,
				["names"] = {
					"Shadow Word: Pain", -- [1]
				},
				["debuffType"] = "HARMFUL",
				["type"] = "aura",
				["useRem"] = true,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
				["use_unit"] = true,
				["event"] = "Power",
				["use_percentpower"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = "<=",
				["unit"] = "target",
				["percentpower"] = "85",
				["percentpower_operator"] = "<",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["disjunctive"] = "any",
			["xOffset"] = 0,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["desaturate"] = false,
			["id"] = "SWP Refresh",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["numTriggers"] = 2,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["inverse"] = true,
						["use_specific_unit"] = false,
						["names"] = {
							"Shadow Word: Pain", -- [1]
						},
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -32,
			["displayIcon"] = 136207,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shadowfiend"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 34433,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["spellName"] = 34433,
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["realSpellName"] = "Shadowfiend",
				["use_spellName"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[12] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						[3] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 22,
			["displayStacks"] = "%c",
			["regionType"] = "icon",
			["parent"] = "Priest Procs",
			["stacksPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Shadowfiend",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["yOffset"] = -32,
			["inverse"] = false,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["xOffset"] = 0,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Way of the Mok'Nathal"] = {
			["sparkWidth"] = 24,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.0627450980392157, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Hunter Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n - %s",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Mok'Nathal Tactics", -- [1]
				},
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["height"] = 25,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["icon"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["inverse"] = false,
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "AUTO",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["sparkHeight"] = 54,
			["textFlags"] = "None",
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["id"] = "Way of the Mok'Nathal",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 1,
			["width"] = 240,
			["barInFront"] = true,
			["spark"] = true,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["zoom"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 12,
		},
		["Cenarius: Scorned Touch"] = {
			["xOffset"] = -254.906127929688,
			["yOffset"] = 306.325012207031,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BoxingArenaSound.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
				["names"] = {
					"Scorned Touch", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 100,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 31,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Emerald Nightmare",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Cenarius: Scorned Touch",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 100,
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["disjunctive"] = "all",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Cenarius: Creeping Nightmares"] = {
			["parent"] = "Emerald Nightmare",
			["yOffset"] = 306.325012207031,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["useCount"] = true,
				["spellIds"] = {
				},
				["count"] = "25",
				["names"] = {
					"Creeping Nightmares", -- [1]
				},
				["unit"] = "player",
				["countOperator"] = ">=",
				["debuffType"] = "HARMFUL",
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 100,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 72,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "Cenarius: Creeping Nightmares",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["width"] = 100,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["xOffset"] = -254.906127929688,
			["icon"] = true,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -325.932739257813,
		["yOffset"] = -200.1708984375,
		["height"] = 491.999877929687,
		["width"] = 630.000427246094,
	},
	["talent_cache"] = {
		["HUNTER"] = {
			{
				["name"] = "Posthaste",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_posthaste",
			}, -- [1]
			{
				["name"] = "Narrow Escape",
				["icon"] = "Interface\\Icons\\INV_Misc_Web_01",
			}, -- [2]
			{
				["name"] = "Crouching Tiger, Hidden Chimaera",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_pet_chimera",
			}, -- [3]
			{
				["name"] = "Binding Shot",
				["icon"] = "INTERFACE\\ICONS\\spell_shaman_bindelemental",
			}, -- [4]
			{
				["name"] = "Wyvern Sting",
				["icon"] = "Interface\\Icons\\INV_Spear_02",
			}, -- [5]
			{
				["name"] = "Intimidation",
				["icon"] = "Interface\\Icons\\Ability_Devour",
			}, -- [6]
			{
				["name"] = "Exhilaration",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_onewithnature",
			}, -- [7]
			{
				["name"] = "Iron Hawk",
				["icon"] = "Interface\\Icons\\spell_hunter_aspectoftheironhawk",
			}, -- [8]
			{
				["name"] = "Spirit Bond",
				["icon"] = "Interface\\Icons\\Ability_Hunter_AspectMastery",
			}, -- [9]
			{
				["name"] = "Steady Focus",
				["icon"] = "Interface\\Icons\\Ability_Hunter_ImprovedSteadyShot",
			}, -- [10]
			{
				["name"] = "Dire Beast",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_sickem",
			}, -- [11]
			{
				["name"] = "Thrill of the Hunt",
				["icon"] = "Interface\\Icons\\Ability_Hunter_ThrilloftheHunt",
			}, -- [12]
			{
				["name"] = "A Murder of Crows",
				["icon"] = "Interface\\Icons\\ability_hunter_murderofcrows",
			}, -- [13]
			{
				["name"] = "Blink Strikes",
				["icon"] = "Interface\\Icons\\Spell_Arcane_Arcane04",
			}, -- [14]
			{
				["name"] = "Stampede",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_bestialdiscipline",
			}, -- [15]
			{
				["name"] = "Glaive Toss",
				["icon"] = "Interface\\Icons\\ability_glaivetoss",
			}, -- [16]
			{
				["name"] = "Powershot",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_resistanceisfutile",
			}, -- [17]
			{
				["name"] = "Barrage",
				["icon"] = "Interface\\Icons\\Ability_Hunter_RapidRegeneration",
			}, -- [18]
			{
				["name"] = "Exotic Munitions",
				["icon"] = "Interface\\Icons\\inv_ammo_bullet_07",
			}, -- [19]
			{
				["name"] = "Focusing Shot",
				["icon"] = "Interface\\Icons\\spell_hunter_focusingshot",
			}, -- [20]
			{
				["name"] = "Adaptation",
				["icon"] = "Interface\\Icons\\spell_hunter_adaptation",
			}, -- [21]
		},
		["WARRIOR"] = {
			{
				["name"] = "Juggernaut",
				["icon"] = "Interface\\Icons\\Ability_Warrior_BullRush",
			}, -- [1]
			{
				["name"] = "Double Time",
				["icon"] = "Interface\\Icons\\INV_Misc_Horn_04",
			}, -- [2]
			{
				["name"] = "Warbringer",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Warbringer",
			}, -- [3]
			{
				["name"] = "Enraged Regeneration",
				["icon"] = "Interface\\Icons\\Ability_Warrior_FocusedRage",
			}, -- [4]
			{
				["name"] = "Second Wind",
				["icon"] = "Interface\\Icons\\Ability_Hunter_Harass",
			}, -- [5]
			{
				["name"] = "Impending Victory",
				["icon"] = "Interface\\Icons\\spell_impending_victory",
			}, -- [6]
			{
				["name"] = "Taste for Blood",
				["icon"] = "Interface\\Icons\\Ability_Rogue_HungerforBlood",
			}, -- [7]
			{
				["name"] = "Sudden Death",
				["icon"] = "Interface\\Icons\\Ability_Warrior_ImprovedDisciplines",
			}, -- [8]
			{
				["name"] = "Slam",
				["icon"] = "Interface\\Icons\\Ability_Warrior_DecisiveStrike",
			}, -- [9]
			{
				["name"] = "Storm Bolt",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_stormbolt",
			}, -- [10]
			{
				["name"] = "Shockwave",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Shockwave",
			}, -- [11]
			{
				["name"] = "Dragon Roar",
				["icon"] = "Interface\\Icons\\ability_warrior_dragonroar",
			}, -- [12]
			{
				["name"] = "Mass Spell Reflection",
				["icon"] = "Interface\\Icons\\Ability_Warrior_ShieldBreak",
			}, -- [13]
			{
				["name"] = "Safeguard",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Safeguard",
			}, -- [14]
			{
				["name"] = "Vigilance",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Vigilance",
			}, -- [15]
			{
				["name"] = "Avatar",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_avatar",
			}, -- [16]
			{
				["name"] = "Bloodbath",
				["icon"] = "Interface\\Icons\\Ability_Warrior_BloodBath",
			}, -- [17]
			{
				["name"] = "Bladestorm",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Bladestorm",
			}, -- [18]
			{
				["name"] = "Anger Management",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_angermanagement",
			}, -- [19]
			{
				["name"] = "Ravager",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_ravager",
			}, -- [20]
			{
				["name"] = "Siegebreaker",
				["icon"] = "Interface\\Icons\\inv_mace_2h_draenorguard_b_01_horde",
			}, -- [21]
		},
		["ROGUE"] = {
			{
				["name"] = "Nightstalker",
				["icon"] = "Interface\\Icons\\Ability_Stealth",
			}, -- [1]
			{
				["name"] = "Subterfuge",
				["icon"] = "Interface\\Icons\\rogue_subterfuge",
			}, -- [2]
			{
				["name"] = "Shadow Focus",
				["icon"] = "Interface\\Icons\\rogue_shadowfocus",
			}, -- [3]
			{
				["name"] = "Deadly Throw",
				["icon"] = "Interface\\Icons\\INV_ThrowingKnife_06",
			}, -- [4]
			{
				["name"] = "Nerve Strike",
				["icon"] = "Interface\\Icons\\rogue_nerve _strike",
			}, -- [5]
			{
				["name"] = "Combat Readiness",
				["icon"] = "INTERFACE\\ICONS\\ability_rogue_combatreadiness",
			}, -- [6]
			{
				["name"] = "Cheat Death",
				["icon"] = "Interface\\Icons\\Ability_Rogue_CheatDeath",
			}, -- [7]
			{
				["name"] = "Leeching Poison",
				["icon"] = "Interface\\Icons\\rogue_leeching_poison",
			}, -- [8]
			{
				["name"] = "Elusiveness",
				["icon"] = "Interface\\Icons\\Ability_Rogue_TurntheTables",
			}, -- [9]
			{
				["name"] = "Cloak and Dagger",
				["icon"] = "Interface\\Icons\\Ability_Rogue_UnfairAdvantage",
			}, -- [10]
			{
				["name"] = "Shadowstep",
				["icon"] = "Interface\\Icons\\Ability_Rogue_Shadowstep",
			}, -- [11]
			{
				["name"] = "Burst of Speed",
				["icon"] = "Interface\\Icons\\rogue_burstofspeed",
			}, -- [12]
			{
				["name"] = "Prey on the Weak",
				["icon"] = "Interface\\Icons\\Ability_Rogue_PreyontheWeak",
			}, -- [13]
			{
				["name"] = "Internal Bleeding",
				["icon"] = "Interface\\Icons\\Ability_Rogue_BloodSplatter",
			}, -- [14]
			{
				["name"] = "Dirty Tricks",
				["icon"] = "Interface\\Icons\\ability_rogue_dirtydeeds",
			}, -- [15]
			{
				["name"] = "Shuriken Toss",
				["icon"] = "INTERFACE\\ICONS\\inv_throwingknife_07",
			}, -- [16]
			{
				["name"] = "Marked for Death",
				["icon"] = "Interface\\Icons\\Achievement_BG_killingblow_berserker",
			}, -- [17]
			{
				["name"] = "Anticipation",
				["icon"] = "Interface\\Icons\\Ability_Rogue_SlaughterfromtheShadows",
			}, -- [18]
			{
				["name"] = "Venom Rush",
				["icon"] = "Interface\\Icons\\rogue_venomzest",
			}, -- [19]
			{
				["name"] = "Shadow Reflection",
				["icon"] = "Interface\\Icons\\rogue_shadow_reflection",
			}, -- [20]
			{
				["name"] = "Death from Above",
				["icon"] = "Interface\\Icons\\spell_rogue_deathfromabove",
			}, -- [21]
		},
		["MAGE"] = {
			{
				["name"] = "Evanesce",
				["icon"] = "Interface\\Icons\\Ability_Mage_NetherWindPresence",
			}, -- [1]
			{
				["name"] = "Blazing Speed",
				["icon"] = "Interface\\Icons\\Spell_Fire_BurningSpeed",
			}, -- [2]
			{
				["name"] = "Ice Floes",
				["icon"] = "Interface\\Icons\\spell_mage_iceflows",
			}, -- [3]
			{
				["name"] = "Alter Time",
				["icon"] = "Interface\\Icons\\spell_mage_altertime",
			}, -- [4]
			{
				["name"] = "Flameglow",
				["icon"] = "Interface\\Icons\\INV_Elemental_Primal_Fire",
			}, -- [5]
			{
				["name"] = "Ice Barrier",
				["icon"] = "Interface\\Icons\\Spell_Ice_Lament",
			}, -- [6]
			{
				["name"] = "Ring of Frost",
				["icon"] = "INTERFACE\\ICONS\\spell_frost_ring of frost",
			}, -- [7]
			{
				["name"] = "Ice Ward",
				["icon"] = "Interface\\Icons\\Spell_Frost_FrostWard",
			}, -- [8]
			{
				["name"] = "Frostjaw",
				["icon"] = "Interface\\Icons\\ability_mage_frostjaw",
			}, -- [9]
			{
				["name"] = "Greater Invisibility",
				["icon"] = "Interface\\Icons\\ability_mage_greaterinvisibility",
			}, -- [10]
			{
				["name"] = "Cauterize",
				["icon"] = "Interface\\Icons\\spell_fire_rune",
			}, -- [11]
			{
				["name"] = "Cold Snap",
				["icon"] = "Interface\\Icons\\Spell_Frost_WizardMark",
			}, -- [12]
			{
				["name"] = "Living Bomb",
				["icon"] = "Interface\\Icons\\Ability_Mage_LivingBomb",
			}, -- [13]
			{
				["name"] = "Unstable Magic",
				["icon"] = "Interface\\Icons\\spell_mage_unstablemagic",
			}, -- [14]
			{
				["name"] = "Blast Wave",
				["icon"] = "Interface\\Icons\\Spell_Holy_Excorcism_02",
			}, -- [15]
			{
				["name"] = "Mirror Image",
				["icon"] = "Interface\\Icons\\Spell_Magic_LesserInvisibilty",
			}, -- [16]
			{
				["name"] = "Rune of Power",
				["icon"] = "Interface\\Icons\\spell_mage_runeofpower",
			}, -- [17]
			{
				["name"] = "Incanter's Flow",
				["icon"] = "Interface\\Icons\\Ability_Mage_IncantersAbsorbtion",
			}, -- [18]
			{
				["name"] = "Kindling",
				["icon"] = "Interface\\Icons\\spell_mage_kindling",
			}, -- [19]
			{
				["name"] = "Prismatic Crystal",
				["icon"] = "Interface\\Icons\\spell_mage_focusingcrystal",
			}, -- [20]
			{
				["name"] = "Meteor",
				["icon"] = "Interface\\Icons\\spell_mage_meteor",
			}, -- [21]
		},
		["PRIEST"] = {
			{
				["name"] = "Desperate Prayer",
				["icon"] = "Interface\\Icons\\Spell_Holy_TestOfFaith",
			}, -- [1]
			{
				["name"] = "Spectral Guise",
				["icon"] = "Interface\\Icons\\spell_priest_spectralguise",
			}, -- [2]
			{
				["name"] = "Angelic Bulwark",
				["icon"] = "Interface\\Icons\\ability_priest_angelicbulwark",
			}, -- [3]
			{
				["name"] = "Body and Soul",
				["icon"] = "Interface\\Icons\\Spell_Holy_SymbolOfHope",
			}, -- [4]
			{
				["name"] = "Angelic Feather",
				["icon"] = "Interface\\Icons\\ability_priest_angelicfeather",
			}, -- [5]
			{
				["name"] = "Phantasm",
				["icon"] = "Interface\\Icons\\ability_priest_phantasm",
			}, -- [6]
			{
				["name"] = "Surge of Light",
				["icon"] = "Interface\\Icons\\Spell_Holy_SurgeOfLight",
			}, -- [7]
			{
				["name"] = "Mindbender",
				["icon"] = "Interface\\Icons\\Spell_Shadow_SoulLeech_3",
			}, -- [8]
			{
				["name"] = "Power Word: Solace",
				["icon"] = "Interface\\Icons\\ability_priest_flashoflight",
			}, -- [9]
			{
				["name"] = "Void Tendrils",
				["icon"] = "Interface\\Icons\\spell_priest_voidtendrils",
			}, -- [10]
			{
				["name"] = "Psychic Scream",
				["icon"] = "Interface\\Icons\\Spell_Shadow_PsychicScream",
			}, -- [11]
			{
				["name"] = "Dominate Mind",
				["icon"] = "Interface\\Icons\\Spell_Shadow_ShadowWordDominate",
			}, -- [12]
			{
				["name"] = "Twist of Fate",
				["icon"] = "Interface\\Icons\\Spell_Shadow_MindTwisting",
			}, -- [13]
			{
				["name"] = "Power Infusion",
				["icon"] = "Interface\\Icons\\Spell_Holy_PowerInfusion",
			}, -- [14]
			{
				["name"] = "Spirit Shell",
				["icon"] = "Interface\\Icons\\ability_shaman_astralshift",
			}, -- [15]
			{
				["name"] = "Cascade",
				["icon"] = "Interface\\Icons\\ability_priest_cascade",
			}, -- [16]
			{
				["name"] = "Divine Star",
				["icon"] = "Interface\\Icons\\spell_priest_divinestar",
			}, -- [17]
			{
				["name"] = "Halo",
				["icon"] = "Interface\\Icons\\ability_priest_halo",
			}, -- [18]
			{
				["name"] = "Clarity of Will",
				["icon"] = "Interface\\Icons\\ability_priest_clarityofwill",
			}, -- [19]
			{
				["name"] = "Words of Mending",
				["icon"] = "Interface\\Icons\\ability_priest_wordsofmeaning",
			}, -- [20]
			{
				["name"] = "Saving Grace",
				["icon"] = "Interface\\Icons\\ability_priest_savinggrace",
			}, -- [21]
		},
		["WARLOCK"] = {
			{
				["name"] = "Dark Regeneration",
				["icon"] = "Interface\\Icons\\spell_warlock_darkregeneration",
			}, -- [1]
			{
				["name"] = "Soul Leech",
				["icon"] = "Interface\\Icons\\warlock_siphonlife",
			}, -- [2]
			{
				["name"] = "Searing Flames",
				["icon"] = "Interface\\Icons\\inv_ember",
			}, -- [3]
			{
				["name"] = "Howl of Terror",
				["icon"] = "Interface\\Icons\\ability_warlock_howlofterror",
			}, -- [4]
			{
				["name"] = "Mortal Coil",
				["icon"] = "Interface\\Icons\\ability_warlock_mortalcoil",
			}, -- [5]
			{
				["name"] = "Shadowfury",
				["icon"] = "Interface\\Icons\\ability_warlock_shadowfurytga",
			}, -- [6]
			{
				["name"] = "Soul Link",
				["icon"] = "Interface\\Icons\\ability_warlock_soullink",
			}, -- [7]
			{
				["name"] = "Sacrificial Pact",
				["icon"] = "Interface\\Icons\\warlock_sacrificial_pact",
			}, -- [8]
			{
				["name"] = "Dark Bargain",
				["icon"] = "Interface\\Icons\\ability_deathwing_bloodcorruption_death",
			}, -- [9]
			{
				["name"] = "Blood Horror",
				["icon"] = "Interface\\Icons\\ability_deathwing_bloodcorruption_earth",
			}, -- [10]
			{
				["name"] = "Burning Rush",
				["icon"] = "Interface\\Icons\\ability_deathwing_sealarmorbreachtga",
			}, -- [11]
			{
				["name"] = "Unbound Will",
				["icon"] = "Interface\\Icons\\warlock_spelldrain",
			}, -- [12]
			{
				["name"] = "Grimoire of Supremacy",
				["icon"] = "Interface\\Icons\\warlock_grimoireofcommand",
			}, -- [13]
			{
				["name"] = "Grimoire of Service",
				["icon"] = "Interface\\Icons\\warlock_grimoireofservice",
			}, -- [14]
			{
				["name"] = "Grimoire of Sacrifice",
				["icon"] = "Interface\\Icons\\warlock_grimoireofsacrifice",
			}, -- [15]
			{
				["name"] = "Archimonde's Darkness",
				["icon"] = "Interface\\Icons\\Achievement_Boss_Archimonde ",
			}, -- [16]
			{
				["name"] = "Kil'jaeden's Cunning",
				["icon"] = "Interface\\Icons\\Achievement_Boss_Kiljaedan",
			}, -- [17]
			{
				["name"] = "Mannoroth's Fury",
				["icon"] = "Interface\\Icons\\Achievement_Boss_Magtheridon",
			}, -- [18]
			{
				["name"] = "Charred Remains",
				["icon"] = "Interface\\Icons\\warlock_charredremains",
			}, -- [19]
			{
				["name"] = "Cataclysm",
				["icon"] = "INTERFACE\\ICONS\\achievement_zone_cataclysm",
			}, -- [20]
			{
				["name"] = "Demonic Servitude",
				["icon"] = "Interface\\Icons\\spell_warlock_demonicservitude",
			}, -- [21]
		},
		["PALADIN"] = {
			{
				["name"] = "Speed of Light",
				["icon"] = "Interface\\Icons\\ability_paladin_speedoflight",
			}, -- [1]
			{
				["name"] = "Long Arm of the Law",
				["icon"] = "Interface\\Icons\\ability_paladin_longarmofthelaw",
			}, -- [2]
			{
				["name"] = "Pursuit of Justice",
				["icon"] = "Interface\\Icons\\ability_paladin_veneration",
			}, -- [3]
			{
				["name"] = "Fist of Justice",
				["icon"] = "Interface\\Icons\\Spell_Holy_FistOfJustice",
			}, -- [4]
			{
				["name"] = "Repentance",
				["icon"] = "Interface\\Icons\\Spell_Holy_PrayerOfHealing",
			}, -- [5]
			{
				["name"] = "Blinding Light",
				["icon"] = "Interface\\Icons\\ability_paladin_blindinglight",
			}, -- [6]
			{
				["name"] = "Selfless Healer",
				["icon"] = "Interface\\Icons\\Ability_Paladin_GaurdedbytheLight",
			}, -- [7]
			{
				["name"] = "Eternal Flame",
				["icon"] = "Interface\\Icons\\INV_Torch_Thrown",
			}, -- [8]
			{
				["name"] = "Sacred Shield",
				["icon"] = "Interface\\Icons\\Ability_Paladin_BlessedMending",
			}, -- [9]
			{
				["name"] = "Hand of Purity",
				["icon"] = "Interface\\Icons\\Spell_Holy_SealOfWisdom",
			}, -- [10]
			{
				["name"] = "Unbreakable Spirit",
				["icon"] = "Interface\\Icons\\spell_holy_unyieldingfaith",
			}, -- [11]
			{
				["name"] = "Clemency",
				["icon"] = "Interface\\Icons\\ability_paladin_clemency",
			}, -- [12]
			{
				["name"] = "Holy Avenger",
				["icon"] = "Interface\\Icons\\ability_paladin_holyavenger",
			}, -- [13]
			{
				["name"] = "Sanctified Wrath",
				["icon"] = "Interface\\Icons\\Ability_Paladin_SanctifiedWrath",
			}, -- [14]
			{
				["name"] = "Divine Purpose",
				["icon"] = "Interface\\Icons\\Spell_Holy_DivinePurpose",
			}, -- [15]
			{
				["name"] = "Holy Prism",
				["icon"] = "Interface\\Icons\\spell_paladin_holyprism",
			}, -- [16]
			{
				["name"] = "Light's Hammer",
				["icon"] = "Interface\\Icons\\spell_paladin_lightshammer",
			}, -- [17]
			{
				["name"] = "Execution Sentence",
				["icon"] = "Interface\\Icons\\spell_paladin_executionsentence",
			}, -- [18]
			{
				["name"] = "Empowered Seals",
				["icon"] = "Interface\\Icons\\ability_paladin_empoweredseals",
			}, -- [19]
			{
				["name"] = "Seraphim",
				["icon"] = "Interface\\Icons\\ability_paladin_seraphim",
			}, -- [20]
			{
				["name"] = "Holy Shield",
				["icon"] = "Interface\\Icons\\Spell_Holy_BlessingOfProtection",
			}, -- [21]
		},
		["DEATHKNIGHT"] = {
			{
				["name"] = "Plaguebearer",
				["icon"] = "Interface\\Icons\\Achievement_Zone_WesternPlaguelands_01",
			}, -- [1]
			{
				["name"] = "Plague Leech",
				["icon"] = "Interface\\Icons\\Ability_Creature_Disease_02",
			}, -- [2]
			{
				["name"] = "Unholy Blight",
				["icon"] = "Interface\\Icons\\Spell_Shadow_Contagion",
			}, -- [3]
			{
				["name"] = "Lichborne",
				["icon"] = "Interface\\Icons\\Spell_Shadow_RaiseDead",
			}, -- [4]
			{
				["name"] = "Anti-Magic Zone",
				["icon"] = "Interface\\Icons\\Spell_DeathKnight_AntiMagicZone",
			}, -- [5]
			{
				["name"] = "Purgatory",
				["icon"] = "Interface\\Icons\\INV_Misc_ShadowEgg",
			}, -- [6]
			{
				["name"] = "Death's Advance",
				["icon"] = "Interface\\Icons\\Spell_Shadow_DemonicEmpathy",
			}, -- [7]
			{
				["name"] = "Chilblains",
				["icon"] = "Interface\\Icons\\Spell_Frost_Wisp",
			}, -- [8]
			{
				["name"] = "Asphyxiate",
				["icon"] = "Interface\\Icons\\ability_deathknight_asphixiate",
			}, -- [9]
			{
				["name"] = "Blood Tap",
				["icon"] = "Interface\\Icons\\Spell_DeathKnight_BloodTap",
			}, -- [10]
			{
				["name"] = "Runic Empowerment",
				["icon"] = "Interface\\Icons\\INV_Misc_Rune_10",
			}, -- [11]
			{
				["name"] = "Runic Corruption",
				["icon"] = "INTERFACE\\ICONS\\spell_shadow_rune",
			}, -- [12]
			{
				["name"] = "Death Pact",
				["icon"] = "Interface\\Icons\\Spell_Shadow_DeathPact",
			}, -- [13]
			{
				["name"] = "Death Siphon",
				["icon"] = "Interface\\Icons\\ability_deathknight_deathsiphon",
			}, -- [14]
			{
				["name"] = "Conversion",
				["icon"] = "Interface\\Icons\\ability_deathknight_deathsiphon2",
			}, -- [15]
			{
				["name"] = "Gorefiend's Grasp",
				["icon"] = "Interface\\Icons\\ability_deathknight_aoedeathgrip",
			}, -- [16]
			{
				["name"] = "Remorseless Winter",
				["icon"] = "Interface\\Icons\\ability_deathknight_remorselesswinters2",
			}, -- [17]
			{
				["name"] = "Desecrated Ground",
				["icon"] = "Interface\\Icons\\ability_deathknight_desecratedground",
			}, -- [18]
			{
				["name"] = "Necrotic Plague",
				["icon"] = "Interface\\Icons\\spell_deathknight_necroticplague",
			}, -- [19]
			{
				["name"] = "Defile",
				["icon"] = "Interface\\Icons\\spell_deathknight_defile",
			}, -- [20]
			{
				["name"] = "Breath of Sindragosa",
				["icon"] = "Interface\\Icons\\spell_deathknight_breathofsindragosa",
			}, -- [21]
		},
		["DRUID"] = {
			{
				["name"] = "Feline Swiftness",
				["icon"] = "Interface\\Icons\\spell_druid_tirelesspursuit",
			}, -- [1]
			{
				["name"] = "Displacer Beast",
				["icon"] = "Interface\\Icons\\spell_druid_displacement",
			}, -- [2]
			{
				["name"] = "Wild Charge",
				["icon"] = "Interface\\Icons\\spell_druid_wildcharge",
			}, -- [3]
			{
				["name"] = "Ysera's Gift",
				["icon"] = "Interface\\Icons\\INV_Misc_Head_Dragon_Green",
			}, -- [4]
			{
				["name"] = "Renewal",
				["icon"] = "Interface\\Icons\\Spell_Nature_NatureBlessing",
			}, -- [5]
			{
				["name"] = "Cenarion Ward",
				["icon"] = "Interface\\Icons\\Ability_Druid_NaturalPerfection",
			}, -- [6]
			{
				["name"] = "Faerie Swarm",
				["icon"] = "Interface\\Icons\\spell_druid_swarm",
			}, -- [7]
			{
				["name"] = "Mass Entanglement",
				["icon"] = "Interface\\Icons\\spell_druid_massentanglement",
			}, -- [8]
			{
				["name"] = "Typhoon",
				["icon"] = "Interface\\Icons\\Ability_Druid_Typhoon",
			}, -- [9]
			{
				["name"] = "Soul of the Forest",
				["icon"] = "Interface\\Icons\\Ability_Druid_ManaTree",
			}, -- [10]
			{
				["name"] = "Incarnation: King of the Jungle",
				["icon"] = "Interface\\Icons\\spell_druid_incarnation",
			}, -- [11]
			{
				["name"] = "Force of Nature",
				["icon"] = "Interface\\Icons\\Ability_Druid_ForceofNature",
			}, -- [12]
			{
				["name"] = "Incapacitating Roar",
				["icon"] = "Interface\\Icons\\Ability_Druid_DemoralizingRoar",
			}, -- [13]
			{
				["name"] = "Ursol's Vortex",
				["icon"] = "Interface\\Icons\\spell_druid_ursolsvortex",
			}, -- [14]
			{
				["name"] = "Mighty Bash",
				["icon"] = "Interface\\Icons\\Ability_Druid_Bash",
			}, -- [15]
			{
				["name"] = "Heart of the Wild",
				["icon"] = "Interface\\Icons\\Spell_Holy_BlessingOfAgility",
			}, -- [16]
			{
				["name"] = "Dream of Cenarius",
				["icon"] = "Interface\\Icons\\Ability_Druid_Dreamstate",
			}, -- [17]
			{
				["name"] = "Nature's Vigil",
				["icon"] = "Interface\\Icons\\Achievement_Zone_Feralas",
			}, -- [18]
			{
				["name"] = "Lunar Inspiration",
				["icon"] = "Interface\\Icons\\spell_druid_lunarinspiration",
			}, -- [19]
			{
				["name"] = "Bloodtalons",
				["icon"] = "Interface\\Icons\\spell_druid_bloodythrash",
			}, -- [20]
			{
				["name"] = "Claws of Shirvallah",
				["icon"] = "Interface\\Icons\\talentspec_druid_feral_cat",
			}, -- [21]
		},
		["MONK"] = {
			{
				["name"] = "Celerity",
				["icon"] = "Interface\\Icons\\ability_monk_quipunch",
			}, -- [1]
			{
				["name"] = "Tiger's Lust",
				["icon"] = "Interface\\Icons\\ability_monk_tigerslust",
			}, -- [2]
			{
				["name"] = "Momentum",
				["icon"] = "Interface\\Icons\\ability_monk_standingkick",
			}, -- [3]
			{
				["name"] = "Chi Wave",
				["icon"] = "Interface\\Icons\\ability_monk_chiwave",
			}, -- [4]
			{
				["name"] = "Zen Sphere",
				["icon"] = "Interface\\Icons\\ability_monk_forcesphere",
			}, -- [5]
			{
				["name"] = "Chi Burst",
				["icon"] = "Interface\\Icons\\Spell_Arcane_ArcaneTorrent",
			}, -- [6]
			{
				["name"] = "Power Strikes",
				["icon"] = "Interface\\Icons\\ability_monk_powerstrikes",
			}, -- [7]
			{
				["name"] = "Ascension",
				["icon"] = "Interface\\Icons\\ability_monk_ascension",
			}, -- [8]
			{
				["name"] = "Chi Brew",
				["icon"] = "Interface\\Icons\\ability_monk_chibrew",
			}, -- [9]
			{
				["name"] = "Ring of Peace",
				["icon"] = "Interface\\Icons\\spell_monk_ringofpeace",
			}, -- [10]
			{
				["name"] = "Charging Ox Wave",
				["icon"] = "Interface\\Icons\\ability_monk_chargingoxwave",
			}, -- [11]
			{
				["name"] = "Leg Sweep",
				["icon"] = "Interface\\Icons\\ability_monk_legsweep",
			}, -- [12]
			{
				["name"] = "Healing Elixirs",
				["icon"] = "Interface\\Icons\\ability_monk_jasmineforcetea",
			}, -- [13]
			{
				["name"] = "Dampen Harm",
				["icon"] = "Interface\\Icons\\ability_monk_dampenharm",
			}, -- [14]
			{
				["name"] = "Diffuse Magic",
				["icon"] = "Interface\\Icons\\spell_monk_diffusemagic",
			}, -- [15]
			{
				["name"] = "Rushing Jade Wind",
				["icon"] = "Interface\\Icons\\ability_monk_rushingjadewind",
			}, -- [16]
			{
				["name"] = "Invoke Xuen, the White Tiger",
				["icon"] = "Interface\\Icons\\ability_monk_summontigerstatue",
			}, -- [17]
			{
				["name"] = "Chi Torpedo",
				["icon"] = "Interface\\Icons\\ability_monk_quitornado",
			}, -- [18]
			{
				["name"] = "Soul Dance",
				["icon"] = "Interface\\Icons\\ability_monk_souldance",
			}, -- [19]
			{
				["name"] = "Chi Explosion",
				["icon"] = "Interface\\Icons\\ability_monk_chiexplosion",
			}, -- [20]
			{
				["name"] = "Serenity",
				["icon"] = "Interface\\Icons\\ability_monk_serenity",
			}, -- [21]
		},
		["SHAMAN"] = {
			{
				["name"] = "Nature's Guardian",
				["icon"] = "Interface\\Icons\\Spell_Nature_NatureGuardian",
			}, -- [1]
			{
				["name"] = "Stone Bulwark Totem",
				["icon"] = "Interface\\Icons\\ability_shaman_stonebulwark",
			}, -- [2]
			{
				["name"] = "Astral Shift",
				["icon"] = "Interface\\Icons\\ability_shaman_astralshift",
			}, -- [3]
			{
				["name"] = "Frozen Power",
				["icon"] = "Interface\\Icons\\Spell_Fire_BlueCano",
			}, -- [4]
			{
				["name"] = "Earthgrab Totem",
				["icon"] = "Interface\\Icons\\Spell_Nature_StrangleVines",
			}, -- [5]
			{
				["name"] = "Windwalk Totem",
				["icon"] = "Interface\\Icons\\ability_shaman_windwalktotem",
			}, -- [6]
			{
				["name"] = "Call of the Elements",
				["icon"] = "Interface\\Icons\\ability_shaman_multitotemactivation",
			}, -- [7]
			{
				["name"] = "Totemic Persistence",
				["icon"] = "Interface\\Icons\\ability_shaman_totemcooldownrefund",
			}, -- [8]
			{
				["name"] = "Totemic Projection",
				["icon"] = "Interface\\Icons\\ability_shaman_totemrelocation",
			}, -- [9]
			{
				["name"] = "Elemental Mastery",
				["icon"] = "Interface\\Icons\\Spell_Nature_WispHeal",
			}, -- [10]
			{
				["name"] = "Ancestral Swiftness",
				["icon"] = "Interface\\Icons\\Spell_Shaman_ElementalOath",
			}, -- [11]
			{
				["name"] = "Echo of the Elements",
				["icon"] = "Interface\\Icons\\ability_shaman_echooftheelements",
			}, -- [12]
			{
				["name"] = "Rushing Streams",
				["icon"] = "Interface\\Icons\\INV_Spear_04",
			}, -- [13]
			{
				["name"] = "Ancestral Guidance",
				["icon"] = "Interface\\Icons\\ability_shaman_ancestralguidance",
			}, -- [14]
			{
				["name"] = "Conductivity",
				["icon"] = "Interface\\Icons\\ability_shaman_fortifyingwaters",
			}, -- [15]
			{
				["name"] = "Unleashed Fury",
				["icon"] = "Interface\\Icons\\shaman_talent_unleashedfury",
			}, -- [16]
			{
				["name"] = "Primal Elementalist",
				["icon"] = "Interface\\Icons\\shaman_talent_primalelementalist",
			}, -- [17]
			{
				["name"] = "Elemental Blast",
				["icon"] = "Interface\\Icons\\shaman_talent_elementalblast",
			}, -- [18]
			{
				["name"] = "Elemental Fusion",
				["icon"] = "Interface\\Icons\\spell_shaman_shockinglava",
			}, -- [19]
			{
				["name"] = "Storm Elemental Totem",
				["icon"] = "Interface\\Icons\\spell_shaman_stormtotem",
			}, -- [20]
			{
				["name"] = "Liquid Magma",
				["icon"] = "Interface\\Icons\\spell_shaman_spewlava",
			}, -- [21]
		},
	},
}
