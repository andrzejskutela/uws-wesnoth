local after_games_settings = { 
	{ ['turn'] = 1, ['index'] = 1, ['percentage'] = 32, ['item'] = true, ['gold'] = 0, ['info'] = "Turn 3 Wave 2 (36%)", ['gates'] = false, ['max_steal'] = 0, ['no_items_gold'] = 0, },
	{ ['turn'] = 3, ['index'] = 2, ['percentage'] = 36, ['item'] = false, ['gold'] = 1, ['info'] = "Turn 5 Wave 3 (40%)", ['gates'] = false, ['max_steal'] = 10, },
	{ ['turn'] = 5, ['index'] = 3, ['percentage'] = 40, ['item'] = false, ['gold'] = 3, ['info'] = "Turn 7 Wave 4 (44%)", ['gates'] = false, ['max_steal'] = 15, },
	{ ['turn'] = 7, ['index'] = 4, ['percentage'] = 44, ['item'] = false, ['gold'] = 5, ['info'] = "Turn 9 Wave 5 (48%)", ['gates'] = false, ['max_steal'] = 20, },
	{ ['turn'] = 9, ['index'] = 5, ['percentage'] = 48, ['item'] = false, ['gold'] = 7, ['info'] = "Turn 11 Wave 6 (52%)", ['gates'] = false, ['max_steal'] = 25, },
	{ ['turn'] = 11, ['index'] = 6, ['percentage'] = 52, ['item'] = true, ['gold'] = 0, ['info'] = "Turn 13 Wave 7 (56%)", ['gates'] = false, ['max_steal'] = 30, ['no_items_gold'] = 9, },
	{ ['turn'] = 13, ['index'] = 7, ['percentage'] = 56, ['item'] = false, ['gold'] = 12, ['info'] = "Turn 15 Wave 8 (60%)", ['gates'] = false, ['max_steal'] = 35, },
	{ ['turn'] = 15, ['index'] = 8, ['percentage'] = 60, ['item'] = false, ['gold'] = 15, ['info'] = "Turn 18 Wave 9 (65%)", ['gates'] = false, ['max_steal'] = 40, },
	{ ['turn'] = 18, ['index'] = 9, ['percentage'] = 65, ['item'] = false, ['gold'] = 18, ['info'] = "Turn 21 Wave 10 (70%)", ['gates'] = false, ['max_steal'] = 50, },
	{ ['turn'] = 21, ['index'] = 10, ['percentage'] = 70, ['item'] = false, ['gold'] = 21, ['info'] = "Turn 24 Wave 11 (75%)", ['gates'] = false, ['max_steal'] = 60, },
	{ ['turn'] = 24, ['index'] = 11, ['percentage'] = 75, ['item'] = true, ['gold'] = 0, ['info'] = "Turn 27 Wave 12 (80%)", ['gates'] = false, ['max_steal'] = 70, ['no_items_gold'] = 25, },
	{ ['turn'] = 27, ['index'] = 12, ['percentage'] = 80, ['item'] = false, ['gold'] = 30, ['info'] = "Turn 31 Wave 13 (86%)", ['gates'] = false, ['max_steal'] = 80, },
	{ ['turn'] = 31, ['index'] = 13, ['percentage'] = 86, ['item'] = false, ['gold'] = 75, ['info'] = "Turn 35 Wave 14 (92%)", ['gates'] = false, ['max_steal'] = 90, },
	{ ['turn'] = 35, ['index'] = 14, ['percentage'] = 92, ['item'] = false, ['gold'] = 125, ['info'] = "Turn 40 The Gates Open", ['gates'] = false, ['max_steal'] = 100, },
	{ ['turn'] = 40, ['index'] = 15, ['percentage'] = 100, ['item'] = false, ['gold'] = 0, ['info'] = "", ['gates'] = true, ['max_steal'] = 0, },
}

local after_games_progression = {}

local wave_space_settings = {
	{ ['threshold'] = 100, ['space'] = 5 },
	{ ['threshold'] = 80, ['space'] = 4 },
	{ ['threshold'] = 60, ['space'] = 3 },
	{ ['threshold'] = 30, ['space'] = 2 }
}

