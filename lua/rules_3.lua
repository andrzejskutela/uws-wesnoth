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
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 24, ['y'] = 6, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 30 },
	{ ['row'] = 'object', ['t'] = 21, ['x'] = 11, ['cat'] = 'rune', ['image'] = 'scenery/rune2-glow.png', ['amount'] = 3, ['name'] = 'Rune', ['set'] = 'R6,R7,R8', ['color'] = '#b366ed', ['tooltip'] = '+10% forest defense (33%)\
+10% hills defense (33%)\
+1 damage (33%)' },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['y'] = 8, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Wolf', ['default'] = 'Wolf', ['moves'] = 4, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Wolf', ['default'] = 'Wolf', ['moves'] = 5, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['y'] = 6, ['lvl'] = 0, ['type'] = 'AE_myh_Wolf_Cub', ['default'] = 'Icemonax', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 15, ['y'] = 4, ['lvl'] = 1, ['type'] = 'Young Ogre', ['default'] = 'Young Ogre', ['moves'] = 3 },

	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 22, ['y'] = 17, ['lvl'] = 0, ['type'] = 'AE_myh_Wolf_Cub', ['default'] = 'Icemonax', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 6, ['side'] = 2, ['x'] = 20, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Wolf', ['default'] = 'Wolf', ['moves'] = 4 },
	
	-- 2 - 8 (mask y 56 - 50)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'Ruffian', ['default'] = 'Ruffian', },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_bem_wood_warriors_Young_Bigfoot', ['default'] = 'Troll Whelp', },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_ext_outlaws_Rogue_Mage', ['default'] = 'Dark Adept', },
	{ ['t'] = 8, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_ext_outlaws_Princess', ['default'] = 'Trapper', ['recruits'] = 'AE_mrc_cult_Cultist,AE_mrc_cult_Exile,AE_imp_Lavinians_Slinger', ['default_recruits'] = 'Wolf Rider,Young Ogre,Naga Fighter', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 45, ['gold'] = 55, ['item'] = true },
	
	{ ['t'] = 6, ['d'] = 2, ['side'] = 2, ['x'] = 15, ['lvl'] = 0, ['type'] = 'Ruffian', ['default'] = 'Ruffian' },

	{ ['t'] = 3, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_imp_Marauders_Scout', ['default'] = 'Footpad', },
	
	{ ['t'] = 7, ['d'] = 4, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_imp_Marauders_Boatsman', ['default'] = 'Wolf Rider', },
	
	{ ['t'] = 8, ['d'] = 5, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_imp_Marauders_Fay', ['default'] = 'Mage' },
	
	{ ['t'] = 5, ['d'] = 6, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Naga Fighter', ['default'] = 'Naga Fighter', ['race_guard_off'] = true, ['buff'] = 'A23:B23:C1' },
	
	-- 9 - 15 (mask y 49 - 43)
	
	{ ['t'] = 9, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Poacher', ['default'] = 'Poacher', },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_mrc_holy_order_Lightwisp', ['default'] = 'Woodland Boar', ['disallow_slash_unguardian'] = true },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Wolf', ['default'] = 'Wolf', ['race_guard_off'] = true, },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_imp_Orcei_River_Lizard', ['default'] = 'Naga Dirkfang', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_stf_triththa_Shieldman', ['default'] = 'Dwarvish Guardsman', ['moves'] = 0 },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Giant_Rat_Duo', ['default'] = 'Fire Ant', ['bulky'] = 40 },
	
	{ ['t'] = 14, ['d'] = 2, ['side'] = 2, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_bem_wood_warriors_Bigfoot', ['default'] = 'Troll', ['race_guard_off'] = true, },
	
	{ ['t'] = 10, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_imp_Marauders_Axeman', ['default'] = 'Thug', },
	{ ['t'] = 14, ['d'] = 3, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_bem_wood_warriors_Amphibians_Rider', ['default'] = 'Saurian Ambusher', ['guard'] = true, },
	
	{ ['t'] = 12, ['d'] = 4, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Wolf', ['default'] = 'Wolf', ['race_guard_off'] = true, },

	{ ['t'] = 13, ['d'] = 5, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Wolf', ['default'] = 'Wolf', ['race_guard_off'] = true, },
	
	{ ['t'] = 13, ['d'] = 6, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mrc_slavers_Mutt', ['default'] = 'Wolf', ['race_guard_off'] = true, },
	{ ['t'] = 14, ['d'] = 6, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_mrc_slavers_Mutt', ['default'] = 'Wolf', ['race_guard_off'] = true, ['bulky'] = 24 },
	
	-- 16 - 22 (mask y 42 - 36)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Brown_Rat', ['default'] = 'Rock Scorpion', ['guard'] = true },
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_mag_Runeadept', ['default'] = 'Dwarvish Thunderer', },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_mrc_infernai_Lost_Soul', ['default'] = 'Ghost', },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_feu_clockwork_dwarves_Gunner', ['default'] = 'Dwarvish Thunderguard', ['moves'] = 0, },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_stf_triththa_Smith', ['default'] = 'Dwarvish Scout', ['armored'] = 5, },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 3, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_mag_Runesmith', ['default'] = 'Dwarvish Runesmith', ['recruits'] = 'Dwarvish Fighter,Dwarvish Thunderer', ['default_recruits'] = 'Dwarvish Fighter,Dwarvish Thunderer', ['r_lvls'] = '1,1', ['recruitment_gold'] = 60, ['gold'] = 32 },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 1, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_fut_brungar_Herbalist', ['default'] = 'Dune Apothecary', ['allow_random'] = false, },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Dwarvish Ulfserker', ['default'] = 'Dwarvish Ulfserker' },
	
	{ ['t'] = 19, ['d'] = 2, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_stf_triththa_Rusher', ['default'] = 'Dwarvish Fighter', },
	{ ['t'] = 21, ['d'] = 2, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_ext_monsters_Spider', ['default'] = 'Cave Bear', ['guard'] = true },
	
	{ ['t'] = 19, ['d'] = 3, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_stf_triththa_Charger', ['default'] = 'Dwarvish Pathfinder', ['race_guard_off'] = true, },
	
	{ ['t'] = 20, ['d'] = 4, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_stf_triththa_Crossbowman', ['default'] = 'Dwarvish Scout', },

	{ ['t'] = 20, ['d'] = 5, ['side'] = 3, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_mag_Dwarvish_Rune_Warrior', ['default'] = 'Dwarvish Explorer', ['race_guard_off'] = true, ['bulky'] = 24, ['item'] = true },

	{ ['t'] = 18, ['d'] = 6, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'Dwarvish Thunderguard', ['default'] = 'Dwarvish Thunderguard', ['quiet_buff'] = 'Q3', ['allow_random'] = false, ['gold'] = 18 },
	{ ['t'] = 19, ['d'] = 6, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mag_Dwarvish_Gunner', ['default'] = 'Dwarvish Scout', },
	
	-- 23 - 29 (mask y 35 - 29)
	
	{ ['t'] = 24, ['d'] = 1, ['side'] = 4, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_stf_triththa_Plainsrider', ['default'] = 'Gryphon Rider', ['quiet_buff'] = 'Q4', ['allow_random'] = false },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 1, ['type'] = 'Dwarvish Fighter', ['default'] = 'Dwarvish Fighter', },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 4, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_ext_dwarves_Dwarvish_Runesmith', ['default'] = 'Dwarvish Runesmith', ['recruits'] = 'Dwarvish Fighter,Dwarvish Thunderer,AE_mag_Dwarvish_Warrior', ['default_recruits'] = 'Dwarvish Fighter,Dwarvish Thunderer,Dwarvish Guardsman', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 70, ['gold'] = 60, },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'Dwarvish Berserker', ['default'] = 'Dwarvish Berserker', ['gold'] = 15, },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 4, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Triggerman', ['default'] = 'Dwarvish Thunderer', ['quiet_buff'] = 'Q3', ['allow_random'] = false, ['guard'] = true, },
	
	{ ['t'] = 23, ['d'] = 2, ['side'] = 4, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Dwarvish Steelclad', ['default'] = 'Dwarvish Steelclad', ['armored'] = 10, },
	
	{ ['t'] = 27, ['d'] = 3, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_feu_clockwork_dwarves_Miasmist', ['default'] = 'Dwarvish Stalwart', },
	
	{ ['t'] = 25, ['d'] = 4, ['side'] = 4, ['x'] = 19, ['lvl'] = 1, ['type'] = 'Dwarvish Fighter', ['default'] = 'Dwarvish Fighter', },
	{ ['t'] = 26, ['d'] = 4, ['side'] = 4, ['x'] = 18, ['lvl'] = 3, ['type'] = 'Dwarvish Dragonguard', ['default'] = 'Dwarvish Dragonguard', ['quiet_buff'] = 'Q3', ['allow_random'] = false, ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 25, ['d'] = 5, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_ext_dwarves_Dwarvish_Flamethrower', ['default'] = 'Dwarvish Steelclad' },

	{ ['t'] = 29, ['d'] = 6, ['side'] = 4, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_mag_Mobile_Defensive_Platform', ['default'] = 'Dwarvish Sentinel', ['buff'] = 'A14:B7:C22', },
	
	-- 30 - 36 (mask y 28 - 22)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_feu_clockwork_dwarves_Wanderer', ['default'] = 'Dwarvish Scout', },
	{ ['t'] = 32, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Drone', ['default'] = 'Gryphon Rider', },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 3, ['type'] = 'Ancient Wose', ['default'] = 'Ancient Wose', },
	{ ['t'] = 34, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Elvish Archer', ['default'] = 'Elvish Archer', ['calls_for_help'] = true },
	{ ['t'] = 35, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_chs_sylvians_Forest_Spirit', ['default'] = 'Wild Wyvern' },
	{ ['t'] = 36, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_chs_sylvians_Night_Nymph', ['default'] = 'Swamp Lizard' },
	{ ['t'] = 36, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Merman Hoplite', ['default'] = 'Merman Hoplite', ['armored'] = 10, ['bulky'] = 28, ['item'] = true },
	
	{ ['t'] = 33, ['d'] = 2, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_chs_sylvians_Wose_Shaman', ['default'] = 'Wose Shaman', },
	{ ['t'] = 33, ['d'] = 2, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_chs_quenoth_Quenoth_Moon_Enchantress', ['default'] = 'Elvish Sorceress', },
	
	{ ['t'] = 32, ['d'] = 3, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Drone', ['default'] = 'Gryphon Rider', },
	{ ['t'] = 34, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'Elvish Marksman', ['default'] = 'Elvish Marksman', ['gold'] = 15 },

	{ ['t'] = 35, ['d'] = 4, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Elder Wose', ['default'] = 'Elder Wose', },
	
	{ ['t'] = 34, ['d'] = 5, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'Elvish Champion', ['default'] = 'Elvish Champion', ['armored'] = 5 },
	
	{ ['t'] = 33, ['d'] = 6, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Lanterbug', ['default'] = 'Gryphon Master', ['agile'] = 15 },
	
	-- 37 - 43 (mask y 21 - 15)
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_chs_sylvians_Elvish_Mystic', ['default'] = 'Elvish Enchantress', ['recruits'] = 'AE_chs_quenoth_Quenoth_Hunter,AE_chs_quenoth_Quenoth_Hunter,AE_chs_quenoth_Quenoth_Archer', ['default_recruits'] = 'Elvish Shaman,Elvish Fighter,Elvish Archer', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 95, ['gold'] = 40 },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Elvish Fighter', ['default'] = 'Elvish Fighter', },
	{ ['t'] = 41, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_feu_high_elves_Captain', ['default'] = 'Elvish Lord', ['gold'] = 12 },
	{ ['t'] = 42, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_mrc_hive_Tick', ['default'] = 'Giant Spider', ['buff'] = 'A23:B12:C23:C21', },
	{ ['t'] = 42, ['d'] = 1, ['side'] = 3, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Queen', ['default'] = 'Roc', },
	{ ['t'] = 42, ['d'] = 1, ['side'] = 3, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Glider', ['default'] = 'Fire Wraith', ['agile'] = 10 },
	{ ['t'] = 42, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_mag_Kharosian_Bulwark', ['default'] = 'Drake Enforcer', ['guard'] = true },
	{ ['t'] = 43, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Fire_Ant', ['default'] = 'Jinn', },
	
	{ ['t'] = 42, ['d'] = 2, ['side'] = 3, ['x'] = 9, ['lvl'] = 3, ['type'] = 'AE_mrc_hive_Bull_Ant', ['default'] = 'Direwolf', ['bulky'] = 56,  },
	
	{ ['t'] = 41, ['d'] = 3, ['side'] = 3, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Wasp', ['default'] = 'Gryphon', ['fast'] = 1 },
	{ ['t'] = 43, ['d'] = 3, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_mag_Protector', ['default'] = 'Drake Thrasher', ['armored'] = 5, },

	{ ['t'] = 43, ['d'] = 4, ['side'] = 2, ['x'] = 25, ['lvl'] = 3, ['type'] = 'AE_mag_Platinum_Warrior', ['default'] = 'Drake Warden', ['armored'] = 10 },
	
	{ ['t'] = 40, ['d'] = 5, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_feu_high_elves_Shieldbearer', ['default'] = 'Elvish Hero', },
	
	{ ['t'] = 40, ['d'] = 6, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_feu_high_elves_Shieldbearer', ['default'] = 'Elder Wose', ['bulky'] = 72, ['beefy'] = 40, },
	
	-- 44 - 50 (mask y 14 - 8)
	
	{ ['t'] = 44, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_mrc_hive_Hercules', ['default'] = 'Royal Warrior', ['race_guard_off'] = true, ['calls_for_help'] = true, ['armored'] = 10, ['bulky'] = 68, ['beefy'] = 12 },
	{ ['t'] = 47, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 3, ['type'] = 'AE_mag_Sun_Guardian', ['default'] = 'Inferno Drake', ['guard'] = true, },
	
	{ ['t'] = 44, ['d'] = 2, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_mag_Inspired', ['default'] = 'Drake Flare', },
	
	{ ['t'] = 47, ['d'] = 3, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_mag_Cosmic_Eye', ['default'] = 'Sky Drake', ['guard'] = true, ['event'] = 'follow_players_race', },

	{ ['t'] = 44, ['d'] = 4, ['side'] = 2, ['x'] = 23, ['lvl'] = 4, ['type'] = 'AE_mag_Master_of_Sun', ['default'] = 'Wyvern Rider', ['guard'] = true, },
	
	{ ['t'] = 46, ['d'] = 5, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mag_Fanatic', ['default'] = 'Drake Warrior', ['beefy'] = 32, ['armored'] = 10 },
	
	{ ['t'] = 44, ['d'] = 6, ['side'] = 3, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Termite_Soldier', ['default'] = 'Dread Bat', ['bulky'] = 20, ['beefy'] = 28 },
	
	-- 48 / final boss
	
	{ ['t'] = 48, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 4, ['type'] = 'AE_mag_Kirios', ['default'] = 'Armageddon Drake', ['buff'] = 'A16:B24:C3:C16:C19', ['moves'] = 0, ['final_boss'] = true },
}


-->>
