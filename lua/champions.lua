local find_conditional_buffs = function(pool_settings)
	local segregation_pool = {}
	
	if pool_settings['has_ranged'] then
		for k,v in ipairs({ 'A28','A35','A38','A39','A48','A50', 'B3','B7','B28', 'C8', }) do segregation_pool[#segregation_pool + 1] = v end
		
		if pool_settings['has_magical_ranged'] then
			for k,v in ipairs({ 'A42','A43','A44','B51','B51', 'C28','C37','C47', }) do segregation_pool[#segregation_pool + 1] = v end

			if not pool_settings['has_astral_imprisonment'] then
				segregation_pool[#segregation_pool + 1] = 'B54'
			end

			if not pool_settings['has_endurance'] then
				for k,v in ipairs({ 'A52','A52',  }) do segregation_pool[#segregation_pool + 1] = v end
			end
		else
			for k,v in ipairs({ 'B13','B39','C15','C26', }) do segregation_pool[#segregation_pool + 1] = v end
		end

		if pool_settings['has_ranged_slow'] then
			for k,v in ipairs({ 'C52','C52',  }) do segregation_pool[#segregation_pool + 1] = v end
		end
	elseif pool_settings['has_melee'] then
		for k,v in ipairs({ 'A4','A54','A54','B20','B34','C48','C48', }) do segregation_pool[#segregation_pool + 1] = v end
	end
	
	if pool_settings['has_melee'] then
		for k,v in ipairs({ 'A2','A6','A21','A31','A33','A34','A41','A47','A49','A54', 'B2','B4','B6','B9','B27','B30','B33','B41', 'C7','C10','C14','C20','C25','C39', }) do segregation_pool[#segregation_pool + 1] = v end
		
		if pool_settings['has_magical_melee'] then
			for k,v in ipairs({ 'A45','A45','A46','A46', 'B38','B38','B38', }) do segregation_pool[#segregation_pool + 1] = v end

			if not pool_settings['has_endurance'] then
				for k,v in ipairs({ 'A51','A51',  }) do segregation_pool[#segregation_pool + 1] = v end
			end
		else
			for k,v in ipairs({ 'A9','A15','A20','A24','A30','A54', 'B23','B55','B55', 'C5','C6','C12','C19','C23','C27','C30','C41', }) do segregation_pool[#segregation_pool + 1] = v end
		end
		
		if pool_settings['has_melee_pierce'] then
			for k,v in ipairs({ 'A17','A17',  }) do segregation_pool[#segregation_pool + 1] = v end
		end
		
		if pool_settings['has_melee_charge'] then
			for k,v in ipairs({ 'C24','C24','C24',  }) do segregation_pool[#segregation_pool + 1] = v end
		else
			for k,v in ipairs({ 'C42','C42' }) do segregation_pool[#segregation_pool + 1] = v end
		end
	end
	
	if pool_settings['is_static'] == false then
		for k,v in ipairs({ 'B5','B8','B17','B26','B31','B42','B43','B44', 'C11','C34', }) do segregation_pool[#segregation_pool + 1] = v end
		
		if pool_settings['has_ranged'] then
			for k,v in ipairs({ 'A13', }) do segregation_pool[#segregation_pool + 1] = v end
		end
	end
	
	if pool_settings['has_physical_resistances'] then
		for k,v in ipairs({ 'A25','C31','C32',  }) do segregation_pool[#segregation_pool + 1] = v end

		if not pool_settings['has_endurance'] then
			for k,v in ipairs({ 'A51','A51',  }) do segregation_pool[#segregation_pool + 1] = v end
		end
	end
	
	if pool_settings['has_berserk'] then
		-- increase the chance for A26 if berserk
		for k,v in ipairs({ 'A27','A27','A27','A27','A27','A27','A27', }) do segregation_pool[#segregation_pool + 1] = v end
	end
	
	if pool_settings['is_high_level'] then
		for k,v in ipairs({ 'B36','B36','B36','A37','A37','B37','B40','C49','C49', }) do segregation_pool[#segregation_pool + 1] = v end

		if pool_settings['is_chaotic'] and not pool_settings['has_dark_pact'] then
			for k,v in ipairs({ 'A55','A55','A55','A55' }) do segregation_pool[#segregation_pool + 1] = v end
		end

		if pool_settings['is_chaotic'] and not pool_settings['has_protected_by_darkness'] then
			for k,v in ipairs({ 'C61','C61','C61' }) do segregation_pool[#segregation_pool + 1] = v end
		end
	elseif pool_settings['is_chaotic'] then
		for k,v in ipairs({ 'A53','A53','A53', }) do segregation_pool[#segregation_pool + 1] = v end
	end
	
	if pool_settings['has_strong_melee_blade'] then
		for k,v in ipairs({ 'C36','C36',  }) do segregation_pool[#segregation_pool + 1] = v end
	end
	
	if pool_settings['has_overwhelming_melee_blade'] then
		for k,v in ipairs({ 'C40','C40',  }) do segregation_pool[#segregation_pool + 1] = v end
	end
	
	if pool_settings['has_strong_impact'] then
		for k,v in ipairs({ 'A40','A40','A40','A40','A40','A40','A40','A40','A40',  }) do segregation_pool[#segregation_pool + 1] = v end
	end
	
	if pool_settings['has_poison'] and not pool_settings['has_sickness'] then
		for k,v in ipairs({ 'B53','B53','B53',  }) do segregation_pool[#segregation_pool + 1] = v end
	end

	return segregation_pool
end

local early_allowed_buffs_table = { 
	'A1','A3','A6','A7','A8','A9','A11','A12','A13','A15','A16','A18','A19','A22','A23','A24','A25','A28','A29','A31','A39','A47','A48','A49','A50','A51','A52','A53','A54',
	'B1','B6','B11','B12','B13','B17','B19','B21','B23','B24','B25','B26','B27','B28','B39','B45','B46','B47','B48','B49','B50','B52',
	'C1','C2','C3','C7','C8','C9','C11','C12','C13','C14','C15','C17','C20','C21','C22','C23','C24','C25','C26','C27','C39','C43','C44','C48','C50',
}

local restrict_op_buffs = function(pool)
	local ret = {}
	local test_array = {}
	for k,v in ipairs(early_allowed_buffs_table) do
		test_array[v] = true
	end
	
	for k,v in ipairs(pool) do
		if test_array[v] then
			ret[#ret + 1] = v
		end
	end
	
	return ret
end

local exclude_buffs = function(pool, exclude_table)
	local ret = {}
	local test_array = {}
	for k,v in ipairs(exclude_table) do
		test_array[v] = true
	end
	
	for k,v in ipairs(pool) do
		if not test_array[v] then
			ret[#ret + 1] = v
		end
	end
	
	return ret
end

function wesnoth.wml_actions.qquws_champion_buff_to_name(cfg)
	local key_a = cfg.var_buff_a or 'champion_a_key'
	local key_b = cfg.var_buff_b or 'champion_b_key'
	local key_c = cfg.var_buff_c or 'champion_c_key'
	local set_name_var = cfg.name_var
	
	local names = { 
		['A1'] = 'Wrathful',['A2'] = 'Dreadful',['A3']='Abominable',['A4']='Atrocious',['A5']='Frightful',['A6']='Grim',['A7']='Hideous',['A8']='Rotten',['A9']='Terrible',['A10']='Corrupted',['A11']='Putrid',['A12']='Rancid',['A13']='Rotting',['A14']='Infected',['A15']='Dark',['A16']='Black',['A17']='Wretched',['A18']='Barbarous',['A19']='Ferocious',['A20']='Heartless',['A21']='Sinister',['A22']='Infernal',['A23']='Wicked',['A24']='Accursed',['A25']='Malicious',['A26']='Dead',['A27']='Merciless',['A28']='Festering',['A29']='Faceless',['A30']='Wicked',['A31']='Viscious',['A32']='Cruel',['A33']='Vile',['A34']='Sinful',['A35']='Depraved',['A36']='Filthy',['A37']='Reeking',['A38']='Repugnant',['A39']='Degraded',['A40']='Violent',['A41']='Raging',['A42']='Defiled',['A43']='Blind',['A44']='Insufferable',['A45']='Frantic',['A46']='Hopeless',['A47']='Bloodless',['A48']='Frozen',['A49']='Unbearable',['A50']='Deformed',['A51']='Unstoppable',['A52']='Unforgiving',['A53']='Immortal',['A54']='Rabid',['A55']='Demented',['A56']='Furious',['A57']='Brutal',['A58']='Scornful',['A59']='Inferior',['A60']='Abhorrent',['A61']='Unholy',
		['B1'] = 'Apparition',['B2'] = 'Swamplord',['B3']='Demon',['B4']='Minion',['B5']='Shadow',['B6']='Vampire',['B7']='Banshee',['B8']='Soul',['B9']='Wraith',['B10']='Maggot',['B11']='Worm',['B12']='Puke',['B13']='Rot',['B14']='Skin',['B15']='Protector',['B16']='Guardian',['B17']='Angel',['B18']='King',['B19']='Emperor',['B20']='Sultan',['B21']='Baron',['B22']='Herald',['B23']='Overlord',['B24']='Prince',['B25']='Master',['B26']='Lord',['B27']='Dragon',['B28']='WitchKing',['B29']='Ruler',['B30']='Trickster',['B31']='Beast',['B32']='Archangel',['B33']='Doom',['B34']='Destiny',['B35']='Downfall',['B36']='Condemnation',['B37']='Inferno',['B38']='Flame',['B39']='Smoke',['B40']='Sewer',['B41']='Spirit',['B42']='Excrement',['B43']='Abomination',['B44']='Archer',['B45']='Blade',['B46']='Insanity',['B47']='Terror',['B48']='Horror',['B49']='Fury',['B50']='Judgment',['B51']='Bane',['B52']='Glory',['B53']='Venom',['B54']='Harbinger',['B55']='Burden',['B56']='Failure',['B57']='Triumph',['B58']='Poison',['B59']='Pity',['B60']='Havoc',['B61']='Virus',['B62']='Essence',['B63']='Core',['B64']='Gravedigger',
		['C1'] = "of Barlad'ur",['C2'] = "of Isshagh'Azar",['C3']='of Death',['C4']='of Pain',['C5']='of Fire',['C6']='of Fever',['C7']='of Misery',['C8']='of Torment',['C9']='of Agony',['C10']='of Convulsion',['C11']='of Silence',['C12']='of Heavens',['C13']='of Suffering',['C14']='of Decay',['C15']='of Regret',['C16']='of Deception',['C17']='of Deceit',['C18']='of Truth',['C19']='of Abyss',['C20']='of Despair',['C21']='of Doom',['C22']='of Annihilation',['C23']='of Destruction',['C24']='of Dissolution',['C25']='of Humiliation',['C26']='of Mutilation',['C27']='of Corruption',['C28']='of Abandonment',['C29']='of Indifference',['C30']='of Badazar',['C31']='of Olmadar',['C32']='of Verama',['C33']='of Tiremaza',['C34']='of Shassagoth',['C35']='of Fate',['C36']='of Blasphemy',['C37']='of Darkness',['C38']='of Ignorance',['C39']='of Chaos',['C40']='of Disgust',['C41']='of Contempt',['C42']='of Hatred',['C43']='of Sorrow',['C44']='of Extinction',['C45']='of Sickness',['C46']='of Derangement',['C47']='of Delusion',['C48']='of Betrayal',['C49']='of Infidelity',['C50']='of Perversion',['C51']='of Oblivion',['C52']='of Revenge',['C53']='of Starvation',['C54']='of Damnation',['C55']='of Perdition',['C56']='of Anguish',['C57']='of Persecution',['C58']='of Laceration',['C59']='of Doubt',['C60']='of Disorder',['C61']='of Obliteration',['C62']='of Annihilation',
	}
	
	local name = names[key_a] .. ' ' .. names[key_b] .. ' ' .. names[key_c]
	wml.variables[set_name_var] = name
end

function wesnoth.wml_actions.qquws_generate_random_champion(cfg)
	local wave_index = wml.variables['bonus_strength_kval']
	local buff_a_var_name = cfg.var_buff_a or 'champion_a_key'
	local buff_b_var_name = cfg.var_buff_b or 'champion_b_key'
	local buff_c_var_name = cfg.var_buff_c or 'champion_c_key'
	local full_buff = cfg.full_buff
	local exclude_from_pool = {}
	
	local buff_no = 0
	for buff_section in string.gmatch(full_buff, '([^:]+)') do
		buff_no = buff_no + 1
		if buff_no > 3 then
			exclude_from_pool[#exclude_from_pool + 1] = buff_section
		end
	end
	
	local pool_a = { 'A1','A3','A5','A7','A8','A10','A11','A12','A16','A18','A19','A22','A23','A26','A29','A32','A36', }
	local pool_b = { 'B1','B10','B11','B12','B14','B15','B16','B18','B19','B21','B22','B24','B25','B29','B32','B35','B45','B46','B47','B48','B49','B50','B52', }
	local pool_c = { 'C1','C2','C3','C4','C9','C13','C16','C17','C18','C21','C22','C29','C33','C35','C38','C43','C44','C45','C46','C50', }
	
	local pool_settings = {
		['has_ranged'] = wml.variables["qquws_champion_data.has_ranged_attack"],
		['has_melee'] = wml.variables["qquws_champion_data.has_melee_attack"],
		['has_magical_ranged'] = wml.variables["qquws_champion_data.has_magical_ranged"],
		['has_magical_melee'] = wml.variables["qquws_champion_data.has_magical_melee"],
		['is_static'] = wml.variables["qquws_champion_data.is_static"],
		['has_melee_pierce'] = wml.variables["qquws_champion_data.has_melee_pierce"],
		['has_melee_charge'] = wml.variables["qquws_champion_data.has_melee_charge"],
		['has_physical_resistances'] = wml.variables["qquws_champion_data.has_physical_resistances"],
		['has_berserk'] = wml.variables["qquws_champion_data.has_berserk"],
		['is_high_level'] = wml.variables["qquws_champion_data.is_high_level"],
		['has_strong_melee_blade'] = wml.variables["qquws_champion_data.has_strong_melee_blade"],
		['has_strong_impact'] = wml.variables["qquws_champion_data.has_strong_impact"],
		['has_overwhelming_melee_blade'] = wml.variables["qquws_champion_data.has_overwhelming_melee_blade"],
		['has_poison'] = wml.variables["qquws_champion_data.has_poison"],
		['has_astral_imprisonment'] = wml.variables['qquws_champion_data.has_astral_imprisonment'],
		['has_sickness'] = wml.variables['qquws_champion_data.has_sickness'],
		['has_endurance'] = wml.variables['qquws_champion_data.has_endurance'],
		['is_chaotic'] = wml.variables['qquws_champion_data.is_chaotic'],
		['has_dark_pact'] = wml.variables['qquws_champion_data.has_dark_pact'],
		['has_protected_by_darkness'] = wml.variables['qquws_champion_data.has_protected_by_darkness']
	}
	
	local segregation_pool = find_conditional_buffs(pool_settings)
	for k,v in ipairs(segregation_pool) do
		local c = string.sub(v, 1, 1)
		if c == 'A' then
			pool_a[#pool_a + 1] = v
		elseif c == 'B' then
			pool_b[#pool_b + 1] = v
		else
			pool_c[#pool_c + 1] = v
		end
	end
	
	if wave_index < 3 then
		pool_a = restrict_op_buffs(pool_a)
		pool_b = restrict_op_buffs(pool_b)
		pool_c = restrict_op_buffs(pool_c)
	end
	
	if #exclude_from_pool > 0 then
		pool_a = exclude_buffs(pool_a, exclude_from_pool)
		pool_b = exclude_buffs(pool_b, exclude_from_pool)
		pool_c = exclude_buffs(pool_c, exclude_from_pool)
	end
	
	local buff_a = wml.variables[buff_a_var_name]
	local buff_b = wml.variables[buff_b_var_name]
	local buff_c = wml.variables[buff_c_var_name]
	
	if buff_a == 'rand' then
		wml.variables[buff_a_var_name] = mathx.random_choice(pool_a)
	end
	
	if buff_b == 'rand' then
		wml.variables[buff_b_var_name] = mathx.random_choice(pool_b)
	end
	
	if buff_c == 'rand' then
		wml.variables[buff_c_var_name] = mathx.random_choice(pool_c)
	end
end

function wesnoth.wml_actions.qquws_generate_champion_params(cfg)
	local buff_modifier = wml.variables['uws_game.buff_modifier']
	
	-- {hp}, {all attacks}, {melee attacks}, {ranged attacks}, {mp}, {resistance}, {defense}
	local params = {
		{ ['hp'] = 0 },
		{ ['dmg'] = 0, ['strikes'] = 0, },
		{ ['melee_dmg'] = 0, ['melee_strikes'] = 0, ['melee_accuracy'] = 0, ['melee_parry'] = 0, },
		{ ['ranged_dmg'] = 0, ['ranged_strikes'] = 0, ['ranged_accuracy'] = 0, ['ranged_parry'] = 0, },
		{ ['mp'] = 0 },
		{ ['arcane'] = 0, ['blade'] = 0, ['cold'] = 0, ['fire'] = 0, ['impact'] = 0, ['pierce'] = 0 },
		{ ['flat'] = 0, ['frozen'] = 0, ['forest'] = 0, ['village'] = 0, ['swamp_water'] = 0, ['cave'] = 0, ['reef'] = 0, ['shallow_water'] = 0, ['deep_water'] = 0, ['fungus'] = 0, ['mountains'] = 0, ['hills'] = 0, ['castle'] = 0, ['sand'] = 0  },
		{ ['movement_cost'] = 0 }
	}
	
	local settings_table = {
		{ ['input_key'] = 'hp', ['output_index'] = 1, ['name'] = 'Hitpoints ', ['prefix'] = '+', ['suffix'] = '%', ['round_f'] = 10, },
		{ ['input_key'] = 'dmg', ['output_index'] = 2, ['name'] = 'Damage ', ['prefix'] = '+', ['suffix'] = '%', ['round_f'] = 10, },
		{ ['input_key'] = 'strikes', ['output_index'] = 2, ['name'] = 'Strikes ', ['prefix'] = '+', ['suffix'] = '', ['round_f'] = 1, },
		{ ['input_key'] = 'melee_dmg', ['output_index'] = 3, ['name'] = 'Melee Damage ', ['prefix'] = '+', ['suffix'] = '%', ['round_f'] = 10, },
		{ ['input_key'] = 'melee_strikes', ['output_index'] = 3, ['name'] = 'Melee Strikes ', ['prefix'] = '+', ['suffix'] = '', ['round_f'] = 1, },
		{ ['input_key'] = 'melee_accuracy', ['output_index'] = 3, ['name'] = 'Melee Accuracy ', ['prefix'] = '+', ['suffix'] = '', ['round_f'] = 1, },
		{ ['input_key'] = 'melee_parry', ['output_index'] = 3, ['name'] = 'Melee Parry ', ['prefix'] = '+', ['suffix'] = '', ['round_f'] = 1, },
		{ ['input_key'] = 'ranged_dmg', ['output_index'] = 4, ['name'] = 'Ranged Damage ', ['prefix'] = '+', ['suffix'] = '%', ['round_f'] = 10, },
		{ ['input_key'] = 'ranged_strikes', ['output_index'] = 4, ['name'] = 'Ranged Strikes ', ['prefix'] = '+', ['suffix'] = '', ['round_f'] = 1, },
		{ ['input_key'] = 'ranged_accuracy', ['output_index'] = 4, ['name'] = 'Ranged Accuracy ', ['prefix'] = '+', ['suffix'] = '', ['round_f'] = 1, },
		{ ['input_key'] = 'ranged_parry', ['output_index'] = 4, ['name'] = 'Ranged Parry ', ['prefix'] = '+', ['suffix'] = '', ['round_f'] = 1, },
		{ ['input_key'] = 'mp', ['output_index'] = 5, ['name'] = 'Movement Points ', ['prefix'] = '+', ['suffix'] = '', ['round_f'] = 1, },
		{ ['input_key'] = 'movement_cost', ['output_index'] = 8, ['name'] = 'Movement costs ', ['prefix'] = '-', ['suffix'] = '', ['round_f'] = 1}
	}
	
	local resistance_table = {}
	local defense_table = {}
	local all_resistances = { 'arcane', 'blade', 'cold', 'fire', 'impact', 'pierce' }
	local physical_resistances = { 'blade', 'impact', 'pierce' }
	local magical_resistances = { 'arcane', 'cold', 'fire' }
	local special_resistances = false
	local special_defense = false
	local all_terrains = { 'flat', 'frozen', 'forest', 'village', 'swamp_water', 'cave', 'reef', 'shallow_water', 'fungus', 'mountains', 'castle', 'sand', 'hills', 'deep_water', }
	local container = wml.array_variables[cfg.settings]
	local c = container[1]
	local description = ''
	
	for k,v in ipairs(settings_table) do
		if c[v.input_key] > 0 then
			local value = mathx.round(v.round_f * c[v.input_key] * buff_modifier)
			if v.round_f ~= 1 then
				value = value / v.round_f
			end
			
			params[v.output_index][v.input_key] = params[v.output_index][v.input_key] + value
			params[v.output_index]['exists'] = true
			description = description .. v.name .. "<span color='#61ab64'>" .. v.prefix .. value .. v.suffix .. "</span>\n"
		end
	end
	
	if c.all_res > 0 then
		local value = mathx.round(c.all_res * buff_modifier)
		params[6]['exists'] = true
		for k,v in ipairs(all_resistances) do
			params[6][v] = params[6][v] + value
		end
		
		description = description .. 'Resistance (all) <span color="#61ab64">+' .. value .. "%</span>\n"
	end
	
	if c.physical > 0 then
		local value = mathx.round(c.physical * buff_modifier)
		params[6]['exists'] = true
		for k,v in ipairs(physical_resistances) do
			params[6][v] = params[6][v] + value
		end
		
		description = description .. 'Resistance (physical) <span color="#61ab64">+' .. value .. "%</span>\n"
	end
	
	if c.magical > 0 then
		local value = mathx.round(c.magical * buff_modifier)
		params[6]['exists'] = true
		for k,v in ipairs(magical_resistances) do
			params[6][v] = params[6][v] + value
		end
		
		description = description .. 'Resistance (magical) <span color="#61ab64">+' .. value .. "%</span>\n"
	end
	
	for k,v in ipairs(all_resistances) do
		if c[v] > 0 then
			special_resistances = true
			local key = 'r' .. c[v]
			local value = mathx.round(c[v] * buff_modifier)
			params[6]['exists'] = true
			params[6][v] = params[6][v] + value
			
			if resistance_table[key] == nil then
				resistance_table[key] = { ['value'] = value, ['types'] = { v } }
			else
				resistance_table[key]['types'][#resistance_table[key]['types'] + 1] = v
			end
		end
	end
	
	if special_resistances then
		local sort_fn = function(a, b)
			if a.value < b.value then
				return true
			end
			
			return false
		end
		
		local tmp_table = {}
		for k,v in pairs(resistance_table) do
			tmp_table[#tmp_table + 1] = v
		end
		
		table.sort(tmp_table, sort_fn)
		
		for k,v in ipairs(tmp_table) do
			description = description .. "Resistance (" .. table.concat(v.types, ',') .. ") <span color='#61ab64'>+" .. v.value .. "%</span>\n"
		end	
	end
	
	if c.everywhere > 0 then
		local value = mathx.round(c.everywhere * buff_modifier)
		for k,v in ipairs(all_terrains) do
			params[7]['exists'] = true
			params[7][v] = params[7][v] + value
		end
		
		description = description .. 'Defense (everywhere) <span color="#61ab64">+' .. value .. "%</span>\n"
	end
	
	for k,v in ipairs(all_terrains) do
		if c[v] > 0 then
			special_defense = true
			local key = 'd' .. c[v]
			local value = mathx.round(c[v] * buff_modifier)
			params[7]['exists'] = true
			params[7][v] = params[7][v] + value
			
			if defense_table[key] == nil then
				defense_table[key] = { ['value'] = value, ['types'] = { v } }
			else
				defense_table[key]['types'][#defense_table[key]['types'] + 1] = v
			end
		end
	end
	
	if special_defense then
		local sort_fn = function(a, b)
			if a.value < b.value then
				return true
			end
			
			return false
		end
		
		local tmp_table = {}
		for k,v in pairs(defense_table) do
			tmp_table[#tmp_table + 1] = v
		end
		
		table.sort(tmp_table, sort_fn)
		
		for k,v in ipairs(tmp_table) do
			description = description .. "Defense (" .. table.concat(v.types, ',') .. ") <span color='#61ab64'>+" .. v.value .. "%</span>\n"
		end	
	end
	
	if c.abilities_list ~= '' then
		description = description .. string.sub(c.abilities_list, 2) .. "\n"
	end
	
	wml.variables[cfg.description_var] = description
	wml.array_access.set(cfg.var, params)
end

