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
	
	{ ['row'] = 'object', ['t'] = 7, ['x'] = 10, ['image'] = 'scenery/temple-cracked3.png', ['cat'] = 'event', ['event'] = 'rfc_4b_temple', },
	{ ['row'] = 'object', ['t'] = 11, ['x'] = 8, ['image'] = 'scenery/uws/altar.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'sacrificial_altar' },
	{ ['row'] = 'object', ['t'] = 11, ['x'] = 8, ['image'] = 'scenery/uws/altar-bloody.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'bloody_altar' },
	{ ['row'] = 'object', ['t'] = 10, ['x'] = 5, ['image'] = 'items/bones.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'temple_bones' },
	{ ['row'] = 'object', ['t'] = 11, ['x'] = 8, ['cat'] = 'event', ['event'] = 'rfc_4b_altar', },
	{ ['row'] = 'object', ['t'] = 10, ['x'] = 5, ['cat'] = 'event', ['event'] = 'rfc_4b_bones', },
	{ ['row'] = 'object', ['t'] = 21, ['x'] = 20, ['cat'] = 'heal', ['image'] = 'scenery/well.png', ['name'] = 'Well', ['amount'] = 12 },
	{ ['row'] = 'object', ['t'] = 25, ['x'] = 22, ['cat'] = 'rune', ['image'] = 'scenery/uws/energy_vortex_alt.png', ['amount'] = 3, ['name'] = 'Rune', ['set'] = 'R12,R13,R14', ['color'] = '#b366ed', ['tooltip'] = '+2 ranged parry (33%)\
+2 ranged accuracy (33% - no effect on magical)\
+1 ranged damage (33%)' },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 1, ['x'] = 24, ['y'] = 7, ['lvl'] = 1, ['type'] = 'AE_stf_free_saurians_Mage', ['default'] = 'Mage', ['allow_random'] = false },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Fly', ['default'] = 'Saurian Skirmisher', ['moves'] = 4 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['y'] = 7, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Web_Spitter', ['default'] = 'Swamp Lizard', ['moves'] = 5, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['y'] = 5, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Great_Spider', ['default'] = 'Water Serpent', ['moves'] = 6, ['guard'] = true },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 11, ['y'] = 6, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Giant Rat', ['moves'] = 7 },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 23, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Swarm', ['default'] = 'Giant Scorpion', ['guard'] = true, ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Piper', ['default'] = 'Saurian Augur', ['moves'] = 5 },
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['y'] = 6, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Charmer', ['default'] = 'Saurian Oracle', ['moves'] = 5, ['guard'] = true },
	
	{ ['t'] = 1, ['d'] = 6, ['side'] = 2, ['x'] = 8, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Crocodile', ['default'] = 'Saurian Skirmisher', ['moves'] = 5, ['beefy'] = 60, ['armored'] = 20 },
	
	-- 2 - 8 (mask y 37 - 31)
	
	{ ['t'] = 2, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 0, ['type'] = 'AE_efm_pygmies_Knat', ['default'] = 'Giant Rat', ['allow_random'] = false },
	{ ['t'] = 2, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'Giant Rat', ['allow_random'] = false, },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Swamp_Witch', ['default'] = 'Giant Scorpion', ['allow_random'] = false, },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Giant Rat', ['allow_random'] = false, },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Puma', ['default'] = 'Saurian Augur', ['guard'] = true, ['moves'] = 6, ['allow_random'] = false },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 4, ['type'] = 'AE_chs_chaos_empire_Armageddon_Imp', ['default'] = 'Wyvern Rider', ['recruits'] = 'AE_mrc_hive_Drone,AE_mrc_hive_Mosquito,AE_mrc_hive_Swarm,AE_mrc_hive_Spider,AE_mrc_hive_Hopper', ['default_recruits'] = 'Saurian Augur,Saurian Skirmisher,Giant Scorpion,Giant Mudcrawler', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 120, ['gold'] = 60, ['recruit_armored'] = 15, ['allow_random'] = false },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'Giant Rat', ['armored'] = 10, ['allow_random'] = false },
	
	{ ['t'] = 3, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Fly', ['default'] = 'Rock Scorpion', ['allow_random'] = false, },
	
	{ ['t'] = 5, ['d'] = 3, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Infest', ['default'] = 'Swamp Lizard', ['guard'] = true, ['agile'] = 10, ['moves'] = 7, ['allow_random'] = false },
	{ ['t'] = 6, ['d'] = 3, ['side'] = 2, ['x'] = 23, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'Giant Rat', ['allow_random'] = false, },
	{ ['t'] = 6, ['d'] = 3, ['side'] = 2, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Toad_Breath', ['default'] = 'Saurian Oracle', ['allow_random'] = false, },
	
	{ ['t'] = 4, ['d'] = 4, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Mudfoot', ['default'] = 'Saurian Soothsayer', ['allow_random'] = false, },
	{ ['t'] = 8, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Great_Spider', ['default'] = 'Saurian Ambusher', ['allow_random'] = false },
	
	{ ['t'] = 6, ['d'] = 6, ['side'] = 2, ['x'] = 8, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'Giant Rat', ['allow_random'] = false, },
	{ ['t'] = 7, ['d'] = 6, ['side'] = 2, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'Giant Rat', ['allow_random'] = false, },
	{ ['t'] = 8, ['d'] = 6, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Wyrd', ['default'] = 'Saurian Ambusher', ['allow_random'] = false, },
	
	-- 9 - 15 (mask y 30 - 24)
	
	{ ['t'] = 9, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Great_Spider', ['default'] = 'Saurian Ambusher', },
	{ ['t'] = 9, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_efm_pygmies_Knat', ['default'] = 'Giant Rat', ['allow_random'] = false },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mag_Black_Salamander', ['default'] = 'Naga Ringcaster', ['guard'] = true },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Grand_Crocodile', ['default'] = 'Swamp Lizard', ['bulky'] = 20, ['fast'] = 1, ['guard'] = true, },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_mag_Green_Salamander', ['default'] = 'Naga Warrior', ['bulky'] = 60, ['race_guard_off'] = true, },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mag_Toad', ['default'] = 'Naga Dirkfang', ['race_guard_off'] = true, },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mag_Yellow_Salamander', ['default'] = 'Naga Shield Guard', ['guard'] = true },
	
	{ ['t'] = 10, ['d'] = 2, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mag_Wyvern', ['default'] = 'Giant Scorpion', ['armored'] = 10, ['guard'] = true },
	{ ['t'] = 14, ['d'] = 2, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mag_Salamander', ['default'] = 'Naga Guard', ['race_guard_off'] = true, },
	
	{ ['t'] = 12, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_efm_pygmies_Lizard_Eye', ['default'] = 'Saurian Flanker', ['guard'] = true, ['bulky'] = 80, ['beefy'] = 48, ['allow_random'] = false },
	
	{ ['t'] = 11, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_efm_pygmies_Sorceress', ['default'] = 'Wild Wyvern', },
	{ ['t'] = 15, ['d'] = 4, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_mag_Toad', ['default'] = 'Naga Fighter', },
	
	{ ['t'] = 13, ['d'] = 6, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mag_Shamanistic_Toad', ['default'] = 'Naga Ringcaster', ['agile'] = 10, ['race_guard_off'] = true, },
	
	-- 16 - 22 (mask y 23 - 17)
	
	{ ['t'] = 17, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 4, ['type'] = 'AE_mag_Chosen_of_Marsh', ['default'] = 'Skeletal Dragon', ['recruits'] = 'AE_mag_Black_Salamander,AE_mag_Blue_Salamander,AE_mag_Green_Salamander,AE_mag_Red_Salamander,AE_mag_Yellow_Salamander,AE_mag_Shamanistic_Toad,AE_mag_Ranged_Toad,AE_mag_Heavy_Toad', ['default_recruits'] = 'Naga Ophidian,Naga Ringcaster,Naga Warrior,Naga Shield Guard,Swamp Lizard', ['r_lvls'] = '2,2,2,2,2', ['recruitment_gold'] = 130, ['item'] = true, ['buff'] = 'A5:B14:C29' },
	{ ['t'] = 17, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_rhy_vx_Snake_Viper', ['default'] = 'Elder Wose', ['armored'] = 20, ['guard'] = true, },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_mag_Heavy_Toad', ['default'] = 'Naga Ophidian', ['buff'] = 'A21:B41:C17' },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_mag_Lava_Salamander', ['default'] = 'Naga High Guard', ['guard'] = true, ['disallow_slash_unguardian'] = true, ['bulky'] = 100 },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_mie_treefolk_ghastbark', ['default'] = 'Wose Shaman', ['guard'] = true, ['gold'] = 15 },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 0, ['type'] = 'AE_mie_leaf_wyvern', ['default'] = 'Wose Sapling', ['race_guard_off'] = true, ['calls_for_help'] = true, ['event'] = 'follow_players_race' },
	
	{ ['t'] = 16, ['d'] = 2, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mag_Great_Wyvern', ['default'] = 'Naga Warrior', ['race_guard_off'] = true, ['bulky'] = 40 },
	{ ['t'] = 20, ['d'] = 2, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mie_treefolk_ghastbark', ['default'] = 'Elvish Ranger', ['race_guard_off'] = true, ['beefy'] = 40 },
	
	{ ['t'] = 19, ['d'] = 3, ['side'] = 4, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_mie_spirit_thorn_witch', ['default'] = 'Elvish Shaman', ['armored'] = 25, ['race_guard_off'] = true },
	{ ['t'] = 21, ['d'] = 3, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mie_sylvan_faerie', ['default'] = 'Elvish Rider', ['guard'] = true, ['fast'] = 1, ['agile'] = 10 },
	
	{ ['t'] = 16, ['d'] = 4, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mag_Heavy_Toad', ['default'] = 'Naga Warrior', ['armored'] = 15, ['bulky'] = 180 },
	
	{ ['t'] = 18, ['d'] = 6, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Mosquito', ['default'] = 'Naga Dirkfang', },
	
	-- 23 - 29 (mask y 16 - 10)
	
	{ ['t'] = 24, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_mie_sylvan_shadow_faerie', ['default'] = 'Elvish Druid', ['beefy'] = 20 },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 4, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mie_sylvan_guardian', ['default'] = 'Cave Bear', ['guard'] = true },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 4, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mie_treefolk_assailant', ['default'] = 'Woodland Boar', ['guard'] = true, },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 4, ['x'] = 18, ['lvl'] = 1, ['type'] = 'Wose', ['default'] = 'Wose', },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 2, ['type'] = 'Wose Shaman', ['default'] = 'Wose Shaman', },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 4, ['x'] = 11, ['lvl'] = 4, ['type'] = 'QQ_wose_destroyer', ['default'] = 'QQ_wose_destroyer', ['recruits'] = 'Elder Wose,Wose Shaman,AE_bem_wood_warriors_Fatal_Tangle,AE_chs_sylvians_Ancestor', ['default_recruits'] = 'Elder Wose,Wose Shaman,Elvish Hero,Elvish Marksman', ['r_lvls'] = '2,2,2,2', ['recruitment_gold'] = 140, ['gold'] = 100, ['allow_random'] = false },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_mie_treefolk_vengeance', ['default'] = 'Elvish Champion', ['guard'] = true },
	
	{ ['t'] = 27, ['d'] = 2, ['side'] = 4, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_mie_sylvan_wrath', ['default'] = 'Ancient Wose', },
	
	{ ['t'] = 25, ['d'] = 3, ['side'] = 4, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mie_treefolk_assailant', ['default'] = 'Elvish Archer', },
	
	{ ['t'] = 23, ['d'] = 4, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mie_treefolk_bark_elder', ['default'] = 'Elder Wose', },
	{ ['t'] = 25, ['d'] = 4, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_rhy_fh_bear', ['default'] = 'Roc', ['fast'] = 1 },
	
	{ ['t'] = 26, ['d'] = 6, ['side'] = 4, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_myh_Vine_Tiger', ['default'] = 'Elvish Sorceress', ['armored'] = 15 },
	
	-- 30 - 36 (mask y 9 - 3)
	
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_rhy_ma_Night_Guard', ['default'] = 'Dune Spearguard', ['beefy'] = 56, ['guard'] = true },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 4, ['type'] = 'AE_mag_Master_of_Darkness', ['default'] = 'Dune Paragon', ['recruits'] = 'AE_rhy_ma_Spellblade,AE_rhy_ma_Sorcerer,AE_rhy_ma_Longbowman,AE_rhy_ma_Longsword,AE_rhy_ma_Seeker', ['default_recruits'] = 'Dune Scorcher,Dune Alchemist,Dune Explorer,Dune Strider,Dune Swordsman', ['r_lvls'] = '2,2,2,2,2', ['recruitment_gold'] = 150, ['recruit_minion'] = 'A29' },
	
	{ ['t'] = 32, ['d'] = 2, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_rhy_ma_Warmonk', ['default'] = 'Dune Strider', ['beefy'] = 24 },
	
	{ ['t'] = 35, ['d'] = 4, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_rhy_ma_General', ['default'] = 'Dune Warmaster', ['armored'] = 10 },

	{ ['t'] = 36, ['d'] = 6, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_rhy_de_Deadwood', ['default'] = 'Cave Bear', ['buff'] = 'A54:B22:C14:C21:A11' },
	
	-- final boss 36 / mask y 3
	
	{ ['t'] = 36, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 5, ['type'] = 'QQ_Archwitch', ['default'] = 'QQ_Archwitch', ['moves'] = 0, ['final_boss'] = true, ['buff'] = 'A19:B15:C13:C16', ['story_message'] = 'Did you enjoy my magical trees? They are so easy to manipulate. Now it is time for you to share the same destiny as them!', ['story_response'] = 'Stay strong! Stay focused! We got her!', },
}


-->>
