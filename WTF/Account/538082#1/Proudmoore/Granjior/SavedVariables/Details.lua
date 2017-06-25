
_detalhes_database = {
	["announce_interrupts"] = {
		["enabled"] = false,
		["whisper"] = "",
		["channel"] = "SAY",
		["custom"] = "",
		["next"] = "",
	},
	["announce_prepots"] = {
		["enabled"] = true,
		["channel"] = "SELF",
		["reverse"] = false,
	},
	["active_profile"] = "Base",
	["last_realversion"] = 121,
	["ignore_nicktag"] = false,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["last_day"] = "25",
	["combat_counter"] = 654,
	["plugin_database"] = {
		["DETAILS_PLUGIN_DAMAGE_RANK"] = {
			["lasttry"] = {
			},
			["annouce"] = true,
			["dpshistory"] = {
			},
			["author"] = "Details! Team",
			["dps"] = 0,
			["level"] = 1,
			["enabled"] = true,
		},
		["DETAILS_PLUGIN_DEATH_GRAPHICS"] = {
			["last_boss"] = false,
			["v1"] = true,
			["captures"] = {
				false, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
			},
			["first_run"] = false,
			["endurance_threshold"] = 3,
			["max_deaths_for_timeline"] = 5,
			["deaths_threshold"] = 10,
			["show_icon"] = 1,
			["max_segments_for_current"] = 2,
			["max_deaths_for_current"] = 15,
			["last_player"] = false,
			["InstalledAt"] = 1486615378,
			["last_encounter_hash"] = false,
			["showing_type"] = 4,
			["timeline_cutoff_time"] = 3,
			["last_segment"] = false,
			["last_combat_id"] = 465,
			["timeline_cutoff_delete_time"] = 3,
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["max_emote_segments"] = 3,
			["author"] = "Details! Team",
			["window_scale"] = 1,
			["hide_on_combat"] = false,
			["show_icon"] = 5,
			["opened"] = 0,
			["encounter_timers_dbm"] = {
			},
		},
		["DETAILS_PLUGIN_CHART_VIEWER"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["tabs"] = {
				{
					["name"] = "Your Damage",
					["segment_type"] = 2,
					["version"] = "v2.0",
					["data"] = "Player Damage Done",
					["texture"] = "line",
				}, -- [1]
				{
					["iType"] = "raid-HEALER",
					["version"] = "v2.0",
					["options"] = {
						["iType"] = "raid-HEALER",
						["name"] = "Raid Healing Done",
					},
					["segment_type"] = 1,
					["name"] = "Raid Healing Done",
					["data"] = "PRESET_RAID_HEAL",
					["texture"] = "line",
				}, -- [2]
				{
					["iType"] = "raid-HEALER",
					["version"] = "v2.0",
					["options"] = {
						["iType"] = "raid-HEALER",
						["name"] = "Healing (Same Class)",
					},
					["segment_type"] = 1,
					["name"] = "Healing (Same Class)",
					["data"] = "PRESET_HEAL_SAME_CLASS",
					["texture"] = "line",
				}, -- [3]
				{
					["iType"] = "raid-HEALER",
					["version"] = "v2.0",
					["options"] = {
						["iType"] = "raid-HEALER",
						["name"] = "All Healers",
					},
					["segment_type"] = 1,
					["name"] = "All Healers",
					["data"] = "PRESET_ALL_HEALERS",
					["texture"] = "line",
				}, -- [4]
				{
					["version"] = "v2.0",
					["iType"] = "raid-TANK",
					["options"] = {
						["iType"] = "raid-TANK",
						["name"] = "Tanks Damage Taken",
					},
					["segment_type"] = 1,
					["name"] = "Tanks Damage Taken",
					["data"] = "PRESET_TANK_TAKEN",
					["texture"] = "line",
				}, -- [5]
				["last_selected"] = 5,
			},
			["options"] = {
				["auto_create"] = true,
				["show_method"] = 4,
				["window_scale"] = 1,
			},
		},
		["DETAILS_PLUGIN_TINY_THREAT"] = {
			["updatespeed"] = 1,
			["showamount"] = false,
			["animate"] = false,
			["useplayercolor"] = false,
			["useclasscolors"] = false,
			["author"] = "Details! Team",
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["enabled"] = true,
		},
		["DETAILS_PLUGIN_DPS_TUNING"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["SpellBarsShowType"] = 1,
		},
		["DETAILS_PLUGIN_RAIDCHECK"] = {
			["enabled"] = true,
			["food_tier1"] = true,
			["mythic_1_4"] = true,
			["food_tier2"] = true,
			["author"] = "Details! Team",
			["use_report_panel"] = true,
			["pre_pot_healers"] = false,
			["pre_pot_tanks"] = false,
			["food_tier3"] = true,
		},
		["DETAILS_PLUGIN_VANGUARD"] = {
			["enabled"] = true,
			["tank_block_texture"] = "Details Serenity",
			["tank_block_color"] = {
				0.24705882, -- [1]
				0.0039215, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["show_inc_bars"] = false,
			["author"] = "Details! Team",
			["first_run"] = false,
			["tank_block_size"] = 150,
		},
		["DETAILS_PLUGIN_RAID_POWER_BARS"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_TIME_ATTACK"] = {
			["enabled"] = true,
			["realm_last_shown"] = 40,
			["saved_as_anonymous"] = true,
			["recently_as_anonymous"] = true,
			["dps"] = 0,
			["disable_sharing"] = false,
			["history"] = {
			},
			["time"] = 40,
			["history_lastindex"] = 0,
			["realm_lastamt"] = 0,
			["realm_history"] = {
			},
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_STREAM_OVERLAY"] = {
			["font_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["is_first_run"] = false,
			["arrow_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["main_frame_size"] = {
				300.000091552734, -- [1]
				500.000030517578, -- [2]
			},
			["minimap"] = {
				["minimapPos"] = 257.197959678567,
				["radius"] = 160,
				["hide"] = false,
			},
			["arrow_anchor_x"] = 0,
			["row_texture"] = "Details Serenity",
			["scale"] = 1,
			["row_height"] = 20,
			["point"] = "CENTER",
			["enabled"] = false,
			["arrow_size"] = 10,
			["main_frame_strata"] = "LOW",
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["author"] = "Details! Team",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["use_spark"] = true,
			["y"] = 1.525878906250e-005,
			["x"] = 3.05175781250e-005,
			["font_face"] = "Friz Quadrata TT",
			["font_size"] = 10,
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = 0,
				["x"] = 0,
				["size"] = 32,
				["update_speed"] = 0.05,
				["attribute_type"] = 1,
			},
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["main_frame_locked"] = false,
			["arrow_anchor_y"] = 0,
		},
		["DETAILS_PLUGIN_TIME_LINE"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
	},
	["character_data"] = {
		["logons"] = 39,
	},
	["force_font_outline"] = "",
	["nick_tag_cache"] = {
		["nextreset"] = 1499671276,
		["last_version"] = 8,
	},
	["SoloTablesSaved"] = {
		["LastSelected"] = "DETAILS_PLUGIN_DAMAGE_RANK",
		["Mode"] = 1,
	},
	["tabela_instancias"] = {
	},
	["combat_id"] = 535,
	["savedStyles"] = {
	},
	["last_instance_time"] = 1493959932,
	["last_version"] = "v7.2.5.4132",
	["announce_deaths"] = {
		["enabled"] = false,
		["last_hits"] = 1,
		["only_first"] = 5,
		["where"] = 1,
	},
	["tabela_overall"] = {
		{
			["tipo"] = 2,
			["_ActorTable"] = {
			},
		}, -- [1]
		{
			["tipo"] = 3,
			["_ActorTable"] = {
			},
		}, -- [2]
		{
			["tipo"] = 7,
			["_ActorTable"] = {
			},
		}, -- [3]
		{
			["tipo"] = 9,
			["_ActorTable"] = {
			},
		}, -- [4]
		{
			["tipo"] = 2,
			["_ActorTable"] = {
			},
		}, -- [5]
		["raid_roster"] = {
		},
		["last_events_tables"] = {
		},
		["alternate_power"] = {
		},
		["combat_counter"] = 652,
		["totals"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				["alternatepower"] = 0,
				[3] = 0,
				[6] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 0,
				["dispell"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
			["frags_total"] = 0,
			["voidzone_damage"] = 0,
		},
		["player_last_events"] = {
		},
		["frags_need_refresh"] = false,
		["__call"] = {
		},
		["data_inicio"] = 0,
		["end_time"] = 60248.22,
		["frags"] = {
		},
		["data_fim"] = 0,
		["CombatSkillCache"] = {
		},
		["totals_grupo"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				["alternatepower"] = 0,
				[3] = 0,
				[6] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 0,
				["dispell"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
		},
		["start_time"] = 60248.22,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
		},
		["PhaseData"] = {
			{
				1, -- [1]
				1, -- [2]
			}, -- [1]
			["heal_section"] = {
			},
			["heal"] = {
			},
			["damage_section"] = {
			},
			["damage"] = {
			},
		},
	},
	["cached_talents"] = {
		["Player-5-0A1AA198"] = {
			22484, -- [1]
			22591, -- [2]
			22319, -- [3]
			22186, -- [4]
			22896, -- [5]
			22175, -- [6]
			22182, -- [7]
		},
	},
	["local_instances_config"] = {
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["is_open"] = true,
			["isLocked"] = false,
			["snap"] = {
				[3] = 2,
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -417.423324584961,
					["x"] = 541.614440917969,
					["w"] = 276.749603271484,
					["h"] = 161.113494873047,
				},
				["solo"] = {
					["y"] = -347.977981567383,
					["x"] = 528.014831542969,
					["w"] = 300.000122070313,
					["h"] = 300,
				},
			},
		}, -- [1]
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["is_open"] = true,
			["isLocked"] = false,
			["snap"] = {
				1, -- [1]
			},
			["mode"] = 2,
			["attribute"] = 2,
			["pos"] = {
				["normal"] = {
					["y"] = -417.423324584961,
					["x"] = 816.452453613281,
					["w"] = 272.926727294922,
					["h"] = 161.113494873047,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [2]
	},
	["savedbuffs"] = {
	},
	["announce_cooldowns"] = {
		["enabled"] = false,
		["ignored_cooldowns"] = {
		},
		["custom"] = "",
		["channel"] = "RAID",
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["last_instance_id"] = 1544,
	["cached_specs"] = {
		["Player-5-0A1AA198"] = 70,
	},
}
