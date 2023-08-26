local after_games_settings = { 
	{ ['turn'] = 1, ['index'] = 1, ['percentage'] = 33, ['colour'] = '#fafafa', ['item'] = true, ['gold'] = 0, ['info'] = "Turn 3 Wave 2 (36%)", ['gates'] = false, },
	{ ['turn'] = 3, ['index'] = 2, ['percentage'] = 36, ['colour'] = '#f3f5e4', ['item'] = false, ['gold'] = 3, ['info'] = "Turn 5 Wave 3 (40%)", ['gates'] = false, },
	{ ['turn'] = 5, ['index'] = 3, ['percentage'] = 40, ['colour'] = '#ebedce', ['item'] = false, ['gold'] = 5, ['info'] = "Turn 7 Wave 4 (44%)", ['gates'] = false, },
	{ ['turn'] = 7, ['index'] = 4, ['percentage'] = 44, ['colour'] = '#e4e8ac', ['item'] = false, ['gold'] = 7, ['info'] = "Turn 9 Wave 5 (48%)", ['gates'] = false, },
	{ ['turn'] = 9, ['index'] = 5, ['percentage'] = 48, ['colour'] = '#e3e19a', ['item'] = false, ['gold'] = 9, ['info'] = "Turn 11 Wave 6 (52%)", ['gates'] = false, },
	{ ['turn'] = 11, ['index'] = 6, ['percentage'] = 52, ['colour'] = '#dbcf81', ['item'] = true, ['gold'] = 0, ['info'] = "Turn 13 Wave 7 (56%)", ['gates'] = false, },
	{ ['turn'] = 13, ['index'] = 7, ['percentage'] = 56, ['colour'] = '#dec276', ['item'] = false, ['gold'] = 12, ['info'] = "Turn 15 Wave 8 (60%)", ['gates'] = false, },
	{ ['turn'] = 15, ['index'] = 8, ['percentage'] = 60, ['colour'] = '#dea866', ['item'] = false, ['gold'] = 15, ['info'] = "Turn 18 Wave 9 (65%)", ['gates'] = false, },
	{ ['turn'] = 18, ['index'] = 9, ['percentage'] = 65, ['colour'] = '#e09d5a', ['item'] = false, ['gold'] = 18, ['info'] = "Turn 21 Wave 10 (70%)", ['gates'] = false, },
	{ ['turn'] = 21, ['index'] = 10, ['percentage'] = 70, ['colour'] = '#e39152', ['item'] = false, ['gold'] = 21, ['info'] = "Turn 24 Wave 11 (75%)", ['gates'] = false, },
	{ ['turn'] = 24, ['index'] = 11, ['percentage'] = 75, ['colour'] = '#e37944', ['item'] = true, ['gold'] = 0, ['info'] = "Turn 27 Wave 12 (80%)", ['gates'] = false, },
	{ ['turn'] = 27, ['index'] = 12, ['percentage'] = 80, ['colour'] = '#e36236', ['item'] = false, ['gold'] = 25, ['info'] = "Turn 31 Wave 13 (85%)", ['gates'] = false, },
	{ ['turn'] = 31, ['index'] = 13, ['percentage'] = 85, ['colour'] = '#e34627', ['item'] = false, ['gold'] = 30, ['info'] = "Turn 35 Wave 14 (90%)", ['gates'] = false, },
	{ ['turn'] = 35, ['index'] = 14, ['percentage'] = 90, ['colour'] = '#de301d', ['item'] = false, ['gold'] = 35, ['info'] = "Turn 40 Wave 15 (95%)", ['gates'] = false, },
	{ ['turn'] = 40, ['index'] = 15, ['percentage'] = 95, ['colour'] = '#d11111', ['item'] = false, ['gold'] = 40, ['info'] = "Turn 45 The Gates Open", ['gates'] = false, },
	{ ['turn'] = 45, ['index'] = 16, ['percentage'] = 100, ['colour'] = '#800000', ['item'] = false, ['gold'] = 0, ['info'] = "", ['gates'] = true, },
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
	if from_side == 1 then
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
		clone.status.invulnerable = true
		clone.variables.items_picked_up = ''
		
		wesnoth.add_modification(clone, "object", {
			id = "qquws_after_games_invulnerable",
			T.effect { apply_to = "image_mod", add="GS()" },
			T.effect { apply_to = "zoc", value = false },
		})
		
		wesnoth.set_variable('new_unit_spawn_id', clone.id)
		wesnoth.set_variable('after_games_copy_unit_type', clone.type)
		wesnoth.set_variable('after_games_gold_value', give_gold)
		wesnoth.set_variable('after_games_drop_item', has_item)
		wesnoth.set_variable('after_games_item_id', item)
		
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
	local is_spawn_turn = false
	
	for k,v in ipairs(after_games_settings) do
		if v['turn'] == turn_number then
			is_spawn_turn = true
			wesnoth.set_variable('after_games_percentage', v['percentage'] - 100)
			wesnoth.set_variable('after_games_copy_info', v['percentage'])
			wesnoth.set_variable('after_games_wave_index', v['index'])
			wesnoth.set_variable('after_games_colour', v['colour'])
			wesnoth.set_variable('after_games_info_text', v['info'])
			wesnoth.set_variable('after_games_open_gates', v['gates'])
			break
		end
	end
	
	wesnoth.set_variable('after_games_is_spawn_turn', is_spawn_turn)
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
	
	copy_all_units(1, 4, after_classic_locations[key], map_edge, drop_gold, east_item)
	copy_all_units(3, 2, after_classic_locations[key], map_edge, drop_gold, west_item)
end
