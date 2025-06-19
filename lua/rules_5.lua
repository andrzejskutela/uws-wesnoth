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
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 9, ['y'] = 7, ['cat'] = 'hidden_unit', ['type'] = 'Elvish Shaman', ['type_default'] = 'Elvish Shaman', ['message'] = 'Good morning. There is a pesky dragon up there that destroys our forests! I will help you find it.' },
	{ ['row'] = 'item', ['t'] = 15, ['x'] = 16, ['asymmetric'] = true, ['pool'] = { 'regen','melee_dmg','ranged_dmg','ranged_acc','hp_high','melee_parry','feeding','drain','skirm','burns','heal','double_attack','hitn_run','extra_strikes' }, },

	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['y'] = 8, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Soldier', ['default'] = 'Troll Whelp', ['moves'] = 4, ['guard'] = true, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Soldier', ['default'] = 'Troll Whelp', ['moves'] = 4, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Runner_Drone', ['default'] = 'Poacher', },

	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 16, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Trooper', ['default'] = 'Orcish Grunt', ['guard'] = true, },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Raider', ['default'] = 'Wolf Rider', ['guard'] = true, },
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 16, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Trooper', ['default'] = 'Orcish Grunt', ['moves'] = 4, },

	{ ['t'] = 1, ['d'] = 7, ['side'] = 2, ['x'] = 9, ['y'] = 7, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Drone', ['default'] = 'Orcish Assassin', ['moves'] = 0, },
	
	-- 2 - 8 (mask y 60 - 54)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_ele_Viking_Jagare', ['default'] = 'Wose', ['guard'] = true },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_ele_Viking_Oks_Kriger', ['default'] = 'Elvish Fighter', },
	{ ['t'] = 7, ['d'] = 1, ['side'] = 4, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_ele_Viking_Oseberg', ['default'] = 'Water Serpent', ['guard'] = true, },

	{ ['t'] = 8, ['d'] = 2, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_ele_Viking_Thegn', ['default'] = 'Elvish Archer', },
	
	{ ['t'] = 3, ['d'] = 3, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_ele_Viking_Jagare', ['default'] = 'Wose', ['guard'] = true },
	{ ['t'] = 7, ['d'] = 3, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_ele_Viking_Oks_Kriger', ['default'] = 'Elvish Fighter', },

	{ ['t'] = 8, ['d'] = 4, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_ele_Viking_Thegn', ['default'] = 'Elvish Archer', },
	
	{ ['t'] = 4, ['d'] = 5, ['side'] = 4, ['x'] = 15, ['lvl'] = 0, ['type'] = 'AE_myh_Air', ['default'] = 'Piglet', ['bulky'] = 200 },
	
	{ ['t'] = 7, ['d'] = 6, ['side'] = 4, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_myh_Razorbird', ['default'] = 'Woodland Boar', ['buff'] = 'A24:B11:C24', ['race_guard_off'] = true },
	
	-- 9 - 15 (mask y 53 - 47)
	
	{ ['t'] = 9, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_rhy_dr_Chariot', ['default'] = 'Elvish Scout', ['fast'] = 1 },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_rhy_dr_Bowman', ['default'] = 'Dwarvish Guardsman', ['bulky'] = 20 },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Water_Snake', ['default'] = 'Tentacle of the Deep', ['guard'] = true },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_rhy_dr_Slinger', ['default'] = 'Vampire Bat', ['guard'] = true },
	
	{ ['t'] = 10, ['d'] = 2, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_rhy_dr_Sellsword', ['default'] = 'Orcish Crossbowman', ['guard'] = true },
	{ ['t'] = 15, ['d'] = 2, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_rhy_dr_Flanker', ['default'] = 'Blood Bat', ['guard'] = true, ['agile'] = 5 },

	{ ['t'] = 10, ['d'] = 3, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_rhy_dr_Bowman', ['default'] = 'Dwarvish Guardsman', },

	{ ['t'] = 11, ['d'] = 4, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_rhy_dr_Striker', ['default'] = 'Dwarvish Stalwart', },
	{ ['t'] = 14, ['d'] = 4, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_rhy_dr_Auxilia', ['default'] = 'Rogue', },

	{ ['t'] = 9, ['d'] = 5, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_rhy_dr_Commander', ['default'] = 'Red Mage', },
	{ ['t'] = 15, ['d'] = 5, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Giant_Rat_Duo', ['default'] = 'Ghost', ['guard'] = true },
	
	{ ['t'] = 15, ['d'] = 6, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Brown_Rat', ['default'] = 'Rock Scorpion', ['buff'] = 'A25:B25:C25', },
	
	-- 16 - 22 (mask y 46 - 40)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 2, ['x'] = 5, ['lvl'] = 1, ['type'] = 'AE_AoA_mountain_goblins_Medicine_Goblin', ['default'] = 'Dwarvish Thunderer', },
	{ ['t'] = 17, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_mag_Goblin_Warrior', ['default'] = 'Thug', ['armored'] = 5 },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_AoA_mountain_goblins_Sneaky', ['default'] = 'Dark Adept', },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_mag_Goblin_Hunter', ['default'] = 'Saurian Skirmisher', },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_arc_ukians_Attack_Dog', ['default'] = 'Dwarvish Ulfserker', },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_arc_orcs_Marabou_Stork', ['default'] = 'Merman Fighter', ['guard'] = true },
	
	{ ['t'] = 18, ['d'] = 2, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_AoA_mountain_goblins_Sneaky', ['default'] = 'Dark Adept', },
	{ ['t'] = 20, ['d'] = 2, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_arc_orcs_Marabou_Stork', ['default'] = 'Merman Fighter', ['guard'] = true },
	
	{ ['t'] = 16, ['d'] = 3, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_mag_Goblin_Hunter', ['default'] = 'Saurian Skirmisher', ['calls_for_help'] = true, ['allow_random'] = false },
	
	{ ['t'] = 16, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_imp_Sidhe_Young_Bear', ['default'] = 'Horned Scarab', ['bulky'] = 60, ['beefy'] = 20 },
	
	{ ['t'] = 20, ['d'] = 6, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_mag_Goblin_Hunter', ['default'] = 'Saurian Skirmisher', },
	{ ['t'] = 21, ['d'] = 6, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_AoA_mountain_goblins_Assassin', ['default'] = 'Saurian Oracle', ['beefy'] = 16, },

	{ ['t'] = 17, ['d'] = 7, ['side'] = 2, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_AoA_mountain_goblins_Clan_Chief', ['default'] = 'Trapper', },
	{ ['t'] = 20, ['d'] = 7, ['side'] = 2, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_AoA_mountain_goblins_Goblin_Bulwark', ['default'] = 'Naga Myrmidon', ['aggressive'] = 1 },
	{ ['t'] = 21, ['d'] = 7, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_AoA_mountain_goblins_Footman', ['default'] = 'Thief', ['allow_random'] = false, ['buff'] = 'A63:B1:C41:C34' },
	{ ['t'] = 21, ['d'] = 7, ['side'] = 2, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_AoA_mountain_goblins_Wolf_Rider', ['default'] = 'Footpad', },
	
	-- 23 - 29 (mask y 39 - 33)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_mrc_emperors_guard_Shuriken_Thrower', ['default'] = 'Merman Hunter', ['guard'] = true },
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mrc_emperors_guard_Samurai', ['default'] = 'Spearman', ['guard'] = true },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mrc_emperors_guard_Ozutsu', ['default'] = 'Heavy Infantryman', ['guard'] = true },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_mrc_emperors_guard_Ninja', ['default'] = 'Fencer', ['guard'] = true },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_mrc_emperors_guard_Yumi', ['default'] = 'Mage', ['guard'] = true },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 0, ['type'] = 'AE_ele_Skeletal_Corpse', ['default'] = 'Goblin Spearman', },
	
	{ ['t'] = 27, ['d'] = 2, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Witch', ['default'] = 'Orcish Archer', ['guard'] = true },
	{ ['t'] = 29, ['d'] = 2, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Witch', ['default'] = 'Orcish Archer', },
	
	{ ['t'] = 23, ['d'] = 4, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_mrc_emperors_guard_Martial_Artist', ['default'] = 'Ghoul', },
	{ ['t'] = 25, ['d'] = 4, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mrc_emperors_guard_Ninja_Warrior', ['default'] = 'Pikeman', },
	
	{ ['t'] = 26, ['d'] = 5, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_mrc_emperors_guard_Tatsu', ['default'] = 'White Mage', },

	{ ['t'] = 26, ['d'] = 6, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mrc_emperors_guard_Samurai', ['default'] = 'Spearman', },
	
	-- 30 - 36 (mask y 32 - 26)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Witch', ['default'] = 'Orcish Archer', },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 0, ['type'] = 'AE_ele_Skeletal_Corpse', ['default'] = 'Goblin Spearman', ['gold'] = 12 },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 0, ['type'] = 'AE_ele_Skeletal_Corpse', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 0, ['type'] = 'AE_ele_Skeletal_Corpse', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_ele_Skeletal_Corpse', ['default'] = 'Goblin Spearman', ['gold'] = 12 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Corpse_Mage', ['default'] = 'Goblin Rouser', ['gold'] = 12 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_ele_Skeletal_Lich_Underlord', ['default'] = 'Orcish Ruler', ['gold'] = 20, ['recruits'] = 'AE_ele_Skeletal_Corpse_Archer,AE_ele_Skeletal_Corpse_Fighter,AE_ele_Skeletal_Corpse_Mage', ['default_recruits'] = 'Orcish Grunt,Orcish Assassin,Orcish Archer', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 85, ['armored'] = 20, ['recruit_armored'] = 10 },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_rhy_de_Dark_Wose', ['default'] = 'Wose', ['guard'] = true },
	{ ['t'] = 34, ['d'] = 1, ['side'] = 2, ['x'] = 4, ['lvl'] = 2, ['type'] = 'AE_ele_Skeletal_Viper', ['default'] = 'Ogre', ['guard'] = true },
	{ ['t'] = 34, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_ele_Skeletal_Viper', ['default'] = 'Ogre', ['guard'] = true },
	{ ['t'] = 36, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_rhy_de_Maceman', ['default'] = 'Naga Fighter', ['guard'] = true },
	
	{ ['t'] = 32, ['d'] = 2, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Creep', ['default'] = 'Young Ogre', },
	
	{ ['t'] = 32, ['d'] = 3, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Spear_Fighter', ['default'] = 'Orcish Grunt', ['beefy'] = 30, ['gold'] = 12,  },
	{ ['t'] = 33, ['d'] = 3, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Lich_Adept', ['default'] = 'Orcish Assassin', },
	
	{ ['t'] = 30, ['d'] = 4, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_rhy_ne_serpent', ['default'] = 'Giant Scorpion', },
	{ ['t'] = 31, ['d'] = 4, ['side'] = 3, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_rhy_de_Dark_Wose', ['default'] = 'Wose', ['guard'] = true },
	{ ['t'] = 31, ['d'] = 4, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Corpse_Fighter', ['default'] = 'Goblin Rouser', ['beefy'] = 24, ['gold'] = 12, },
	{ ['t'] = 35, ['d'] = 4, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_rhy_ne_bone_construct', ['default'] = 'Saurian Skirmisher', },
	{ ['t'] = 36, ['d'] = 4, ['side'] = 2, ['x'] = 4, ['lvl'] = 1, ['type'] = 'AE_rhy_ne_bone_construct', ['default'] = 'Saurian Skirmisher', },

	{ ['t'] = 31, ['d'] = 5, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_ele_Skeletal_Banner_Bone', ['default'] = 'Orcish Slurbow', ['race_guard_off'] = true, },
	
	{ ['t'] = 34, ['d'] = 6, ['side'] = 2, ['x'] = 6, ['lvl'] = 3, ['type'] = 'AE_ele_Skeletal_Corpse_Headhunter', ['default'] = 'Orcish Nightblade', ['buff'] = 'A26:B26:C26', },

	{ ['t'] = 32, ['d'] = 7, ['side'] = 2, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_ele_Skeletal_Corpse_Burner', ['default'] = 'Troll Rocklobber', ['buff'] = 'A35:B15:C45' },
	
	-- 37 - 43 (mask y 25 - 19)
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 2, ['x'] = 5, ['lvl'] = 1, ['type'] = 'AE_agl_steelhive_Rocketer', ['default'] = 'Young Ogre', },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_agl_steelhive_Drone', ['default'] = 'Naga Fighter', },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_agl_steelhive_Bladewhirler', ['default'] = 'Dwarvish Berserker', ['buff'] = 'A27:B55:C27:C20:C50:B27', ['item'] = true, },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_agl_steelhive_Sentinel', ['default'] = 'Arch Mage', ['guard'] = true },
	{ ['t'] = 41, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_agl_steelhive_Drone', ['default'] = 'Naga Fighter', ['fast'] = 1, ['race_guard_off'] = true },
	
	{ ['t'] = 43, ['d'] = 2, ['side'] = 4, ['x'] = 13, ['lvl'] = 0, ['type'] = 'AE_myh_Sneak', ['default'] = 'Walking Corpse', },
	{ ['t'] = 43, ['d'] = 2, ['side'] = 4, ['x'] = 15, ['lvl'] = 0, ['type'] = 'AE_myh_Sneak', ['default'] = 'Walking Corpse' },
	
	{ ['t'] = 38, ['d'] = 3, ['side'] = 3, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_agl_steelhive_Sentinel', ['default'] = 'Arch Mage', },

	{ ['t'] = 43, ['d'] = 4, ['side'] = 4, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_myh_Lurker', ['default'] = 'Soulless', },
	
	{ ['t'] = 41, ['d'] = 5, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_agl_steelhive_Sparkgazer', ['default'] = 'Jinn', ['buff'] = 'A13:B28:C49', ['race_guard_off'] = true, ['calls_for_help'] = true },
	
	{ ['t'] = 40, ['d'] = 6, ['side'] = 3, ['x'] = 12, ['lvl'] = 5, ['type'] = 'QQ_ankylosaurus', ['default'] = 'QQ_ankylosaurus', },
	
	-- 44 - 50 (mask y 18 - 12)
	
	{ ['t'] = 44, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_myh_Overgrown_Devling', ['default'] = 'Skeleton Archer', },
	{ ['t'] = 44, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_myh_Nailers', ['default'] = 'Skeleton', },
	{ ['t'] = 44, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 0, ['type'] = 'AE_myh_Sneak', ['default'] = 'Walking Corpse', },
	{ ['t'] = 44, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 0, ['type'] = 'AE_myh_Sneak', ['default'] = 'Walking Corpse', },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_myh_Blasphemists', ['default'] = 'Dark Sorcerer', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 5, ['type'] = 'QQ_ice_mammoth', ['default'] = 'Elder Mage', ['quiet_buff'] = 'Q5', ['allow_random'] = false, ['item'] = true },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_arc_ukians_Ukian_Seeress', ['default'] = 'Dwarvish Thunderguard', },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_arc_ukians_Royal_FireKnight', ['default'] = 'Ancient Wose', ['guard'] = true },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_arc_ukians_Ukian_Signalman', ['default'] = 'Dwarvish Pathfinder', },
	
	{ ['t'] = 44, ['d'] = 2, ['side'] = 4, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_myh_Devling_Chief', ['default'] = 'Death Knight', ['guard'] = true },
	{ ['t'] = 48, ['d'] = 2, ['side'] = 2, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_AoA_farengarian_dwarves_counties_Grand_Griffin_Knight', ['default'] = 'Mermaid Diviner', },
	
	{ ['t'] = 48, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_arc_ukians_Royal_Constable', ['default'] = 'Dwarvish Sentinel', ['bulky'] = 32, ['armored'] = 5, },
	
	{ ['t'] = 45, ['d'] = 4, ['side'] = 4, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_myh_Flyers', ['default'] = 'Wraith', ['beefy'] = 60, ['fast'] = 2, ['calls_for_help'] = true },
	{ ['t'] = 47, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_arc_ukians_Ukian_Lion_Seal', ['default'] = 'Cuttle Fish', },
	{ ['t'] = 48, ['d'] = 4, ['side'] = 2, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_arc_ukians_Ukian_Signalman', ['default'] = 'Dwarvish Pathfinder', },

	{ ['t'] = 50, ['d'] = 5, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_arc_ukians_Ukian_Iceblade_Seal', ['default'] = 'Naga Warrior', },
	
	{ ['t'] = 50, ['d'] = 6, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_arc_ukians_Ukian_Veteran', ['default'] = 'Shock Trooper', ['beefy'] = 40, ['armored'] = 10, ['race_guard_off'] = true },

	{ ['t'] = 45, ['d'] = 7, ['side'] = 4, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_myh_Blasphemists', ['default'] = 'Shadow', ['agile'] = 15 },
	{ ['t'] = 46, ['d'] = 7, ['side'] = 4, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_myh_Spikers', ['default'] = 'Necrophage', ['armored'] = 25 },
	{ ['t'] = 46, ['d'] = 7, ['side'] = 4, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_myh_Lurker', ['default'] = 'Soulless', ['buff'] = 'A47:B22:C62:C6:B40' },
	
	-- 51 - 57 (mask y 11 - 5)
	{ ['t'] = 52, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 0, ['type'] = 'AE_AoA_finn_empire_Citizen', ['default'] = 'Peasant', ['agile'] = 15 },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 0, ['type'] = 'AE_AoA_finn_empire_Citizen', ['default'] = 'Peasant', },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_AoA_farengarian_dwarves_counties_Balista', ['default'] = 'Drake Fighter', },
	
	{ ['t'] = 52, ['d'] = 2, ['side'] = 2, ['x'] = 19, ['lvl'] = 4, ['type'] = 'AE_AoA_farengarian_dwarves_counties_Count', ['default'] = 'Grand Marshal', },

	{ ['t'] = 52, ['d'] = 3, ['side'] = 2, ['x'] = 16, ['lvl'] = 4, ['type'] = 'AE_AoA_morkenost_darfenlend_Grand_Mage', ['default'] = 'Elvish Sylph', ['guard'] = true },
	
	{ ['t'] = 54, ['d'] = 4, ['side'] = 2, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_AoA_morkenost_darfenlend_Archer_On_Griffin', ['default'] = 'Dread Bat', ['allow_random'] = false },
	
	{ ['t'] = 53, ['d'] = 6, ['side'] = 2, ['x'] = 16, ['lvl'] = 4, ['type'] = 'AE_AoA_farengarian_dwarves_counties_Runes_Archmage', ['default'] = 'Dwarvish Arcanister', ['race_guard_off'] = true, ['aggressive'] = 1 },
	
	-- final boss 55 / mask y 7
	
	{ ['t'] = 55, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 5, ['type'] = 'QQ_thundercrown', ['default'] = 'Fire Dragon', ['buff'] = 'A29:B29:C29:C18:C38', ['moves'] = 0, ['final_boss'] = true },
}


-->>
