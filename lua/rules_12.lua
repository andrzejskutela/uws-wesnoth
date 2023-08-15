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
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 22, ['y'] = 12, ['cat'] = 'hidden_unit', ['type'] = 'AE_FL_natives_Falcon', ['type_default'] = 'Falcon', ['message'] = 'squeek squeek... squeek', ['image'] = 'scenery/nest-full.png' },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 5, ['y'] = 5, ['cat'] = 'hidden_unit', ['type'] = 'Mermaid Initiate', ['type_default'] = 'Mermaid Initiate', ['message'] = 'Be careful in these waters, they are treacherous. I can help you navigate.', },
	{ ['row'] = 'item', ['t'] = 3, ['x'] = 18, ['asymmetric'] = true, ['pool'] = { 'regen','melee_dmg','ranged_dmg','golden_armor','armor_destruction','skirm','first_strike' }, ['overwrite_image'] = 'items/chest-plain-closed.png' },
	{ ['row'] = 'object', ['t'] = 4, ['x'] = 16, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 25 },
	{ ['row'] = 'item', ['t'] = 21, ['x'] = 9, ['asymmetric'] = true, ['pool'] = { 'magic_res','phys_res','discouragement','burns','heal','field_disruption' }, ['overwrite_image'] = 'items/chest-plain-closed.png' },

	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['y'] = 16, ['lvl'] = 1, ['type'] = 'AE_FL_natives_Acrobat', ['default'] = 'Dune Rover', ['moves'] = 6 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['y'] = 16, ['lvl'] = 0, ['type'] = 'AE_FL_natives_Tribesman', ['default'] = 'Giant Scorpling', ['moves'] = 5 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['y'] = 17, ['lvl'] = 0, ['type'] = 'AE_FL_natives_Tribesman', ['default'] = 'Giant Scorpling', ['moves'] = 5, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['y'] = 12, ['lvl'] = 1, ['type'] = 'AE_FL_natives_Elder_Falcon', ['default'] = 'Elder Falcon', ['moves'] = 6, ['guard'] = true, ['allow_random'] = false },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_FL_natives_Crocodile', ['default'] = 'Horned Scarab', ['moves'] = 5, ['guard'] = true },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['y'] = 10, ['lvl'] = 1, ['type'] = 'AE_FL_bloodelf_Dark_Lizard', ['default'] = 'Rock Scorpion', ['moves'] = 5, ['guard'] = true, ['agile'] = 12 },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 22, ['y'] = 16, ['lvl'] = 1, ['type'] = 'AE_FL_natives_Shaman', ['default'] = 'Dune Herbalist', ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 6, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_FL_pirates_Serpent', ['default'] = 'Great Seahorse', ['guard'] = true, ['moves'] = 5, ['allow_random'] = false, },
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 3, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Albatross', ['default'] = 'Elder Falcon', ['moves'] = 5, ['allow_random'] = false },
	
	{ ['t'] = 1, ['d'] = 5, ['side'] = 2, ['x'] = 17, ['y'] = 13, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Quicksand_Golem', ['default'] = 'Ogre', ['guard'] = true, ['moves'] = 4, ['gold'] = 20, ['buff'] = 'A49:B12:C46', ['allow_random'] = false },
	
	-- 2 - 8 (mask y 26 - 20)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_FL_pirates_Fishman', ['default'] = 'Naga Dirkfang', ['moves'] = 6, ['allow_random'] = false },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_FL_pirates_Sailor', ['default'] = 'Dune Skirmisher', ['gold'] = 12 },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_FL_pirates_Sailor', ['default'] = 'Dune Rover', },
	{ ['t'] = 7, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_mrc_mercenaries_Seafarer', ['default'] = 'Dune Falconer', ['recruits'] = 'AE_FL_pirates_Buccaneer,AE_FL_pirates_Sailor,AE_FL_pirates_Fishman', ['default_recruits'] = 'Dune Burner,Dune Soldier,Dune Herbalist', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 40, },
	{ ['t'] = 8, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_FL_natives_Elder_Falcon', ['default'] = 'Elder Falcon', ['guard'] = true, ['allow_random'] = false },
	
	{ ['t'] = 3, ['d'] = 2, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_FL_pirates_Pirate', ['default'] = 'Dune Strider', ['guard'] = true },
	
	{ ['t'] = 6, ['d'] = 3, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_FL_pirates_Buccaneer', ['default'] = 'Dune Burner', ['guard'] = true, },
	
	{ ['t'] = 8, ['d'] = 4, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_FL_pirates_Novice_Enchanter', ['default'] = 'Dune Herbalist', },
	
	{ ['t'] = 6, ['d'] = 5, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_FL_pirates_Fishman_Fighter', ['default'] = 'Naga Ophidian', ['guard'] = true },
	
	-- 9 - 15 (mask y 19 - 13)
	
	{ ['t'] = 9, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_FL_pirates_Sea_Beast', ['default'] = 'Water Serpent', ['item'] = true, ['guard'] = true, ['gold'] = 20, ['allow_random'] = false },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_FL_altaris_Light_Scout', ['default'] = 'Dune Rider', ['race_guard_off'] = true },
	{ ['t'] = 12, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_FL_altaris_Sword_Brother', ['default'] = 'Spearman', },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_FL_pirates_Sea_Monster', ['default'] = 'Tentacle of the Deep', ['bulky'] = 40, ['gold'] = 40, ['guard'] = true, ['allow_random'] = false, },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Arcane_Warrior', ['default'] = 'Lieutenant', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_FL_altaris_Golem', ['default'] = 'Mage', },
	
	{ ['t'] = 11, ['d'] = 2, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_FL_altaris_Chosen', ['default'] = 'Fencer', },
	
	{ ['t'] = 13, ['d'] = 3, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_FL_altaris_Sword_Brother', ['default'] = 'Spearman', ['armored'] = 16 },
	
	{ ['t'] = 15, ['d'] = 4, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_FL_altaris_Master_at_Arms', ['default'] = 'Outlaw', },
	
	{ ['t'] = 15, ['d'] = 5, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_FL_altaris_Sword_Brother', ['default'] = 'Thug', ['buff'] = 'A21:B52:C48:C1' },
	
	
	-- 16 - 22 (mask y 12 - 6)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_FL_pirates_Thunder_Serpent', ['default'] = 'Cuttle Fish', ['guard'] = true, ['gold'] = 40, ['beefy'] = 24, ['allow_random'] = false },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_FL_amazon_Harpy', ['default'] = 'Ghost', },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Fire_Warrior', ['default'] = 'Drake Flameheart', ['recruits'] = 'AE_FL_bloodelf_Phoenix_Hatchling,AE_FL_bloodelf_Mage_of_Fire,AE_FL_amazon_Harpy', ['default_recruits'] = 'Drake Burner,Drake Clasher,Drake Fighter', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 75 },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_FL_amazon_Harpy', ['default'] = 'Ghost', },
	
	{ ['t'] = 18, ['d'] = 2, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_FL_amazon_Giant_Creeper', ['default'] = 'Wose Shaman', ['moves'] = 0, },
	
	{ ['t'] = 20, ['d'] = 3, ['side'] = 2, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Phoenix', ['default'] = 'Inferno Drake', ['fast'] = 2, ['guard'] = true },
	
	{ ['t'] = 18, ['d'] = 4, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_FL_bloodelf_Minotaur_Warlord', ['default'] = 'Draug', ['guard'] = true },
	
	{ ['t'] = 19, ['d'] = 5, ['side'] = 4, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_FL_amazon_Harpy_Glider', ['default'] = 'Wraith', ['calls_for_help'] = true, ['race_guard_off'] = true },
	{ ['t'] = 21, ['d'] = 5, ['side'] = 2, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_FL_natives_Skullbreaker', ['default'] = 'Great Troll', ['beefy'] = 40, ['guard'] = true },
	
	-- 22 / final boss
	
	{ ['t'] = 22, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 3, ['type'] = 'AE_FL_pirates_Deputy_Captain', ['default'] = 'Fugitive', ['buff'] = 'A28:B16:C45', ['moves'] = 0, ['final_boss'] = true },
}


-->>
