local after_games_settings = { 
	{ ['turn'] = 1, ['index'] = 1, ['percentage'] = 33, ['colour'] = '#fafafa', ['item'] = true, ['gold'] = 0 },
	{ ['turn'] = 3, ['index'] = 2, ['percentage'] = 36, ['colour'] = '#f3f5e4', ['item'] = false, ['gold'] = 2 },
	{ ['turn'] = 5, ['index'] = 3, ['percentage'] = 40, ['colour'] = '#ebedce', ['item'] = false, ['gold'] = 4 },
	{ ['turn'] = 7, ['index'] = 4, ['percentage'] = 44, ['colour'] = '#e4e8ac', ['item'] = false, ['gold'] = 6 },
	{ ['turn'] = 9, ['index'] = 5, ['percentage'] = 48, ['colour'] = '#e3e19a', ['item'] = false, ['gold'] = 8 },
	{ ['turn'] = 11, ['index'] = 6, ['percentage'] = 52, ['colour'] = '#dbcf81', ['item'] = true, ['gold'] = 0 },
	{ ['turn'] = 13, ['index'] = 7, ['percentage'] = 56, ['colour'] = '#dec276', ['item'] = false, ['gold'] = 10 },
	{ ['turn'] = 15, ['index'] = 8, ['percentage'] = 60, ['colour'] = '#dea866', ['item'] = false, ['gold'] = 15 },
	{ ['turn'] = 18, ['index'] = 9, ['percentage'] = 65, ['colour'] = '#e09d5a', ['item'] = false, ['gold'] = 20 },
	{ ['turn'] = 21, ['index'] = 10, ['percentage'] = 70, ['colour'] = '#e39152', ['item'] = false, ['gold'] = 25 },
	{ ['turn'] = 24, ['index'] = 11, ['percentage'] = 75, ['colour'] = '#e37944', ['item'] = true, ['gold'] = 0 },
	{ ['turn'] = 27, ['index'] = 12, ['percentage'] = 80, ['colour'] = '#e36236', ['item'] = false, ['gold'] = 40 },
	{ ['turn'] = 31, ['index'] = 13, ['percentage'] = 85, ['colour'] = '#e34627', ['item'] = false, ['gold'] = 50 },
	{ ['turn'] = 35, ['index'] = 14, ['percentage'] = 90, ['colour'] = '#de301d', ['item'] = false, ['gold'] = 60 },
	{ ['turn'] = 40, ['index'] = 15, ['percentage'] = 95, ['colour'] = '#d11111', ['item'] = false, ['gold'] = 70 },
	{ ['turn'] = 45, ['index'] = 16, ['percentage'] = 1000, ['colour'] = '#800000', ['item'] = false, ['gold'] = 0 },
}

local after_classic_locations = {
	['map_13'] = { { ['x'] = 5, ['y'] = 4 }, { ['x'] = 11, ['y'] = 4 } },
	['map_14'] = { { ['x'] = 4, ['y'] = 3 }, { ['x'] = 10, ['y'] = 3 } },
	['map_15'] = { { ['x'] = 2, ['y'] = 2 }, { ['x'] = 9, ['y'] = 2 } },
}

local east_items_table = {}
local west_items_table = {}
local copy_unit_counter = 0

local find_vacant_location = function(around_x, around_y, map_edge, from_side)
	if from_side == 8 then
		wesnoth.set_variable('after_spawn_x', map_edge - around_x)
	else
		wesnoth.set_variable('after_spawn_x', around_x)
	end
	
	wesnoth.set_variable('after_spawn_y', around_y)
	
	wml.fire('fire_event', {
		name='find_vacant_after_games_spawn'
	})
	
	return { ['x'] = wesnoth.get_variable('available_location_x'), ['y'] = wesnoth.get_variable('available_location_y') }
end

