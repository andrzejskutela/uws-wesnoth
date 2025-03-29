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
	
	{ ['row'] = 'object', ['t'] = 6, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'halo/elven/druid-healing1.png', },
	{ ['row'] = 'object', ['t'] = 7, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'halo/elven/druid-healing1.png', },
	{ ['row'] = 'object', ['t'] = 25, ['x'] = 19, ['cat'] = 'hidden_unit', ['type'] = 'Saurian Soothsayer', ['type_default'] = 'Saurian Soothsayer', ['message'] = 'I have foreseen the red river drying our land and melting the blood of my people to its flow. Let me escape with you and have a chance to meet my brother a last time, and I will help you on your trip.' },
	{ ['row'] = 'object', ['t'] = 23, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'halo/elven/druid-healing1.png', },
	{ ['row'] = 'object', ['t'] = 24, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'halo/elven/druid-healing1.png', },
	{ ['row'] = 'object', ['t'] = 25, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'halo/elven/druid-healing1.png', },
	{ ['row'] = 'object', ['t'] = 25, ['x'] = 24, ['cat'] = 'heal', ['image'] = 'halo/elven/druid-healing1.png', },
	{ ['row'] = 'object', ['t'] = 25, ['x'] = 4, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 75 },
	{ ['row'] = 'object', ['t'] = 45, ['x'] = 23, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 50 },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['y'] = 7, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Fire_Wisp', ['default'] = 'Giant Mudcrawler', ['moves'] = 4, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['y'] = 9, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Green_Man', ['default'] = 'Footpad', ['moves'] = 0, ['gold'] = 6, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['y'] = 8, ['lvl'] = 0, ['type'] = 'Sand Scamperer', ['default'] = 'Mudcrawler', ['moves'] = 4, },

	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 25, ['y'] = 7, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Fire_Wisp', ['default'] = 'Giant Mudcrawler', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 5, ['side'] = 2, ['x'] = 21, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Fire_Wisp', ['default'] = 'Giant Mudcrawler', ['guard'] = true, ['buff'] = 'A3:B13:C16', ['quiet_buff'] = 'Q6', ['allow_random'] = false, ['disallow_slash_unguardian'] = true, },
	
	{ ['t'] = 1, ['d'] = 7, ['side'] = 2, ['x'] = 24, ['y'] = 4, ['lvl'] = 1, ['type'] = 'Sand Scuttler', ['default'] = 'Sand Scuttler', ['moves'] = 4, },

	-- 2 - 8 (mask y 74 - 68)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Drone', ['default'] = 'Mage', },
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_steelhive_Repairer', ['default'] = 'Naga Warrior', ['recruits'] = 'AE_agl_steelhive_Sentient,AE_agl_steelhive_Oculus', ['default_recruits'] = 'Naga Fighter,Saurian Augur', ['r_lvls'] = '1,1', ['recruitment_gold'] = 35, ['gold'] = 50, ['recruit_armored'] = 10, },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Cyborg', ['default'] = 'Troll Whelp', },
	{ ['t'] = 8, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Cyborg', ['default'] = 'Troll Whelp', },
	{ ['t'] = 8, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Mechanical_Seeker', ['default'] = 'Poacher', },
	
	{ ['t'] = 6, ['d'] = 3, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_agl_steelhive_Drone', ['default'] = 'Young Ogre', ['guard'] = true, },
	
	{ ['t'] = 4, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_agl_steelhive_Cybercore', ['default'] = 'Naga Fighter', ['bulky'] = 32, ['armored'] = 20 },

	{ ['t'] = 5, ['d'] = 7, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_agl_steelhive_Slasher', ['default'] = 'Naga Dirkfang', },
	
	-- 9 - 15 (mask y 67 - 61)
	
	{ ['t'] = 10, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Golem', ['default'] = 'Dwarvish Thunderer', },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_feu_clockwork_dwarves_Miasmist', ['default'] = 'Dwarvish Steelclad', ['recruits'] = 'AE_feu_clockwork_dwarves_Triggerman,AE_feu_clockwork_dwarves_Soldier', ['default_recruits'] = 'Dwarvish Fighter,Dwarvish Thunderer', ['r_lvls'] = '1,1', ['recruitment_gold'] = 50, ['gold'] = 60 },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_mrc_highlanders_Fieldmedic', ['default'] = 'Thug', },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 4, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_mrc_highlanders_Amputator', ['default'] = 'Trapper', ['recruits'] = 'AE_mrc_highlanders_Nord,AE_mrc_highlanders_Pipeman,AE_mrc_highlanders_Forester,AE_mrc_highlanders_Fieldmedic', ['default_recruits'] = 'Poacher,Footpad,Thug,Thief', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 40, ['item'] = true },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Golem_Soldier', ['default'] = 'Dwarvish Guardsman', ['moves'] = 0, },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 1, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Elvish Druid', ['default'] = 'Elvish Druid', ['allow_random'] = false },
	
	{ ['t'] = 12, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Wooden_Bird', ['default'] = 'Gryphon Rider', },
	
	{ ['t'] = 11, ['d'] = 3, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Greaser', ['default'] = 'Dwarvish Fighter', },
	{ ['t'] = 15, ['d'] = 3, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mrc_highlanders_Drunkard', ['default'] = 'Dwarvish Ulfserker', ['allow_random'] = false },

	{ ['t'] = 13, ['d'] = 4, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mrc_highlanders_Drunkard', ['default'] = 'Dwarvish Ulfserker', ['bulky'] = 60, },
	
	{ ['t'] = 15, ['d'] = 5, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_mrc_highlanders_Giant', ['default'] = 'Dwarvish Guardsman', ['buff'] = 'A11:B11:C10', ['gold'] = 10 },

	{ ['t'] = 14, ['d'] = 6, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Wanderer', ['default'] = 'Dwarvish Scout', ['fast'] = 1 },
	
	-- 16 - 22 (mask y 60 - 54)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Golem_Soldier', ['default'] = 'Dwarvish Guardsman', ['moves'] = 0 },
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_mrc_highlanders_Drunkard', ['default'] = 'Dwarvish Ulfserker'},
	{ ['t'] = 19, ['d'] = 1, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_arc_khthon_Cryosatyr', ['default'] = 'Rogue', },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_arc_khthon_Stymphallian', ['default'] = 'Elvish Hero', ['moves'] = 0, ['item'] = true },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_rhy_fh_Healer', ['default'] = 'Elvish Druid', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Blue_Machinist', ['default'] = 'Elvish Marksman', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Medusa', ['default'] = 'Elvish Ranger', ['moves'] = 0, ['gold'] = 10 },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Ram', ['default'] = 'Troll Whelp', },
	
	{ ['t'] = 19, ['d'] = 2, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Onryo', ['default'] = 'Bandit', ['moves'] = 0, },

	{ ['t'] = 19, ['d'] = 2, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Kodama', ['default'] = 'Trapper', },
	
	{ ['t'] = 21, ['d'] = 4, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Ram', ['default'] = 'Troll Whelp', },

	{ ['t'] = 21, ['d'] = 5, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Ram', ['default'] = 'Troll Whelp', ['beefy'] = 40, ['armored'] = 20 },
	
	{ ['t'] = 17, ['d'] = 6, ['side'] = 3, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_mrc_highlanders_Contestant', ['default'] = 'Dwarvish Fighter', ['bulky'] = 32, },

	{ ['t'] = 21, ['d'] = 7, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_ele_Viking_Ster', ['default'] = 'Wose Shaman', ['guard'] = true, ['bulky'] = 60, },
	{ ['t'] = 21, ['d'] = 7, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_ele_Viking_Jagare', ['default'] = 'Wose', ['guard'] = true, },
	
	-- 23 - 29 (mask y 53 - 47)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Tengu', ['default'] = 'Elvish Rider', },
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Mandragora', ['default'] = 'Elvish Fighter', },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 2, ['x'] = 5, ['lvl'] = 2, ['type'] = 'AE_arc_khthon_Pyradalon', ['default'] = 'Troll', ['bulky'] = 24 },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 2, ['x'] = 4, ['lvl'] = 2, ['type'] = 'AE_arc_khthon_Katoblepon', ['default'] = 'Troll Hero', ['recruits'] = 'AE_arc_khthon_Horse,AE_arc_khthon_Tauricorn', ['default_recruits'] = 'Troll,Troll Whelp', ['r_lvls'] = '2,1', ['recruitment_gold'] = 40, ['buff'] = 'A7:B6:C58' },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_arc_khthon_Giant_Duck', ['default'] = 'Troll Rocklobber', ['moves'] = 0, ['item'] = true },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Feyborn', ['default'] = 'Elvish Archer', },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Feyborn', ['default'] = 'Elvish Archer', },
	{ ['t'] = 29, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_rhy_vx_Shaman', ['default'] = 'Saurian Augur', },
	
	{ ['t'] = 23, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_agl_yokai_Nine_Tailed_Fox', ['default'] = 'Elvish Enchantress', },
	
	{ ['t'] = 25, ['d'] = 3, ['side'] = 2, ['x'] = 5, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Ram', ['default'] = 'Troll Whelp', },
	{ ['t'] = 24, ['d'] = 3, ['side'] = 2, ['x'] = 25, ['lvl'] = 3, ['type'] = 'AE_agl_yokai_Lamia_Naitaka', ['default'] = 'Elvish Marshal', ['gold'] = 10 },
	{ ['t'] = 26, ['d'] = 3, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_rhy_vx_Snake_Viper', ['default'] = 'Naga Warrior', },

	{ ['t'] = 23, ['d'] = 4, ['side'] = 2, ['x'] = 7, ['lvl'] = 0, ['type'] = 'AE_arc_khthon_Brown_Duck', ['default'] = 'Vampire Bat', },
	{ ['t'] = 24, ['d'] = 4, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Mandragora', ['default'] = 'Elvish Fighter', },
	{ ['t'] = 26, ['d'] = 4, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_rhy_vx_Snake_Viper', ['default'] = 'Naga Warrior', },
	
	{ ['t'] = 24, ['d'] = 5, ['side'] = 2, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_arc_khthon_Taraxippon', ['default'] = 'Dread Bat', ['buff'] = 'A47:B12:C11' },
	{ ['t'] = 27, ['d'] = 5, ['side'] = 2, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_arc_khthon_Noble_Beast', ['default'] = 'Troll Shaman', },

	{ ['t'] = 27, ['d'] = 6, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_rhy_vx_Hunter', ['default'] = 'Saurian Skirmisher', ['race_guard_off'] = true, ['gold'] = 10 },

	{ ['t'] = 23, ['d'] = 7, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Timber_Wolf', ['default'] = 'Blood Bat', ['beefy'] = 28, },
	{ ['t'] = 29, ['d'] = 7, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_rhy_vx_Templeguard', ['default'] = 'Saurian Javelineer', ['buff'] = 'A35:B26:C26:A39', ['allow_random'] = false, },
	
	-- 30 - 36 (mask y 46 - 40)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_rhy_vx_Hunter', ['default'] = 'Saurian Skirmisher' },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_rhy_vx_Shaman', ['default'] = 'Saurian Augur', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_rhy_vx_Sorceress', ['default'] = 'Saurian Oracle', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_rhy_vx_Queen', ['default'] = 'Saurian Flanker', ['recruits'] = 'AE_rhy_vx_Clubber,AE_rhy_vx_Scout', ['default_recruits'] = 'Saurian Skirmisher,Saurian Augur', ['r_lvls'] = '1,1', ['recruitment_gold'] = 60, ['gold'] = 20 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 4, ['x'] = 25, ['lvl'] = 3, ['type'] = 'AE_agl_harpies_Harpy_Flockmaster', ['default'] = 'Drake Flameheart', ['recruits'] = 'AE_agl_harpies_Harpy_Rockthrower,AE_agl_harpies_Night_Harpy', ['default_recruits'] = 'Drake Burner,Drake Fighter', ['r_lvls'] = '1,1', ['recruitment_gold'] = 90, ['gold'] = 80 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 4, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_agl_harpies_Harpy_Minstrel', ['default'] = 'Drake Burner', },
	{ ['t'] = 32, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_rhy_vx_Sorceress', ['default'] = 'Saurian Oracle', },
	{ ['t'] = 35, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mie_sylvan_wyvern', ['default'] = 'Merman Hunter', },
	{ ['t'] = 36, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_AoA_finn_empire_Helgrindian_Crossbowman', ['default'] = 'Javelineer', ['moves'] = 0, ['gold'] = 10 },
	
	{ ['t'] = 31, ['d'] = 2, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Infest', ['default'] = 'Water Serpent', ['disallow_slash_unguardian'] = true, },
	
	{ ['t'] = 30, ['d'] = 3, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_harpies_Harpy_Pirate', ['default'] = 'Fire Drake', ['guard'] = true },
	{ ['t'] = 35, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_mie_treefolk_bark_elder', ['default'] = 'Merman Netcaster', },
	
	{ ['t'] = 30, ['d'] = 4, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_rhy_vx_Hunter', ['default'] = 'Saurian Skirmisher', },

	{ ['t'] = 34, ['d'] = 5, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_harpies_Harpy_Flagbearer', ['default'] = 'Sky Drake', },

	{ ['t'] = 32, ['d'] = 6, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_agl_harpies_Harpy_Enchantress', ['default'] = 'Drake Thrasher', ['bulky'] = 60, ['armored'] = 10 },
	{ ['t'] = 34, ['d'] = 6, ['side'] = 3, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Infest', ['default'] = 'Swamp Lizard', ['beefy'] = 40, ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 34, ['d'] = 6, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_agl_harpies_Harpy_Ashtail', ['default'] = 'Hurricane Drake', ['buff'] = 'A13:B13:C12:B17', },

	{ ['t'] = 33, ['d'] = 7, ['side'] = 3, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_rhy_vx_Highpriest', ['default'] = 'Saurian Seer', },
	{ ['t'] = 33, ['d'] = 7, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Mantis', ['default'] = 'Grand Dragonfly', ['disallow_slash_unguardian'] = true, ['agile'] = 5 },
	{ ['t'] = 33, ['d'] = 7, ['side'] = 4, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_agl_harpies_Songstress_Of_Storms', ['default'] = 'Inferno Drake', ['aggressive'] = 1 },
	
	-- 37 - 43 (mask y 39 - 33)
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 0, ['type'] = 'AE_AoA_finn_empire_Citizen', ['default'] = 'Peasant', ['gold'] = 6, },
	{ ['t'] = 37, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_AoA_finn_empire_Great_Cannon', ['default'] = 'Halberdier', ['moves'] = 0 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mie_treefolk_ghastbark', ['default'] = 'Merman Spearman', ['bulky'] = 40 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_AoA_finn_empire_Commander', ['default'] = 'General', ['moves'] = 0, ['gold'] = 40 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_AoA_finn_empire_Sharpshooter', ['default'] = 'Longbowman', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_AoA_finn_empire_Great_Cannon', ['default'] = 'Royal Guard', ['moves'] = 0 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_AoA_finn_empire_Great_Cannon', ['default'] = 'Royal Guard', ['moves'] = 0 },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 4, ['type'] = 'AE_AoA_finn_empire_General', ['default'] = 'Grand Marshal', ['recruits'] = 'AE_AoA_finn_empire_Fencer,AE_AoA_finn_empire_Handgunner,AE_AoA_finn_empire_Heavy_Crossbowman,AE_AoA_finn_empire_Helgrindian_Soldier,AE_AoA_finn_empire_Pikeman,AE_AoA_finn_empire_Reiter,AE_AoA_finn_empire_Enchanter,AE_AoA_finn_empire_Captain', ['default_recruits'] = 'Spearman,Javelineer,Swordsman,Longbowman,Red Mage,Horseman,Dragoon,Duelist', ['r_lvls'] = '1,2,2,2,2,1,2,2', ['recruitment_gold'] = 150, ['item'] = true },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_AoA_finn_empire_Enchanter', ['default'] = 'White Mage', },
	{ ['t'] = 40, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_AoA_finn_empire_Citizen', ['default'] = 'Peasant', },
	{ ['t'] = 40, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_AoA_finn_empire_Halberdier', ['default'] = 'Halberdier', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 40, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 0, ['type'] = 'AE_AoA_finn_empire_Citizen', ['default'] = 'Peasant', ['gold'] = 8, },
	{ ['t'] = 42, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 0, ['type'] = 'AE_AoA_finn_empire_Citizen', ['default'] = 'Peasant', ['event'] = 'follow_players_race', ['gold'] = 11 },
	
	{ ['t'] = 38, ['d'] = 2, ['side'] = 2, ['x'] = 9, ['lvl'] = 3, ['type'] = 'AE_mie_treefolk_vengeance', ['default'] = 'Merman Hoplite', ['armored'] = 5 },
	{ ['t'] = 39, ['d'] = 2, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_AoA_finn_empire_Mortar', ['default'] = 'Red Mage' },
	{ ['t'] = 41, ['d'] = 2, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_AoA_kingdoms_rovahr_Bishop_Fighter', ['default'] = 'Mage of Light', },
	
	{ ['t'] = 41, ['d'] = 3, ['side'] = 2, ['x'] = 25, ['lvl'] = 3, ['type'] = 'AE_AoA_finn_empire_Pistolier', ['default'] = 'Paladin' },

	{ ['t'] = 38, ['d'] = 4, ['side'] = 2, ['x'] = 7, ['lvl'] = 3, ['type'] = 'AE_mie_sylvan_angel', ['default'] = 'Mermaid Siren', },
	{ ['t'] = 41, ['d'] = 4, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_AoA_finn_empire_Noble', ['default'] = 'Dragoon', },

	{ ['t'] = 41, ['d'] = 5, ['side'] = 2, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_AoA_finn_empire_Lansquenet', ['default'] = 'Duelist' },
	
	{ ['t'] = 41, ['d'] = 6, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_AoA_farengarians_kingdoms_Master_Paladin', ['default'] = 'Iron Mauler', ['buff'] = 'A41:B16:C10', ['gold'] = 15 },
	{ ['t'] = 43, ['d'] = 6, ['side'] = 2, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_AoA_farengarians_kingdoms_Battle_Mage', ['default'] = 'Silver Mage', ['beefy'] = 20, ['bulky'] = 20, ['race_guard_off'] = true },

	{ ['t'] = 42, ['d'] = 7, ['side'] = 2, ['x'] = 7, ['lvl'] = 3, ['type'] = 'AE_AoA_mauve_islands_federation_Schiltron', ['default'] = 'Fugitive', ['fast'] = 2, ['agile'] = 10 },
	{ ['t'] = 42, ['d'] = 7, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_AoA_galianos_Civil_Guard', ['default'] = 'Pikeman', },
	
	-- 44 - 50 (mask y 32 - 26)
	
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', ['gold'] = 8 },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_arc_primeval_Primevalist_Prior', ['default'] = 'Banebow', ['moves'] = 0, },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', },
	{ ['t'] = 46, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', ['gold'] = 8 },
	{ ['t'] = 46, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_mag_Pain_Sphere', ['default'] = 'Dread Bat', ['agile'] = 10 },
	{ ['t'] = 46, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', },
	{ ['t'] = 46, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', ['gold'] = 8 },
	{ ['t'] = 47, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_arc_primeval_Primevalist_Fanatic', ['default'] = 'Revenant', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mag_Dark_Observer', ['default'] = 'Wolf', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_mag_Dark_Observer', ['default'] = 'Wolf', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_arc_primeval_Firewheel', ['default'] = 'Necromancer', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_arc_primeval_Line_Breaker', ['default'] = 'Nightgaunt', },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 4, ['type'] = 'AE_ext_monsters_Giant_Yeti', ['default'] = 'Yeti', ['moves'] = 0, ['event'] = 'tsw_yeti', ['allow_random'] = false },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_arc_primeval_Striker', ['default'] = 'Dark Sorcerer', },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mag_Storm_Sphere', ['default'] = 'Gryphon', },
	
	{ ['t'] = 45, ['d'] = 2, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', ['race_guard_off'] = true, ['beefy'] = 24, ['gold'] = 12 },
	{ ['t'] = 46, ['d'] = 2, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', ['race_guard_off'] = true, ['calls_for_help'] = true, },
	{ ['t'] = 46, ['d'] = 2, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', ['race_guard_off'] = true },
	
	{ ['t'] = 45, ['d'] = 3, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', ['gold'] = 10 },
	{ ['t'] = 46, ['d'] = 3, ['side'] = 3, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', },
	{ ['t'] = 46, ['d'] = 3, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_mag_Pain_Sphere', ['default'] = 'Dread Bat', ['fast'] = 2, },
	
	{ ['t'] = 47, ['d'] = 4, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_arc_primeval_Escort', ['default'] = 'Necrophage', ['aggressive'] = 1 },
	{ ['t'] = 49, ['d'] = 4, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_arc_primeval_Peltast', ['default'] = 'Nightgaunt', ['fast'] = 1 },
	{ ['t'] = 50, ['d'] = 4, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Velite', ['default'] = 'Skeleton', },
	{ ['t'] = 50, ['d'] = 4, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_arc_primeval_Primevalist_Celebrant', ['default'] = 'Dark Sorcerer', },

	{ ['t'] = 46, ['d'] = 5, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', ['bulky'] = 540, ['beefy'] = 40, ['moves'] = 6, ['name'] = 'Timmy', ['race_guard_off'] = true, ['gold'] = 17 },
	{ ['t'] = 50, ['d'] = 5, ['side'] = 3, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_mag_Storm_Sphere', ['default'] = 'Gryphon', },

	{ ['t'] = 46, ['d'] = 6, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_arc_primeval_Slow_Foot', ['default'] = 'Soulless', ['beefy'] = 20, ['fast'] = 1, ['race_guard_off'] = true, ['gold'] = 8 },
	{ ['t'] = 48, ['d'] = 6, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_arc_primeval_Warrior', ['default'] = 'Necromancer', },
	{ ['t'] = 48, ['d'] = 6, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_FL_amazon_Black_Harpy', ['default'] = 'Direwolf', ['race_guard_off'] = true },
	{ ['t'] = 49, ['d'] = 6, ['side'] = 3, ['x'] = 15, ['lvl'] = 4, ['type'] = 'AE_arc_primeval_Titan', ['default'] = 'Skeletal Dragon', ['beefy'] = 20, ['bulky'] = 180, ['race_guard_off'] = true, },

	{ ['t'] = 50, ['d'] = 7, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_arc_primeval_Dogface', ['default'] = 'Bone Knight', ['buff'] = 'A46:B58:C43:C51', },
	{ ['t'] = 50, ['d'] = 7, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mag_Storm_Sphere', ['default'] = 'Gryphon', },
	
	-- 51 - 57 (mask y 25 - 19)
	
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_FL_bloodelf_Assassin', ['default'] = 'Chocobone', },
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Fire_Warrior', ['default'] = 'Death Knight', },
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Blood_Warrior', ['default'] = 'Spectre', ['bulky'] = 30 },
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Blood_Hunter', ['default'] = 'Draug', },
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 26, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Minotaur_Warlord', ['default'] = 'Necromancer', },
	{ ['t'] = 52, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_FL_bloodelf_Pyromancer', ['default'] = 'Dark Sorcerer', },
	{ ['t'] = 52, ['d'] = 1, ['side'] = 4, ['x'] = 5, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Phoenix', ['default'] = 'Sea Serpent', ['race_guard_off'] = true, ['allow_random'] = false },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_FL_bloodelf_Black_Lizard', ['default'] = 'Water Serpent', },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_FL_bloodelf_Black_Lizard', ['default'] = 'Cuttle Fish', },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 4, ['x'] = 26, ['lvl'] = 2, ['type'] = 'AE_FL_bloodelf_Black_Lizard', ['default'] = 'Cuttle Fish', ['bulky'] = 80 },
	{ ['t'] = 54, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_FL_bloodelf_Black_Lizard', ['default'] = 'Cuttle Fish', },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 0, ['type'] = 'AE_dep_deep_wisp', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 7, ['lvl'] = 0, ['type'] = 'AE_dep_deep_wisp', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 8, ['lvl'] = 0, ['type'] = 'AE_dep_deep_wisp', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Crystal_Golem', ['default'] = 'Orcish Warrior', ['guard'] = true },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 0, ['type'] = 'AE_dep_deep_wisp', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Goblin Rouser', },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_rhy_de_Nightprincess', ['default'] = 'Orcish Sovereign', ['recruits'] = 'AE_rhy_de_Deadwood,AE_rhy_de_Spiderpriest,AE_rhy_de_Trooper', ['default_recruits'] = 'Orcish Warrior,Orcish Slayer,Orcish Crossbowman', ['r_lvls'] = '2,2,2', ['recruitment_gold'] = 250, ['gold'] = 50, ['recruit_armored'] = 10 },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Golden_Golem', ['default'] = 'Orcish Warrior', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Golden_Golem', ['default'] = 'Orcish Crossbowman', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 8, ['lvl'] = 0, ['type'] = 'AE_dep_deep_wisp', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 57, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Creep', ['default'] = 'Giant Scorpion', },
	{ ['t'] = 57, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Iron_Golem', ['default'] = 'Orcish Crossbowman', ['guard'] = true, },
	{ ['t'] = 57, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Creep', ['default'] = 'Giant Scorpion', },
	
	{ ['t'] = 51, ['d'] = 2, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_FL_bloodelf_Dark_Marksman', ['default'] = 'Bone Shooter', },
	{ ['t'] = 52, ['d'] = 2, ['side'] = 3, ['x'] = 26, ['lvl'] = 4, ['type'] = 'AE_FL_bloodelf_Pyromaster', ['default'] = 'Ancient Lich', ['recruits'] = 'AE_rhy_ne_Death_Squire,AE_rhy_ne_Skeleton_Mage,AE_rhy_ne_leviathan,AE_rhy_ne_Shadow,AE_rhy_ne_bone_golem,AE_rhy_ne_bone_snake,AE_rhy_ne_Fire_Shooter,AE_rhy_ne_Bone_Shooter', ['default_recruits'] = 'Dark Sorcerer,Dread Bat,Chocobone,Deathblade,Wraith,Shadow,Necrophage,Bone Shooter', ['r_lvls'] = '2,2,2,2,2,2,2,2', ['recruitment_gold'] = 300, },
	{ ['t'] = 57, ['d'] = 2, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_ele_Skeletal_Creep', ['default'] = 'Giant Scorpion', },

	{ ['t'] = 54, ['d'] = 3, ['side'] = 4, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_rhy_de_Summoner', ['default'] = 'Orcish Warlord', },
	{ ['t'] = 55, ['d'] = 3, ['side'] = 4, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Crystal_Golem', ['default'] = 'Orcish Warrior', },
	{ ['t'] = 55, ['d'] = 3, ['side'] = 4, ['x'] = 26, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Phoenix', ['default'] = 'Sea Serpent', ['moves'] = 0, ['gold'] = 50 },
	
	{ ['t'] = 51, ['d'] = 4, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Slayer', ['default'] = 'Ghast', },
	{ ['t'] = 52, ['d'] = 4, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_FL_bloodelf_Pyromancer', ['default'] = 'Bone Shooter', },
	{ ['t'] = 56, ['d'] = 4, ['side'] = 4, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_rhy_de_Bloodpriest', ['default'] = 'Orcish Slurbow', },
	{ ['t'] = 56, ['d'] = 4, ['side'] = 4, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_mag_Omen', ['default'] = 'Orcish Assassin', },
	{ ['t'] = 56, ['d'] = 4, ['side'] = 4, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Iron_Golem', ['default'] = 'Orcish Warrior', },

	{ ['t'] = 57, ['d'] = 5, ['side'] = 3, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_mag_Doom_Bringer', ['default'] = 'Giant Spider', },
	
	{ ['t'] = 56, ['d'] = 6, ['side'] = 4, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Quicksand_Golem', ['default'] = 'Fire Wraith', ['buff'] = 'A14:B14:C13', ['bulky'] = 52, ['race_guard_off'] = true },
	{ ['t'] = 57, ['d'] = 6, ['side'] = 4, ['x'] = 25, ['lvl'] = 3, ['type'] = 'AE_mag_Doom_Bringer', ['default'] = 'Giant Spider', },
	
	-- 58 - 60 (mask y 18 - 16)
	
	{ ['t'] = 58, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Stone_Golem', ['default'] = 'Orcish Warrior', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 58, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Stone_Golem', ['default'] = 'Orcish Warrior', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 59, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 3, ['type'] = 'AE_mag_Infernal_Vortex', ['default'] = 'Giant Spider', },
	
	{ ['t'] = 58, ['d'] = 2, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Mithril_Golem', ['default'] = 'Orcish Slayer', ['event'] = 'follow_players_race', },
	
	{ ['t'] = 59, ['d'] = 3, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_mag_Doom_Bringer', ['default'] = 'Giant Spider', },
	{ ['t'] = 60, ['d'] = 3, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_mag_Doom_Bringer', ['default'] = 'Giant Spider', },
	
	{ ['t'] = 60, ['d'] = 4, ['side'] = 3, ['x'] = 25, ['lvl'] = 3, ['type'] = 'AE_mag_Bone_Splitter', ['default'] = 'Drake Warden', ['race_guard_off'] = true },
	{ ['t'] = 60, ['d'] = 4, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_mag_Obliterator', ['default'] = 'Giant Spider', },
	
	{ ['t'] = 59, ['d'] = 5, ['side'] = 3, ['x'] = 17, ['lvl'] = 4, ['type'] = 'AE_mag_Dark_Apostle', ['default'] = 'Armageddon Drake', ['race_guard_off'] = true, ['bulky'] = 40, },

	{ ['t'] = 60, ['d'] = 6, ['side'] = 3, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_mag_Cyclops_Necromancer', ['default'] = 'Giant Spider', },
	
	-- 60 / final boss
	
	{ ['t'] = 60, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 5, ['type'] = 'QQ_Archwitch', ['default'] = 'Fire Dragon', ['buff'] = 'A11:B15:C15:C4:C2', ['moves'] = 0, ['final_boss'] = true },
}


-->>
