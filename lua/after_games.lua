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
	{ ['turn'] = 24, ['index'] = 11, ['percentage'] = 75, ['item'] = true, ['gold'] = 0, ['info'] = "Turn 27 Wave 12 (80%)", ['gates'] = false, ['max_steal'] = 70, ['no_items_gold'] = 30, },
	{ ['turn'] = 27, ['index'] = 12, ['percentage'] = 80, ['item'] = false, ['gold'] = 60, ['info'] = "Turn 31 Wave 13 (90%)", ['gates'] = false, ['max_steal'] = 80, },
	{ ['turn'] = 31, ['index'] = 13, ['percentage'] = 90, ['item'] = false, ['gold'] = 90, ['info'] = "Turn 35 The Gates Open", ['gates'] = false, ['max_steal'] = 90, },
	{ ['turn'] = 35, ['index'] = 14, ['percentage'] = 100, ['item'] = false, ['gold'] = 0, ['info'] = "", ['gates'] = true, ['max_steal'] = 0, },
}

local after_games_progression = {}

local after_race_table = {}

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

local all_available_items = {
	'magic_res','cold_res','phys_res','impact_res','fire_res','arcane_res','blade_res','pierce_res','hp_low','hp_med','hp_high',
	'steadfast','regen','melee_dmg','ranged_dmg','ranged_acc','melee_parry','melee_poison','melee_slow','mp','feeding','leadership',
	'drain','defense','skirm','first_strike','fear','discouragement','burns','golden_armor','heal','freezing_gem','field_disruption',
	'armor_destruction','protection','double_attack','hitn_run','extra_strikes','rat_pack','icewind_aura','book','dragon_protection',
	'fire_weapon', 'impact_weapon', 'arcane_weapon'
}

local all_boosts_table = {
	'boost10', 'boost20', 'bulky', 'beefy', 'armored', 'fast', 'agile', 'champion', 'slow', 'steal', 'improved_damage',
	'reheal_own', 'deboost15', 'slow_wave', 'mirror', 'cancel', 'turtle_up', 'poison', 'damage_armor', 'drunk_opponent',
	'boost15', 'minions', 'strong_leader', 'dragon_heart', 'freeze_leader', 'easy_targets', 'payback', 'remove_specials',
	'remove_zoc', 'leader30', 'lower_damage', 'flat_defense', 'insurance', 'weak_minions',
}

local all_race_boosts_table = {
	'boost10', 'boost20', 'bulky', 'beefy', 'armored', 'fast', 'agile', 'champion', 'slow', 'improved_damage',
	'reheal_own', 'deboost15', 'slow_wave', 'cancel', 'turtle_up', 'poison', 'damage_armor', 'drunk_opponent',
	'boost15', 'minions', 'strong_leader', 'dragon_heart', 'freeze_leader', 'easy_targets', 'payback', 'remove_specials',
	'remove_zoc', 'leader30', 'lower_damage', 'flat_defense', 'insurance', 'weak_minions',
}

local offensive_boosts_list = {
	'boost10', 'boost20', 'bulky', 'beefy', 'armored', 'fast', 'agile', 'champion', 'slow', 'steal',
	'poison', 'damage_armor', 'drunk_opponent', 'boost15', 'minions', 'strong_leader', 'freeze_leader', 'remove_specials',
	'remove_zoc', 'leader30', 'lower_damage', 'flat_defense',
}

local defensive_boosts_list = { 
	'improved_damage', 'reheal_own', 'weaker15', 'slow_wave', 'turtle_up', 'dragon_heart', 'easy_targets', 'insurance',
	'weak_minions', 'mirror', 'payback', 'cancel'
}