local after_classic_locations = {
	['map_13'] = { { ['x'] = 5, ['y'] = 4 }, { ['x'] = 11, ['y'] = 4 } },
	['map_14'] = { { ['x'] = 4, ['y'] = 3 }, { ['x'] = 10, ['y'] = 3 } },
	['map_15'] = { { ['x'] = 2, ['y'] = 2 }, { ['x'] = 9, ['y'] = 2 } },
	['map_16'] = { { ['x'] = 4, ['y'] = 1 } },
	['map_17'] = { { ['x'] = 4, ['y'] = 1 } },
}

local all_boosts_table = {
	'boost10', 'boost20', 'bulky', 'beefy', 'armored', 'fast', 'agile', 'champion', 'slow', 'steal', 'improved_damage',
	'reheal_own', 'deboost15', 'slow_wave', 'mirror', 'cancel', 'turtle_up', 'poison', 'damage_armor', 'drunk_opponent'
}

local east_items_table = {}
local west_items_table = {}
local copy_unit_counter = 0

local get_fighting_space_length = function(percentage)
	for k,v in ipairs(wave_space_settings) do
		if percentage >= v['threshold'] then
			return v['space']
		end
	end

	return 2 -- must be 2 or higher so that mercenaries / boosts can be chosen
end

local get_settings_line = function(index, settings_key, previous_turn, previous_percentage, overwrite_percentage)
	local next_turn = previous_turn + get_fighting_space_length(previous_percentage)
	local next_percentage = after_games_settings[settings_key]['percentage']
	local next_percentage_east = 0
	local next_percentage_west = 0
	local copy_style = 'value_per_player'

	if overwrite_percentage ~= nil then
		next_percentage = overwrite_percentage
	end

	if type(next_percentage) == 'table' then
		if next_percentage['type'] == 'per_player' then
			next_percentage_east = next_percentage['east']
			next_percentage_west = next_percentage['west']
			next_percentage = math.floor((next_percentage['east'] + next_percentage['west']) / 2)
		elseif next_percentage['type'] == 'per_unit' then
			next_percentage_east = next_percentage['values']
			next_percentage_west = next_percentage['values']

			local total = 0
			local no_of_keys = 0
			for k,v in ipairs(next_percentage['values']) do
				total = total + v
				no_of_keys = no_of_keys + 1
			end

			next_percentage = math.floor(total / no_of_keys)
			copy_style = 'value_per_unit'
		elseif next_percentage['type'] == 'per_player_unit' then
			next_percentage_east = next_percentage['east']
			next_percentage_west = next_percentage['west']

			local total = 0
			local no_of_keys = 0
			for k,v in ipairs(next_percentage['east']) do
				total = total + v + next_percentage['west'][k]
				no_of_keys = no_of_keys + 2
			end

			next_percentage = math.floor(total / no_of_keys)
			copy_style = 'value_per_unit'
		end
	else
		next_percentage_east = next_percentage
		next_percentage_west = next_percentage
	end

	local ret = {
		['turn'] = next_turn,
		['index'] = index,
		['percentage'] = next_percentage,
		['percentage_east'] = next_percentage_east,
		['percentage_west'] = next_percentage_west,
		['item'] = after_games_settings[settings_key]['item'],
		['gold'] = after_games_settings[settings_key]['gold'],
		['gates'] = false,
		['max_steal'] = after_games_settings[index]['max_steal'],
		['no_items_gold'] = after_games_settings[settings_key]['no_items_gold'],
		['copy_style'] = copy_style,
	}

	return ret
end

local find_vacant_location = function(around_x, around_y, map_edge, from_side)
	if from_side == 1 then
		wml.variables['after_spawn_x'] = map_edge - around_x
	else
		wml.variables['after_spawn_x'] = around_x
	end
	
	wml.variables['after_spawn_y'] = around_y
	
	wml.fire('fire_event', {
		name='find_vacant_after_games_spawn'
	})
	
	return { ['x'] = wml.variables['available_location_x'], ['y'] = wml.variables['available_location_y'] }
