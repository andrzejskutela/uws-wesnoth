local split_string_by = function(input_str, sep)
        local ret = {}
        for str in string.gmatch(input_str, sep) do
                table.insert(ret, str)
        end
        
        return ret
end


local slice_into_table = function(mask_data, middle_x)
	local middle_x_lua = middle_x + 1
	local ret = { ['left'] = {}, ['middle'] = {}, ['right'] = {} }
	local lines = split_string_by(mask_data, "[^\n]+")
	
	for k,line in ipairs(lines) do
		local hexes = split_string_by(line, "[^,]+")
		local split_line_left = {}
		local split_hex_middle = ''
		local split_line_right = {}
		local x_index = 1
		
		for kk,hex in ipairs(hexes) do
			if x_index < middle_x_lua then
				table.insert(split_line_left, hex)
			elseif x_index == middle_x_lua then
				split_hex_middle = hex
			else
				table.insert(split_line_right, hex)
			end
			
			x_index = x_index + 1
		end
		
		table.insert(ret.left, split_line_left)
		table.insert(ret.middle, split_hex_middle)
		table.insert(ret.right, split_line_right)
	end

	return ret
end

local combine_slices = function (old, partial, mode, insert_at, partial_length)
	local ret = { ['left'] = {}, ['middle'] = old.middle, ['right'] = {} }
	local i = 1
	local partial_i = 1
	local use_partial = false
	local end_partial = insert_at + partial_length
	
	for i=1,#old.middle do
		if i == insert_at then
			use_partial = true
		elseif i == end_partial then
			use_partial = false
		end
		
		if use_partial then
			if mode == 'left' then
				table.insert(ret.left, partial.left[partial_i])
				table.insert(ret.right, old.right[i])
			else
				table.insert(ret.left, old.left[i])
				table.insert(ret.right, partial.right[partial_i])
			end
			
			partial_i = partial_i + 1
		else
			table.insert(ret.left, old.left[i])
			table.insert(ret.right, old.right[i])
		end
		
		i = i + 1
	end
	
	return ret
end

local concatenate_sliced_mask = function(sliced_mask)
	local ret = ""
	
	for k,mid_hex in ipairs(sliced_mask.middle) do
		ret = ret .. table.concat(sliced_mask.left[k], ',') .. ', ' .. mid_hex .. ', ' .. table.concat(sliced_mask.right[k], ',') .. "\n"
	end
	
	return ret
end

function wesnoth.wml_actions.qquws_generate_new_mask_data(cfg)
	local partial_data = cfg.partial_data
	local current_mask_data = cfg.current_mask_data
	local middle_tile_x = cfg.middle_tile_x
	local mask_manipulation_mode = cfg.mask_manipulation_mode
	local new_mask_var_name = cfg.new_mask_var_name
	local insert_at = cfg.insert_at
	local partial_length = cfg.partial_length
	
	local sliced_partial = slice_into_table(partial_data, middle_tile_x)
	local sliced_old = slice_into_table(current_mask_data, middle_tile_x)
	local sliced_combined = combine_slices(sliced_old, sliced_partial, mask_manipulation_mode, insert_at, partial_length)
	local combined_mask = concatenate_sliced_mask(sliced_combined)
	wesnoth.set_variable(new_mask_var_name, combined_mask)
end

