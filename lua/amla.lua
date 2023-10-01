local find_amla_buffs = function(amla_settings)
	local allowed_amlas = {}

	if amla_settings['has_default_regenerates'] then
		allowed_amlas[#allowed_amlas + 1] = 'REGEN'
	end



	
	-- if amla_settings['has_ranged'] then
	-- 	for k,v in ipairs({ 'A28', }) do allowed_amlas[#allowed_amlas + 1] = v end
		
	-- 	if amla_settings['has_magical_ranged'] then
	-- 		for k,v in ipairs({ 'A42', }) do allowed_amlas[#allowed_amlas + 1] = v end
	-- 	else
	-- 		for k,v in ipairs({ 'B13', }) do allowed_amlas[#allowed_amlas + 1] = v end
	-- 	end
	-- elseif amla_settings['has_melee'] then
	-- 	for k,v in ipairs({ 'A4', }) do allowed_amlas[#allowed_amlas + 1] = v end
	-- end
	
	-- if amla_settings['has_melee'] then
	-- 	for k,v in ipairs({ 'A2', }) do allowed_amlas[#allowed_amlas + 1] = v end
		
	-- 	if amla_settings['has_magical_melee'] then
	-- 		for k,v in ipairs({ 'A45', }) do allowed_amlas[#allowed_amlas + 1] = v end
	-- 	else
	-- 		for k,v in ipairs({ 'A9', }) do allowed_amlas[#allowed_amlas + 1] = v end
	-- 	end
	-- end
	
	-- if amla_settings['is_fast'] then
	-- 	for k,v in ipairs({ 'B5' }) do allowed_amlas[#allowed_amlas + 1] = v end
	-- end
	
	-- if amla_settings['has_physical_resistances'] then
	-- 	for k,v in ipairs({ 'A25'  }) do allowed_amlas[#allowed_amlas + 1] = v end
	-- end

	return allowed_amlas
end

function wesnoth.wml_actions.qquws_generate_random_amla_list(cfg)
	local save_list_var_name = cfg.list_var

	local amla_settings = {
		['level'] = wml.variables['qquws_amla_data.level'],
		['has_default_regenerates'] = wml.variables['qquws_amla_data.has_default_regenerates'],

		['has_ranged'] = wml.variables["qquws_amla_data.has_ranged_attack"],
		['has_melee'] = wml.variables["qquws_amla_data.has_melee_attack"],
		['has_magical_ranged'] = wml.variables["qquws_amla_data.has_magical_ranged"],
		['has_magical_melee'] = wml.variables["qquws_amla_data.has_magical_melee"],
		['is_fast'] = wml.variables["qquws_amla_data.is_fast"],
		['has_physical_resistances'] = wml.variables["qquws_amla_data.has_physical_resistances"],
	}

	local allowed_amlas = find_amla_buffs(amla_settings)
	local allowed_no = 0

	if amla_settings['level'] >= 2 then
		allowed_no = 3
	end

	if allowed_no > 0 then
		if #allowed_amlas > allowed_no then
			mathx.shuffle(allowed_amlas)
			wml.variables[save_list_var_name] = table.concat(allowed_amlas, ",", 1, allowed_no)
		else
			wml.variables[save_list_var_name] = table.concat(allowed_amlas, ",")
		end
	end
end
