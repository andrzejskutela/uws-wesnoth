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
	
	{ ['row'] = 'object', ['t'] = 21, ['x'] = 22, ['cat'] = 'hidden_unit', ['type'] = 'AE_myh_Water_Dryad', ['type_default'] = 'Elvish Shaman', ['message'] = "Brutes! They don't know how to treat a lady! Hey you... what can I do for you?" },
	{ ['row'] = 'object', ['t'] = 33, ['x'] = 16, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 30 },
	{ ['row'] = 'object', ['t'] = 37, ['x'] = 23, ['cat'] = 'rune', ['image'] = 'scenery/rune3-glow.png', ['amount'] = 2, ['name'] = 'Rune', ['set'] = 'R6,R7', ['color'] = '#e3974b', ['tooltip'] = '+10% forest defense (50%)\
+10% hills defense (50%)' },
	{ ['row'] = 'object', ['t'] = 66, ['x'] = 23, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 60 },
	{ ['row'] = 'object', ['t'] = 92, ['x'] = 24, ['cat'] = 'hidden_unit', ['type'] = 'AE_mag_Toad', ['type_default'] = 'Mage', ['message'] = "These pesky nagas imprisoned me here for their entertainment! So good the breath the fresh air again. I owe you for this one!" },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 0, ['side'] = 2, ['x'] = 12, ['y'] = 12, ['lvl'] = 0, ['type'] = 'Walking Corpse', ['default'] = '', ['moves'] = 4, ['bulky'] = 30 },
	{ ['t'] = 1, ['d'] = 0, ['side'] = 2, ['x'] = 13, ['y'] = 7, ['lvl'] = 0, ['type'] = 'Walking Corpse', ['default'] = '', ['moves'] = 4, },
	{ ['t'] = 1, ['d'] = 0, ['side'] = 2, ['x'] = 10, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Infested', ['default'] = '', ['moves'] = 4, },
	{ ['t'] = 1, ['d'] = 0, ['side'] = 2, ['x'] = 9, ['y'] = 16, ['lvl'] = 0, ['type'] = 'Walking Corpse', ['default'] = '', ['moves'] = 4, },
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['y'] = 16, ['lvl'] = 0, ['type'] = 'Walking Corpse', ['default'] = '', ['moves'] = 4, },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 10, ['y'] = 14, ['lvl'] = 0, ['type'] = 'Walking Corpse', ['default'] = '', ['moves'] = 4, },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 11, ['y'] = 14, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Infected', ['default'] = '', ['moves'] = 4, ['buff'] = 'A41:B6:C16', ['gold'] = 15 },
	
	{ ['t'] = 1, ['d'] = 5, ['side'] = 2, ['x'] = 7, ['y'] = 17, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Infested', ['default'] = '', ['moves'] = 4, ['bulky'] = 80, ['gold'] = 30 },
	
	-- 2 - 8 (mask y 168 - 162)
	
	{ ['t'] = 2, ['d'] = 0, ['side'] = 2, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Infected', ['default'] = '', },
	{ ['t'] = 3, ['d'] = 0, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_ext_undead_Skeleton', ['default'] = '', ['item'] = true },
	{ ['t'] = 5, ['d'] = 0, ['side'] = 2, ['x'] = 15, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Infected', ['default'] = '', ['beefy'] = 25 },
	{ ['t'] = 6, ['d'] = 0, ['side'] = 2, ['x'] = 24, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Blob', ['default'] = '', ['gold'] = 12 },
	{ ['t'] = 7, ['d'] = 0, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Cadaver', ['default'] = '', ['gold'] = 30 },
	{ ['t'] = 8, ['d'] = 0, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mrc_oracles_Darkmage', ['default'] = '', ['recruits'] = 'AE_mrc_Blight_Infected,AE_mrc_Blight_Parasite,AE_mrc_Blight_Microbe', ['default_recruits'] = '', ['r_lvls'] = '0,0,0', ['recruitment_gold'] = 30 },
	
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Infected', ['default'] = '', },
	{ ['t'] = 7, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Infected', ['default'] = '', },
	
	{ ['t'] = 6, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Cadaver', ['default'] = '', },
	{ ['t'] = 7, ['d'] = 2, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Host', ['default'] = '', },
	
	{ ['t'] = 5, ['d'] = 3, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Infected_Hound' },
	
	{ ['t'] = 7, ['d'] = 4, ['side'] = 2, ['x'] = 19, ['lvl'] = 0, ['type'] = 'Walking Corpse', ['default'] = '', },
	
	{ ['t'] = 3, ['d'] = 5, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Slime', ['default'] = '', },
	
	-- 9 - 15 (mask y 161 - 155)
	
	{ ['t'] = 11, ['d'] = 0, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Charred_Zombie', ['default'] = '', ['bulky'] = 30 },
	{ ['t'] = 12, ['d'] = 0, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Parasite' },
	{ ['t'] = 12, ['d'] = 0, ['side'] = 2, ['x'] = 15, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Parasite' },
	{ ['t'] = 13, ['d'] = 0, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Water_Snake', ['default'] = '', },
	{ ['t'] = 14, ['d'] = 0, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Tower_Servant', ['default'] = '', ['moves'] = 0, ['gold'] = 10, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 14, ['d'] = 0, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_myh_Water_Dryad', ['default'] = '', },
	
	{ ['t'] = 10, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Dark_Current', ['default'] = '', },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Tower_Dancer', ['default'] = '', ['calls_for_help'] = true },
	
	{ ['t'] = 13, ['d'] = 2, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_rhy_ne_Skeleton_Horse', ['default'] = '', ['fast'] = 1 },
	{ ['t'] = 15, ['d'] = 2, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_chs_elementals_Undine', ['default'] = '', },
	
	{ ['t'] = 12, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Amoeba', ['default'] = '', },
	
	{ ['t'] = 9, ['d'] = 4, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Fetid', ['default'] = '', },
	
	{ ['t'] = 10, ['d'] = 5, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mrc_Blight_Dismembered', ['default'] = '', ['gold'] = 15},
	
	-- 16 - 22 (mask y 154 - 148)
	
	{ ['t'] = 16, ['d'] = 0, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Blue_Lizard', ['default'] = '', },
	{ ['t'] = 17, ['d'] = 0, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_mrc_cult_Survivor', ['default'] = '', ['bulky'] = 50, ['beefy'] = 50, },
	{ ['t'] = 18, ['d'] = 0, ['side'] = 3, ['x'] = 23, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = '', ['bulky'] = 120, },
	{ ['t'] = 18, ['d'] = 0, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_ext_chaos_Headhunter', ['default'] = '', ['fast'] = 2, },
	{ ['t'] = 19, ['d'] = 0, ['side'] = 3, ['x'] = 22, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = '', ['bulky'] = 40, },
	{ ['t'] = 22, ['d'] = 0, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mrc_mercenaries_Brute', ['default'] = '', ['gold'] = 10, },
	
	{ ['t'] = 20, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_chs_wild_humans_Bandit_Fighter', ['default'] = '', },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_chs_wild_humans_Bandit_Fighter', ['default'] = '', },
	
	{ ['t'] = 21, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_chs_wild_humans_Rogue_Mage', ['default'] = '', ['beefy'] = 30, },
	{ ['t'] = 21, ['d'] = 2, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Drone', ['default'] = '', },
	
	{ ['t'] = 18, ['d'] = 3, ['side'] = 3, ['x'] = 20, ['lvl'] = 1, ['type'] = 'Thug', ['default'] = '', ['armored'] = 8 },
	{ ['t'] = 20, ['d'] = 3, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Fly', ['default'] = '', },
	
	{ ['t'] = 19, ['d'] = 4, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_ext_outlaws_Brigand', ['default'] = '', },
	
	{ ['t'] = 18, ['d'] = 5, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_imp_Marauders_Sailor', ['default'] = '', ['race_guard_off'] = true, ['gold'] = 10 },
	
	-- 23 - 29 (mask y 147 - 141)
	
	{ ['t'] = 24, ['d'] = 0, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_ext_orcs_Naga_Hunter', ['default'] = '', },
	{ ['t'] = 25, ['d'] = 0, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_ext_orcs_Naga_Hunter', ['default'] = '', },
	{ ['t'] = 27, ['d'] = 0, ['side'] = 4, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_mag_Roc_Rider', ['default'] = '', },
	{ ['t'] = 28, ['d'] = 0, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mag_Goblin_Sniper', ['default'] = '', ['moves'] = 0, ['gold'] = 10, },
	{ ['t'] = 28, ['d'] = 0, ['side'] = 4, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_mag_Roc_Master', ['default'] = '', ['allow_random'] = false },
	{ ['t'] = 29, ['d'] = 0, ['side'] = 4, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mag_Goblin_Shaman', ['default'] = '', },
	
	{ ['t'] = 26, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_ext_orcs_Naga_Assassin', ['default'] = '', },
	{ ['t'] = 29, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_mag_Goblin_Hunter', ['default'] = '', },
	
	{ ['t'] = 23, ['d'] = 2, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_ext_orcs_Goblin_Cavalryman', ['default'] = '', },
	{ ['t'] = 28, ['d'] = 2, ['side'] = 4, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mag_Goblin_Warrior', ['default'] = '', ['beefy'] = 40, },
	
	{ ['t'] = 24, ['d'] = 3, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_chs_wild_humans_Dread_Wolf', ['default'] = '', },
	
	{ ['t'] = 25, ['d'] = 4, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_ext_orcs_Naga_Warden', ['default'] = '', ['buff'] = 'A31:B30:C17', ['gold'] = 20, ['item'] = true, },
	
	{ ['t'] = 28, ['d'] = 5, ['side'] = 4, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_mag_Goblin_Invader', ['default'] = '', ['race_guard_off'] = true, ['gold'] = 12 },
	{ ['t'] = 29, ['d'] = 5, ['side'] = 4, ['x'] = 20, ['lvl'] = 0, ['type'] = 'AE_mag_Goblin_Kamikaze', ['default'] = '', ['race_guard_off'] = true, ['allow_random'] = false, ['bulky'] = 64, ['beefy'] = 64 },
	
	-- 30 - 36 (mask y 140 - 134)
	
	{ ['t'] = 30, ['d'] = 0, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mag_Goblin_Warrior', ['default'] = '', ['disallow_slash_unguardian'] = true },
	{ ['t'] = 30, ['d'] = 0, ['side'] = 4, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_mag_Goblin_Runt', ['default'] = '', },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Grand_Crocodile', ['default'] = '', ['allow_random'] = false },
	{ ['t'] = 31, ['d'] = 0, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mag_Goblin_Hunter', ['default'] = '', },
	{ ['t'] = 31, ['d'] = 0, ['side'] = 4, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mag_Goblin_Assassin', ['default'] = '', ['recruits'] = 'AE_mag_Goblin_Hunter,AE_mag_Goblin_Warrior,AE_mag_Goblin_Archer,AE_mag_Goblin_Shaman', ['default_recruits'] = '', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 75 },
	{ ['t'] = 32, ['d'] = 0, ['side'] = 4, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_mag_Goblin_Kamikaze', ['default'] = '', ['race_guard_off'] = true, ['allow_random'] = false },
	{ ['t'] = 34, ['d'] = 0, ['side'] = 4, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_arc_orcs_Frost_Goblin', ['default'] = '', },
	{ ['t'] = 35, ['d'] = 0, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_arc_orcs_Goblin_Drummer', ['default'] = '', },
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_mag_Roc_Rider', ['default'] = '', ['allow_random'] = false, },
	
	{ ['t'] = 32, ['d'] = 2, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mag_Goblin_Druid', ['default'] = '', },
	
	{ ['t'] = 34, ['d'] = 3, ['side'] = 4, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_mag_Goblin_Wizard', ['default'] = '', },
	
	{ ['t'] = 34, ['d'] = 4, ['side'] = 4, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mag_Goblin_Warbanner', ['default'] = '', },
	
	{ ['t'] = 34, ['d'] = 5, ['side'] = 4, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_mag_Goblin_Archer', ['default'] = '', },
	
	-- 37 - 43 (mask y 133 - 127)
	
	{ ['t'] = 38, ['d'] = 0, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_mrc_highlanders_Warrior_Spirit', ['default'] = '', ['armored'] = 10, ['beefy'] = 20, ['race_guard_off'] = true },
	{ ['t'] = 39, ['d'] = 0, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mag_Troll_Warbanner', ['default'] = '', ['bulky'] = 50, ['gold'] = 80, ['recruits'] = 'AE_mag_Troll_Fire_Wizard,Troll Shaman,Troll,Troll Rocklobber', ['default_recruits'] = '', ['r_lvls'] = '2,2,2,2', ['recruitment_gold'] = 120 },
	{ ['t'] = 41, ['d'] = 0, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Wolf', ['default'] = '', },
	{ ['t'] = 43, ['d'] = 0, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_myh_Rabid_Wolf', ['default'] = '', ['buff'] = 'A26:B19:C30', ['race_guard_off'] = true },
	
	{ ['t'] = 41, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Wolf', ['default'] = '', },
	
	{ ['t'] = 42, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_ext_monsters_Great_Wolf', ['default'] = '', },
	
	{ ['t'] = 42, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_efm_freemen_Roc', ['default'] = '', ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 37, ['d'] = 4, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_efm_freemen_Great_Roc', ['default'] = '', ['disallow_slash_unguardian'] = true, ['agile'] = 8, },
	
	{ ['t'] = 39, ['d'] = 5, ['side'] = 2, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_mag_Troll_Warlock', ['default'] = '', ['disallow_slash_unguardian'] = true },
	{ ['t'] = 39, ['d'] = 5, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_imp_Sidhe_Ice_Bear', ['default'] = '', ['bulky'] = 60, ['beefy'] = 20 },
	
	-- 44 - 50 (mask y 126 - 120)
	
	{ ['t'] = 44, ['d'] = 0, ['side'] = 2, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_arc_ukians_Ukian_Iceblade_Seal', ['default'] = '', },
	{ ['t'] = 46, ['d'] = 0, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_mrc_highlanders_Behemoth', ['default'] = '', ['armored'] = 16, ['bulky'] = 40 },
	{ ['t'] = 47, ['d'] = 0, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mag_Heavy_Balloon', ['default'] = '', ['race_guard_off'] = true },
	
	{ ['t'] = 48, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_mag_Heavy_Balloon', ['default'] = '', ['race_guard_off'] = true },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 4, ['type'] = 'QQ_bear_gatekeeper', ['default'] = '', ['buff'] = 'A29:B31:C31', ['guard'] = true, ['calls_for_help'] = true, ['item'] = true, },
	
	{ ['t'] = 44, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_ext_dark_elves_Boreal_Wyrm', ['default'] = '', },
	
	{ ['t'] = 50, ['d'] = 3, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_mag_Mechanical_Dragon', ['default'] = '', ['armored'] = 12, ['race_guard_off'] = true },
	
	{ ['t'] = 45, ['d'] = 4, ['side'] = 2, ['x'] = 19, ['lvl'] = 4, ['type'] = 'AE_ext_monsters_Giant_Yeti', ['default'] = '', ['race_guard_off'] = true, ['bulky'] = 60, ['event'] = 'tsw_yeti', },
	
	{ ['t'] = 48, ['d'] = 5, ['side'] = 2, ['x'] = 23, ['lvl'] = 5, ['type'] = 'QQ_ice_mammoth', ['default'] = '', },
	
	-- 51 - 57 (mask y 119 - 113)
	
	{ ['t'] = 53, ['d'] = 0, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'Dwarvish Fighter', ['default'] = '', },
	{ ['t'] = 53, ['d'] = 0, ['side'] = 3, ['x'] = 20, ['lvl'] = 1, ['type'] = 'Dwarvish Fighter', ['default'] = '', },
	{ ['t'] = 54, ['d'] = 0, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mag_Red_Ulfserker', ['default'] = '', ['beefy'] = 40, ['race_guard_off'] = true },
	{ ['t'] = 55, ['d'] = 0, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mag_Steam_Berserker', ['default'] = '', ['race_guard_off'] = true },
	{ ['t'] = 56, ['d'] = 0, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mag_Technician', ['default'] = '', ['beefy'] = 30, ['gold'] = 20 },
	{ ['t'] = 57, ['d'] = 0, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mag_Technician', ['default'] = '', },
	
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_mag_Dwarvish_Rune_Warrior', ['default'] = '', ['moves'] = 0, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_mag_Steam_Berserker', ['default'] = '', ['race_guard_off'] = true },
	
	{ ['t'] = 54, ['d'] = 2, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_mag_Red_Ulfserker', ['default'] = '', ['bulky'] = 40, ['race_guard_off'] = true },
	
	{ ['t'] = 53, ['d'] = 3, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_feu_clockwork_dwarves_Miasmist', ['default'] = '', },
	{ ['t'] = 56, ['d'] = 3, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mag_Steam_Berserker', ['default'] = '', ['race_guard_off'] = true },
	
	{ ['t'] = 56, ['d'] = 4, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mag_Steam_Berserker', ['default'] = '', ['guard'] = true },
	
	{ ['t'] = 51, ['d'] = 5, ['side'] = 3, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_mag_Battlecopter', ['default'] = '', ['buff'] = 'A32:B32:C15', },
	
	-- 58 - 64 (mask y 112 - 106)
	
	{ ['t'] = 58, ['d'] = 0, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_imp_Cavernei_Watcher', ['default'] = '', },
	{ ['t'] = 58, ['d'] = 0, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Dwarvish Guardsman', ['default'] = '', ['guard'] = true },
	{ ['t'] = 58, ['d'] = 0, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'Dwarvish Stalwart', ['default'] = '', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 60, ['d'] = 0, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_mag_Runesmith', ['default'] = '', },
	{ ['t'] = 61, ['d'] = 0, ['side'] = 3, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_mag_Rune_Artist', ['default'] = '', ['recruits'] = 'AE_mag_Runeadept,AE_mag_Dwarvish_Warrior,AE_mag_Dwarvish_Gunner,AE_stf_triththa_Rusher,AE_rhy_dw_Ghost,AE_rhy_dw_Runeadept', ['default_recruits'] = '', ['r_lvls'] = '1,1,1,1,1,1', ['recruitment_gold'] = 170, ['recruit_armored'] = 12 },
	{ ['t'] = 64, ['d'] = 0, ['side'] = 3, ['x'] = 9, ['lvl'] = 0, ['type'] = 'AE_mag_Drone', ['default'] = '', },
	{ ['t'] = 64, ['d'] = 0, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Lunar_Eye', ['default'] = '', ['guard'] = true, ['beefy'] = 60 },
	
	{ ['t'] = 61, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Earth_Daemon_2', ['default'] = '', ['guard'] = true, ['beefy'] = 20, ['armored'] = 20 },
	
	{ ['t'] = 59, ['d'] = 2, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Dwarvish Berserker', ['default'] = '', ['beefy'] = 40 },
	
	{ ['t'] = 60, ['d'] = 3, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_feu_clockwork_dwarves_Blazer', ['default'] = '', },
	
	{ ['t'] = 62, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Green_Novice', ['default'] = '', },
	{ ['t'] = 64, ['d'] = 4, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Lunar_Black_Slime', ['default'] = '', ['bulky'] = 40, ['armored'] = 16, },
	
	{ ['t'] = 63, ['d'] = 5, ['side'] = 2, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_chs_elementals_Stone_Titan', ['default'] = '', ['buff'] = 'A16:B11:C6', ['gold'] = 14 },
	
	-- 65 - 71 (mask y 105 - 99)
	
	{ ['t'] = 65, ['d'] = 0, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Dwarvish Thunderer', ['default'] = '', ['allow_random'] = false, ['race_guard_off'] = true, ['quiet_buff'] = 'Q3' },
	{ ['t'] = 65, ['d'] = 0, ['side'] = 1, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_mag_Shamanistic_Adept', ['default'] = '', ['allow_random'] = false },
	{ ['t'] = 66, ['d'] = 0, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Lunar_Mouth', ['default'] = '', },
	{ ['t'] = 67, ['d'] = 0, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Lunar_Stinkbug', ['default'] = '', },
	{ ['t'] = 68, ['d'] = 0, ['side'] = 2, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_arc_menagerie_Green_Frogman', ['default'] = '', ['guard'] = true, },
	{ ['t'] = 69, ['d'] = 0, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Lunar_Ripper', ['default'] = '', ['race_guard_off'] = true, ['calls_for_help'] = true, ['fast'] = 1 },
	
	{ ['t'] = 65, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Lunar_Mouth', ['default'] = '', ['bulky'] = 40, ['race_guard_off'] = true },
	
	{ ['t'] = 67, ['d'] = 2, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Lunar_Black_Slime', ['default'] = '', ['guard'] = true, },
	
	{ ['t'] = 66, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Lunar_Mouth', ['default'] = '', ['buff'] = 'A33:B33:C33', },
	
	{ ['t'] = 68, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Blue_Unicorn', ['default'] = '', },
	
	{ ['t'] = 66, ['d'] = 5, ['side'] = 2, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_arc_menagerie_Green_Exterminator', ['default'] = '', ['guard'] = true },
	
	-- 72 - 78 (mask y 98 - 92)
	
	{ ['t'] = 71, ['d'] = 0, ['side'] = 3, ['x'] = 20, ['lvl'] = 4, ['type'] = 'AE_rhy_dw_Ballista', ['default'] = '', ['moves'] = 0, },
	{ ['t'] = 71, ['d'] = 0, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Dwarvish Sentinel', ['default'] = '', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 73, ['d'] = 0, ['side'] = 4, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_mrc_fanatics_Sandskulker', ['default'] = '', ['moves'] = 0, ['beefy'] = 20, ['quiet_buff'] = 'Q3', ['gold'] = 25, ['allow_random'] = false, ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 75, ['d'] = 0, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_efm_freemen_Guardsman', ['default'] = '', ['guard'] = true },
	{ ['t'] = 75, ['d'] = 0, ['side'] = 4, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_efm_freemen_Immortal', ['default'] = '', ['armored'] = 20, ['gold'] = 50, ['recruits'] = 'AE_efm_freemen_Derwish,AE_efm_freemen_Howler,AE_efm_freemen_Sand_Rider,AE_efm_freemen_Amir,AE_efm_freemen_Nomad,AE_efm_freemen_Mehariste', ['default_recruits'] = '', ['r_lvls'] = '2,2,2,2,2,2', ['recruitment_gold'] = 220 },
	{ ['t'] = 75, ['d'] = 0, ['side'] = 4, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_efm_freemen_Mufti', ['default'] = '', ['gold'] = 30 },
	
	{ ['t'] = 74, ['d'] = 1, ['side'] = 4, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mrc_fanatics_Martyr', ['default'] = '', ['allow_random'] = false, ['race_guard_off'] = true, },
	
	{ ['t'] = 75, ['d'] = 2, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_efm_freemen_Ensnarer', ['default'] = '', ['gold'] = 25, },
	
	{ ['t'] = 76, ['d'] = 3, ['side'] = 4, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_efm_freemen_Mullah', ['default'] = '', ['gold'] = 20, },
	
	{ ['t'] = 77, ['d'] = 4, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_efm_freemen_Adventurer', ['default'] = '', ['race_guard_off'] = true, ['gold'] = 15 },
	{ ['t'] = 77, ['d'] = 4, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_efm_freemen_Howler', ['default'] = '', ['beefy'] = 20 },
	
	{ ['t'] = 75, ['d'] = 5, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_mrc_fanatics_Martyr', ['default'] = '', ['beefy'] = 20, },
	{ ['t'] = 78, ['d'] = 5, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_efm_freemen_Guardsman', ['default'] = '', ['gold'] = 20 },
	
	-- 79 - 85 (mask y 91 - 85)
	
	{ ['t'] = 80, ['d'] = 0, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mag_Great_Jinn', ['default'] = '', },
	{ ['t'] = 81, ['d'] = 0, ['side'] = 4, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_mag_Rhami', ['default'] = '', },
	{ ['t'] = 81, ['d'] = 0, ['side'] = 4, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_mag_Banisher', ['default'] = '', ['gold'] = 20, ['armored'] = 8, ['calls_for_help'] = true },
	{ ['t'] = 83, ['d'] = 0, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_mag_Air_Avatar', ['default'] = '', ['guard'] = true, },
	{ ['t'] = 84, ['d'] = 0, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'QQ_enslaved_soul', ['default'] = '', ['buff'] = 'A34:B3:C34', ['race_guard_off'] = true },
	
	{ ['t'] = 80, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_mag_Dimensional_Gate_II', ['default'] = '', ['buff'] = 'A36:B35:C35:C5', ['item'] = true },
	
	{ ['t'] = 79, ['d'] = 2, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mag_RhamiDatu', ['default'] = '', ['guard'] = true, },
	
	{ ['t'] = 82, ['d'] = 3, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mag_Summoner', ['default'] = '', },
	
	{ ['t'] = 82, ['d'] = 4, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_mag_Carpet_Master', ['default'] = '', ['fast'] = 2, ['agile'] = 8 },
	
	{ ['t'] = 85, ['d'] = 5, ['side'] = 4, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_mag_Novice_Summoner', ['default'] = '', ['gold'] = 12, },
	
	-- 86 - 92 (mask y 84 - 78)
	
	{ ['t'] = 88, ['d'] = 0, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Naga Guard', ['default'] = '', },
	{ ['t'] = 89, ['d'] = 0, ['side'] = 2, ['x'] = 20, ['lvl'] = 6, ['type'] = 'QQ_naga_grand_priest', ['default'] = '', ['gold'] = 120, ['recruits'] = 'Naga Sicarius,Naga Zephyr,Naga Myrmidon,Naga High Guard,Sea Serpent', ['default_recruits'] = '', ['r_lvls'] = '3,3,3,3,3', ['recruitment_gold'] = 300, ['event'] = 'von_naga_ghosts' },
	{ ['t'] = 90, ['d'] = 0, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = '', ['allow_random'] = false },
	{ ['t'] = 90, ['d'] = 0, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = '', ['allow_random'] = false },
	{ ['t'] = 91, ['d'] = 0, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = '', ['allow_random'] = false },
	{ ['t'] = 92, ['d'] = 0, ['side'] = 2, ['x'] = 24, ['lvl'] = 5, ['type'] = 'QQ_naga_royal_executioner', ['default'] = '', ['buff'] = 'A16:B36:C36' },
	{ ['t'] = 92, ['d'] = 0, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'Swamp Lizard', ['default'] = '', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 90, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = '', ['allow_random'] = false },
	
	{ ['t'] = 86, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'Naga Warrior', ['default'] = '', },
	
	{ ['t'] = 89, ['d'] = 3, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_ext_orcs_Naga_Assassin', ['default'] = '', ['gold'] = 20 },
	
	{ ['t'] = 86, ['d'] = 4, ['side'] = 2, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_ext_orcs_Naga_Abomination', ['default'] = '', ['beefy'] = 12, ['armored'] = 16, ['gold'] = 20 },
	
	{ ['t'] = 90, ['d'] = 5, ['side'] = 2, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_ext_orcs_Naga_Abomination', ['default'] = '', ['bulky'] = 80, ['beefy'] = 24, ['gold'] = 35 },
	
	-- 93 - 99 (mask y 77 - 71)
	
	{ ['t'] = 93, ['d'] = 0, ['side'] = 4, ['x'] = 22, ['lvl'] = 5, ['type'] = 'AE_arc_khthon_Bellikakotaurus', ['default'] = '', ['bulky'] = 40, ['armored'] = 16, },
	{ ['t'] = 97, ['d'] = 0, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	{ ['t'] = 97, ['d'] = 0, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	{ ['t'] = 98, ['d'] = 0, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_mrc_slavers_Harlot', ['default'] = '', ['calls_for_help'] = true },
	{ ['t'] = 98, ['d'] = 0, ['side'] = 4, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_mrc_slavers_Elder_Hawk', ['default'] = '', },
	{ ['t'] = 99, ['d'] = 0, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	
	{ ['t'] = 93, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_mrc_cult_Sewer_Slider', ['default'] = '', },
	{ ['t'] = 97, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	
	{ ['t'] = 94, ['d'] = 2, ['side'] = 2, ['x'] = 16, ['lvl'] = 4, ['type'] = 'AE_mrc_cult_Inhuman', ['default'] = '', ['armored'] = 8 },
	
	{ ['t'] = 99, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	
	{ ['t'] = 99, ['d'] = 4, ['side'] = 4, ['x'] = 11, ['lvl'] = 3, ['type'] = 'Cave Bear', ['default'] = '', ['bulky'] = 100 },
	
	{ ['t'] = 94, ['d'] = 5, ['side'] = 4, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_arc_khthon_Ophis_Magnum', ['default'] = '', },
	
	-- 100 - 106 (mask y 70 - 64)
	
	{ ['t'] = 100, ['d'] = 0, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', ['fast'] = 1 },
	{ ['t'] = 100, ['d'] = 0, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	{ ['t'] = 101, ['d'] = 0, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	{ ['t'] = 101, ['d'] = 0, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	{ ['t'] = 103, ['d'] = 0, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Leshi', ['default'] = '', ['guard'] = true },
	{ ['t'] = 103, ['d'] = 0, ['side'] = 3, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_mrc_equestrians_Bull', ['default'] = '', },
	{ ['t'] = 104, ['d'] = 0, ['side'] = 3, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_mrc_holy_order_Peacekeeper', ['default'] = '', ['buff'] = 'A37:B21:C19:C22', },
	{ ['t'] = 104, ['d'] = 0, ['side'] = 4, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Faerie', ['default'] = '', },
	{ ['t'] = 105, ['d'] = 0, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	{ ['t'] = 106, ['d'] = 0, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_chs_sylvians_Wose_Shaman', ['default'] = '', ['bulky'] = 180 },
	
	{ ['t'] = 100, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', ['agile'] = 8 },
	
	{ ['t'] = 101, ['d'] = 2, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	{ ['t'] = 102, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	{ ['t'] = 105, ['d'] = 2, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	
	{ ['t'] = 100, ['d'] = 3, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	{ ['t'] = 101, ['d'] = 3, ['side'] = 2, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_ext_outlaws_Witch', ['default'] = '', },
	{ ['t'] = 106, ['d'] = 3, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', },
	
	{ ['t'] = 104, ['d'] = 4, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Farmhand', ['default'] = '', ['beefy'] = 28, },
	
	{ ['t'] = 102, ['d'] = 5, ['side'] = 4, ['x'] = 19, ['lvl'] = 5, ['type'] = 'QQ_ankylosaurus', ['default'] = '', ['race_guard_off'] = true, ['buff'] = 'A7:B12:C4:A8', ['calls_for_help'] = true },
	
	-- 107 - 113 (mask y 63 - 57)
	
	{ ['t'] = 107, ['d'] = 0, ['side'] = 4, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Wasp', ['default'] = '', },
	{ ['t'] = 108, ['d'] = 0, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_mrc_refugees_Envoy', ['default'] = '', ['calls_for_help'] = true },
	{ ['t'] = 109, ['d'] = 0, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mrc_refugees_Arsonist', ['default'] = '', },
	{ ['t'] = 109, ['d'] = 0, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Pikeman', ['default'] = '', ['moves'] = 0, ['gold'] = 10 },
	{ ['t'] = 109, ['d'] = 0, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Pikeman', ['default'] = '', ['moves'] = 0, ['gold'] = 10 },
	{ ['t'] = 113, ['d'] = 0, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Condottiero', ['default'] = '', ['moves'] = 0, ['gold'] = 15 },
	{ ['t'] = 113, ['d'] = 0, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Condottiero', ['default'] = '', ['moves'] = 0, ['gold'] = 15 },
	
	{ ['t'] = 107, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_mrc_hive_Tick', ['default'] = '', ['beefy'] = 80, ['bulky'] = 40 },
	{ ['t'] = 107, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_imp_Arendians_Horse_Master', ['default'] = '', ['fast'] = 2, },
	
	{ ['t'] = 109, ['d'] = 2, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mrc_refugees_Arsonist', ['default'] = '', },
	
	{ ['t'] = 109, ['d'] = 3, ['side'] = 4, ['x'] = 23, ['lvl'] = 5, ['type'] = 'QQ_abyssal_fungoid', ['default'] = '', ['buff'] = 'A19:B13:C2:B51', },
	
	{ ['t'] = 112, ['d'] = 4, ['side'] = 3, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_feu_ceresians_Knight_Commander', ['default'] = '', ['bulky'] = 60, ['beefy'] = 40, },
	
	{ ['t'] = 110, ['d'] = 5, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Arbalestier', ['default'] = '', ['agile'] = 12 },
	{ ['t'] = 110, ['d'] = 5, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Arbalestier', ['default'] = '', ['armored'] = 16 },
	{ ['t'] = 112, ['d'] = 5, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Mounted_Infantryman', ['default'] = '', ['fast'] = 1 },
	{ ['t'] = 113, ['d'] = 5, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Mounted_Crossbowman', ['default'] = '', ['beefy'] = 20 },
	
	-- 114 - 120 (mask y 56 - 50)
	
	{ ['t'] = 115, ['d'] = 0, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Ballista', ['default'] = '', ['moves'] = 0, ['gold'] = 30, ['bulky'] = 200, ['armored'] = 32 },
	{ ['t'] = 115, ['d'] = 0, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Ballista', ['default'] = '', ['moves'] = 0, ['gold'] = 30, ['bulky'] = 200, ['armored'] = 32 },
	{ ['t'] = 116, ['d'] = 0, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Man_at_Arms', ['default'] = '', },
	{ ['t'] = 116, ['d'] = 0, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Pikeman', ['default'] = '', ['armored'] = 8 },
	{ ['t'] = 117, ['d'] = 0, ['side'] = 3, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_rhy_dr_Trireme', ['default'] = '', ['guard'] = true },
	{ ['t'] = 117, ['d'] = 0, ['side'] = 3, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_rhy_dr_Trireme', ['default'] = '', ['guard'] = true },
	{ ['t'] = 117, ['d'] = 0, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mag_Protector', ['default'] = '', ['beefy'] = 40, ['armored'] = 8 },
	{ ['t'] = 118, ['d'] = 0, ['side'] = 3, ['x'] = 17, ['lvl'] = 4, ['type'] = 'AE_feu_ceresians_Metropolitan', ['default'] = '', ['item'] = true, ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 119, ['d'] = 0, ['side'] = 3, ['x'] = 15, ['lvl'] = 5, ['type'] = 'QQ_dragon_rider', ['default'] = '', ['gold'] = 120, ['bulky'] = 72, ['recruits'] = 'AE_rhy_ce_Swordsman,AE_rhy_ce_Townguard,AE_rhy_ce_Armored_Horseman,AE_rhy_ce_Healer,AE_rhy_ce_Heavy_Crossbowman', ['default_recruits'] = '', ['r_lvls'] = '2,2,2,2,2', ['recruitment_gold'] = 330, ['recruit_armored'] = 12 },
	{ ['t'] = 120, ['d'] = 0, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Spearman', ['default'] = '', },
	
	{ ['t'] = 116, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Man_at_Arms', ['default'] = '', ['armored'] = 12 },
	{ ['t'] = 118, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Sergeant', ['default'] = '', },
	
	{ ['t'] = 116, ['d'] = 2, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Pikeman', ['default'] = '', },
	{ ['t'] = 119, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'Swordsman', ['default'] = '', ['armored'] = 8 },
	
	{ ['t'] = 119, ['d'] = 3, ['side'] = 3, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Spearman', ['default'] = '', ['armored'] = 8 },
	{ ['t'] = 119, ['d'] = 3, ['side'] = 3, ['x'] = 9, ['lvl'] = 3, ['type'] = 'Iron Mauler', ['default'] = '', ['beefy'] = 80, ['armored'] = 12, ['calls_for_help'] = true },
	
	{ ['t'] = 119, ['d'] = 4, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_rhy_ce_Grand_Marshal', ['default'] = '', ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 120, ['d'] = 4, ['side'] = 3, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_rhy_ce_Greatsword', ['default'] = '', ['buff'] = 'A7:B4:C27', ['disallow_slash_unguardian'] = true, },
	
	{ ['t'] = 120, ['d'] = 5, ['side'] = 4, ['x'] = 20, ['lvl'] = 4, ['type'] = 'AE_mrc_enchanters_Excalibur', ['default'] = '', ['buff'] = 'A36:B37:C1', ['disallow_slash_unguardian'] = true, },
	
	-- 121 - 127 (mask y 49 - 43)
	
	{ ['t'] = 121, ['d'] = 0, ['side'] = 3, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_rhy_ce_Halberdier', ['default'] = '', },
	{ ['t'] = 122, ['d'] = 0, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_rhy_ce_Siege_Bowman', ['default'] = '', },
	{ ['t'] = 124, ['d'] = 0, ['side'] = 4, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_rhy_de_Bloodpriest', ['default'] = '', ['beefy'] = 60, ['guard'] = true },
	{ ['t'] = 127, ['d'] = 0, ['side'] = 4, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_ext_chaos_Hell_Guardian', ['default'] = '', ['guard'] = true, ['calls_for_help'] = true, },
	
	{ ['t'] = 122, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_rhy_ce_Arbalist', ['default'] = '', },
	
	{ ['t'] = 121, ['d'] = 2, ['side'] = 3, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_rhy_ce_Doctor', ['default'] = '', ['buff'] = 'A13:B24:C37', ['event'] = 'follow_players_race' },
	{ ['t'] = 123, ['d'] = 2, ['side'] = 4, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_rhy_de_Darkguard', ['default'] = '', },
	
	{ ['t'] = 123, ['d'] = 3, ['side'] = 4, ['x'] = 14, ['lvl'] = 4, ['type'] = 'AE_rhy_de_Greatassassin', ['default'] = '', ['beefy'] = 40, ['agile'] = 8 },
	
	{ ['t'] = 126, ['d'] = 4, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_rhy_de_Black_Spider', ['default'] = '', },
	
	{ ['t'] = 123, ['d'] = 5, ['side'] = 3, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_mrc_enchanters_Sellsoul', ['default'] = '', ['beefy'] = 80, },
	
	-- 128 - 134 (mask y 42 - 36)
	
	{ ['t'] = 128, ['d'] = 0, ['side'] = 4, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_ext_chaos_Flesh_Hound', ['default'] = '', ['race_guard_off'] = true, },
	{ ['t'] = 130, ['d'] = 0, ['side'] = 4, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_rhy_de_Summoner', ['default'] = '', },
	{ ['t'] = 132, ['d'] = 0, ['side'] = 4, ['x'] = 17, ['lvl'] = 5, ['type'] = 'QQ_boneblade_terror', ['default'] = '', ['bulky'] = 60, ['race_guard_off'] = true, ['armored'] = 8 },
	{ ['t'] = 132, ['d'] = 0, ['side'] = 4, ['x'] = 20, ['lvl'] = 3, ['type'] = 'Spectre', ['default'] = '', ['buff'] = 'A20:B38:C38', },
	{ ['t'] = 133, ['d'] = 0, ['side'] = 4, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_mrc_holy_order_Torturer', ['default'] = '', },
	{ ['t'] = 134, ['d'] = 0, ['side'] = 4, ['x'] = 14, ['lvl'] = 3, ['type'] = 'Lich', ['default'] = '', },
	
	{ ['t'] = 131, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_ext_chaos_Demonologist', ['default'] = '', },
	
	{ ['t'] = 130, ['d'] = 2, ['side'] = 4, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_ext_chaos_Blood_Knight', ['default'] = '', },
	
	{ ['t'] = 133, ['d'] = 3, ['side'] = 4, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_mrc_mercenaries_Black_Mage', ['default'] = '', },
	
	{ ['t'] = 131, ['d'] = 4, ['side'] = 4, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_ext_chaos_Soulhunter', ['default'] = '', },
	
	{ ['t'] = 130, ['d'] = 5, ['side'] = 4, ['x'] = 19, ['lvl'] = 4, ['type'] = 'AE_mag_Atokpi_Master', ['default'] = '' },
	
	-- 135 - 141 (mask y 35 - 29)
	
	{ ['t'] = 135, ['d'] = 0, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'Shadow', ['default'] = '', },
	{ ['t'] = 136, ['d'] = 0, ['side'] = 4, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_mag_Matriarch_of_Darkness', ['default'] = '', },
	{ ['t'] = 139, ['d'] = 0, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_mie_vampire_grandmaster', ['default'] = '', },
	
	{ ['t'] = 141, ['d'] = 0, ['side'] = 4, ['x'] = 23, ['lvl'] = 6, ['type'] = 'QQ_bone_horror', ['default'] = '', ['guard'] = true, ['buff'] = 'A38:B39:C25' },
	
	{ ['t'] = 137, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 4, ['type'] = 'AE_mag_Chronomancer', ['default'] = '', ['guard'] = true, },
	
	{ ['t'] = 135, ['d'] = 2, ['side'] = 4, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_mag_Infernal_Vortex', ['default'] = '', ['bulky'] = 60 },
	
	{ ['t'] = 135, ['d'] = 3, ['side'] = 4, ['x'] = 15, ['lvl'] = 4, ['type'] = 'AE_mag_Moloch', ['default'] = '', ['armored'] = 20 },
	
	{ ['t'] = 138, ['d'] = 4, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mag_Dark_Slayer', ['default'] = '', },
	
	{ ['t'] = 141, ['d'] = 5, ['side'] = 4, ['x'] = 22, ['lvl'] = 4, ['type'] = 'AE_ext_monsters_Skeletal_Dragon', ['default'] = '', ['bulky'] = 200, ['race_guard_off'] = true, },
	
	-- 142 - 148 (mask y 28 - 22)
	
	{ ['t'] = 142, ['d'] = 0, ['side'] = 4, ['x'] = 23, ['lvl'] = 3, ['type'] = 'Nightgaunt', ['default'] = '', ['agile'] = 12 },
	{ ['t'] = 144, ['d'] = 0, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'Draug', ['default'] = '', },
	{ ['t'] = 146, ['d'] = 0, ['side'] = 4, ['x'] = 19, ['lvl'] = 6, ['type'] = 'QQ_eternal_bones', ['default'] = '', ['item'] = true, ['gold'] = 100, ['recruits'] = 'AE_ele_Fallen_Dragon_Rider,AE_mag_Titania,AE_mag_Abaddon,AE_rhy_ne_Black_Paladin', ['default_recruits'] = '', ['r_lvls'] = '4,4,4,4', ['recruitment_gold'] = 600, },
	
	{ ['t'] = 145, ['d'] = 1, ['side'] = 4, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_ele_Skeletal_Fortress', ['default'] = '', ['guard'] = true },
	
	{ ['t'] = 148, ['d'] = 2, ['side'] = 4, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Decapitator', ['default'] = '', },
	
	{ ['t'] = 148, ['d'] = 3, ['side'] = 4, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Inquisitor', ['default'] = '', },
	
	{ ['t'] = 147, ['d'] = 4, ['side'] = 4, ['x'] = 20, ['lvl'] = 5, ['type'] = 'AE_ele_Fallen_Supreme_Lord', ['default'] = '', },
	
	{ ['t'] = 145, ['d'] = 5, ['side'] = 4, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_mag_Doom_Bringer', ['default'] = '', ['beefy'] = 40, ['bulky'] = 40 },
	
	-- 149 - 155 (mask y 21 - 15)
	
	{ ['t'] = 151, ['d'] = 0, ['side'] = 4, ['x'] = 21, ['lvl'] = 4, ['type'] = 'AE_mag_Master_of_Darkness', ['default'] = '', ['guard'] = true, ['beefy'] = 20, ['calls_for_help'] = true },
	{ ['t'] = 152, ['d'] = 0, ['side'] = 4, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_chs_chaos_empire_Lorekeeper', ['default'] = '', },
	{ ['t'] = 154, ['d'] = 0, ['side'] = 4, ['x'] = 20, ['lvl'] = 7, ['type'] = 'QQ_grand_sultan_of_fire', ['default'] = '', ['buff'] = 'A40:B40:C40:C4', },
	
	{ ['t'] = 150, ['d'] = 1, ['side'] = 4, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Shieldmaster', ['default'] = '', ['moves'] = 0, },
	
	{ ['t'] = 153, ['d'] = 2, ['side'] = 4, ['x'] = 21, ['lvl'] = 4, ['type'] = 'AE_ext_chaos_Overlord', ['default'] = '', ['race_guard_off'] = true, ['armored'] = 20 },
	
	{ ['t'] = 153, ['d'] = 3, ['side'] = 4, ['x'] = 22, ['lvl'] = 4, ['type'] = 'AE_ele_Fallen_Dragon_Rider', ['default'] = '', ['race_guard_off'] = true, ['bulky'] = 80 },
	
	{ ['t'] = 155, ['d'] = 4, ['side'] = 4, ['x'] = 22, ['lvl'] = 4, ['type'] = 'AE_chs_chaos_empire_Armageddon_Imp', ['default'] = '', ['beefy'] = 60, ['armored'] = 16 },
	
	{ ['t'] = 149, ['d'] = 5, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_mag_Matriarch_of_Emptiness', ['default'] = '', ['bulky'] = 20, ['beefy'] = 16, },
	
	-- 156 - 162 (mask y 14 - 8)
	
	{ ['t'] = 157, ['d'] = 0, ['side'] = 4, ['x'] = 25, ['lvl'] = 1, ['type'] = 'QQ_enslaved_soul', ['default'] = '', ['buff'] = 'A41:B9:C19', ['race_guard_off'] = true },
	{ ['t'] = 158, ['d'] = 0, ['side'] = 4, ['x'] = 24, ['lvl'] = 1, ['type'] = 'QQ_enslaved_soul', ['default'] = '', ['buff'] = 'A20:B41:C9', ['race_guard_off'] = true },
	{ ['t'] = 158, ['d'] = 0, ['side'] = 4, ['x'] = 23, ['lvl'] = 1, ['type'] = 'QQ_enslaved_soul', ['default'] = '', ['buff'] = 'A27:B41:C13', ['race_guard_off'] = true },
	{ ['t'] = 158, ['d'] = 0, ['side'] = 4, ['x'] = 25, ['lvl'] = 6, ['type'] = 'QQ_adjudicator', ['default'] = '', ['buff'] = 'A23:B7:C29', ['guard'] = true },
	
	{ ['t'] = 160, ['d'] = 1, ['side'] = 4, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_mrc_enchanters_Shadow_Blade', ['default'] = '', ['beefy'] = 28, ['armored'] = 8 },
	
	{ ['t'] = 159, ['d'] = 2, ['side'] = 4, ['x'] = 23, ['lvl'] = 6, ['type'] = 'QQ_death', ['default'] = '', ['buff'] = 'A21:B41:C17', },
	
	{ ['t'] = 157, ['d'] = 3, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mag_Pain_Mistress', ['default'] = '', ['beefy'] = 24, },
	
	{ ['t'] = 157, ['d'] = 4, ['side'] = 4, ['x'] = 24, ['lvl'] = 5, ['type'] = 'QQ_flying_nightmare', ['default'] = '', ['guard'] = true, ['bulky'] = 80 },
	
	{ ['t'] = 156, ['d'] = 5, ['side'] = 4, ['x'] = 24, ['lvl'] = 4, ['type'] = 'AE_mag_DarkApostle', ['default'] = '', ['bulky'] = 40, },
	
	-- 160 / final boss
	
	{ ['t'] = 160, ['d'] = 0, ['side'] = 2, ['x'] = 25, ['lvl'] = 6, ['type'] = 'QQ_grand_scholar', ['default'] = '', ['buff'] = 'A6:B22:C29:C2:B11', ['moves'] = 0, ['final_boss'] = true },
}


-->>
