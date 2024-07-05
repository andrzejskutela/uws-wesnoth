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

function wesnoth.wml_actions.qquws_pad_text(cfg)
	local initial_text = cfg.text
	local pad_string = cfg.pad
	local desired_length = cfg.length
	local pad_direction = cfg.direction
	local final_text = ''
	local output_text_var = cfg.output_var
	local str_length = string.len(initial_text)

	if str_length < desired_length then
		if pad_direction == 'r' then
			final_text = initial_text .. string.rep(pad_string, desired_length - str_length)
		end
	else
		final_text = initial_text
	end

	wml.variables[output_text_var] = final_text
end

local repeat_key = function(key, length)
	if #key >= length then
		return key:sub(1, length)
	end

	local times = math.floor(length / #key)
	local remain = length % #key
	local result = ''

	for i = 1, times do
		result = result .. key
	end

	if remain > 0 then
		result = result .. key:sub(1, remain)
	end

	return result
end

local encode = function(message, key)
	local rkey = repeat_key(key, #message)
	local result = ''
	local k_char = ''
	local m_char = ''
	local k_byte = 0
	local m_byte = 0
	local xor_byte = 0
	local xor_char = ''

	for i = 1, #message do
		k_char = rkey:sub(i, i)
		m_char = message:sub(i, i)

		k_byte = k_char:byte()
		m_byte = m_char:byte()

		xor_byte = m_byte ~ k_byte
		xor_char = string.char(xor_byte)

		result = result .. xor_char
	end

	return result
end

function wesnoth.wml_actions.qquws_decode_secret(cfg)
	local message = cfg.message
	local key = cfg.key
	local var_name = cfg.var_name
	local i = 1
	local sub = ''
	local result = ''
	
	while i < #message do
	   sub = message:sub(i, i + 1)
	   result = result .. string.char(tonumber(sub, 16))
	   i = i + 2
	end

	wml.variables[var_name] = encode(result, key)
end
