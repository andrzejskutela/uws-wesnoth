--<<
function build_spawn_rules_row(data)
	local ret = {
		['y'] = 4, ['guard'] = false, ['moves'] = -1, ['buff'] = '', ['default'] = '', ['default_recruits'] = '',
		['item'] = '', ['gold'] = 0, ['recruits'] = false, ['recruitment_gold'] = 0, ['bulky'] = 0, ['damaged'] = 0, ['final_boss'] = false,
		['quiet_buff'] = '', ['event'] = '', ['beefy'] = 0, ['second_random'] = '', ['name'] = '', ['race_guard_off'] = false,
		['allow_random'] = true, ['allow_random_recruits'] = true, ['disallow_slash_unguardian'] = false, ['calls_for_help'] = false,
		['armored'] = 0, ['recruit_armored'] = 0, ['recruit_minion'] = '', ['title'] = '', ['fast'] = 0, ['agile'] = 0, ['story_message'] = '',
		['story_response'] = '', ['race_points_value'] = -1, ['second_item'] = '', ['clear_boss_tile_overlay'] = false,
	}
	
	for k,v in pairs(data) do
		ret[k] = v
	end
	
	return ret
end

function build_object_row(data)
	local ret = {
		['y'] = 4, ['type'] = '', ['image'] = '', ['message'] = '', ['amount'] = 0, ['name'] = '', ['set'] = '', ['color'] = '#f4f5e9',
		['tooltip'] = '', ['event'] = '', ['new_unit_special_id'] = '', ['render'] = true, ['id'] = '',
	}
	
	for k,v in pairs(data) do
		ret[k] = v
	end
	
	return ret
end

local function get_spawn_table()
	local map_id = wesnoth.get_variable('uws_game.map_id')
	local filepath = '~add-ons/QQ_Ultimate_Wesnoth_Survival/lua/rules_' .. tostring(map_id) .. '.lua'
	if filesystem.have_file(filepath, true) then
		return wesnoth.dofile(filepath)
	else
		wesnoth.interface.add_chat_message("ERROR", 'Spawn rules not found for map id = ' .. tostring(map_id))
	end
	
	return nil
end

local function get_unit_translation(unit_type, unit_level)
	local second_unit = unit_type .. '^'
	
	if not uws_translation_table[unit_type] then
		if not available_units[unit_level] then
			available_units[unit_level] = wesnoth.get_variable('random_pool.level_' .. tostring(unit_level))
		end
		
		uws_translation_table[unit_type] = mathx.random_choice(available_units[unit_level])
		uws_translation_table[second_unit] = mathx.random_choice(available_units[unit_level])
	end
	
	return uws_translation_table[unit_type], uws_translation_table[second_unit]
end

local function get_unit_random_recruit_list(recruit_lvls)
	local list = {}
	local unit_level = 0
	for lvl_str in string.gmatch(recruit_lvls, '([^,]+)') do
		unit_level = tonumber(lvl_str)
		if not available_units[unit_level] then
			available_units[unit_level] = wesnoth.get_variable('random_pool.level_' .. tostring(unit_level))
		end
		
		table.insert(list, mathx.random_choice(available_units[unit_level]))
	end
	
	return table.concat(list, ',')
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

local function process_spawn_table(spawn_table)
	local difficulty = wesnoth.get_variable('uws_game.difficulty')
	local is_random = wesnoth.get_variable("uws_game.random_enemies")
	local is_full_random = wesnoth.get_variable("uws_game.full_random")
	local map_scroll_length = wesnoth.get_variable("uws_game.scroll_rounds")
	local map_edge = wesnoth.get_variable("uws_game.edge")
	local middle_lane = wesnoth.get_variable("uws_game.middle")
	local allow_ae = wesnoth.get_variable("random_pool.allow_ae")
	local game_mode = wesnoth.get_variable('uws_game.mode')
	local used_items_list = wesnoth.get_variable('used_items_list')
	local copy_fields_list = wesnoth.get_variable('uws_spawn.copy_fields')
	
	local copy_fields = {}
	local copy_object_fields = { 'x', 'y', 'cat', 'image', 'type', 'message', 'amount', 'name', 'set', 'color', 'tooltip', 'event', 'new_unit_special_id', 'render', }
	for field in string.gmatch(copy_fields_list, '([^,]+)') do
	    table.insert(copy_fields, field)
	end
	
	local type = nil
	local rules = {}
	local row = {}
	local object_row = {}
	local queue = {}
	local object_queue = {}
	local row_type = nil
	local race_enemy_count = 0
	local predropped_items = {}
	local used_items_table = {}
	local process_object = true
	local diff_gold_factor = { [1] = 1, [2] = 1, [3] = 1, [4] = 0.95, [5] = 0.9, [6] = 0.85 }
	
	for item_used in string.gmatch(used_items_list, '([^,]+)') do
	    table.insert(used_items_table, item_used)
	end
	
	local tooltip = function(cond)
		if cond then
			return 'yes'
		end
		
		return 'no'
	end
	
	local use_default_spawn = true
	if game_mode == 'after_classic' or game_mode == 'after_race' then
		use_default_spawn = false
	end
	
	for _,table_row in pairs(spawn_table) do
		process_object = true
		if game_mode == 'after_classic' then
			if table_row['t'] > 4 then
				process_object = false
			elseif table_row['t'] > 1 then
				table_row['y'] = 5 - table_row['t']
				table_row['t'] = 1
			end
		end
		
		row_type = 'unit'
		if table_row['row'] ~= nil then
			row_type = table_row['row']
		end
		
		if row_type == 'unit' and use_default_spawn == true and difficulty > table_row['d'] then
