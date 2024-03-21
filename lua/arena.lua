local arena_waves = {
	{ ['turn'] = 1, ['index'] = 1, ['boss_title'] = 'Arena Instructor', ['random_name'] = 'Wesnoth Bandits', },
	{ ['turn'] = 6, ['index'] = 2, ['boss_title'] = 'Arena Instructor', ['random_name'] = 'Dark Riders', },
	{ ['turn'] = 12, ['index'] = 3, ['boss_title'] = 'Arena Instructor', ['random_name'] = 'First Wave of Suffering', },
	{ ['turn'] = 17, ['index'] = 4, ['boss_title'] = 'Arena Guardian', ['random_name'] = 'Unknown Ones', },
	{ ['turn'] = 23, ['index'] = 5, ['boss_title'] = 'Arena Guardian', ['random_name'] = 'Silent Creepers', },
	{ ['turn'] = 28, ['index'] = 6, ['boss_title'] = 'Arena Guardian', ['random_name'] = 'Destroyers of all Remaining Hope', },
	{ ['turn'] = 34, ['index'] = 7, ['boss_title'] = 'Arena Guardian', ['random_name'] = 'Masters of Silence', },
	{ ['turn'] = 40, ['index'] = 8, ['boss_title'] = 'Arena Master', ['random_name'] = "Followers of Magh'adal", },
	{ ['turn'] = 46, ['index'] = 9, ['boss_title'] = 'Arena Master', ['random_name'] = 'Devoted Ones', },
	{ ['turn'] = 52, ['index'] = 10, ['boss_title'] = 'Arena Master', ['random_name'] = 'Guardians of the Night', },
	{ ['turn'] = 58, ['index'] = 11, ['boss_title'] = 'Arena Master', ['random_name'] = 'Forgotten Ones', },
	{ ['turn'] = 64, ['index'] = 12, ['boss_title'] = 'Arena Overlord', ['random_name'] = 'Destroyers of Eternal Fire', },
	{ ['turn'] = 70, ['index'] = 13, ['boss_title'] = 'Arena Overlord', ['random_name'] = 'Worshippers of the Hidden Eye', },
	{ ['turn'] = 77, ['index'] = 14, ['boss_title'] = 'Arena Overlord', ['random_name'] = 'Order of Decaying Flesh', },
	{ ['turn'] = 84, ['index'] = 15, ['boss_title'] = 'Arena Overlord', ['random_name'] = 'Lords of the Undying Flame', },
	{ ['turn'] = 91, ['index'] = 16, ['boss_title'] = 'Arena God', ['random_name'] = 'Demigods of Pain and Sorrow', },
	{ ['turn'] = 98, ['index'] = 17, ['boss_title'] = 'Arena God', ['random_name'] = 'Oathkeepers', },
	{ ['turn'] = 105, ['index'] = 18, ['boss_title'] = 'Arena God', ['random_name'] = 'Guardians of the Crimson Chest', },
	{ ['turn'] = 112, ['index'] = 19, ['boss_title'] = 'Arena God', ['random_name'] = 'The Immortal Ones', },
	{ ['turn'] = 120, ['index'] = 20, ['gates'] = true, },
}

local arena_wave_names = {
	['instructors'] = {
		['ae'] = { 'Ransacked Tomb', 'Birdemic' },
		['default'] = { 'Ransacked Tomb', 'Antlantidian Mermen' }
	}
}

local generate_wave_info = function(i, is_random, arena_wave_mode, spawn_key)
	local wave_name = ''
	for k,v in ipairs(arena_waves) do
		if v['index'] == i then
			is_spawn_turn = true
			if v['gates'] then
				wave_name = "Gates Open"
			elseif is_random then
				wave_name = v['random_name']
			else
				wave_name = arena_wave_names[arena_wave_mode][spawn_key][i]
			end

			if wave_name then
				return "Turn " .. v['turn'] .. ": " .. wave_name
			else
				return "Turn " .. v['turn'] .. ": Gates Open"
			end
		end
	end
end

function wesnoth.wml_actions.qquws_arena_prepare_data(cfg)
	local turn_number = cfg.turn
	local is_random = cfg.is_random
	local arena_wave_mode = cfg.wave_mode
	local wave_name = ''
	local is_spawn_turn = false
	local is_preparation_turn = false
	local spawn_key = 'default'
	if cfg.ae_allowed then
		spawn_key = 'ae'
	end
	
	for k,v in ipairs(arena_waves) do
		if v['turn'] == turn_number then
			is_spawn_turn = true
			wml.variables['arena_boss_title'] = v['boss_title']
			wml.variables['arena_boss_hp'] = v['index'] * 6.4 + 22
			wml.variables['arena_boss_dmg'] = v['index'] * 2.4 + 12
			wml.variables['arena_wave_info'] = generate_wave_info(v['index'], is_random, arena_wave_mode, spawn_key)
			wml.variables['arena_nextwave_info'] = generate_wave_info(v['index'] + 1, is_random, arena_wave_mode, spawn_key)
			wml.variables['arena_open_gates'] = v['gates']
			break
		end
	end
	
	wml.variables['arena_is_spawn_turn'] = is_spawn_turn
end