local after_games_items_table = {}
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
		wml.tag.filter { id = unit.id },
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
	local send_extra_percentage_buff = 0
	local extra_bulky_buff = 0
	local extra_beefy_buff = 0
	local extra_armored_buff = 0
	local extra_fast_buff = 0
	local extra_agile_buff = 0
	local is_champion = false
	local is_side_leader_copy = false
	local use_minion_type_code = ''
	local minion_type = ''

	wml.variables['after_games_copied_from_side'] = from_side
	if copy_style == 'value_per_player' then
		wml.variables['after_games_base_percentage'] = base_percentage
	end

	if extra_buff == 'boost10' then
		extra_percentage_buff = 10
	elseif extra_buff == 'boost15' then
		extra_percentage_buff = 15
	elseif extra_buff == 'boost20' then
		extra_percentage_buff = 20
	elseif extra_buff == 'minions' then
		minion_type = mathx.random_choice({ 'A3','A4','A10','A12','A13','A23','A29','A30','A34','A47','A49','A50','A61','B2','B5','B6','B7','B9','B15','B26','B30','B55','C4','C16','C31','C32','C34','C37','C39','C44','C46','D1' })
	end

	if own_buff == 'weaker15' then
		extra_percentage_buff = extra_percentage_buff - 15
	end
	
	for k,u in ipairs(enemy_units) do
		send_extra_percentage_buff = extra_percentage_buff
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
				extra_bulky_buff = 70
			else
				extra_bulky_buff = 35
			end
		elseif extra_buff == 'beefy' then
			if u.canrecruit then
				extra_beefy_buff = 50
			else
				extra_beefy_buff = 25
			end
		elseif extra_buff == 'armored' then
			if u.canrecruit then
				extra_armored_buff = 35
			else
				extra_armored_buff = 20
			end
		elseif extra_buff == 'fast' then
			if u.canrecruit then
				extra_fast_buff = 3
			else
				extra_fast_buff = 2
			end
		elseif extra_buff == 'agile' then
			if u.canrecruit then
				extra_agile_buff = 20
			else
				extra_agile_buff = 10
			end
		elseif extra_buff == 'champion' and u.canrecruit then
			is_champion = true
		elseif extra_buff == 'strong_leader' and u.canrecruit then
			local improvements = { 'bulky', 'beefy', 'armored', 'fast', 'agile' }
			mathx.shuffle(improvements)

			for imp_i=1,2,1 do
				if improvements[imp_i] == 'bulky' then
					extra_bulky_buff = 70
				elseif improvements[imp_i] == 'beefy' then
					extra_beefy_buff = 50
				elseif improvements[imp_i] == 'armored' then
					extra_armored_buff = 35
				elseif improvements[imp_i] == 'fast' then
					extra_fast_buff = 3
				elseif improvements[imp_i] == 'agile' then
					extra_agile_buff = 20
				end
			end
		elseif extra_buff == 'leader30' and u.canrecruit then
			send_extra_percentage_buff = send_extra_percentage_buff + 30
		end

		if own_buff == 'weak_minions' and not u.canrecruit then
			send_extra_percentage_buff = send_extra_percentage_buff - 25
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
			use_minion_type_code = ''
		else
			use_minion_type_code = minion_type
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
			wml.tag.effect { apply_to = "image_mod", add="GS()" },
			wml.tag.effect { apply_to = "zoc", value = false },
		})
		
		wml.variables['new_unit_spawn_id'] = clone.id
		wml.variables['after_games_copy_unit_type'] = clone.type
		wml.variables['after_games_gold_value'] = give_gold
		wml.variables['after_games_drop_item'] = has_item
		wml.variables['after_games_item_id'] = item
		wml.variables['after_games_extra_copy_buff'] = send_extra_percentage_buff
		wml.variables['after_games_extra_bulky_buff'] = extra_bulky_buff
		wml.variables['after_games_extra_beefy_buff'] = extra_beefy_buff
		wml.variables['after_games_extra_armored_buff'] = extra_armored_buff
		wml.variables['after_games_extra_fast_buff'] = extra_fast_buff
		wml.variables['after_games_extra_agile_buff'] = extra_agile_buff
		wml.variables['after_games_generate_champion'] = is_champion
		wml.variables['after_games_copy_level'] = clone.level
		wml.variables['after_games_side_leader'] = is_side_leader_copy
		wml.variables['after_games_spawn_minion'] = use_minion_type_code
		
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
		ret = { 'melee_dmg','ranged_dmg' }
	end
	
	return ret
end

local function get_unused_boosts(boosts_table, all_table)
	local ret = {}
	for k,v in ipairs(all_table) do
		if not boosts_table[v] then
			table.insert(ret, v)
		end
	end

	return ret
