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

	if amla_settings['is_resilient'] or amla_settings['is_mechanical'] or amla_settings['has_steadfast'] then
		allowed_amlas[#allowed_amlas + 1] = 'PHYS_RES'
	end

	if amla_settings['is_undead'] or amla_settings['is_dark_elf'] then
		allowed_amlas[#allowed_amlas + 1] = 'ARCANE_RES'
		allowed_amlas[#allowed_amlas + 1] = 'NIGHT_EXTRA_DMG'
	end

	if amla_settings['is_elemental'] then
		allowed_amlas[#allowed_amlas + 1] = 'ELEM_RES'
		allowed_amlas[#allowed_amlas + 1] = 'ELEM_HEAL_ON_HIT'
	end

	if amla_settings['is_human'] then
		allowed_amlas[#allowed_amlas + 1] = 'VIL_CASTLE_DEF'
		allowed_amlas[#allowed_amlas + 1] = 'HUMAN_ARMOR'
	end

	if amla_settings['is_elf'] then
		allowed_amlas[#allowed_amlas + 1] = 'FOREST_DEF'

		if amla_settings['has_ranged'] and not amla_settings['has_magical_ranged'] then
			allowed_amlas[#allowed_amlas + 1] = 'ELF_R_ACC'
		end
	end

	if amla_settings['is_dwarf'] then
		allowed_amlas[#allowed_amlas + 1] = 'CAVE_MOUNT_DEF'
		allowed_amlas[#allowed_amlas + 1] = 'DWARF_DMG'
	end

	if amla_settings['is_troll'] then
		allowed_amlas[#allowed_amlas + 1] = 'CAVE_HILLS_DEF'
		allowed_amlas[#allowed_amlas + 1] = 'TROLL_DMG'
		allowed_amlas[#allowed_amlas + 1] = 'IMPACT_RES'
	end

	if amla_settings['is_wose'] then
		allowed_amlas[#allowed_amlas + 1] = 'BLADE_RES'
		allowed_amlas[#allowed_amlas + 1] = 'IMPACT_PIERCE_RES'
		allowed_amlas[#allowed_amlas + 1] = 'WOSE_DMG'
	end

	if amla_settings['is_drake'] then
		allowed_amlas[#allowed_amlas + 1] = 'SAND_CASTLE_DEF'
		allowed_amlas[#allowed_amlas + 1] = 'PIERCE_RES'
	end

	if amla_settings['is_saurian'] then
		allowed_amlas[#allowed_amlas + 1] = 'SWAMP_FLAT_DEF'
		allowed_amlas[#allowed_amlas + 1] = 'COLD_RES'
	end

	if amla_settings['is_orc'] then
		allowed_amlas[#allowed_amlas + 1] = 'NIGHT_EXTRA_STRIKE'
		allowed_amlas[#allowed_amlas + 1] = 'NIGHT_EXTRA_MP'
	end

	if amla_settings['is_fish'] then
		allowed_amlas[#allowed_amlas + 1] = 'WATER_DEF'
		allowed_amlas[#allowed_amlas + 1] = 'FISH_FLAT_DEF'
	end

	if amla_settings['is_goblin'] then
		allowed_amlas[#allowed_amlas + 1] = 'HILLS_MOUNT_DEF'
	end

	if amla_settings['is_centaur'] then
		allowed_amlas[#allowed_amlas + 1] = 'FLAT_HILLS_DEF' -- f2 h5 / f5 h10
		allowed_amlas[#allowed_amlas + 1] = 'R_HIT_AND_RUN_1' -- ranged only
	end

	if amla_settings['is_allien'] then
		allowed_amlas[#allowed_amlas + 1] = 'ARCANE_SECRET_RES' -- 7/15

		if not amla_settings['has_ranged'] and not amla_settings['has_cth_special'] then
			allowed_amlas[#allowed_amlas + 1] = 'M_CTH_SKILLED'
		elseif amla_settings['has_ranged'] and not amla_settings['has_cth_special'] then
			allowed_amlas[#allowed_amlas + 1] = 'R_CTH_SKILLED'
		end
	end

	if amla_settings['is_demon'] then
		allowed_amlas[#allowed_amlas + 1] = 'COLD_ARCANE_RES' -- 7/15

		if not amla_settings['has_bloodlust'] then
			allowed_amlas[#allowed_amlas + 1] = 'BLOODLUST' -- 3hp/6hp
		end
	end

	if amla_settings['is_animal'] then
		allowed_amlas[#allowed_amlas + 1] = 'BIG_HITPOINTS' -- 12% twice
	end

	if amla_settings['is_aerial'] then
		allowed_amlas[#allowed_amlas + 1] = 'MINI_DEF_EVERYWHERE' -- 1/3/5
	end

	if amla_settings['is_insect'] then
		allowed_amlas[#allowed_amlas + 1] = 'IMPACT_RES' -- 10/20
		allowed_amlas[#allowed_amlas + 1] = 'FIRE_RES' -- 10/20
	end

	if amla_settings['is_warg'] then
		allowed_amlas[#allowed_amlas + 1] = 'EXTRA_STRIKE' -- offense only
		allowed_amlas[#allowed_amlas + 1] = 'RABID_ATTACK' -- increased damage the more wounded the unit is
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
		['has_steadfast'] = wml.variables["qquws_amla_data.has_steadfast"],
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
		['is_human'] = wml.variables["qquws_amla_data.is_human"],
		['is_elf'] = wml.variables["qquws_amla_data.is_elf"],
		['is_dwarf'] = wml.variables["qquws_amla_data.is_dwarf"],
		['is_troll'] = wml.variables["qquws_amla_data.is_troll"],
		['is_wose'] = wml.variables["qquws_amla_data.is_wose"],
		['is_drake'] = wml.variables["qquws_amla_data.is_drake"],
		['is_saurian'] = wml.variables["qquws_amla_data.is_saurian"],
		['is_orc'] = wml.variables["qquws_amla_data.is_orc"],
		['is_fish'] = wml.variables["qquws_amla_data.is_fish"],
		['is_goblin'] = wml.variables["qquws_amla_data.is_goblin"],
		['is_centaur'] = wml.variables["qquws_amla_data.is_centaur"],
		['is_allien'] = wml.variables["qquws_amla_data.is_allien"],
		['is_demon'] = wml.variables["qquws_amla_data.is_demon"],
		['is_dark_elf'] = wml.variables["qquws_amla_data.is_dark_elf"],
		['is_animal'] = wml.variables["qquws_amla_data.is_animal"],
		['is_aerial'] = wml.variables["qquws_amla_data.is_aerial"],
		['is_insect'] = wml.variables["qquws_amla_data.is_insect"],
		['has_cth_special'] = wml.variables["qquws_amla_data.has_cth_special"],
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
