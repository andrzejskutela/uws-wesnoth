local find_amla_buffs = function(amla_settings)
	local allowed_amlas = {}

	if amla_settings['has_default_regenerates'] then
		allowed_amlas[#allowed_amlas + 1] = 'REGEN'
	elseif amla_settings['is_healthy'] then
		allowed_amlas[#allowed_amlas + 1] = 'MINI_REG'
	end
	
	if amla_settings['has_ranged'] then
		allowed_amlas[#allowed_amlas + 1] = 'R_DMG'

		if amla_settings['is_dextrous'] then
			allowed_amlas[#allowed_amlas + 1] = 'R_STR'
		end
		
		if amla_settings['has_magical_ranged'] then
			if amla_settings['is_intelligent'] then
				allowed_amlas[#allowed_amlas + 1] = 'R_MAG_ACC'
			end
		else
			allowed_amlas[#allowed_amlas + 1] = 'R_ACC'

			if amla_settings['is_quick'] or amla_settings['is_undead'] then
				allowed_amlas[#allowed_amlas + 1] = 'R_PAR'
			end
		end
	end
	
	if amla_settings['has_melee'] then
		allowed_amlas[#allowed_amlas + 1] = 'M_DMG'

		if amla_settings['is_resilient'] or amla_settings['is_undead'] then
			allowed_amlas[#allowed_amlas + 1] = 'M_STR'
		end
		
		if amla_settings['has_magical_melee'] then
			if amla_settings['is_strong'] then
				allowed_amlas[#allowed_amlas + 1] = 'M_MAG_ACC'
			end
		else
			allowed_amlas[#allowed_amlas + 1] = 'M_ACC'

			if amla_settings['is_quick'] then
				allowed_amlas[#allowed_amlas + 1] = 'M_PAR'
			end
		end
	end
	
	if amla_settings['is_fast'] and amla_settings['is_quick'] then
		allowed_amlas[#allowed_amlas + 1] = 'SPEED'
	elseif amla_settings['is_fast'] or amla_settings['is_quick'] then
		allowed_amlas[#allowed_amlas + 1] = 'SMALL_SPEED'
	end

	if amla_settings['is_intelligent'] then
		allowed_amlas[#allowed_amlas + 1] = 'LOW_XP'
	end

	if amla_settings['is_resilient'] or amla_settings['is_mechanical'] then
		allowed_amlas[#allowed_amlas + 1] = 'PHYS_RES'
	end

	if amla_settings['is_undead'] then
		allowed_amlas[#allowed_amlas + 1] = 'ARCANE_RES'
	end

	if amla_settings['is_elemental'] then
		allowed_amlas[#allowed_amlas + 1] = 'ELEM_RES'
	end
	
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
		['is_strong'] = wml.variables["qquws_amla_data.is_strong"],
		['is_dextrous'] = wml.variables["qquws_amla_data.is_dextrous"],
		['is_quick'] = wml.variables["qquws_amla_data.is_quick"],
		['is_resilient'] = wml.variables["qquws_amla_data.is_resilient"],
		['is_intelligent'] = wml.variables["qquws_amla_data.is_intelligent"],
		['is_healthy'] = wml.variables["qquws_amla_data.is_healthy"],
		['is_undead'] = wml.variables["qquws_amla_data.is_undead"],
		['is_mechanical'] = wml.variables["qquws_amla_data.is_mechanical"],
		['is_elemental'] = wml.variables["qquws_amla_data.is_elemental"],
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