end

local function get_payback_damage_value(east_boost, west_boost)
	if east_boost == 'payback' and west_boost == 'payback' then
		return 24
	elseif east_boost == 'payback' then
		for k,v in ipairs(offensive_boosts_list) do
			if west_boost == v then
				return 24
			end
		end

		for k,v in ipairs(defensive_boosts_list) do
			if west_boost == v then
				return 8
			end
		end
	elseif west_boost == 'payback' then
		for k,v in ipairs(offensive_boosts_list) do
			if east_boost == v then
				return 24
			end
		end

		for k,v in ipairs(defensive_boosts_list) do
			if east_boost == v then
				return 8
			end
		end
	else
		return 0
	end

	return 0
end

local function get_race_label_colour(copy_percentage, is_hidden)
	if is_hidden then
		return '#fafafa'
	end

	if copy_percentage <= 40 then
		return '#fafafa'
	elseif copy_percentage <= 52 then
		return '#e3bc96'
	elseif copy_percentage <= 64 then
		return '#dea062'
	elseif copy_percentage <= 76 then
		return '#de7b49'
	elseif copy_percentage <= 88 then
		return '#e35c2d'
	elseif copy_percentage <= 100 then
		return '#d13719'
	else
		return '#db1414'
	end
end

function wesnoth.wml_actions.qquws_calculate_after_games_spawn_variables(cfg)
	local turn_number = cfg.turn
	local is_spawn_turn = false
	local is_preparation_turn = false
	local clear_bonuses_turn = false
	
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
		elseif v['turn'] == turn_number + 1  then
			clear_bonuses_turn = true

			if not v['gates'] then
				wml.variables['after_games_max_steal'] = v['max_steal']
				wml.variables['after_games_preparation_wave_index'] = v['index']
				is_preparation_turn = true
			end
		end
	end
	
	wml.variables['after_games_is_spawn_turn'] = is_spawn_turn
	wml.variables['after_games_is_preparation_turn'] = is_preparation_turn
	wml.variables['after_games_clear_bonuses_turn'] = clear_bonuses_turn
end

function wesnoth.wml_actions.qquws_handle_after_race_spawn(cfg)
	local spawn_west = cfg.spawn_west
	local spawn_east = cfg.spawn_east
	local index = cfg.index
	local east_debuff = ''
	local west_debuff = ''
	local extra_copy_buff_east = ''
	local extra_copy_buff_west = ''
	local map_edge = wml.variables["uws_game.edge"]
	local allow_items = wml.variables['after_games.allow_items']
	local allow_gold = wml.variables['after_games.allow_gold']
	local drop_gold = after_games_progression[index]['gold']
	local item = ''
	local spawn_use_y = 1
	local locations = {}

	local iterator = {
		{ ['spawn'] = spawn_west, ['from'] = 3, ['to'] = 2, ['perc'] = after_games_progression[index]['percentage_west'], ['debuff'] = west_debuff, ['extra_buff'] = extra_copy_buff_west }, -- debuff & extra_buff check what they do with create_after_copies
		{ ['spawn'] = spawn_east, ['from'] = 1, ['to'] = 4, ['perc'] = after_games_progression[index]['percentage_east'], ['debuff'] = east_debuff, ['extra_buff'] = extra_copy_buff_east },
	}

	for _,v in ipairs(iterator) do
		item = ''

		if v.spawn then
			if after_games_progression[index]['item'] then
				if allow_items then
					available_items = get_available_items(all_available_items, after_games_items_table)
					item = mathx.random_choice(available_items)
					table.insert(after_games_items_table, item)
				else
					drop_gold = after_games_progression[index]['no_items_gold']
				end
			end

			if not allow_gold then
				drop_gold = 0
			end

			spawn_use_y = after_race_table[index]['y'] - 6
			if spawn_use_y < 1 then
				spawn_use_y = 0
			end

			locations = { { ['y'] = spawn_use_y, ['x'] = math.floor(map_edge / 4) } }
			copy_all_units(v.from, v.to, locations, map_edge, drop_gold, item, v.extra_buff, v.debuff, v.perc, after_games_progression[index]['copy_style'])
		end
	end
