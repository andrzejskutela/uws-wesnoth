function wesnoth.wml_actions.qquws_calculate_buff_list(cfg)
	local used_list = cfg.list
	local all_available = cfg.all_available
	local save_list_var_name = cfg.output_list_var

	local used_table = {}
	local available_table = {}
	local increase_table = {}

	for item in string.gmatch(used_list, '([^,]+)') do
		if string.match(item, ":") then
			local field, val = string.match(item, "([^:]+):([0-9]+)")
			used_table[field] = tonumber(val)
		else
			used_table[item] = true
		end
	end

	for item in string.gmatch(all_available, '([^,]+)') do
		if string.match(item, ":") then
			local field, increase, max = string.match(item, "([^:]+):([0-9]+)m([0-9]+)")
			if used_table[field] == nil or tonumber(used_table[field]) < tonumber(max) then
				table.insert(available_table, field)
				increase_table[field] = increase
			end
		else
			if used_table[item] == nil then
				table.insert(available_table, item)
			end
		end
	end

	if #available_table == 0 then
		wml.variables[save_list_var_name] = used_list
	else
		local new_buff = mathx.random_choice(available_table)
		if increase_table[new_buff] then
			local base_value = 0
			if used_table[new_buff] then
				base_value = tonumber(used_table[new_buff])
			end
			
			used_table[new_buff] = base_value + tonumber(increase_table[new_buff])	
		else
			used_table[new_buff] = true
		end

		local new_list = ''
		for k,v in pairs(used_table) do
			if new_list ~= '' then
				new_list = new_list .. ','
			end

			new_list = new_list .. k

			if v ~= true then
				new_list = new_list .. ':' .. v
			end
		end

		wml.variables[save_list_var_name] = new_list
	end
end
