local after_games_settings = { 
	{ ['turn'] = 1, ['index'] = 1, ['percentage'] = 32, ['colour'] = '#fafafa', ['item'] = true, ['gold'] = 0, ['info'] = "Turn 3 Wave 2 (36%)", ['gates'] = false, ['max_steal'] = 0, },
	{ ['turn'] = 3, ['index'] = 2, ['percentage'] = 36, ['colour'] = '#f3f5e4', ['item'] = false, ['gold'] = 1, ['info'] = "Turn 5 Wave 3 (40%)", ['gates'] = false, ['max_steal'] = 10, },
	{ ['turn'] = 5, ['index'] = 3, ['percentage'] = 40, ['colour'] = '#ebedce', ['item'] = false, ['gold'] = 3, ['info'] = "Turn 7 Wave 4 (44%)", ['gates'] = false, ['max_steal'] = 15, },
	{ ['turn'] = 7, ['index'] = 4, ['percentage'] = 44, ['colour'] = '#e4e8ac', ['item'] = false, ['gold'] = 5, ['info'] = "Turn 9 Wave 5 (48%)", ['gates'] = false, ['max_steal'] = 20, },
	{ ['turn'] = 9, ['index'] = 5, ['percentage'] = 48, ['colour'] = '#e3e19a', ['item'] = false, ['gold'] = 7, ['info'] = "Turn 11 Wave 6 (52%)", ['gates'] = false, ['max_steal'] = 25, },
	{ ['turn'] = 11, ['index'] = 6, ['percentage'] = 52, ['colour'] = '#dbcf81', ['item'] = true, ['gold'] = 0, ['info'] = "Turn 13 Wave 7 (56%)", ['gates'] = false, ['max_steal'] = 30, },
	{ ['turn'] = 13, ['index'] = 7, ['percentage'] = 56, ['colour'] = '#dec276', ['item'] = false, ['gold'] = 9, ['info'] = "Turn 15 Wave 8 (60%)", ['gates'] = false, ['max_steal'] = 35, },
	{ ['turn'] = 15, ['index'] = 8, ['percentage'] = 60, ['colour'] = '#dea866', ['item'] = false, ['gold'] = 12, ['info'] = "Turn 18 Wave 9 (65%)", ['gates'] = false, ['max_steal'] = 40, },
	{ ['turn'] = 18, ['index'] = 9, ['percentage'] = 65, ['colour'] = '#e09d5a', ['item'] = false, ['gold'] = 15, ['info'] = "Turn 21 Wave 10 (70%)", ['gates'] = false, ['max_steal'] = 50, },
	{ ['turn'] = 21, ['index'] = 10, ['percentage'] = 70, ['colour'] = '#e39152', ['item'] = false, ['gold'] = 18, ['info'] = "Turn 24 Wave 11 (75%)", ['gates'] = false, ['max_steal'] = 60, },
	{ ['turn'] = 24, ['index'] = 11, ['percentage'] = 75, ['colour'] = '#e37944', ['item'] = true, ['gold'] = 0, ['info'] = "Turn 27 Wave 12 (80%)", ['gates'] = false, ['max_steal'] = 70, },
	{ ['turn'] = 27, ['index'] = 12, ['percentage'] = 80, ['colour'] = '#e36236', ['item'] = false, ['gold'] = 30, ['info'] = "Turn 31 Wave 13 (86%)", ['gates'] = false, ['max_steal'] = 80, },
	{ ['turn'] = 31, ['index'] = 13, ['percentage'] = 86, ['colour'] = '#e34627', ['item'] = false, ['gold'] = 75, ['info'] = "Turn 35 Wave 14 (92%)", ['gates'] = false, ['max_steal'] = 90, },
	{ ['turn'] = 35, ['index'] = 14, ['percentage'] = 92, ['colour'] = '#de301d', ['item'] = false, ['gold'] = 200, ['info'] = "Turn 40 The Gates Open", ['gates'] = false, ['max_steal'] = 100, },
	{ ['turn'] = 40, ['index'] = 15, ['percentage'] = 100, ['colour'] = '#d11111', ['item'] = false, ['gold'] = 0, ['info'] = "", ['gates'] = true, ['max_steal'] = 0, },
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

local copy_all_units = function(from_side, to_side, locations, map_edge, gold_amount, item, extra_buff, own_buff)
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
	
	for k,v in ipairs(after_games_settings) do
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
	local extra_copy_buff_east = cfg.east_buff
	local extra_copy_buff_west = cfg.west_buff
	local east_debuff = ''
	local west_debuff = ''
	local available_items = {}
	local west_item = ''
	local east_item = ''
	local drop_gold = after_games_settings[wave_index]['gold']
	if after_games_settings[wave_index]['item'] then
		available_items = get_available_items({'magic_res','cold_res','phys_res','impact_res','fire_res','arcane_res','blade_res','pierce_res','hp_low','hp_med','hp_high','steadfast','regen','melee_dmg','ranged_dmg','ranged_acc','melee_parry','melee_poison','melee_slow','mp','feeding','leadership','drain','defense','skirm','first_strike','fear','discouragement','burns','golden_armor','heal','freezing_gem','field_disruption','armor_destruction','protection','double_attack','hitn_run','extra_strikes','rat_pack','icewind_aura'}, west_items_table)
		west_item = mathx.random_choice(available_items)
		table.insert(west_items_table, west_item)
		
		available_items = get_available_items({'magic_res','cold_res','phys_res','impact_res','fire_res','arcane_res','blade_res','pierce_res','hp_low','hp_med','hp_high','steadfast','regen','melee_dmg','ranged_dmg','ranged_acc','melee_parry','melee_poison','melee_slow','mp','feeding','leadership','drain','defense','skirm','first_strike','fear','discouragement','burns','golden_armor','heal','freezing_gem','field_disruption','armor_destruction','protection','double_attack','hitn_run','extra_strikes','rat_pack','icewind_aura'}, east_items_table)
		east_item = mathx.random_choice(available_items)
		table.insert(east_items_table, east_item)
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
	
	copy_all_units(1, 4, after_classic_locations[key], map_edge, drop_gold, east_item, extra_copy_buff_east, east_debuff)
	copy_all_units(3, 2, after_classic_locations[key], map_edge, drop_gold, west_item, extra_copy_buff_west, west_debuff)
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
