function qq_generate_wc_generator_settings(nplayers)
	wesnoth.dofile('campaigns/World_Conquest/lua/map/main.lua')
	local prestart_event = { name = "prestart" }
	local scenario = {
		event = {
			prestart_event
		},
		variables = {
			wc2_scenario = 1,
			wc2_player_count = nplayers / 2,
		},
		id = 'qquws_conquer',
		turns = 32,
	}

	-- local types = { "classic", "clayey", "coral", "delta", "feudal", "industrial", "maritime", "paradise", "podzol", "provinces", "savannah", "sulfurous", "wetland", "wicked", "wild", "wreck" }
	local types = { "classic", "savannah", "wetland" }
	local type = types[mathx.random(#types)]

	local postgenerators = {
		["classic"] = "1a",
		["clayey"] = "2f",
		["coral"] = "3e",
		["delta"] = "3c",
		["feudal"] = "6d",
		["industrial"] = "6c",
		["maritime"] = "6b",
		["paradise"] = "2e",
		["podzol"] = "4d",
		["provinces"] = "2d",
		["savannah"] = "3a",
		["sulfurous"] = "3d",
		["wetland"] = "3f",
		["wicked"] = "4e",
		["wild"] = "4f",
		["wreck"] = "3b"
	}

	local postgenerator = postgenerators[type]
	local map_length = 36
	local villages = mathx.random(16, 22)
	local castles = mathx.random(4, 8)
	local iterations = map_length * mathx.random(72, 360)
	local hill_size = mathx.random(1, 7)
	local islands = 8 - hill_size

	local mapgen_func = wct_map_generator(type, postgenerator, map_length, villages, castles, iterations, hill_size, nplayers, islands)
	mapgen_func(scenario, nplayers)
	return scenario.map_data
end