--		if row_type == 'unit' and use_default_spawn == true and table_row['final_boss'] == true then
			rules = build_spawn_rules_row(table_row)
			type = rules['type']
			
			if allow_ae == false and rules['default'] ~= '' then
				type = rules['default']
				
				if rules['recruits'] ~= false then
					rules['recruits'] = rules['default_recruits']
				end
			end
			
			if is_random and rules['allow_random'] == true then
				type, rules['second_random'] = get_unit_translation(rules['type'], rules['lvl'])
				
				if rules['recruits'] ~= false and rules['allow_random_recruits'] == true then
					rules['recruits'] = get_unit_random_recruit_list(rules['r_lvls'])
				end
				
				if is_full_random == false then
					rules['second_random'] = type
				end
			else
				rules['second_random'] = type
			end
			
			if rules['item'] == true then
				local available_items = get_available_items({'magic_res','cold_res','phys_res','impact_res','fire_res','arcane_res','blade_res','pierce_res','hp_low','hp_med','hp_high','steadfast','regen','melee_dmg','ranged_dmg','ranged_acc','melee_parry','melee_poison','melee_slow','mp','feeding','leadership','drain','defense','skirm','first_strike','fear','discouragement','burns','golden_armor','heal','freezing_gem','field_disruption','armor_destruction','protection','double_attack','hitn_run','extra_strikes','rat_pack','icewind_aura'}, used_items_table)
				rules['item'] = mathx.random_choice(available_items)
				table.insert(used_items_table, rules['item'])
				
				if game_mode == 'race' then
					rules['second_item'] = mathx.random_choice(available_items)
					table.insert(used_items_table, rules['second_item'])
				else
					rules['second_item'] = rules['item']
				end
			elseif rules['item'] ~= '' then
				rules['second_item'] = rules['item']
				table.insert(used_items_table, rules['item'])
			end
			
			if rules['gold'] > 0 then
				rules['gold'] = math.floor(rules['gold'] * diff_gold_factor[difficulty])
			end
			
			if rules['recruitment_gold'] > 0 then
				rules['recruitment_gold'] = math.ceil(rules['recruitment_gold'] / diff_gold_factor[difficulty])
				
				if game_mode == 'slash' then
					rules['recruitment_gold'] = math.ceil((3.2 - 2 * diff_gold_factor[difficulty]) * rules['recruitment_gold'])
				end
			end
			
			if rules['name'] ~= '' then
				rules['second_name'] = rules['name']
			end
			
			if game_mode == 'race' and rules['final_boss'] == true then
				rules['final_boss'] = false
				rules['buff'] = ''
				rules['moves'] = 0
				rules['clear_boss_tile_overlay'] = true
			end
			
			if rules['calls_for_help'] and game_mode ~= 'race' and game_mode ~= 'slash' then
				rules['calls_for_help'] = false
			end
			
			if rules['damaged'] > 0 and rules['event'] ~= '' and (game_mode == 'race' or game_mode == 'slash') then
				rules['damaged'] = 0
				rules['event'] = ''
				rules['quiet_buff'] = ''
				rules['moves'] = -1
			end
			
			if rules['final_boss'] and rules['story_message'] == '' then
				rules['story_message'] = 'YOU?! You want to kill ME?! You will kill NOTHING! I will squash you like a worm and show you what you are worth!'
			end
			
			if rules['armored'] > 0 or rules['bulky'] > 0 or rules['beefy'] > 0 or rules['fast'] > 0 or rules['agile'] > 0 then
				local titles = {}
				if rules['agile'] > 0 then
					titles[#titles + 1] = 'Agile'
				end
				
				if rules['fast'] > 0 then
					titles[#titles + 1] = 'Fast'
				end
				
				if rules['armored'] > 0 then
					titles[#titles + 1] = 'Armored'
				end
				
				if rules['bulky'] > 0 then
					titles[#titles + 1] = 'Bulky'
				end
				
				if rules['beefy'] > 0 then
					titles[#titles + 1] = 'Beefy'
				end
				
				rules['title'] = table.concat(titles, ' ') .. ' '
			end
			
			if rules['buff'] ~= '' then
				local prespawn_moves = 5 -- arbitrary number
				local is_single_buff_random = false
				if rules['moves'] == 0 then
					prespawn_moves = 0
				end
				
				local buff = {}
				local second_buff = {}
				for buff_section in string.gmatch(rules['buff'], '([^:]+)') do
					buff[#buff + 1] = buff_section
					second_buff[#second_buff + 1] = buff_section
				end
				
				if is_random and rules['allow_random'] == true then
					buff[1] = 'rand'
					buff[2] = 'rand'
					buff[3] = 'rand'
					second_buff[1] = 'rand'
					second_buff[2] = 'rand'
					second_buff[3] = 'rand'
				end
				
				wesnoth.set_variable("prespawn_champion_type", type)
				wesnoth.set_variable("prespawn_moves", prespawn_moves)
				wesnoth.set_variable("prespawn_buff_a", buff[1])
				wesnoth.set_variable("prespawn_buff_b", buff[2])
				wesnoth.set_variable("prespawn_buff_c", buff[3])
				wesnoth.set_variable("prespawn_full_buff", rules['buff'])
				
				for k,v in ipairs(buff) do
					-- even without random enemies one buff or more can be rand
					if v == 'rand' then
						is_single_buff_random = true
					end
				end
				
				wesnoth.set_variable("is_single_buff_random", is_single_buff_random)
				
				wml.fire('fire_event', {
					name='generate_champion_data'
				})
				
				buff[1] = wesnoth.get_variable("prespawn_buff_a")
				buff[2] = wesnoth.get_variable("prespawn_buff_b")
				buff[3] = wesnoth.get_variable("prespawn_buff_c")
				rules['buff'] = table.concat(buff, ':')
				
				rules['name'] = wesnoth.get_variable("prespawn_buff_name")
				rules['second_name'] = rules['name']
				rules['second_buff'] = rules['buff']
				
				if rules['second_random'] ~= type then
					wesnoth.set_variable("prespawn_champion_type", rules['second_random'])
					wesnoth.set_variable("prespawn_moves", prespawn_moves)
					wesnoth.set_variable("prespawn_buff_a", second_buff[1])
					wesnoth.set_variable("prespawn_buff_b", second_buff[2])
					wesnoth.set_variable("prespawn_buff_c", second_buff[3])
					
					wml.fire('fire_event', {
						name='generate_champion_data'
					})
					
					second_buff[1] = wesnoth.get_variable("prespawn_buff_a")
					second_buff[2] = wesnoth.get_variable("prespawn_buff_b")
					second_buff[3] = wesnoth.get_variable("prespawn_buff_c")
					rules['second_buff'] = table.concat(second_buff, ':')
					rules['second_name'] = wesnoth.get_variable("prespawn_buff_name")
				end
			end
			
			if rules['race_points_value'] == -1 then
				if rules['x'] < middle_lane then
					local race_points = 1
					
					if rules['lvl'] > 4 then
						race_points = 4
					elseif rules['lvl'] > 3 then
						race_points = 3
					elseif rules['lvl'] > 0 then
						race_points = 2
					else
						race_point = 1
					end
					
					if rules['buff'] ~= '' then
						race_points = race_points + 3
					end
					
					if rules['bulky'] > 0 or rules['beefy'] > 0 then
						race_points = race_points + 1
					end
					
					if rules['recruits'] ~= false then
						race_points = race_points + 5
					end
					
					rules['race_points_value'] = race_points
					race_enemy_count = race_enemy_count + race_points
				else
					rules['race_points_value'] = 0
				end
			end
			
			if rules['t'] == 1 then
				if game_mode == 'race' or game_mode == 'slash' then
					rules['y'] = rules['y'] + map_scroll_length
				end
				
				wesnoth.set_variable("uws_spawn.type", type)
				wesnoth.set_variable("uws_spawn.y", rules['y'])
				
				for _,field in ipairs(copy_fields) do
					wesnoth.set_variable("uws_spawn." .. field, rules[field])
				end
				
				wml.fire('fire_event', {
					name='spawn'
				})
			else
				row = { ['type'] = type, ['lvl'] = rules['lvl'] }
				
				for _,field in ipairs(copy_fields) do
					row[field] = rules[field]
				end
				
				if game_mode == 'race' or game_mode == 'slash' then
					-- 5 = 2lava + 3label tiles
					row['y'] = map_scroll_length + 5 - rules['t']
					
					if rules['race_guard_off'] == false then
						row['guard'] = true
					end
				else
					row['turn'] = rules['t']
				end
				
				table.insert(queue, row)
			end
			
		elseif row_type == 'object' and process_object then
			rules = build_object_row(table_row)
			
			if allow_ae == false then
				rules['type'] = rules['type_default']
			end
			
			if game_mode == 'race' or game_mode == 'slash' then
				if rules['t'] == 1 then
					rules['y'] = rules['y'] + map_scroll_length
				else
					rules['y'] = map_scroll_length + 5 - rules['t']
				end
			elseif game_mode == 'after_classic' then
				if rules['t'] > 1 then
					rules['y'] = 6 - rules['t']
				else
					rules['y'] = rules['y'] + 3
				end
			else
				if rules['t'] > 1 then
					rules['y'] = 5 - rules['t']
				end
			end
			
			object_row = {}
			for _,field in ipairs(copy_object_fields) do
				object_row[field] = rules[field]
			end
			
			object_row['object_id'] = rules['id'] .. '_left'
			table.insert(object_queue, object_row)
			
			if object_row['event'] ~= '' then
				wesnoth.set_variable("register_event_id", object_row['event'] .. '_left')
				wesnoth.set_variable("register_event_name", object_row['event'])
				
				wml.fire('fire_event', {
					name='register_new_location_event'
				})
			end
			
			if game_mode ~= 'slash' then
				local east_item_x = map_edge - object_row['x']
				object_row = {}
				for _,field in ipairs(copy_object_fields) do
					object_row[field] = rules[field]
				end
				
				if rules['mirror_image'] ~= nil then
					object_row['image'] = rules['mirror_image']
				end
				
				if object_row['event'] ~= '' and object_row['x'] ~= east_item_x then
					wesnoth.set_variable("register_event_id", object_row['event'] .. '_right')
					wesnoth.set_variable("register_event_name", object_row['event'])
					
					wml.fire('fire_event', {
						name='register_new_location_event'
					})
				end
				
				object_row['x'] = east_item_x
				object_row['object_id'] = rules['id'] .. '_right'
				table.insert(object_queue, object_row)
			end
		elseif row_type == 'item' and process_object then
			local y = 0
			local render_new_item = true
			local available_items = get_available_items(table_row['pool'], used_items_table)
			local item = mathx.random_choice(available_items)
			table.insert(used_items_table, item)
			local item_image = ''
			
			if game_mode == 'race' or game_mode == 'slash' then
				if table_row['t'] == 1 then
					y = table_row['y'] + map_scroll_length
				else
					y = map_scroll_length + 5 - table_row['t']
				end
			elseif game_mode == 'after_classic' then
				if table_row['t'] > 1 then
					y = 6 - table_row['t']
				else
					y = table_row['y'] + 3
				end
			else
				if table_row['t'] > 1 then
					y = 5 - table_row['t']
					render_new_item = false
				else
					y = table_row['y']
				end
			end
			
			if table_row['overwrite_image'] ~= nil then
				item_image = table_row['overwrite_image']
			end
			
			table.insert(predropped_items, { ['x'] = table_row['x'], ['y'] = y, ['item'] = item, ['render'] = render_new_item, ['overwrite_image'] = item_image })
		
			if game_mode ~= 'slash' then
				if table_row['asymmetric'] then
					available_items = get_available_items(table_row['pool'], used_items_table)
					item = mathx.random_choice(available_items)
					table.insert(used_items_table, item)
				end
				
				table.insert(predropped_items, { ['x'] = map_edge - table_row['x'], ['y'] = y, ['item'] = item, ['render'] = render_new_item, ['overwrite_image'] = item_image })
			end
		end
	end
	
	wml.array_access.set("spawn_queue", queue)
	wml.array_access.set("scrollable_items", object_queue)
	wesnoth.set_variable("race_total_enemies", race_enemy_count)
	
	for _,item_data in ipairs(predropped_items) do
		wesnoth.set_variable("render_new_item", item_data['render'])
		wesnoth.set_variable("item_x", item_data['x'])
		wesnoth.set_variable("item_y", item_data['y'])
		wesnoth.set_variable("item_type_id", item_data['item'])
		wesnoth.set_variable("overwrite_item_image", item_data['overwrite_image'])
		
		wml.fire('fire_event', {
			name='drop_new_item'
		})
	end
	
	wesnoth.set_variable('used_items_list', table.concat(used_items_table, ','))
end

local spawn_rules = get_spawn_table()
if spawn_rules ~= nil then
	process_spawn_table(spawn_rules)
end

-->>