end

function wesnoth.wml_actions.qquws_create_after_copies(cfg)
	local map_id = cfg.map_id
	local key = 'map_' .. tostring(map_id)
	local map_edge = wml.variables["uws_game.edge"]
	local wave_index = wml.variables['after_games_wave_index']
	local allow_items = wml.variables['after_games.allow_items']
	local allow_gold = wml.variables['after_games.allow_gold']
	local extra_copy_buff_east = cfg.east_buff
	local extra_copy_buff_west = cfg.west_buff
	local east_debuff = ''
	local west_debuff = ''
	local available_items = {}
	local west_item = ''
	local east_item = ''
	local drop_gold = after_games_progression[wave_index]['gold']
	local payback_damage = 0
	
	if after_games_progression[wave_index]['item'] then
		if allow_items then
			available_items = get_available_items(all_available_items, after_games_items_table)
			west_item = mathx.random_choice(available_items)
			table.insert(after_games_items_table, west_item)
			
			available_items = get_available_items(all_available_items, after_games_items_table)
			east_item = mathx.random_choice(available_items)
			table.insert(after_games_items_table, east_item)
		else
			drop_gold = after_games_progression[wave_index]['no_items_gold']
		end
	end

	if not allow_gold then
		drop_gold = 0
	end

	if extra_copy_buff_east == 'cancelation' then
		extra_copy_buff_west = ''
		extra_copy_buff_east = ''
	elseif extra_copy_buff_west == 'cancelation' then
		extra_copy_buff_east = ''
		extra_copy_buff_west = ''
	end

	if extra_copy_buff_east == 'payback' and extra_copy_buff_west == '' then
		extra_copy_buff_east = ''
	end

	if extra_copy_buff_west == 'payback' and extra_copy_buff_east == '' then
		extra_copy_buff_west = ''
	end

	if extra_copy_buff_east == 'mirror' and extra_copy_buff_west == 'mirror' then
		extra_copy_buff_east = ''
		extra_copy_buff_west = ''
	elseif extra_copy_buff_east == 'mirror' then
		extra_copy_buff_east = extra_copy_buff_west
		extra_copy_buff_west = 'mirror'
	elseif extra_copy_buff_west == 'mirror' then
		extra_copy_buff_west = extra_copy_buff_east
		extra_copy_buff_east = 'mirror'
	end

	if extra_copy_buff_east == 'weaker15' then
		west_debuff = 'weaker15'
	elseif extra_copy_buff_east == 'weak_minions' then
		west_debuff = 'weak_minions'
	end

	if extra_copy_buff_west == 'weaker15' then
		east_debuff = 'weaker15'
	elseif extra_copy_buff_west == 'weak_minions' then
		east_debuff = 'weak_minions'
	end
	
	copy_all_units(1, 4, after_classic_locations[key], map_edge, drop_gold, east_item, extra_copy_buff_east, east_debuff, after_games_progression[wave_index]['percentage_east'], after_games_progression[wave_index]['copy_style'])
	copy_all_units(3, 2, after_classic_locations[key], map_edge, drop_gold, west_item, extra_copy_buff_west, west_debuff, after_games_progression[wave_index]['percentage_west'], after_games_progression[wave_index]['copy_style'])
	wml.variables['after_games_3_wave_boost'] = extra_copy_buff_west
	wml.variables['after_games_1_wave_boost'] = extra_copy_buff_east

	if extra_copy_buff_east == 'payback' or extra_copy_buff_west == 'payback' then
		payback_damage = get_payback_damage_value(extra_copy_buff_east, extra_copy_buff_west)
	end

	wml.variables['after_games_payback_damage'] = payback_damage
	wml.variables['after_games.unit_counter'] = copy_unit_counter
	wml.variables['after_games.used_items_list'] = table.concat(after_games_items_table, ',')
end

function wesnoth.wml_actions.qquws_generate_buff_lists(cfg)
	wml.variables['after_games.offensive_boosts_list'] = table.concat(offensive_boosts_list, ',')
	wml.variables['after_games.defensive_boosts_list'] = table.concat(defensive_boosts_list, ',')
end