end

local unit_deep_copy = function(unit, x, y)
	wesnoth.wml_actions.store_unit {
		T.filter { id = unit.id },
		variable = "wml_copy_unit",
	}
	
	local deep_copy = wml.variables["wml_copy_unit"]
	local id = "uws_copy_" .. tostring(copy_unit_counter)
	copy_unit_counter = copy_unit_counter + 1
	deep_copy.id = id
	deep_copy.underlying_id = id
	deep_copy.canrecruit = false
	deep_copy.x = x
	deep_copy.y = y
	wml.variables["wml_copy_unit"] = deep_copy
	wesnoth.wml_actions.unstore_unit {
		variable = "wml_copy_unit",
	}
	wml.variables["wml_copy_unit"] = nil
	
	return id
end

local copy_all_units = function(from_side, to_side, locations, map_edge, gold_amount, item, extra_buff, own_buff, base_percentage, copy_style)
	local enemy_units = wesnoth.get_units { side = from_side }
	local give_gold = 0
	local has_item = false
	local extra_percentage_buff = 0
	local extra_bulky_buff = 0
	local extra_beefy_buff = 0
	local extra_armored_buff = 0
	local extra_fast_buff = 0
	local extra_agile_buff = 0
	local is_champion = false
	local is_side_leader_copy = false

	wml.variables['after_games_copied_from_side'] = from_side
	if copy_style == 'value_per_player' then
		wml.variables['after_games_base_percentage'] = base_percentage
	end

	if extra_buff == 'boost10' then
		extra_percentage_buff = 10
	elseif extra_buff == 'boost20' then
		extra_percentage_buff = 20
	end

	if own_buff == 'weaker15' then
		extra_percentage_buff = extra_percentage_buff - 15
	end
	
	for k,u in ipairs(enemy_units) do
		extra_bulky_buff = 0
		extra_beefy_buff = 0
		extra_armored_buff = 0
		extra_fast_buff = 0
		extra_agile_buff = 0
		give_gold = 0
		is_champion = false
		has_item = false
		is_side_leader_copy = false
		
		local loc = locations[mathx.random(1, #locations)]
		local new_loc = find_vacant_location(loc['x'], loc['y'], map_edge, from_side)
		local new_id = unit_deep_copy(u, new_loc.x, new_loc.y)
		local clone = wesnoth.get_units { id = new_id }[1]

		if extra_buff == 'bulky' then
			if u.canrecruit then
				extra_bulky_buff = 50
			else
				extra_bulky_buff = 25
			end
		elseif extra_buff == 'beefy' then
			if u.canrecruit then
				extra_beefy_buff = 25
			else
				extra_beefy_buff = 15
			end
		elseif extra_buff == 'armored' then
			if u.canrecruit then
				extra_armored_buff = 25
			else
				extra_armored_buff = 15
			end
		elseif extra_buff == 'fast' then
			if u.canrecruit then
				extra_fast_buff = 3
			else
				extra_fast_buff = 2
			end
		elseif extra_buff == 'agile' then
			if u.canrecruit then
				extra_agile_buff = 15
			else
				extra_agile_buff = 10
			end
		elseif u.canrecruit and extra_buff == 'champion' then
			is_champion = true
		end

		if copy_style == 'value_per_unit' then
			wml.variables['after_games_base_percentage'] = base_percentage[(k % #base_percentage) + 1]
		end
		
		if u.canrecruit then
			is_side_leader_copy = true
			give_gold = gold_amount
			has_item = item ~= ''
			clone.variables.gold_amount = gold_amount
			clone.variables.has_gold = gold_amount > 0
			clone.variables.has_item = item ~= ''
			clone.variables.item_id = item
		end
		
		clone.side = to_side
		clone.hitpoints = clone.max_hitpoints
		clone.moves = clone.max_moves
		clone.status.slowed = false
		clone.status.poisoned = false
		clone.status.petrified = false
		clone.status.invulnerable = true
		clone.variables.items_picked_up = ''
		
		wesnoth.add_modification(clone, "object", {
			id = "qquws_after_games_invulnerable",
			T.effect { apply_to = "image_mod", add="GS()" },
			T.effect { apply_to = "zoc", value = false },
		})
		
		wml.variables['new_unit_spawn_id'] = clone.id
		wml.variables['after_games_copy_unit_type'] = clone.type
		wml.variables['after_games_gold_value'] = give_gold
		wml.variables['after_games_drop_item'] = has_item
		wml.variables['after_games_item_id'] = item
		wml.variables['after_games_extra_copy_buff'] = extra_percentage_buff
		wml.variables['after_games_extra_bulky_buff'] = extra_bulky_buff
		wml.variables['after_games_extra_beefy_buff'] = extra_beefy_buff
		wml.variables['after_games_extra_armored_buff'] = extra_armored_buff
		wml.variables['after_games_extra_fast_buff'] = extra_fast_buff
		wml.variables['after_games_extra_agile_buff'] = extra_agile_buff
		wml.variables['after_games_generate_champion'] = is_champion
		wml.variables['after_games_copy_level'] = clone.level
		wml.variables['after_games_side_leader'] = is_side_leader_copy
		
		wml.fire('fire_event', {
			name='after_games_apply_copy_modifications'
		})
	end
end

local function get_available_items(pool, used_items)
	local ret = {}
	for k,v in ipairs(pool) do
		local used = false
		for uk,uv in ipairs(used_items) do
			if uv == v then
				used = true
			end
		end
		
		if used == false then
			table.insert(ret, v)
		end
	end
	
	if #ret == 0 then
		ret = { 'hp_low','hp_med','melee_dmg','ranged_dmg' }
	end
	
	return ret
end

local function get_unused_items(boosts_table)
	local ret = {}
	for k,v in ipairs(all_boosts_table) do
		if not boosts_table[v] then
			table.insert(ret, v)
		end
	end

	return ret
end

function wesnoth.wml_actions.qquws_calculate_after_games_spawn_variables(cfg)
	local turn_number = cfg.turn
	local is_spawn_turn = false
	local is_preparation_turn = false
	
	for k,v in ipairs(after_games_progression) do
		if v['turn'] == turn_number then
			is_spawn_turn = true
			wml.variables['after_games_percentage'] = v['percentage'] - 100
			wml.variables['after_games_copy_info'] = v['percentage']
			wml.variables['after_games_wave_index'] = v['index']
			wml.variables['after_games_colour'] = v['colour']
			wml.variables['after_games_info_text'] = v['info']
			wml.variables['after_games_open_gates'] = v['gates']
			break
		elseif v['turn'] == turn_number + 1 and not v['gates'] then
			wml.variables['after_games_max_steal'] = v['max_steal']
			wml.variables['after_games_preparation_wave_index'] = v['index']
			is_preparation_turn = true
		end
	end
	
	wml.variables['after_games_is_spawn_turn'] = is_spawn_turn
	wml.variables['after_games_is_preparation_turn'] = is_preparation_turn
end

function wesnoth.wml_actions.qquws_create_after_copies(cfg)
	local map_id = cfg.map_id
	local key = 'map_' .. tostring(map_id)
	local map_edge = wml.variables["uws_game.edge"]
	local wave_index = wml.variables['after_games_wave_index']
	local allow_items = wml.variables['after_games.allow_items']
	local extra_copy_buff_east = cfg.east_buff
	local extra_copy_buff_west = cfg.west_buff
	local east_debuff = ''
	local west_debuff = ''
	local available_items = {}
	local west_item = ''
	local east_item = ''
	local drop_gold = after_games_progression[wave_index]['gold']
	
	if after_games_progression[wave_index]['item'] then
		if allow_items then
			available_items = get_available_items({'magic_res','cold_res','phys_res','impact_res','fire_res','arcane_res','blade_res','pierce_res','hp_low','hp_med','hp_high','steadfast','regen','melee_dmg','ranged_dmg','ranged_acc','melee_parry','melee_poison','melee_slow','mp','feeding','leadership','drain','defense','skirm','first_strike','fear','discouragement','burns','golden_armor','heal','freezing_gem','field_disruption','armor_destruction','protection','double_attack','hitn_run','extra_strikes','rat_pack','icewind_aura'}, west_items_table)
			west_item = mathx.random_choice(available_items)
			table.insert(west_items_table, west_item)
			
			available_items = get_available_items({'magic_res','cold_res','phys_res','impact_res','fire_res','arcane_res','blade_res','pierce_res','hp_low','hp_med','hp_high','steadfast','regen','melee_dmg','ranged_dmg','ranged_acc','melee_parry','melee_poison','melee_slow','mp','feeding','leadership','drain','defense','skirm','first_strike','fear','discouragement','burns','golden_armor','heal','freezing_gem','field_disruption','armor_destruction','protection','double_attack','hitn_run','extra_strikes','rat_pack','icewind_aura'}, east_items_table)
			east_item = mathx.random_choice(available_items)
			table.insert(east_items_table, east_item)
		else
			drop_gold = after_games_progression[wave_index]['no_items_gold']
		end
	end

	if extra_copy_buff_east == 'cancelation' then
		extra_copy_buff_west = ''
		extra_copy_buff_east = ''
	elseif extra_copy_buff_west == 'cancelation' then
		extra_copy_buff_east = ''
		extra_copy_buff_west = ''
	end
	

	if extra_copy_buff_east == 'mirror' and extra_copy_buff_west == 'mirror' then
		extra_copy_buff_east = ''
		extra_copy_buff_west = ''
	elseif extra_copy_buff_east == 'mirror' then
		extra_copy_buff_east = extra_copy_buff_west
		extra_copy_buff_west = ''
	elseif extra_copy_buff_west == 'mirror' then
		extra_copy_buff_west = extra_copy_buff_east
		extra_copy_buff_east = ''
	end

	if extra_copy_buff_east == 'weaker15' then
		west_debuff = 'weaker15'
	end

	if extra_copy_buff_west == 'weaker15' then
		east_debuff = 'weaker15'
	end
	
	copy_all_units(1, 4, after_classic_locations[key], map_edge, drop_gold, east_item, extra_copy_buff_east, east_debuff, after_games_progression[wave_index]['percentage_east'], after_games_progression[wave_index]['copy_style'])
	copy_all_units(3, 2, after_classic_locations[key], map_edge, drop_gold, west_item, extra_copy_buff_west, west_debuff, after_games_progression[wave_index]['percentage_west'], after_games_progression[wave_index]['copy_style'])
	wml.variables['after_games_3_wave_boost'] = extra_copy_buff_west
	wml.variables['after_games_1_wave_boost'] = extra_copy_buff_east
end

function wesnoth.wml_actions.qquws_generate_random_boosts_table(cfg)
	local wml_table_name = cfg.var
	local boosts_table = {}
	local new_item = ''

	for k,v in ipairs(all_boosts_table) do
		boosts_table[v] = false
	end

	for i=1,6 do
		local difference = get_unused_items(boosts_table)
		new_item = mathx.random_choice(difference)
		boosts_table[new_item] = true
	end

	for k,v in pairs(boosts_table) do
		wml.variables[wml_table_name .. '.' .. k .. '_available'] = v
	end
end

function wesnoth.wml_actions.qquws_generate_after_progression_table(cfg)
	local style = cfg.style
	local is_info_hidden = cfg.is_hidden
	local previous_turn = after_games_settings[1]['turn']
	local previous_percentage = after_games_settings[1]['percentage']
	local generated_key = 1
	local shuffleable_keys = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 }
	local recalculate_info_labels = false
	local number_of_per_player_random_values = 7

	if style == 'classic' then
		after_games_progression = after_games_settings
	elseif style == 'shuffled' then
		after_games_progression[1] = after_games_settings[1]
		mathx.shuffle(shuffleable_keys)
		for k,key in ipairs(shuffleable_keys) do
			generated_key = k + 1
			after_games_progression[generated_key] = get_settings_line(generated_key, key, previous_turn, previous_percentage, nil)
			previous_turn = after_games_progression[generated_key]['turn']
			previous_percentage = after_games_progression[generated_key]['percentage']
		end

		after_games_progression[15] = after_games_settings[15]
		after_games_progression[15]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
		recalculate_info_labels = true
	elseif style == 'mirrored' then
		local next_random_group = 0
		local next_random_percentage = 0
		after_games_progression[1] = after_games_settings[1]
		mathx.shuffle(shuffleable_keys)
		for k,key in ipairs(shuffleable_keys) do
			generated_key = k + 1
			next_random_group = mathx.random_choice({ 'vlow', 'low', 'med', 'med', 'high', 'vhigh'})
			if next_random_group == 'vlow' then
				next_random_percentage = mathx.random(16, 28)
			elseif next_random_group == 'low' then
				next_random_percentage = mathx.random(28, 40)
			elseif next_random_group == 'med' then
				next_random_percentage = mathx.random(40, 80)
			elseif next_random_group == 'high' then
				next_random_percentage = mathx.random(80, 100)
			else
				next_random_percentage = mathx.random(100, 120)
			end

			after_games_progression[generated_key] = get_settings_line(generated_key, key, previous_turn, previous_percentage, next_random_percentage)
			previous_turn = after_games_progression[generated_key]['turn']
			previous_percentage = after_games_progression[generated_key]['percentage']
		end

		after_games_progression[15] = after_games_settings[15]
		after_games_progression[15]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
		recalculate_info_labels = true		
	elseif style == 'random' then
		local random_percentage_values_east = {}
		local random_percentage_values_west = {}
		after_games_progression[1] = after_games_settings[1]
		after_games_progression[1]['percentage_east'] = after_games_progression[1]['percentage']
		after_games_progression[1]['percentage_west'] = after_games_progression[1]['percentage']
		after_games_progression[1]['copy_style'] = 'value_per_player' 

		mathx.shuffle(shuffleable_keys)
		for k,key in ipairs(shuffleable_keys) do
			
			random_percentage_values_east[k] = mathx.random(16, 120)
			random_percentage_values_west[k] = random_percentage_values_east[k]
		end

		mathx.shuffle(random_percentage_values_west)

		for k,key in ipairs(shuffleable_keys) do
			generated_key = k + 1
			after_games_progression[generated_key] = get_settings_line(generated_key, key, previous_turn, previous_percentage, { ['type'] = 'per_player', ['east'] = random_percentage_values_east[k], ['west'] = random_percentage_values_west[k] })
			previous_turn = after_games_progression[generated_key]['turn']
			previous_percentage = after_games_progression[generated_key]['percentage']
		end

		after_games_progression[15] = after_games_settings[15]
		after_games_progression[15]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
		recalculate_info_labels = true
	elseif style == 'chaos' then
		local next_random_group = 0
		local random_percentage_values = {}
		after_games_progression[1] = after_games_settings[1]
		after_games_progression[1]['percentage_east'] = after_games_progression[1]['percentage']
		after_games_progression[1]['percentage_west'] = after_games_progression[1]['percentage']
		after_games_progression[1]['copy_style'] = 'value_per_player' 

		mathx.shuffle(shuffleable_keys)

		for k,key in ipairs(shuffleable_keys) do
			generated_key = k + 1
			random_percentage_values = {}
			for wave_k=1,number_of_per_player_random_values,1 do
				next_random_group = mathx.random_choice({ 'vlow', 'low', 'low', 'med', 'med', 'med', 'high', 'vhigh'})
				if next_random_group == 'vlow' then
					random_percentage_values[wave_k] = mathx.random(16, 28)
				elseif next_random_group == 'low' then
					random_percentage_values[wave_k] = mathx.random(28, 40)
				elseif next_random_group == 'med' then
					random_percentage_values[wave_k] = mathx.random(40, 80)
				elseif next_random_group == 'high' then
					random_percentage_values[wave_k] = mathx.random(80, 100)
				else
					random_percentage_values[wave_k] = mathx.random(100, 120)
				end
			end

			after_games_progression[generated_key] = get_settings_line(generated_key, key, previous_turn, previous_percentage, { ['type'] = 'per_unit', ['values'] = random_percentage_values })
			previous_turn = after_games_progression[generated_key]['turn']
			previous_percentage = after_games_progression[generated_key]['percentage']
		end

		after_games_progression[15] = after_games_settings[15]
		after_games_progression[15]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
		recalculate_info_labels = true
	elseif style == 'total_chaos' then
		local next_random_group = 0
		local random_percentage_values_east = {}
		local random_percentage_values_west = {}
		after_games_progression[1] = after_games_settings[1]
		after_games_progression[1]['percentage_east'] = after_games_progression[1]['percentage']
		after_games_progression[1]['percentage_west'] = after_games_progression[1]['percentage']
		after_games_progression[1]['copy_style'] = 'value_per_player' 

		mathx.shuffle(shuffleable_keys)

		for k,key in ipairs(shuffleable_keys) do
			generated_key = k + 1
			random_percentage_values_east = {}
			random_percentage_values_west = { 99 }

			for wave_k=1,number_of_per_player_random_values,1 do
				next_random_group = mathx.random_choice({ 'vlow', 'low', 'low', 'med', 'med', 'med', 'high', 'vhigh', 'wide'})
				if next_random_group == 'vlow' then
					random_percentage_values_east[wave_k] = mathx.random(16, 45)
					random_percentage_values_west[(wave_k % number_of_per_player_random_values) + 1] = mathx.random(16, 45)
				elseif next_random_group == 'low' then
					random_percentage_values_east[wave_k] = mathx.random(32, 58)
					random_percentage_values_west[(wave_k % number_of_per_player_random_values) + 1] = mathx.random(32, 58)
				elseif next_random_group == 'med' then
					random_percentage_values_east[wave_k] = mathx.random(44, 77)
					random_percentage_values_west[(wave_k % number_of_per_player_random_values) + 1] = mathx.random(44, 77)
				elseif next_random_group == 'high' then
					random_percentage_values_east[wave_k] = mathx.random(69, 95)
					random_percentage_values_west[(wave_k % number_of_per_player_random_values) + 1] = mathx.random(69, 95)
				elseif next_random_group == 'vhigh' then
					random_percentage_values_east[wave_k] = mathx.random(90, 120)
					random_percentage_values_west[(wave_k % number_of_per_player_random_values) + 1] = mathx.random(90, 120)
				elseif next_random_group == 'wide' then
					random_percentage_values_east[wave_k] = mathx.random(15, 150)
					random_percentage_values_west[(wave_k % number_of_per_player_random_values) + 1] = mathx.random(15, 150)
				end
			end

			after_games_progression[generated_key] = get_settings_line(generated_key, key, previous_turn, previous_percentage, { ['type'] = 'per_player_unit', ['east'] = random_percentage_values_east, ['west'] = random_percentage_values_west })
			previous_turn = after_games_progression[generated_key]['turn']
			previous_percentage = after_games_progression[generated_key]['percentage']
		end

		after_games_progression[15] = after_games_settings[15]
		after_games_progression[15]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
		recalculate_info_labels = true
	end

	if recalculate_info_labels then
		after_games_progression[14]['info'] = "Turn " .. tostring(after_games_progression[15]['turn']) .. " The Gates Open"
		local progression_value = 0

		for k=13,1,-1 do
			progression_value = " (" .. tostring(after_games_progression[k + 1]['percentage']) .. '%)'
			if is_info_hidden then
				progression_value = ''
			end

			after_games_progression[k]['info'] = "Turn " .. tostring(after_games_progression[k + 1]['turn']) .. " Wave " .. tostring(k + 1) ..  progression_value 
		end
	end

	if after_games_progression[1]['percentage_east'] == nil then
		for k=1,15,1 do
			after_games_progression[k]['percentage_east'] = after_games_progression[k]['percentage']
			after_games_progression[k]['percentage_west'] = after_games_progression[k]['percentage']
			after_games_progression[k]['copy_style'] = 'value_per_player' 
		end
	end
end
