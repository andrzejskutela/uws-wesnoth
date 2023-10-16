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
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 10, ['y'] = 5, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 40 },
	{ ['row'] = 'object', ['t'] = 11, ['x'] = 17, ['cat'] = 'hidden_unit', ['type'] = 'AE_fut_brungar_Undecided_Student', ['type_default'] = 'Peasant', ['message'] = "Hey man! I'm so glad to see someone normal here. Listen, this is insane what is going on here I need to get the hell out of here! If you escort me to the <span color='#8de1f2'>Crystal Forest</span> I will reward you greatly!", ['new_unit_special_id'] = 'rfc_crystal_forest_escort_unit' },
	{ ['row'] = 'object', ['t'] = 14, ['x'] = 24, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 50 },
	{ ['row'] = 'object', ['t'] = 17, ['x'] = 8, ['cat'] = 'rune', ['image'] = 'scenery/uws/stone-circle.png', ['amount'] = 2, ['name'] = 'Stone Circle', ['set'] = 'R6,R7', ['color'] = '#a0a2ad', ['tooltip'] = '+10% forest defense (50%)\
+10% hills defense (50%)' },
	{ ['row'] = 'object', ['t'] = 23, ['x'] = 11, ['cat'] = 'decorative', ['name'] = 'Town of Ahrenvou' },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['y'] = 17, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Stalwart', ['default'] = 'Swordsman', ['moves'] = 5 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['y'] = 17, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Spearman', ['moves'] = 5 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['y'] = 6, ['lvl'] = 0, ['type'] = 'AE_rhy_fh_Beaver', ['default'] = 'Mudcrawler', ['moves'] = 4, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['y'] = 11, ['lvl'] = 0, ['type'] = 'Giant Ant', ['default'] = 'Giant Ant', ['guard'] = true, ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 25, ['y'] = 9, ['lvl'] = 1, ['type'] = 'AE_mie_vampire_bounty_hunter', ['default'] = 'Footpad', ['moves'] = 5, },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['y'] = 11, ['lvl'] = 0, ['type'] = 'Giant Ant', ['default'] = 'Giant Ant', ['guard'] = true, ['moves'] = 4 },
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_bear_cub', ['default'] = 'Fire Ant', ['guard'] = true, ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['y'] = 10, ['lvl'] = 1, ['type'] = 'Fire Ant', ['default'] = 'Fire Ant', ['moves'] = 4 },
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 22, ['y'] = 7, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Archer', ['default'] = 'Poacher', ['guard'] = true, ['moves'] = 5, },
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 10, ['y'] = 17, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Legionaire', ['default'] = 'Spearman', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 6, ['side'] = 2, ['x'] = 24, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Young_Wolf', ['default'] = 'Wolf', ['guard'] = true, ['moves'] = 6 },
	
	-- 2 - 8 (mask y 31 - 25)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Shaman', ['default'] = 'Elvish Shaman', },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Wose', ['default'] = 'Wose', ['bulky'] = 20, ['guard'] = true, ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Axethrower', ['default'] = 'Elvish Fighter', ['guard'] = true },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_rhy_fd_Gnome_Mage', ['default'] = 'Mage', ['recruits'] = 'AE_rhy_fh_Archer,AE_rhy_fh_Axethrower,AE_rhy_fh_Shaman', ['default_recruits'] = 'Elvish Fighter,Elvish Archer,Elvish Shaman', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 80, ['gold'] = 45 },
	
	{ ['t'] = 2, ['d'] = 2, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Deerrider', ['default'] = 'Elvish Scout', },
	
	{ ['t'] = 7, ['d'] = 3, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_rhy_fd_Giant', ['default'] = 'Young Ogre', ['race_guard_off'] = true, ['bulky'] = 40 },
	
	{ ['t'] = 4, ['d'] = 4, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_rhy_fd_Gnome_Rider', ['default'] = 'Elder Falcon', },
	
	{ ['t'] = 5, ['d'] = 6, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Firefly', ['default'] = 'Naga Guard', },
	
	-- 9 - 15 (mask y 24 - 18)
	
	{ ['t'] = 9, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Leshi', ['default'] = 'Elvish Druid', ['gold'] = 20, },
	{ ['t'] = 9, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Water_Snake', ['default'] = 'Naga Fighter', },
	{ ['t'] = 10, ['d'] = 1, ['side'] = 3, ['x'] = 7, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Giant Rat', ['race_guard_off'] = true, },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 3, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Queen', ['default'] = 'Naga Warrior', ['recruits'] = 'AE_mrc_hive_Beetle,AE_mrc_hive_Mosquito,AE_mrc_hive_Swarm', ['default_recruits'] = 'Naga Dirkfang,Naga Fighter,Naga Guard', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 90, ['item'] = true },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', ['guard'] = true, },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Kodama', ['default'] = 'Wose Shaman', ['guard'] = true, },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', ['guard'] = true, },
	
	{ ['t'] = 10, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_bem_wood_warriors_Carnivore_Plant', ['default'] = 'Elvish Fighter', ['race_guard_off'] = true, },
	
	{ ['t'] = 12, ['d'] = 3, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_rhy_ey_Waterpixie', ['default'] = 'Elder Falcon', },
	{ ['t'] = 15, ['d'] = 3, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Earth_Daemon_1', ['default'] = 'Troll Whelp', ['guard'] = true, ['gold'] = 15 },
	
	{ ['t'] = 10, ['d'] = 4, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Drone', ['default'] = 'Naga Fighter', ['agile'] = 8 },
	{ ['t'] = 13, ['d'] = 4, ['side'] = 3, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_rhy_ey_Nymph', ['default'] = 'Water Serpent', ['guard'] = true, },
	
	{ ['t'] = 9, ['d'] = 6, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Crocodile', ['default'] = 'Naga Guard', ['beefy'] = 24, },
	{ ['t'] = 15, ['d'] = 6, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_bem_wood_warriors_Fatal_Tangle', ['default'] = 'Swamp Lizard', ['buff'] = 'A29:B15:C43:C21', },
	
	-- 16 - 22 (mask y 17 - 11)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 4, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_mie_thelian_guardian', ['default'] = 'Elvish Champion', ['guard'] = true },
	{ ['t'] = 17, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_agl_yokai_Medusa_Witch', ['default'] = 'Wild Wyvern', ['race_guard_off'] = true, ['calls_for_help'] = true },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_feral', ['default'] = 'Elvish Fighter', ['guard'] = true, ['fast'] = 1 },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 4, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_spirit', ['default'] = 'Elvish Scout', ['agile'] = 8 },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_warrior', ['default'] = 'Elvish Fighter', ['beefy'] = 24 },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Wose', ['default'] = 'Wose', ['bulky'] = 40, ['guard'] = true },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_myh_Water', ['default'] = 'Elder Falcon', ['race_guard_off'] = true, },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_rhy_fh_Forestking', ['default'] = 'Elvish High Lord', ['recruits'] = 'AE_mie_thelian_shaman,AE_mie_thelian_hunter,AE_mie_thelian_deer_rider,AE_rhy_fd_Giant,AE_rhy_fd_Gnome_Musican', ['default_recruits'] = 'Elvish Fighter,Elvish Archer,Elvish Shaman,Elvish Scout,Mage', ['r_lvls'] = '1,1,1,1,1', ['recruitment_gold'] = 120, ['gold'] = 45 },
	
	{ ['t'] = 17, ['d'] = 2, ['side'] = 3, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_rhy_mh_Stonegolem', ['default'] = 'Ogre', ['guard'] = true, },
	
	{ ['t'] = 20, ['d'] = 3, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_rhy_fh_Healer', ['default'] = 'Elvish Sorceress', ['race_guard_off'] = true, },
	
	{ ['t'] = 16, ['d'] = 4, ['side'] = 2, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_myh_Water', ['default'] = 'Elder Falcon', },
	
	{ ['t'] = 21, ['d'] = 6, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mie_thelian_chieftain', ['default'] = 'Elvish Captain', ['bulky'] = 32, ['beefy'] = 20, ['disallow_slash_unguardian'] = true, },
	
	-- 23 - 29 (mask y 10 - 4)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 2, ['type'] = 'Wose Shaman', ['default'] = 'Wose Shaman', ['bulky'] = 100, ['event'] = 'follow_players_race', ['race_guard_off'] = true },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_shaman', ['default'] = 'Elvish Shaman', },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_mie_thelian_wolf_fanatic', ['default'] = 'Elvish Hero', },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', },
	
	{ ['t'] = 23, ['d'] = 2, ['side'] = 4, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_spirit', ['default'] = 'Elvish Scout', ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 29, ['d'] = 2, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', },
	
	{ ['t'] = 24, ['d'] = 3, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mie_thelian_deerstalker', ['default'] = 'Elvish Ranger', ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 27, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', },
	
	{ ['t'] = 26, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_warrior', ['default'] = 'Dwarvish Stalwart', ['guard'] = true },
	{ ['t'] = 24, ['d'] = 4, ['side'] = 4, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_wolf', ['default'] = 'Bay Horse', },
	{ ['t'] = 28, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'Great Wolf', ['default'] = 'Great Wolf', },
	
	{ ['t'] = 25, ['d'] = 6, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_berserker_golem', ['default'] = 'Dwarvish Berserker', },
	{ ['t'] = 29, ['d'] = 6, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'Great Wolf', ['default'] = 'Great Wolf', ['fast'] = 1 },
	
	-- final boss 27 / mask y 6
	
	{ ['t'] = 27, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_ice_golem_king', ['default'] = 'Dwarvish Runemaster', ['moves'] = 0, ['final_boss'] = true, ['buff'] = 'A26:B16:C45', ['recruits'] = 'AE_agl_frozen_frost_gunner,AE_agl_frozen_frost_shooter,AE_agl_frozen_frost_shieldman,AE_agl_frozen_frost_lanceman', ['default_recruits'] = 'Dwarvish Steelclad,Dwarvish Runesmith,Dwarvish Pathfinder,Dwarvish Thunderguard', ['r_lvls'] = '2,2,2,2', ['recruitment_gold'] = 120, ['story_message'] = 'So you decided to take the path though the mountains? You will not pass and I will see to it!', ['story_response'] = 'Stay together! We have won battles with worse opponents!' },
}


-->>