local unit_deep_copy = function(unit, x, y)
	wesnoth.wml_actions.store_unit {
		T.filter { id = unit.id },
		variable = "wml_copy_unit",
	}
	
	local deep_copy = wesnoth.get_variable("wml_copy_unit")
	local id = "uws_copy_" .. tostring(copy_unit_counter)
	copy_unit_counter = copy_unit_counter + 1
	deep_copy.id = id
	deep_copy.underlying_id = id
	deep_copy.canrecruit = false
	deep_copy.x = x
	deep_copy.y = y
	wesnoth.set_variable("wml_copy_unit", deep_copy)
	wesnoth.wml_actions.unstore_unit {
		variable = "wml_copy_unit",
	}
	wesnoth.set_variable("wml_copy_unit", nil)
	
	return id
end

local copy_all_units = function(from_side, to_side, locations, map_edge, gold_amount, item)
	local enemy_units = wesnoth.get_units { side = from_side }
	local give_gold = 0
	local has_item = false
	wesnoth.set_variable('after_games_copied_from_side', from_side)
	
	for k,u in ipairs(enemy_units) do
		give_gold = 0
		has_item = false
		
		local loc = locations[mathx.random(1, #locations)]
		local new_loc = find_vacant_location(loc['x'], loc['y'], map_edge, from_side)
		local new_id = unit_deep_copy(u, new_loc.x, new_loc.y)
		local clone = wesnoth.get_units { id = new_id }[1]
		
		if u.canrecruit then
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
		clone.variables.items_picked_up = ''
		wesnoth.set_variable('new_unit_spawn_id', clone.id)
		wesnoth.set_variable('after_games_copy_unit_type', clone.type)
		wesnoth.set_variable('after_games_gold_value', give_gold)
		wesnoth.set_variable('after_games_drop_item', has_item)
		
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

function wesnoth.wml_actions.qquws_calculate_after_games_spawn_variables(cfg)
	local turn_number = cfg.turn
	local is_prepare_turn = false
	local is_spawn_turn = false
	local after_games_percentage = 0
	local after_games_copy_info = 0
	local after_games_wave_index = 0
	local after_games_colour = '#ffffff'
	
	for k,v in ipairs(after_games_settings) do
		if v['turn'] == turn_number then
			is_spawn_turn = true
			after_games_percentage = v['percentage'] - 100
			after_games_copy_info = v['percentage']
			after_games_wave_index = v['index']
			after_games_colour = v['colour']
			break
		elseif v['turn'] == turn_number + 1 then
			is_prepare_turn = true
			break
		end
	end
	
	wesnoth.set_variable('after_games_is_prepare_turn', is_prepare_turn)
	wesnoth.set_variable('after_games_is_spawn_turn', is_spawn_turn)
	wesnoth.set_variable('after_games_percentage', after_games_percentage)
	wesnoth.set_variable('after_games_copy_info', after_games_copy_info)
	wesnoth.set_variable('after_games_wave_index', after_games_wave_index)
	wesnoth.set_variable('after_games_colour', after_games_colour)
end

function wesnoth.wml_actions.qquws_prepare_new_after_spawn(cfg)
	local map_id = cfg.map_id
	local key = 'map_' .. tostring(map_id)
	
	for k,v in ipairs(after_classic_locations[key]) do
		wesnoth.set_variable('after_spawn_x', v['x'])
		wesnoth.set_variable('after_spawn_y', v['y'])
	
		wml.fire('fire_event', {
			name='prepare_after_games_spawn'
		})
	end
end

function wesnoth.wml_actions.qquws_create_after_copies(cfg)
	local map_id = cfg.map_id
	local key = 'map_' .. tostring(map_id)
	local map_edge = wesnoth.get_variable("uws_game.edge")
	local wave_index = wesnoth.get_variable('after_games_wave_index')
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
	
	wml.fire('fire_event', {
		name='prepare_after_games_remove_placeholders'
	})
	
	copy_all_units(8, 5, after_classic_locations[key], map_edge, drop_gold, east_item)
	copy_all_units(9, 2, after_classic_locations[key], map_edge, drop_gold, west_item)
end
