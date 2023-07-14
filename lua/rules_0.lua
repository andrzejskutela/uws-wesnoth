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
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 11, ['y'] = 11, ['cat'] = 'hidden_unit', ['type'] = 'AE_efm_dalefolk_Herbalist', ['type_default'] = 'Saurian Augur', ['message'] = 'You need some help you say? I can help you, let me just take my bag of precious herbs.' },
	{ ['row'] = 'object', ['t'] = 8, ['x'] = 20, ['image'] = 'scenery/wreck-2.png', ['cat'] = 'decorative', },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 0, ['side'] = 2, ['x'] = 17, ['y'] = 6, ['lvl'] = 0, ['type'] = 'AE_arc_khthon_Toad', ['default'] = 'Mudcrawler', ['moves'] = 4, ['guard'] = true, },
	{ ['t'] = 1, ['d'] = 0, ['side'] = 2, ['x'] = 23, ['y'] = 4, ['lvl'] = 0, ['type'] = 'AE_arc_khthon_Brown_Duck', ['default'] = 'Frost Stoat', ['moves'] = 3, },
	{ ['t'] = 1, ['d'] = 0, ['side'] = 2, ['x'] = 13, ['y'] = 9, ['lvl'] = 0, ['type'] = 'AE_agl_yokai_Sproutling', ['default'] = 'Piglet', ['moves'] = 0, ['gold'] = 6 },
	{ ['t'] = 1, ['d'] = 0, ['side'] = 2, ['x'] = 11, ['y'] = 7, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Nymph', ['default'] = 'Fire Ant', ['moves'] = 3, ['guard'] = true, },
	{ ['t'] = 1, ['d'] = 0, ['side'] = 2, ['x'] = 12, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Poltergeist', ['default'] = 'Footpad', ['moves'] = 0, ['buff'] = 'A1:rand:C1', ['item'] = true },
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['y'] = 9, ['lvl'] = 0, ['type'] = 'AE_efm_pygmies_Toad', ['default'] = 'Giant Scorpling', ['moves'] = 5, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Nymph', ['default'] = 'Fire Ant', ['moves'] = 3, ['guard'] = true },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 18, ['y'] = 7, ['lvl'] = 0, ['type'] = 'AE_arc_khthon_Toad', ['default'] = 'Mudcrawler', ['moves'] = 4, ['guard'] = true, ['bulky'] = 80 },
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 25, ['y'] = 15, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Land_Tortoise', ['default'] = 'Fire Guardian', ['moves'] = 3, ['gold'] = 6 },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Giant_Toad', ['default'] = 'Giant Mudcrawler', ['moves'] = 3, ['guard'] = true, ['gold'] = 6 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 14, ['y'] = 4, ['lvl'] = 0, ['type'] = 'AE_arc_khthon_Brown_Duck', ['default'] = 'Frost Stoat', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 5, ['side'] = 2, ['x'] = 22, ['y'] = 6, ['lvl'] = 0, ['type'] = 'AE_arc_khthon_Toad', ['default'] = 'Mudcrawler', ['moves'] = 5, ['guard'] = true, ['bulky'] = 40, ['beefy'] = 20 },
	
	-- 2 - 8 (mask y 47 - 41)
	
	{ ['t'] = 2, ['d'] = 0, ['side'] = 2, ['x'] = 11, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Falcon', ['moves'] = 7, ['guard'] = true, },
	{ ['t'] = 5, ['d'] = 0, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Gust', ['default'] = 'Elder Falcon', },
	{ ['t'] = 7, ['d'] = 0, ['side'] = 2, ['x'] = 5, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Slime', ['default'] = 'Giant Mudcrawler', ['guard'] = true },
	
	{ ['t'] = 8, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_mrc_cult_Lookout', ['default'] = 'Sergeant', ['moves'] = 0, },
	
	{ ['t'] = 2, ['d'] = 2, ['side'] = 2, ['x'] = 4, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Beetle', ['default'] = 'Horned Scarab', },
	{ ['t'] = 6, ['d'] = 2, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Beetle', ['default'] = 'Horned Scarab', },
	
	{ ['t'] = 7, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Albatross', ['default'] = 'Elder Falcon', },
	
	{ ['t'] = 5, ['d'] = 4, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_ext_monsters_Mother_Mudcrawler', ['default'] = 'Cuttle Fish', ['guard'] = true, ['gold'] = 9 },
	
	{ ['t'] = 3, ['d'] = 5, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Rebel_Swarm', ['default'] = 'Young Ogre', ['buff'] = 'A2:B2:C2', },
	{ ['t'] = 6, ['d'] = 5, ['side'] = 2, ['x'] = 12, ['lvl'] = 0, ['type'] = 'AE_arc_south_seas_Breeze', ['default'] = 'Falcon', ['race_guard_off'] = true },
	
	-- 9 - 15 (mask y 40 - 34)
	
	{ ['t'] = 9, ['d'] = 0, ['side'] = 2, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mrc_cult_Cultist', ['default'] = 'Thief', ['gold'] = 8 },
	{ ['t'] = 9, ['d'] = 0, ['side'] = 2, ['x'] = 21, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Falcon', ['guard'] = true },
	{ ['t'] = 10, ['d'] = 0, ['side'] = 2, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Falcon', ['guard'] = true },
	{ ['t'] = 10, ['d'] = 0, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Gust', ['default'] = 'Elder Falcon', },
	{ ['t'] = 12, ['d'] = 0, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mrc_cult_Freak', ['default'] = 'Heavy Infantryman', ['bulky'] = 40, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 15, ['d'] = 0, ['side'] = 2, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_mrc_cult_Sentry', ['default'] = 'Longbowman', ['recruits'] = 'AE_mrc_cult_Recruit,AE_mrc_cult_Sewer_Swimmer,AE_mrc_cult_Waiter,AE_mrc_Blight_Bacterium', ['default_recruits'] = 'Bowman,Spearman,Thug,Mermaid Initiate', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 65, ['gold'] = 25 },
	
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_stf_triththa_Squid', ['default'] = 'Merman Hunter', ['guard'] = true, },
	
	{ ['t'] = 12, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['lvl'] = 0, ['type'] = 'AE_arc_south_seas_Breeze', ['default'] = 'Falcon', ['buff'] = 'A3:B3:C3:B11', ['allow_random'] = false, },
	
	{ ['t'] = 13, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_arc_south_seas_Greater_Albatross', ['default'] = 'Roc', ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 9, ['d'] = 4, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_arc_south_seas_Gale', ['default'] = 'Water Serpent', ['guard'] = true, ['fast'] = 1, },
	{ ['t'] = 10, ['d'] = 4, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_myh_Water_Dryad', ['default'] = 'Merman Hunter', ['guard'] = true },
	
	{ ['t'] = 15, ['d'] = 5, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_mrc_cult_Survivor', ['default'] = 'Thug', ['beefy'] = 20, ['bulky'] = 48, ['race_guard_off'] = true, ['gold'] = 15 },
	
	-- 16 - 22 (mask y 33 - 27)
	
	{ ['t'] = 18, ['d'] = 0, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Wanderer', ['default'] = 'Dwarvish Scout', },
	{ ['t'] = 18, ['d'] = 0, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Wooden_Bird', ['default'] = 'Dwarvish Scout', },
	{ ['t'] = 20, ['d'] = 0, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_rhy_dw_Miner', ['default'] = 'Dwarvish Guardsman', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 20, ['d'] = 0, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Greaser', ['default'] = 'Dwarvish Guardsman', ['moves'] = 0, ['gold'] = 7, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 21, ['d'] = 0, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Greaser', ['default'] = 'Dwarvish Guardsman', ['moves'] = 0, ['gold'] = 9, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 21, ['d'] = 0, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_rhy_dw_Miner', ['default'] = 'Dwarvish Guardsman', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 22, ['d'] = 0, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_feu_clockwork_dwarves_Marshal', ['default'] = 'Dwarvish Runesmith', ['recruits'] = 'AE_feu_clockwork_dwarves_Golem_Soldier,AE_feu_clockwork_dwarves_Soldier,AE_feu_clockwork_dwarves_Triggerman,AE_rhy_dw_Runeadept', ['default_recruits'] = 'Dwarvish Fighter,Dwarvish Guardsman,Dwarvish Thunderer,Dwarvish Scout', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 70, ['item'] = true },
	
	{ ['t'] = 21, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Triggerman', ['default'] = 'Dwarvish Thunderer', },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_rhy_dw_Miner', ['default'] = 'Dwarvish Guardsman', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 22, ['d'] = 2, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Golem_Soldier', ['default'] = 'Dwarvish Ulfserker', ['guard'] = true, ['buff'] = 'A4:B4:C2' },
	
	{ ['t'] = 20, ['d'] = 3, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_feu_clockwork_dwarves_Iron_Golem_Soldier', ['default'] = 'Dwarvish Stalwart', ['moves'] = 0, },
	{ ['t'] = 21, ['d'] = 3, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_feu_clockwork_dwarves_Iron_Golem_Soldier', ['default'] = 'Dwarvish Stalwart', ['moves'] = 0, },
	
	{ ['t'] = 22, ['d'] = 4, ['side'] = 3, ['x'] = 8, ['lvl'] = 1, ['type'] = 'Dwarvish Guardsman', ['guard'] = true, ['armored'] = 12 },
	
	{ ['t'] = 21, ['d'] = 5, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Soldier', ['default'] = 'Dwarvish Fighter', ['beefy'] = 16, ['gold'] = 18 },
	
	-- 23 - 29 (mask y 26 - 20)
	
	{ ['t'] = 23, ['d'] = 0, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_rhy_dw_Miner', ['default'] = 'Dwarvish Guardsman', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 24, ['d'] = 0, ['side'] = 3, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_mag_Dwarvish_Tank', ['default'] = 'Fire Wraith', ['moves'] = 0, ['damaged'] = 0.6, ['beefy'] = 32, ['quiet_buff'] = 'Q2', ['event'] = 'inv_for_broken_tank', ['race_guard_off'] = true, ['allow_random'] = false },
	{ ['t'] = 25, ['d'] = 0, ['side'] = 3, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_rhy_dw_Miner', ['default'] = 'Dwarvish Guardsman', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 25, ['d'] = 0, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_rhy_dw_Ghost', ['default'] = 'Ghost', ['guard'] = true, ['bulky'] = 40, ['quiet_buff'] = 'Q1', ['calls_for_help'] = true, ['disallow_slash_unguardian'] = true, ['allow_random'] = false },
	{ ['t'] = 28, ['d'] = 0, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mag_Red_Ulfserker', ['default'] = 'Dwarvish Berserker', ['beefy'] = 32, ['gold'] = 9 },
	
	{ ['t'] = 24, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_rhy_dw_Miner', ['default'] = 'Dwarvish Guardsman', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_stf_triththa_Giant_Squid', ['default'] = 'Cuttle Fish', ['guard'] = true, ['buff'] = 'A5:B5:C2', ['item'] = true },
	
	{ ['t'] = 24, ['d'] = 2, ['side'] = 3, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_mag_Mechanic', ['default'] = 'Saurian Augur', ['guard'] = true, ['allow_random'] = false },
	{ ['t'] = 28, ['d'] = 2, ['side'] = 3, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_stf_triththa_Armorer', ['default'] = 'Saurian Ambusher', ['guard'] = true },
	
	{ ['t'] = 27, ['d'] = 3, ['side'] = 3, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_mag_Perfect_Drone', ['default'] = 'Giant Spider', ['allow_random'] = false },
	{ ['t'] = 27, ['d'] = 3, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_ext_dwarves_Dwarvish_Flamethrower', ['default'] = 'Cave Bear', },
	
	{ ['t'] = 29, ['d'] = 4, ['side'] = 4, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_ext_monsters_Water_Snake', ['default'] = 'Tentacle of the Deep', ['guard'] = true, ['bulky'] = 60 },
	
	{ ['t'] = 23, ['d'] = 5, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mag_Technologist', ['default'] = 'Dwarvish Thunderguard', ['beefy'] = 16, ['gold'] = 9 },
	{ ['t'] = 25, ['d'] = 5, ['side'] = 3, ['x'] = 5, ['lvl'] = 2, ['type'] = 'AE_rhy_dw_Engineer', ['default'] = 'Dwarvish Steelclad', ['armored'] = 12, },
	
	-- 30 - 35 (mask y 19 - 14)
	
	{ ['t'] = 31, ['d'] = 0, ['side'] = 4, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Brown_Rat', ['default'] = 'Goblin Rouser', },
	{ ['t'] = 32, ['d'] = 0, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'Naga Ophidian', ['guard'] = true },
	{ ['t'] = 32, ['d'] = 0, ['side'] = 4, ['x'] = 23, ['lvl'] = 3, ['type'] = 'Naga High Guard', ['default'] = 'Naga High Guard', ['recruits'] = 'Naga Ringcaster,Naga Warrior,AE_ext_orcs_Naga_Warden,AE_ext_orcs_Naga_Assassin,Dread Bat', ['default_recruits'] = 'Naga Ringcaster,Naga Warrior,Naga Ophidian,Naga Shield Guard,Dread Bat', ['r_lvls'] = '2,2,2,2,2', ['recruitment_gold'] = 105, ['buff'] = 'A8:B8:C9', ['recruit_armored'] = 16 },
	{ ['t'] = 33, ['d'] = 0, ['side'] = 4, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_mag_Goblin_Invader', ['default'] = 'Naga Myrmidon', ['buff'] = 'A6:B6:C7:B21' },
	{ ['t'] = 33, ['d'] = 0, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Goblin Impaler', },
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Dwarvish Stalwart', ['moves'] = 0, ['gold'] = 12 },
	
	{ ['t'] = 31, ['d'] = 2, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_agl_dark_legion_Sentry_Drone', ['default'] = 'Naga Ringcaster', ['armored'] = 12, ['fast'] = 1 },
	
	{ ['t'] = 35, ['d'] = 3, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_ext_orcs_Orcish_Elder', ['default'] = 'Dune Spearguard', ['guard'] = true, ['gold'] = 10 },
	
	{ ['t'] = 32, ['d'] = 4, ['side'] = 4, ['x'] = 17, ['lvl'] = 3, ['type'] = 'Orcish Slurbow', ['default'] = 'Dune Wayfarer', ['beefy'] = 20, },
	{ ['t'] = 35, ['d'] = 4, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_agl_dark_legion_Protector_Drone', ['default'] = 'Dune Scorcher', ['buff'] = 'A7:B7:C8', },
	
	{ ['t'] = 34, ['d'] = 5, ['side'] = 4, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_efm_imperialists_Tank', ['default'] = 'Dune Marauder', ['beefy'] = 20, ['bulky'] = 108, ['armored'] = 16 },
	
	-- 36 - 42 (mask y 13 - 7)
	
	{ ['t'] = 37, ['d'] = 0, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_ext_outlaws_Shadow_Mage', ['default'] = 'Dune Alchemist', ['beefy'] = 80 },
	
	{ ['t'] = 39, ['d'] = 1, ['side'] = 4, ['x'] = 24, ['lvl'] = 3, ['type'] = 'Fugitive', ['agile'] = 10 },
	
	{ ['t'] = 40, ['d'] = 2, ['side'] = 3, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_mag_Dark_Observer', ['default'] = 'Dune Herbalist', ['guard'] = true },
	
	{ ['t'] = 38, ['d'] = 3, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_ext_orcs_Goblin_Lancer', ['default'] = 'Dune Strider', ['bulky'] = 30 },
	
	{ ['t'] = 36, ['d'] = 5, ['side'] = 4, ['x'] = 25, ['lvl'] = 2, ['type'] = 'Ogre', ['default'] = 'Dune Swordsman', ['bulky'] = 80, ['beefy'] = 40, ['race_guard_off'] = true, ['armored'] = 20, },
	
	-- 40 / final boss
	
	{ ['t'] = 40, ['d'] = 0, ['side'] = 2, ['x'] = 26, ['lvl'] = 3, ['type'] = 'AE_ext_orcs_Orcish_Sovereign', ['default'] = 'Orcish Sovereign', ['buff'] = 'A10:B10:C5:C5:B27', ['moves'] = 0, ['final_boss'] = true },
}


-->>
