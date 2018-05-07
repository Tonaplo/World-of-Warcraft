
_detalhes_database = {
	["savedbuffs"] = {
	},
	["mythic_dungeon_id"] = 7,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["last_version"] = "v7.3.5.5572",
	["SoloTablesSaved"] = {
		["LastSelected"] = "DETAILS_PLUGIN_DAMAGE_RANK",
		["Mode"] = 1,
	},
	["tabela_instancias"] = {
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
				5, -- [4]
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
					["y"] = -408.537414550781,
					["x"] = 529.279235839844,
					["w"] = 285.462463378906,
					["h"] = 173.649276733398,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
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
					["y"] = -408.537414550781,
					["x"] = 814.741882324219,
					["w"] = 285.462615966797,
					["h"] = 173.649276733398,
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
	["nick_tag_cache"] = {
		["nextreset"] = 1526845470,
		["last_version"] = 10,
	},
	["last_instance_id"] = 1492,
	["announce_interrupts"] = {
		["enabled"] = false,
		["whisper"] = "",
		["channel"] = "SAY",
		["custom"] = "",
		["next"] = "",
	},
	["last_instance_time"] = 1520108219,
	["active_profile"] = "Base",
	["last_day"] = "05",
	["benchmark_db"] = {
		["frame"] = {
		},
	},
	["plugin_database"] = {
		["DETAILS_PLUGIN_DAMAGE_RANK"] = {
			["lasttry"] = {
			},
			["annouce"] = true,
			["dpshistory"] = {
			},
			["enabled"] = true,
			["author"] = "Details! Team",
			["level"] = 1,
			["dps"] = 0,
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
			["first_run"] = true,
			["endurance_threshold"] = 3,
			["max_deaths_for_timeline"] = 5,
			["deaths_threshold"] = 10,
			["show_icon"] = 1,
			["max_segments_for_current"] = 2,
			["max_deaths_for_current"] = 15,
			["last_player"] = false,
			["author"] = "Details! Team",
			["last_encounter_hash"] = false,
			["enabled"] = true,
			["timeline_cutoff_time"] = 3,
			["last_segment"] = false,
			["last_combat_id"] = 1280,
			["timeline_cutoff_delete_time"] = 3,
			["showing_type"] = 4,
			["InstalledAt"] = 1486615378,
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["max_emote_segments"] = 3,
			["author"] = "Details! Team",
			["window_scale"] = 1,
			["encounter_timers_dbm"] = {
			},
			["show_icon"] = 5,
			["opened"] = 0,
			["hide_on_combat"] = false,
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
					["version"] = "v2.0",
					["iType"] = "raid-HEALER",
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
					["version"] = "v2.0",
					["iType"] = "raid-HEALER",
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
					["version"] = "v2.0",
					["iType"] = "raid-HEALER",
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
					["iType"] = "raid-TANK",
					["version"] = "v2.0",
					["options"] = {
						["iType"] = "raid-TANK",
						["name"] = "Tanks Damage Taken",
					},
					["segment_type"] = 1,
					["name"] = "Tanks Damage Taken",
					["data"] = "PRESET_TANK_TAKEN",
					["texture"] = "line",
				}, -- [5]
				{
					["iType"] = "raid-DAMAGER",
					["version"] = "v2.0",
					["options"] = {
						["iType"] = "raid-DAMAGER",
						["name"] = "Damager (Same Class)",
					},
					["segment_type"] = 1,
					["name"] = "Damager (Same Class)",
					["data"] = "PRESET_DAMAGE_SAME_CLASS",
					["texture"] = "line",
				}, -- [6]
				["last_selected"] = 6,
			},
			["options"] = {
				["show_method"] = 4,
				["auto_create"] = true,
				["window_scale"] = 1,
			},
		},
		["DETAILS_PLUGIN_TINY_THREAT"] = {
			["updatespeed"] = 1,
			["enabled"] = true,
			["showamount"] = false,
			["useplayercolor"] = false,
			["author"] = "Details! Team",
			["useclasscolors"] = false,
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["animate"] = false,
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
			["tank_block_color"] = {
				0.24705882, -- [1]
				0.0039215, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["tank_block_texture"] = "Details Serenity",
			["show_inc_bars"] = false,
			["author"] = "Details! Team",
			["first_run"] = false,
			["tank_block_size"] = 150,
		},
		["DETAILS_PLUGIN_RAID_POWER_BARS"] = {
			["enabled"] = true,
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
				400, -- [1]
				225.000045776367, -- [2]
			},
			["minimap"] = {
				["minimapPos"] = 208.244805703662,
				["radius"] = 160,
				["hide"] = false,
			},
			["arrow_anchor_x"] = 0,
			["row_texture"] = "Empty",
			["arrow_anchor_y"] = 0,
			["main_frame_locked"] = true,
			["main_frame_strata"] = "LOW",
			["enabled"] = true,
			["arrow_size"] = 10,
			["use_spark"] = false,
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["author"] = "Details! Team",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["y"] = -20.15869140625,
			["per_second"] = {
				["enabled"] = true,
				["point"] = "LEFT",
				["scale"] = 1,
				["font_shadow"] = false,
				["y"] = 182.153472900391,
				["x"] = 2.65877819061279,
				["attribute_type"] = 1,
				["update_speed"] = 0.304000020027161,
				["size"] = 32,
			},
			["x"] = 0,
			["font_face"] = "Prototype",
			["font_size"] = 14,
			["row_color"] = {
				0.101960784313725, -- [1]
				0.101960784313725, -- [2]
				0.101960784313725, -- [3]
				0.400000035762787, -- [4]
			},
			["point"] = "TOPLEFT",
			["row_height"] = 21,
			["scale"] = 1,
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
			["author"] = "Details! Team",
			["realm_history"] = {
			},
			["realm_lastamt"] = 0,
		},
		["DETAILS_PLUGIN_TIME_LINE"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
	},
	["ignore_nicktag"] = false,
	["last_encounter"] = "The Defense of Eonar",
	["mythic_dungeon_currentsaved"] = {
		["dungeon_name"] = "Maw of Souls",
		["started"] = false,
		["segment_id"] = 4,
		["ej_id"] = 727,
		["started_at"] = 1520108283.7,
		["run_id"] = 7,
		["level"] = 15,
		["dungeon_zone_id"] = 1492,
		["previous_boss_killed_at"] = 1520109191,
	},
	["cached_talents"] = {
		["Player-5-0A1AA198"] = {
			22590, -- [1]
			22591, -- [2]
			22186, -- [3]
			22593, -- [4]
			22483, -- [5]
			21811, -- [6]
			22182, -- [7]
		},
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["combat_id"] = 1280,
	["savedStyles"] = {
	},
	["force_font_outline"] = "",
	["character_data"] = {
		["logons"] = 180,
	},
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
		["combat_counter"] = 1692,
		["totals"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				["alternatepower"] = 0,
				[6] = 0,
				[3] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["dead"] = 0,
				["cc_break"] = 0,
				["interrupt"] = 0,
				["debuff_uptime"] = 0,
				["dispell"] = 0,
				["cooldowns_defensive"] = 0,
			}, -- [4]
			["voidzone_damage"] = 0,
			["frags_total"] = 0,
		},
		["player_last_events"] = {
		},
		["frags_need_refresh"] = false,
		["__call"] = {
		},
		["data_inicio"] = 0,
		["end_time"] = 12268.176,
		["hasSaved"] = true,
		["frags"] = {
		},
		["data_fim"] = 0,
		["overall_refreshed"] = true,
		["CombatSkillCache"] = {
		},
		["PhaseData"] = {
			{
				1, -- [1]
				1, -- [2]
			}, -- [1]
			["damage"] = {
			},
			["heal_section"] = {
			},
			["heal"] = {
			},
			["damage_section"] = {
			},
		},
		["start_time"] = 12268.176,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
		},
		["totals_grupo"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				["alternatepower"] = 0,
				[6] = 0,
				[3] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["dead"] = 0,
				["cc_break"] = 0,
				["interrupt"] = 0,
				["debuff_uptime"] = 0,
				["dispell"] = 0,
				["cooldowns_defensive"] = 0,
			}, -- [4]
		},
	},
	["last_realversion"] = 130,
	["announce_prepots"] = {
		["enabled"] = true,
		["channel"] = "SELF",
		["reverse"] = false,
	},
	["combat_counter"] = 1700,
	["announce_cooldowns"] = {
		["ignored_cooldowns"] = {
		},
		["enabled"] = false,
		["custom"] = "",
		["channel"] = "RAID",
	},
	["rank_window"] = {
		["last_difficulty"] = 15,
		["last_raid"] = "",
	},
	["announce_damagerecord"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["cached_specs"] = {
		["Player-5-0A1AA198"] = 70,
	},
}