function wesnoth.wml_actions.qquws_generate_random_boosts_table(cfg)
	local wml_table_name = cfg.var
	local boosts_table = {}
	local new_item = ''
	local all_table = all_boosts_table
	if cfg.mode == 'after_race' then
		all_table = all_race_boosts_table
	end

	for k,v in ipairs(all_boosts_table) do
		boosts_table[v] = false
	end

	for i=1,6 do
		local difference = get_unused_boosts(boosts_table, all_table)
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
	local shuffleable_keys = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 }
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

		after_games_progression[14] = after_games_settings[14]
		after_games_progression[14]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
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

		after_games_progression[14] = after_games_settings[14]
		after_games_progression[14]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
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

		after_games_progression[14] = after_games_settings[14]
		after_games_progression[14]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
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

		after_games_progression[14] = after_games_settings[14]
		after_games_progression[14]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
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

		after_games_progression[14] = after_games_settings[14]
		after_games_progression[14]['turn'] = previous_turn + get_fighting_space_length(previous_percentage) + 1
		recalculate_info_labels = true
	end

	if recalculate_info_labels then
		after_games_progression[13]['info'] = "Turn " .. tostring(after_games_progression[14]['turn']) .. " The Gates Open"
		after_games_progression[14]['gates'] = true
		local progression_value = 0

		for k=12,1,-1 do
			progression_value = " (" .. tostring(after_games_progression[k + 1]['percentage']) .. '%)'
			if is_info_hidden then
				progression_value = ''
			end

			after_games_progression[k]['info'] = "Turn " .. tostring(after_games_progression[k + 1]['turn']) .. " Wave " .. tostring(k + 1) ..  progression_value 
		end
	end

	if after_games_progression[1]['percentage_east'] == nil then
		for k=1,14,1 do
			after_games_progression[k]['percentage_east'] = after_games_progression[k]['percentage']
			after_games_progression[k]['percentage_west'] = after_games_progression[k]['percentage']
			after_games_progression[k]['copy_style'] = 'value_per_player' 
		end
	end

	wml.array_access.set('after_games_progression_data', after_games_progression)
	wml.variables['after_games.is_defined'] = true
end

function wesnoth.wml_actions.qquws_reload_progression_table(cfg)
	after_games_progression = wml.array_access.get('after_games_progression_data')
	copy_unit_counter = wml.variables['after_games.unit_counter']
	local used_items_list = wml.variables['after_games.used_items_list']
	after_games_items_table = {}
	for item_used in string.gmatch(used_items_list, '([^,]+)') do
	    table.insert(after_games_items_table, item_used)
	end
end

function wesnoth.wml_actions.qquws_generate_after_race_spawn_table(cfg)
	local spawn_count = tonumber(cfg.count)
	local start_y = tonumber(cfg.race_start_y)
	local end_y = tonumber(cfg.race_finish_y)
	local first_wave_y = tonumber(cfg.race_first_wave_y)
	local is_info_hidden = cfg.is_hidden
	local info = ''
	local spawn_table = { {
		['index'] = 1,
		['y'] = first_wave_y,
		['label_east'] = '',
		['label_west'] = '',
		['spawn_east'] = true,
		['spawn_west'] = true,
		['spawned_east'] = false,
		['spawned_west'] = false,
		['buff_east'] = '',
		['buff_west'] = '',
		['colour'] = '#fafafa',
	} }

	for i=2,spawn_count,1 do
		if is_info_hidden then
			info = '--- rand ---'
		else
			info = '--- ' .. after_games_progression[i]['percentage'] .. '% ---'
		end

		table.insert(spawn_table, {
			['index'] = i,
			['y'] = start_y - math.floor( ((i - 2) * (start_y - end_y)) / (spawn_count - 2) + 0.4 ),
			['label_east'] = info,
			['label_west'] = info,
			['spawn_east'] = false,
			['spawn_west'] = false,
			['spawned_east'] = false,
			['spawned_west'] = false,
			['buff_east'] = '',
			['buff_west'] = '',
			['colour'] = get_race_label_colour(after_games_progression[i]['percentage'], is_info_hidden),
		})
	end

	after_race_table = spawn_table
	wml.array_access.set('after_race_spawn_table', spawn_table)
end
