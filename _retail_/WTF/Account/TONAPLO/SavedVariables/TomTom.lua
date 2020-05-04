
TomTomDB = {
	["profileKeys"] = {
		["Mallusof - Silvermoon"] = "Default",
		["Kindhoof - Ragnaros"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["arrow"] = {
				["position"] = {
					"RIGHT", -- [1]
					nil, -- [2]
					"RIGHT", -- [3]
					-406.0007934570313, -- [4]
					-31.0001163482666, -- [5]
				},
			},
			["block"] = {
				["position"] = {
					"RIGHT", -- [1]
					nil, -- [2]
					"RIGHT", -- [3]
					-386.0006408691406, -- [4]
					-122.0000915527344, -- [5]
				},
			},
		},
	},
}
TomTomWaypoints = nil
TomTomWaypointsM = {
	["profileKeys"] = {
		["Mallusof - Silvermoon"] = "Mallusof - Silvermoon",
		["Kindhoof - Ragnaros"] = "Kindhoof - Ragnaros",
	},
	["profiles"] = {
		["Mallusof - Silvermoon"] = {
			[862] = {
				["862:677700000:288300000:Thunderfoot"] = {
					862, -- [1]
					0.6777, -- [2]
					0.2883, -- [3]
					["arrivaldistance"] = 15,
					["crazy"] = true,
					["persistent"] = true,
					["desc"] = "Thunderfoot",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Thunderfoot",
					["from"] = "TomTom/way",
					["callbacks"] = {
						["distance"] = {
							[10] = nil --[[ skipped inline function ]],
							[15] = nil --[[ skipped inline function ]],
						},
						["world"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
						["minimap"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
					},
					["minimap"] = true,
					["world"] = true,
				},
			},
		},
		["Kindhoof - Ragnaros"] = {
		},
	},
}
