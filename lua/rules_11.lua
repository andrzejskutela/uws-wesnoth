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
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 15, ['y'] = 4, ['image'] = 'scenery/tent-fancy-red.png', ['cat'] = 'event', ['event'] = 'rfc_5_shop', },
	{ ['row'] = 'object', ['t'] = 31, ['x'] = 23, ['cat'] = 'rune', ['image'] = 'scenery/nest-full.png', ['amount'] = 2, ['name'] = 'Nest', ['set'] = 'reheal', ['color'] = '#dbbf60', ['tooltip'] = '100% reheal (100%)' },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['y'] = 17, ['lvl'] = 3, ['type'] = 'Ancient Wose', ['default'] = 'Ancient Wose', ['allow_random'] = false, ['moves'] = 3, ['bulky'] = 100, ['gold'] = 100 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['y'] = 6, ['lvl'] = 2, ['type'] = 'AE_bem_calydonians_Gymnet', ['default'] = 'Shock Trooper', ['moves'] = 4 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['y'] = 4, ['lvl'] = 2, ['type'] = 'AE_bem_calydonians_Dardanian_Pillager', ['default'] = 'Pikeman', ['moves'] = 4, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Dardanian_Warrior', ['default'] = 'Bowman', ['moves'] = 4, },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 17, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Peltast', ['default'] = 'Spearman', ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 16, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Teti', ['default'] = 'Footpad', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 20, ['y'] = 4, ['lvl'] = 2, ['type'] = 'AE_bem_calydonians_Dioian_Veteran', ['default'] = 'Bandit', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 6, ['side'] = 2, ['x'] = 21, ['y'] = 4, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Strategos', ['default'] = 'Royal Guard', ['moves'] = 4, ['beefy'] = 40, ['armored'] = 15, ['calls_for_help'] = true },
	
	-- 2 - 8 (mask y 48 - 42)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Hoplite', ['default'] = 'Mage', },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Teti', ['default'] = 'Fencer', },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_bem_calydonians_Hippikon', ['default'] = 'White Mage', },
	{ ['t'] = 7, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Dioian_Swordmaster', ['default'] = 'Mage of Light', ['recruits'] = 'AE_bem_calydonians_Dardanian_Pillager,AE_bem_calydonians_Polemarch,AE_bem_calydonians_Veteran_Peltast,AE_bem_calydonians_Gymnet,AE_bem_calydonians_Toxotes', ['default_recruits'] = 'Duelist,Javelineer,Pikeman,Swordsman', ['r_lvls'] = '2,2,2,2', ['recruitment_gold'] = 100, ['gold'] = 50, ['recruit_minion'] = 'A13' },
	
	{ ['t'] = 4, ['d'] = 2, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Thracian_Peltast', ['default'] = 'Master at Arms', },
	
	{ ['t'] = 7, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Dioian_Swordsman', ['default'] = 'Bowman', },
	{ ['t'] = 8, ['d'] = 3, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Prodromoi', ['default'] = 'Horseman', },
	
	{ ['t'] = 6, ['d'] = 4, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Dardanian_Warrior', ['default'] = 'Mage', },
	
	{ ['t'] = 8, ['d'] = 6, ['side'] = 2, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Rhodian_Slinger', ['default'] = 'Master Bowman', ['buff'] = 'A38:B7:C15:C16', ['gold'] = 30 },
	
	-- 9 - 15 (mask y 41 - 35)
	
	{ ['t'] = 10, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Dardanian_Ravager', ['default'] = 'Cavalier', },
	{ ['t'] = 10, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Diarch', ['default'] = 'Paladin', ['gold'] = 15 },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Lightbringer', ['default'] = 'Dune Apothecary', },
	{ ['t'] = 12, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_rhy_fh_Bearver', ['default'] = 'Swamp Lizard', ['item'] = true, ['guard'] = true, ['buff'] = 'A46:B40:C9:C19:C1' },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Crusher', ['default'] = 'Dune Swordsman', ['beefy'] = 48 },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Patrol_Captain', ['default'] = 'Dune Captain', ['calls_for_help'] = true, ['gold'] = 20 },
	
	{ ['t'] = 11, ['d'] = 2, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Calmblade', ['default'] = 'Dune Strider', },
	
	{ ['t'] = 13, ['d'] = 3, ['side'] = 3, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_stf_eltireans_Siren', ['default'] = 'Dune Windbolt', },
	
	{ ['t'] = 12, ['d'] = 4, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Fury', ['default'] = 'Dune Alchemist', },
	
	{ ['t'] = 9, ['d'] = 6, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Hetaroi', ['default'] = 'Grand Knight', },
	
	-- 16 - 22 (mask y 34 - 28)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_stf_eltireans_Archbishop_of_Eltire', ['default'] = 'Dune Sky Hunter', ['recruits'] = 'AE_stf_eltireans_Frostwalker,AE_stf_eltireans_Destroyer,AE_stf_eltireans_Guardian_of_the_Sun,AE_stf_eltireans_Raging_Mistress,AE_stf_eltireans_Siren', ['default_recruits'] = 'Dune Firetrooper,Dune Luminary,Dune Wayfarer,Dune Harrier,Dune Blademaster', ['r_lvls'] = '3,3,3,3,3', ['recruitment_gold'] = 135, ['recruit_minion'] = 'C31' },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_stf_eltireans_Elementalist', ['default'] = 'Dune Soldier', },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 4, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mag_Golem_Boss', ['default'] = 'Orcish Crossbowman', },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mag_Mage_of_Air', ['default'] = 'Orcish Warrior', ['calls_for_help'] = true },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_mag_Golem', ['default'] = 'Young Ogre', },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 4, ['x'] = 5, ['lvl'] = 3, ['type'] = 'AE_mag_Mirrorshield', ['default'] = 'Great Troll', ['beefy'] = 28, ['armored'] = 10 },
	
	{ ['t'] = 22, ['d'] = 2, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_mag_Um', ['default'] = 'Orcish Warlord', ['bulky'] = 300 },
	
	{ ['t'] = 18, ['d'] = 3, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_stf_eltireans_Glory_Seeker', ['default'] = 'Dune Rider', }
	{ ['t'] = 20, ['d'] = 3, ['side'] = 3, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_mag_War_Mage', ['default'] = 'Troll Shaman', },
	
	{ ['t'] = 19, ['d'] = 4, ['side'] = 4, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_mag_Mystic_Warrior', ['default'] = 'Orcish Slayer', },,
	{ ['t'] = 21, ['d'] = 4, ['side'] = 4, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_mag_Shadowmage', ['default'] = 'Orcish Slurbow', ['buff'] = 'A35:B52:C19:B13' },
	
	{ ['t'] = 16, ['d'] = 6, ['side'] = 3, ['x'] = 19, ['lvl'] = 4, ['type'] = 'AE_stf_eltireans_Sky_Lord', ['default'] = 'Dune Paragon', },
	{ ['t'] = 19, ['d'] = 6, ['side'] = 4, ['x'] = 4, ['lvl'] = 1, ['type'] = 'AE_mag_Hidden_Face', ['default'] = 'Orcish Assassin', ['agile'] = 10, },
	
	-- 23 - 29 (mask y 27 - 21)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 4, ['type'] = 'AE_mrc_avians_Diamondbeak', ['default'] = 'Armageddon Drake', ['beefy'] = 68, ['gold'] = 100 },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Hawkeye', ['default'] = 'Drake Flare', ['race_guard_off'] = true, },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Shell', ['default'] = 'Inferno Drake', ['race_guard_off'] = true },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Passer', ['default'] = 'Drake Warden', ['calls_for_help'] = true, ['fast'] = 3 },
	{ ['t'] = 29, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Shieldmaster', ['default'] = 'Highwayman', ['guard'] = true },
	{ ['t'] = 29, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Shieldmaster', ['default'] = 'Highwayman', ['guard'] = true },
	
	{ ['t'] = 29, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Egglayer', ['default'] = 'Sky Drake', },
	
	{ ['t'] = 28, ['d'] = 3, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Bowflurry', ['default'] = 'Drake Enforcer', },
	{ ['t'] = 29, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Raven', ['default'] = 'Drake Blademaster', ['calls_for_help'] = true },
	
	{ ['t'] = 26, ['d'] = 4, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Hummingbird', ['default'] = 'Drake Thrasher', ['race_guard_off'] = true },
	{ ['t'] = 28, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Armorpiercer', ['default'] = 'Roc', ['buff'] = 'A45:B20:C36' },
	
	{ ['t'] = 27, ['d'] = 6, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Nightwing', ['default'] = 'Inferno Drake', },
	
	-- 30 - 36 (mask y 20 - 14)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Inquisitor', ['default'] = 'Assassin', ['beefy'] = 24, ['guard'] = true },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_ele_Fallen_Infiltrator', ['default'] = 'Bandit', ['race_guard_off'] = true, },
	{ ['t'] = 32, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 4, ['type'] = 'AE_ele_Fallen_Dragon_Rider', ['default'] = 'Yeti', ['guard'] = true, ['buff'] = 'A40:B47:C14', ['disallow_slash_unguardian'] = true },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 3, ['x'] = 8, ['lvl'] = 5, ['type'] = 'AE_ele_Fallen_Supreme_Lord', ['default'] = 'Fire Dragon', ['recruits'] = 'AE_ele_Fallen_Inquisitor,AE_ele_Fallen_Liquidator,AE_ele_Fallen_Purgator', ['default_recruits'] = 'Fugitive,Huntsman,Assassin', ['r_lvls'] = '3,3,3', ['recruitment_gold'] = 140, ['recruit_armored'] = 10 },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_ele_Fallen_Shieldbearer', ['default'] = 'Trapper', ['race_guard_off'] = true },
	{ ['t'] = 36, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 6, ['type'] = 'QQ_blackness', ['default'] = 'QQ_blackness', ['buff'] = 'A37:B37:C46' },
	
	{ ['t'] = 34, ['d'] = 2, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_ele_Fallen_Knight', ['default'] = 'Rogue', },
	
	{ ['t'] = 31, ['d'] = 3, ['side'] = 3, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_ele_Fallen_Infiltrator', ['default'] = 'Outlaw', ['race_guard_off'] = true, },
	
	{ ['t'] = 31, ['d'] = 4, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Nestguard', ['default'] = 'Fire Wraith', ['guard'] = true },
	{ ['t'] = 32, ['d'] = 4, ['side'] = 3, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Decapitator', ['default'] = 'Ranger', ['beefy'] = 40, },
	
	{ ['t'] = 34, ['d'] = 6, ['side'] = 3, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Scorch_King', ['default'] = 'Highwayman', },
	
	-- 37 - 43 (mask y 13 - 7)
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_mag_Doom_Bringer', ['default'] = 'Death Knight', ['race_guard_off'] = true, },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 4, ['x'] = 11, ['lvl'] = 4, ['type'] = 'AE_mag_Fallen_Cyclops_King', ['default'] = 'Ancient Lich', ['recruits'] = 'AE_mag_Apocalypse,AE_mag_Devourer,AE_mag_Atokpi_Charger', ['default_recruits'] = 'Spectre,Ghast,Draug', ['r_lvls'] = '3,3,3', ['recruitment_gold'] = 140, ['recruit_minion'] = 'C43' },
	{ ['t'] = 40, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 4, ['type'] = 'AE_mag_Abaddon', ['default'] = 'Skeletal Dragon', ['race_guard_off'] = true, },
	{ ['t'] = 41, ['d'] = 1, ['side'] = 5, ['x'] = 15, ['lvl'] = 4, ['type'] = 'AE_myh_Librarian', ['default'] = 'Dwarvish Arcanister', ['recruits'] = 'AE_myh_Oathkeeper,AE_myh_Runeforger,AE_myh_Stormbringer', ['default_recruits'] = 'Dwarvish Lord,Dwarvish Dragonguard,Dwarvish Sentinel', ['r_lvls'] = '3,3,3', ['recruitment_gold'] = 140, ['recruit_minion'] = 'A3' },
	{ ['t'] = 43, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 5, ['type'] = 'QQ_atronachs', ['default'] = 'QQ_atronachs', ['buff'] = 'A33:B30:C30' },
	
	{ ['t'] = 40, ['d'] = 2, ['side'] = 4, ['x'] = 14, ['lvl'] = 4, ['type'] = 'AE_mag_DarkApostle', ['default'] = 'Skeletal Dragon', },
	
	{ ['t'] = 38, ['d'] = 3, ['side'] = 4, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_mag_Crimson_Atokpi', ['default'] = 'Banebow', },
	{ ['t'] = 42, ['d'] = 3, ['side'] = 5, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_myh_Harbinger', ['default'] = 'Dwarvish Runemaster', ['beefy'] = 40 },
	
	{ ['t'] = 42, ['d'] = 4, ['side'] = 5, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_myh_Dreadnought', ['default'] = 'Naga Sicarius', ['armored'] = 10, },
	
	{ ['t'] = 37, ['d'] = 6, ['side'] = 4, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_mag_Moloch', ['default'] = 'Nightgaunt', ['race_guard_off'] = true, ['bulky'] = 72, },
	
	-- final boss 44 / mask y 6
	
	{ ['t'] = 44, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 6, ['type'] = 'QQ_adjudicator', ['default'] = 'QQ_adjudicator', ['moves'] = 0, ['final_boss'] = true, ['buff'] = 'A6:B22:C47:C29:B11', ['allow_random'] = false, ['story_message'] = 'Who are these insignificant pests? Go and kill them unless you want to upset our Master!', ['story_response'] = 'We are so close, fight your best fight my friends. By the sunrise we will have his head!' },
}


-->>
