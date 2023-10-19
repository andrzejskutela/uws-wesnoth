--<<
-- (t)urn, (d)iff
-- y only matters if (t)urn = 1
-- lvl is important for random spawns, it should match the level of #type# unit
-- guard moves only if enemy within range
-- moves (int) -1 = no change
-- buff (empty | champion_buff_id)
-- item (true | false) if true then random item is selected on spawn
-- gold if gt 0 then unit gives this gold amount when killed
-- recruits (false | str)
-- recruitment_gold (int)

-- mandatory fields are t, d, side, x, lvl and type

-- for objects 'row' = object
-- cat is mandatory

return {
	-- objects
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 10, ['y'] = 16, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 60 },
	{ ['row'] = 'item', ['t'] = 11, ['x'] = 22, ['asymmetric'] = true, ['pool'] = { 'cold_res','melee_slow','freezing_gem','icewind_aura' }, },
	{ ['row'] = 'object', ['t'] = 16, ['x'] = 6, ['image'] = 'halo/elven/druid-healing8.png', ['name'] = 'Crystal Forest', ['cat'] = 'event', ['event'] = 'rfc_3_crystal_forest', },
	{ ['row'] = 'object', ['t'] = 18, ['x'] = 18, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 100 },
	{ ['row'] = 'object', ['t'] = 24, ['x'] = 25, ['image'] = 'scenery/signpost.png', ['cat'] = 'event', ['event'] = 'rfc_3_signpost', },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['y'] = 10, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', ['moves'] = 6 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['y'] = 11, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_gunner', ['default'] = 'Dwarvish Stalwart', ['moves'] = 4, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', ['moves'] = 5 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['y'] = 10, ['lvl'] = 3, ['type'] = 'Direwolf', ['default'] = 'Direwolf', ['moves'] = 6 },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['y'] = 11, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_ice_golem', ['default'] = 'Dwarvish Guardsman', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 22, ['y'] = 7, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 23, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 6, ['side'] = 2, ['x'] = 19, ['y'] = 5, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_big_ice_golem', ['default'] = 'Dwarvish Steelclad', ['bulky'] = 48, ['moves'] = 4 },
	
	-- 2 - 8 (mask y 28 - 22)
	
	{ ['t'] = 2, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_fighter', ['default'] = 'Dwarvish Thunderer', },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_mage', ['default'] = 'Dwarvish Pathfinder', ['bulky'] = 20, },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_witch', ['default'] = 'Dwarvish Thunderguard', ['recruits'] = 'AE_agl_frozen_frost_fighter,AE_agl_frozen_frost_rider,AE_agl_frozen_frost_student,AE_agl_frozen_ice_golem', ['default_recruits'] = 'Dwarvish Fighter,Dwarvish Guardsman,Dwarvish Scout,Dwarvish Thunderer', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 90, ['recruit_armored'] = 20, ['gold'] = 50 },
	{ ['t'] = 7, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_fury_shooter', ['default'] = 'Dwarvish Dragonguard', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 8, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Troll Whelp', ['race_guard_off'] = true },

	{ ['t'] = 3, ['d'] = 2, ['side'] = 2, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_gunner_master', ['default'] = 'Dwarvish Sentinel', ['guard'] = true, ['disallow_slash_unguardian'] = true, ['armored'] = 12, ['gold'] = 20 },
	
	{ ['t'] = 3, ['d'] = 3, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_rider', ['default'] = 'Dwarvish Ulfserker', ['beefy'] = 40 },
	{ ['t'] = 5, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_lanceman', ['default'] = 'Dwarvish Runesmith', ['gold'] = 10 },
	
	{ ['t'] = 4, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_flying_golem', ['default'] = 'Gryphon Rider', ['agile'] = 12 },
	{ ['t'] = 4, ['d'] = 4, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },
	
	{ ['t'] = 7, ['d'] = 6, ['side'] = 2, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_lance_master', ['default'] = 'Dwarvish Runemaster', ['armored'] = 24, },
	
	-- 9 - 15 (mask y 21 - 15)
	
	{ ['t'] = 10, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Matriarch', ['default'] = 'Troll Shaman', ['guard'] = true, ['calls_for_help'] = true },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Priestress_of_the_Vault', ['default'] = 'Skeleton', ['armored'] = 12, ['gold'] = 10 },
	{ ['t'] = 12, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Night_Maiden', ['default'] = 'Ghoul', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Phade', ['default'] = 'Great Icemonax', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Orcish Assassin', ['guard'] = true },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_agl_deep_Patroness', ['default'] = 'Great Troll', ['recruits'] = 'AE_agl_deep_Bloodmaiden,AE_agl_deep_Tyrhai_Rider,AE_agl_deep_Lidh,AE_agl_deep_Priestress_of_the_Vault', ['default_recruits'] = 'Troll Whelp,Young Ogre,Ghost,Ghoul', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 95, ['recruit_minion'] = 'D1' },
	
	{ ['t'] = 11, ['d'] = 2, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Troll Whelp', },
	{ ['t'] = 15, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Tyrhai_Rider', ['default'] = 'Giant Mudcrawler', },
	
	{ ['t'] = 14, ['d'] = 3, ['side'] = 3, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Lidh', ['default'] = 'Young Ogre', },
	{ ['t'] = 13, ['d'] = 3, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Minotaur', ['default'] = 'Troll', ['guard'] = true, ['beefy'] = 40 },
	
	{ ['t'] = 10, ['d'] = 4, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Black_Tyrhai', ['default'] = 'Troll Hero', ['bulky'] = 60, ['guard'] = true },
	
	{ ['t'] = 12, ['d'] = 6, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Vengeance', ['default'] = 'Shadow', },
	
	-- 16 - 22 (mask y 14 - 8)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 0, ['type'] = 'AE_dep_deep_wisp', ['default'] = 'Icemonax', },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 4, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', ['beefy'] = 40, ['fast'] = 1 },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', ['bulky'] = 12, ['agile'] = 12, },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 4, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Widow', ['default'] = 'Dark Adept', },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Stone_Soldier', ['default'] = 'Shadow', },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 4, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_arc_despair_Officer', ['default'] = 'Necromancer', ['recruits'] = 'Shadow,Wraith,Deathblade,Bone Shooter,Necrophage', ['default_recruits'] = 'Shadow,Wraith,Deathblade,Bone Shooter,Necrophage', ['r_lvls'] = '2,2,2,2', ['recruitment_gold'] = 125, },
	
	{ ['t'] = 17, ['d'] = 2, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Soldier', ['default'] = 'Deathblade', ['guard'] = true },
	
	{ ['t'] = 20, ['d'] = 3, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Black_Shadow', ['default'] = 'Wraith', ['bulky'] = 36, ['beefy'] = 68 },
	
	{ ['t'] = 19, ['d'] = 4, ['side'] = 4, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', },
	{ ['t'] = 21, ['d'] = 4, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Midnight_Beauty', ['default'] = 'Dark Sorcerer', },
	
	{ ['t'] = 17, ['d'] = 6, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Elthare', ['default'] = 'Ogre', ['buff'] = 'A46:B51:C32:C21', },
	
	-- 23 - 29 (mask y 7 - 1)
	
	{ ['t'] = 25, ['d'] = 3, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_arc_despair_Banshee', ['default'] = 'Death Knight', },
	
	{ ['t'] = 26, ['d'] = 6, ['side'] = 4, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Nightgaunt', ['default'] = 'Nightgaunt', },
	
	-- final boss 24 / mask y 6
	
	{ ['t'] = 24, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 4, ['type'] = 'QQ_dark_witness', ['default'] = 'QQ_dark_witness', ['buff'] = 'A38:B7:C31', ['allow_random'] = false, ['story_message'] = 'Do you know who I am?', ['story_response'] = 'What in gods name is this?!' },
}


-->>
