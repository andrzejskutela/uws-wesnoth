local generate_conquest_events = {
	["diff_1"] = {
		{ ['turn'] = 1, ['e'] = 'set_recruit_list', ['r_lvls'] = '0,0,0' },
		{ ['turn'] = 4, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,1' },
		{ ['turn'] = 11, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 12, ['e'] = 'generate_strong_spawn', ['value'] = 40 },
		{ ['turn'] = 15, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,2,2' },
		{ ['turn'] = 17, ['e'] = 'set_village_income', ['new_income'] = 4 },
		{ ['turn'] = 18, ['e'] = 'schedule_weather_change', ['severity'] = 1 },
		{ ['turn'] = 19, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,2' },
		{ ['turn'] = 21, ['e'] = 'generate_strong_spawn', ['value'] = 50 },
		{ ['turn'] = 23, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 24, ['e'] = 'set_village_income', ['new_income'] = 5 },
	},
	["diff_2"] = {
		{ ['turn'] = 1, ['e'] = 'set_recruit_list', ['r_lvls'] = '0,0,0' },
		{ ['turn'] = 3, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,1' },
		{ ['turn'] = 8, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 9, ['e'] = 'generate_strong_spawn', ['value'] = 25 },
		{ ['turn'] = 12, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 14, ['e'] = 'schedule_weather_change', ['severity'] = 1 },
		{ ['turn'] = 14, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,2' },
		{ ['turn'] = 14, ['e'] = 'set_village_income', ['new_income'] = 4 },
		{ ['turn'] = 17, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,2' },
		{ ['turn'] = 18, ['e'] = 'generate_strong_spawn', ['value'] = 60 },
		{ ['turn'] = 19, ['e'] = 'schedule_weather_change', ['severity'] = 2 },
		{ ['turn'] = 20, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 23, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,3,3' },
		{ ['turn'] = 24, ['e'] = 'set_village_income', ['new_income'] = 5 },
		{ ['turn'] = 26, ['e'] = 'generate_strong_spawn', ['value'] = 30 },
		{ ['turn'] = 27, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
	},
	["diff_3"] = {
		{ ['turn'] = 1, ['e'] = 'set_recruit_list', ['r_lvls'] = '0,0,0' },
		{ ['turn'] = 2, ['e'] = 'generate_strong_spawn', ['value'] = 20 },
		{ ['turn'] = 3, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,1' },
		{ ['turn'] = 7, ['e'] = 'schedule_weather_change', ['severity'] = 2 },
		{ ['turn'] = 7, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 9, ['e'] = 'generate_strong_spawn', ['value'] = 40 },
		{ ['turn'] = 11, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,2,2' },
		{ ['turn'] = 12, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 14, ['e'] = 'set_village_income', ['new_income'] = 5 },
		{ ['turn'] = 16, ['e'] = 'generate_strong_spawn', ['value'] = 50 },
		{ ['turn'] = 16, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 17, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,2' },
		{ ['turn'] = 19, ['e'] = 'schedule_weather_change', ['severity'] = 3 },
		{ ['turn'] = 20, ['e'] = 'generate_strong_spawn', ['value'] = 60 },
		{ ['turn'] = 22, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,3,3' },
		{ ['turn'] = 24, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 28, ['e'] = 'set_village_income', ['new_income'] = 7 },
		{ ['turn'] = 28, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 28, ['e'] = 'set_recruit_list', ['r_lvls'] = '3,3,3,3' },
		{ ['turn'] = 28, ['e'] = 'generate_strong_spawn', ['value'] = 70 },
	},
	["diff_4"] = {
		{ ['turn'] = 1, ['e'] = 'set_recruit_list', ['r_lvls'] = '0,0,0' },
		{ ['turn'] = 2, ['e'] = 'generate_strong_spawn', ['value'] = 40 },
		{ ['turn'] = 3, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,1' },
		{ ['turn'] = 6, ['e'] = 'schedule_weather_change', ['severity'] = 2 },
		{ ['turn'] = 7, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 9, ['e'] = 'generate_strong_spawn', ['value'] = 40 },
		{ ['turn'] = 11, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,2,2' },
		{ ['turn'] = 12, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 14, ['e'] = 'set_village_income', ['new_income'] = 5 },
		{ ['turn'] = 16, ['e'] = 'generate_strong_spawn', ['value'] = 50 },
		{ ['turn'] = 16, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 17, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,2' },
		{ ['turn'] = 17, ['e'] = 'schedule_weather_change', ['severity'] = 3 },
		{ ['turn'] = 19, ['e'] = 'generate_strong_spawn', ['value'] = 60 },
		{ ['turn'] = 22, ['e'] = 'set_recruit_list', ['r_lvls'] = '3,3,3,3' },
		{ ['turn'] = 23, ['e'] = 'schedule_weather_change', ['severity'] = 1 },
		{ ['turn'] = 24, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 25, ['e'] = 'set_village_income', ['new_income'] = 7 },
		{ ['turn'] = 25, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 26, ['e'] = 'schedule_weather_change', ['severity'] = 1 },
		{ ['turn'] = 27, ['e'] = 'set_recruit_list', ['r_lvls'] = '4,4,5,5' },
		{ ['turn'] = 28, ['e'] = 'generate_strong_spawn', ['value'] = 70 },
		{ ['turn'] = 29, ['e'] = 'set_village_income', ['new_income'] = 9 },
	},
}

function wesnoth.wml_actions.qquws_generate_conquest_event_list(cfg)
	local difficulty = cfg.difficulty
	wml.array_access.set("conquest_events", generate_conquest_events['diff_' .. tostring(difficulty)])
end

function wesnoth.wml_actions.qquws_generate_new_recruit_list(cfg)
	local recruit_lvls = cfg.levels
	local list = {}
	local unit_level = 0
	local available_units = {}
	for lvl_str in string.gmatch(recruit_lvls, '([^,]+)') do
		unit_level = tonumber(lvl_str)
		if not available_units[unit_level] then
			available_units[unit_level] = wml.variables['random_pool.level_' .. tostring(unit_level)]
		end
		
		table.insert(list, mathx.random_choice(available_units[unit_level]))
	end
	
	wml.variables['uwsc_recruit_list'] = table.concat(list, ',')
end


-- todo
-- write code to handle these events
-- write code to set_random_trained_module to the player (choose some villages at random, offer training for gold when village captured)
-- training is held in player variables (max hp + / max dmg + / mp + / res + / etc) - this is then applied to all new recruited units
-- weather change - severity reflects how many tiles are changed (1 - a few, 2 - some, 3 - a lot)
-- weather change options - rain, snow, drought, earthquake
-- generate_strong_spawn - value is used to limit the strength - for example champion costs 50, single bonuses (bulky beefy) cost less though it depends on the strength
