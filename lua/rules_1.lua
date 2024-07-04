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
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['y'] = 7, ['lvl'] = 1, ['type'] = 'Giant Mudcrawler', },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['y'] = 9, ['lvl'] = 1, ['type'] = 'Footpad', ['moves'] = 0, ['gold'] = 6, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['y'] = 8, ['lvl'] = 0, ['type'] = 'Mudcrawler', },

	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 25, ['y'] = 7, ['lvl'] = 1, ['type'] = 'Giant Mudcrawler', },
	
	{ ['t'] = 1, ['d'] = 5, ['side'] = 2, ['x'] = 21, ['y'] = 5, ['lvl'] = 1, ['type'] = 'Giant Mudcrawler', ['guard'] = true, ['buff'] = 'A3:B13:C16', ['quiet_buff'] = 'Q6', ['allow_random'] = false, ['disallow_slash_unguardian'] = true, },
	
	-- 2 - 8 (mask y 74 - 68)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'Mage', },
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'Naga Warrior', ['recruits'] = 'Naga Fighter,Saurian Augur', ['r_lvls'] = '1,1', ['recruitment_gold'] = 35, ['gold'] = 50, ['recruit_armored'] = 10, },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'Troll Whelp', },
	{ ['t'] = 8, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'Troll Whelp', },
	{ ['t'] = 8, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'Poacher', },
	
	{ ['t'] = 6, ['d'] = 3, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Young Ogre', ['guard'] = true, },
	
	{ ['t'] = 4, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Naga Fighter', ['bulky'] = 32, ['armored'] = 20 },
	
	-- 9 - 15 (mask y 67 - 61)
	
	{ ['t'] = 10, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'Dwarvish Thunderer', },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'Dwarvish Steelclad', ['recruits'] = 'Dwarvish Fighter,Dwarvish Thunderer', ['r_lvls'] = '1,1', ['recruitment_gold'] = 50, ['gold'] = 60 },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Thug', },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 4, ['x'] = 25, ['lvl'] = 2, ['type'] = 'Trapper', ['recruits'] = 'Poacher,Footpad,Thug,Thief', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 40, ['item'] = true },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Dwarvish Guardsman', ['moves'] = 0, },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 1, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Elvish Druid', ['allow_random'] = false },
	
	{ ['t'] = 12, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Gryphon Rider', },
	
	{ ['t'] = 11, ['d'] = 3, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'Dwarvish Fighter', },
	{ ['t'] = 15, ['d'] = 3, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'Dwarvish Ulfserker', ['allow_random'] = false },

	{ ['t'] = 13, ['d'] = 4, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'Dwarvish Ulfserker', ['bulky'] = 60, },
	
	{ ['t'] = 15, ['d'] = 5, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Dwarvish Guardsman', ['buff'] = 'A11:B11:C10', ['gold'] = 10 },

	{ ['t'] = 14, ['d'] = 6, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'Dwarvish Scout', ['fast'] = 1 },
	
	-- 16 - 22 (mask y 60 - 54)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 8, ['lvl'] = 1, ['type'] = 'Dwarvish Guardsman', ['moves'] = 0 },
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Dwarvish Ulfserker'},
	{ ['t'] = 19, ['d'] = 1, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'Rogue', },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'Trapper', },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'Elvish Hero', ['moves'] = 0, ['item'] = true },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'Elvish Druid', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'Elvish Marksman', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'Elvish Ranger', ['moves'] = 0, ['gold'] = 10 },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Troll Whelp', },
	
	{ ['t'] = 19, ['d'] = 2, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'Bandit', ['moves'] = 0, },

	{ ['t'] = 21, ['d'] = 3, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Wose', ['guard'] = true, ['bulky'] = 60, },
	
	{ ['t'] = 21, ['d'] = 4, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'Troll Whelp', },
	{ ['t'] = 21, ['d'] = 4, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Troll Whelp', ['beefy'] = 40, ['armored'] = 20 },
	
	{ ['t'] = 17, ['d'] = 6, ['side'] = 3, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Dwarvish Fighter', ['bulky'] = 32, },
	
	-- 23 - 29 (mask y 53 - 47)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'Elvish Rider', },
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'Elvish Fighter', },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 2, ['x'] = 5, ['lvl'] = 2, ['type'] = 'Troll', ['bulky'] = 24 },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 2, ['x'] = 4, ['lvl'] = 2, ['type'] = 'Troll Hero', ['recruits'] = 'Troll,Troll Whelp', ['r_lvls'] = '2,1', ['recruitment_gold'] = 40, ['buff'] = 'A7:B6:C58' },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 2, ['type'] = 'Troll Rocklobber', ['moves'] = 0, ['item'] = true },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'Elvish Archer', },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'Elvish Archer', },
	{ ['t'] = 29, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Saurian Augur', },
	
	{ ['t'] = 23, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Elvish Enchantress', },
	{ ['t'] = 23, ['d'] = 2, ['side'] = 2, ['x'] = 7, ['lvl'] = 0, ['type'] = 'Vampire Bat', },
	
	{ ['t'] = 25, ['d'] = 3, ['side'] = 2, ['x'] = 5, ['lvl'] = 1, ['type'] = 'Troll Whelp', },
	{ ['t'] = 24, ['d'] = 3, ['side'] = 2, ['x'] = 25, ['lvl'] = 3, ['type'] = 'Elvish Marshal', ['gold'] = 10 },
	{ ['t'] = 26, ['d'] = 3, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'Naga Warrior', },

	{ ['t'] = 24, ['d'] = 4, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'Elvish Fighter', },
	{ ['t'] = 26, ['d'] = 4, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'Naga Warrior', },
	{ ['t'] = 27, ['d'] = 4, ['side'] = 2, ['x'] = 6, ['lvl'] = 2, ['type'] = 'Troll Shaman', },
	
	{ ['t'] = 23, ['d'] = 5, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Blood Bat', ['beefy'] = 28, },
	{ ['t'] = 24, ['d'] = 5, ['side'] = 2, ['x'] = 9, ['lvl'] = 2, ['type'] = 'Dread Bat', ['buff'] = 'A47:B12:C11' },

	{ ['t'] = 27, ['d'] = 6, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Saurian Skirmisher', ['race_guard_off'] = true, ['gold'] = 10 },
	
	-- 30 - 36 (mask y 46 - 40)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'Saurian Skirmisher' },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Saurian Augur', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Saurian Oracle', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 3, ['type'] = 'Saurian Flanker', ['recruits'] = 'Saurian Skirmisher,Saurian Augur', ['r_lvls'] = '1,1', ['recruitment_gold'] = 60, ['gold'] = 20 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 4, ['x'] = 25, ['lvl'] = 3, ['type'] = 'Drake Flameheart', ['recruits'] = 'Drake Burner,Drake Fighter', ['r_lvls'] = '1,1', ['recruitment_gold'] = 90, ['gold'] = 80 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 4, ['x'] = 24, ['lvl'] = 1, ['type'] = 'Drake Burner', },
	{ ['t'] = 32, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'Saurian Oracle', },
	{ ['t'] = 35, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Merman Hunter', },
	{ ['t'] = 36, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'Javelineer', ['moves'] = 0, ['gold'] = 10 },
	
	{ ['t'] = 31, ['d'] = 2, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'Water Serpent', ['disallow_slash_unguardian'] = true, },
	
	{ ['t'] = 30, ['d'] = 3, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'Fire Drake', ['guard'] = true },
	{ ['t'] = 35, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Merman Netcaster', },
	
	{ ['t'] = 30, ['d'] = 4, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Saurian Skirmisher', },
	{ ['t'] = 34, ['d'] = 4, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'Sky Drake', },

	{ ['t'] = 35, ['d'] = 6, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'Hurricane Drake', ['buff'] = 'A13:B13:C12:B17', },
	{ ['t'] = 32, ['d'] = 6, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'Drake Thrasher', ['bulky'] = 60, ['armored'] = 10 },
	{ ['t'] = 34, ['d'] = 6, ['side'] = 3, ['x'] = 10, ['lvl'] = 2, ['type'] = 'Swamp Lizard', ['beefy'] = 40, ['disallow_slash_unguardian'] = true, },
	
	-- 37 - 43 (mask y 39 - 33)
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 0, ['type'] = 'Peasant', ['gold'] = 6, },
	{ ['t'] = 37, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'Halberdier', ['moves'] = 0 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Merman Spearman', ['bulky'] = 40 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'General', ['moves'] = 0, ['gold'] = 40 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'Longbowman', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 3, ['type'] = 'Royal Guard', ['moves'] = 0 },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'Royal Guard', ['moves'] = 0 },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 4, ['type'] = 'Grand Marshal', ['recruits'] = 'Spearman,Javelineer,Swordsman,Longbowman,Red Mage,Horseman,Dragoon,Duelist', ['r_lvls'] = '1,2,2,2,2,1,2,2', ['recruitment_gold'] = 150, ['item'] = true },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'White Mage', },
	{ ['t'] = 40, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 0, ['type'] = 'Peasant', },
	{ ['t'] = 40, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 3, ['type'] = 'Halberdier', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 40, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 0, ['type'] = 'Peasant', ['gold'] = 8, },
	{ ['t'] = 42, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 0, ['type'] = 'Peasant', ['event'] = 'follow_players_race', ['gold'] = 11 },
	
	{ ['t'] = 38, ['d'] = 2, ['side'] = 2, ['x'] = 9, ['lvl'] = 3, ['type'] = 'Merman Hoplite', ['armored'] = 5 },
	{ ['t'] = 39, ['d'] = 2, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'Red Mage' },
	{ ['t'] = 41, ['d'] = 2, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'Mage of Light', },
	
	{ ['t'] = 41, ['d'] = 3, ['side'] = 2, ['x'] = 25, ['lvl'] = 3, ['type'] = 'Paladin' },
	{ ['t'] = 42, ['d'] = 3, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Pikeman', },

	{ ['t'] = 38, ['d'] = 4, ['side'] = 2, ['x'] = 7, ['lvl'] = 3, ['type'] = 'Mermaid Siren', },
	{ ['t'] = 41, ['d'] = 4, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'Dragoon', },

	{ ['t'] = 41, ['d'] = 5, ['side'] = 2, ['x'] = 14, ['lvl'] = 3, ['type'] = 'Duelist' },
	
	{ ['t'] = 41, ['d'] = 6, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'Iron Mauler', ['buff'] = 'A41:B16:C10', ['gold'] = 15 },
	{ ['t'] = 43, ['d'] = 6, ['side'] = 2, ['x'] = 10, ['lvl'] = 3, ['type'] = 'Silver Mage', ['beefy'] = 20, ['bulky'] = 20, ['race_guard_off'] = true },
	
	-- 44 - 50 (mask y 32 - 26)
	
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Soulless', ['gold'] = 8 },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Soulless', },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'Soulless', },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 3, ['type'] = 'Banebow', ['moves'] = 0, },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'Soulless', },
	{ ['t'] = 46, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'Soulless', ['gold'] = 8 },
	{ ['t'] = 46, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Dread Bat', ['agile'] = 10 },
	{ ['t'] = 46, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Soulless', },
	{ ['t'] = 46, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'Soulless', ['gold'] = 8 },
	{ ['t'] = 47, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'Revenant', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'Wolf', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Wolf', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 3, ['type'] = 'Necromancer', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Soulless', },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 3, ['type'] = 'Nightgaunt', },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 4, ['type'] = 'Yeti', ['moves'] = 0, ['event'] = 'tsw_yeti', ['allow_random'] = false },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'Dark Sorcerer', },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Gryphon', },
	
	{ ['t'] = 45, ['d'] = 2, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Soulless', ['race_guard_off'] = true, ['beefy'] = 24, ['gold'] = 12 },
	{ ['t'] = 46, ['d'] = 2, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'Soulless', ['race_guard_off'] = true, ['calls_for_help'] = true, },
	{ ['t'] = 46, ['d'] = 2, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'Soulless', ['race_guard_off'] = true },
	
	{ ['t'] = 45, ['d'] = 3, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'Soulless', ['gold'] = 10 },
	{ ['t'] = 46, ['d'] = 3, ['side'] = 3, ['x'] = 25, ['lvl'] = 1, ['type'] = 'Soulless', },
	{ ['t'] = 46, ['d'] = 3, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'Dread Bat', ['fast'] = 2, },
	
	{ ['t'] = 47, ['d'] = 4, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'Necrophage', },
	{ ['t'] = 48, ['d'] = 4, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'Direwolf', ['race_guard_off'] = true },
	{ ['t'] = 49, ['d'] = 4, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'Nightgaunt', ['fast'] = 1 },
	{ ['t'] = 50, ['d'] = 4, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'Gryphon', },
	{ ['t'] = 50, ['d'] = 4, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'Skeleton', },
	{ ['t'] = 50, ['d'] = 4, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'Dark Sorcerer', },

	{ ['t'] = 46, ['d'] = 5, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Soulless', ['bulky'] = 540, ['beefy'] = 40, ['moves'] = 6, ['name'] = 'Timmy', ['race_guard_off'] = true, ['gold'] = 17 },
	{ ['t'] = 50, ['d'] = 5, ['side'] = 3, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Gryphon', },

	{ ['t'] = 46, ['d'] = 6, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Soulless', ['beefy'] = 20, ['fast'] = 1, ['race_guard_off'] = true, ['gold'] = 8 },
	{ ['t'] = 48, ['d'] = 6, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Necromancer', },
	{ ['t'] = 49, ['d'] = 6, ['side'] = 3, ['x'] = 15, ['lvl'] = 4, ['type'] = 'Skeletal Dragon', ['beefy'] = 20, ['bulky'] = 180, ['race_guard_off'] = true, ['item'] = true },
	
	-- 51 - 57 (mask y 25 - 19)
	
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'Chocobone', },
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Death Knight', },
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 3, ['type'] = 'Spectre', ['bulky'] = 30 },
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 3, ['type'] = 'Draug', },
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 26, ['lvl'] = 3, ['type'] = 'Necromancer', },
	{ ['t'] = 52, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'Dark Sorcerer', },
	{ ['t'] = 52, ['d'] = 1, ['side'] = 4, ['x'] = 5, ['lvl'] = 3, ['type'] = 'Sea Serpent', ['race_guard_off'] = true },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'Water Serpent', },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Cuttle Fish', },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 4, ['x'] = 26, ['lvl'] = 2, ['type'] = 'Cuttle Fish', ['bulky'] = 80 },
	{ ['t'] = 54, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'Cuttle Fish', },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 0, ['type'] = 'Goblin Spearman', },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 7, ['lvl'] = 0, ['type'] = 'Goblin Spearman', },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 8, ['lvl'] = 0, ['type'] = 'Goblin Spearman', },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 2, ['type'] = 'Orcish Warrior', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 0, ['type'] = 'Goblin Spearman', },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Goblin Rouser', ['gold'] = 20 },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 11, ['lvl'] = 3, ['type'] = 'Orcish Sovereign', ['recruits'] = 'Orcish Warrior,Orcish Slayer,Orcish Crossbowman', ['r_lvls'] = '2,2,2', ['recruitment_gold'] = 250, ['gold'] = 50, ['recruit_armored'] = 10 },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'Orcish Warrior', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'Orcish Crossbowman', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 4, ['x'] = 8, ['lvl'] = 0, ['type'] = 'Goblin Spearman', },
	{ ['t'] = 57, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'Giant Scorpion', },
	{ ['t'] = 57, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Orcish Crossbowman', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 57, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Giant Scorpion', },
	
	{ ['t'] = 51, ['d'] = 2, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'Bone Shooter', },
	{ ['t'] = 52, ['d'] = 2, ['side'] = 3, ['x'] = 26, ['lvl'] = 4, ['type'] = 'Ancient Lich', ['recruits'] = 'Dark Sorcerer,Dread Bat,Chocobone,Deathblade,Wraith,Shadow,Necrophage,Bone Shooter', ['r_lvls'] = '2,2,2,2,2,2,2,2', ['recruitment_gold'] = 300, ['item'] = true },
	{ ['t'] = 57, ['d'] = 2, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Giant Scorpion', },

	{ ['t'] = 54, ['d'] = 3, ['side'] = 4, ['x'] = 23, ['lvl'] = 3, ['type'] = 'Orcish Warlord', ['moves'] = 0, ['gold'] = 30 },
	{ ['t'] = 55, ['d'] = 3, ['side'] = 4, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Orcish Warrior', },
	{ ['t'] = 55, ['d'] = 3, ['side'] = 4, ['x'] = 26, ['lvl'] = 3, ['type'] = 'Sea Serpent', ['moves'] = 0, ['gold'] = 50 },
	
	{ ['t'] = 51, ['d'] = 4, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Ghast', },
	{ ['t'] = 52, ['d'] = 4, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'Bone Shooter', },
	{ ['t'] = 56, ['d'] = 4, ['side'] = 4, ['x'] = 15, ['lvl'] = 3, ['type'] = 'Orcish Slurbow', },
	{ ['t'] = 56, ['d'] = 4, ['side'] = 4, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Orcish Assassin', },
	{ ['t'] = 56, ['d'] = 4, ['side'] = 4, ['x'] = 12, ['lvl'] = 2, ['type'] = 'Orcish Warrior', },

	{ ['t'] = 57, ['d'] = 5, ['side'] = 3, ['x'] = 20, ['lvl'] = 3, ['type'] = 'Giant Spider', },
	
	{ ['t'] = 56, ['d'] = 6, ['side'] = 4, ['x'] = 9, ['lvl'] = 2, ['type'] = 'Fire Wraith', ['buff'] = 'A14:B14:C13', ['bulky'] = 52, ['race_guard_off'] = true },
	{ ['t'] = 57, ['d'] = 6, ['side'] = 4, ['x'] = 25, ['lvl'] = 3, ['type'] = 'Giant Spider', },
	
	-- 58 - 60 (mask y 18 - 16)
	
	{ ['t'] = 58, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'Orcish Warrior', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 58, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'Orcish Warrior', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 59, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 3, ['type'] = 'Giant Spider', },
	
	{ ['t'] = 58, ['d'] = 2, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'Orcish Slayer', ['event'] = 'follow_players_race', },
	
	{ ['t'] = 59, ['d'] = 3, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'Giant Spider', },
	{ ['t'] = 60, ['d'] = 3, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Giant Spider', },
	
	{ ['t'] = 60, ['d'] = 4, ['side'] = 3, ['x'] = 25, ['lvl'] = 3, ['type'] = 'Drake Warden', ['race_guard_off'] = true },
	{ ['t'] = 60, ['d'] = 4, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'Giant Spider', },
	
	{ ['t'] = 59, ['d'] = 5, ['side'] = 3, ['x'] = 17, ['lvl'] = 4, ['type'] = 'Armageddon Drake', ['race_guard_off'] = true, ['bulky'] = 40, },

	{ ['t'] = 60, ['d'] = 6, ['side'] = 3, ['x'] = 14, ['lvl'] = 3, ['type'] = 'Giant Spider', },
	
	-- 60 / final boss
	
	{ ['t'] = 60, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 5, ['type'] = 'Fire Dragon', ['buff'] = 'A11:B15:C15:C4:C2', ['moves'] = 0, ['final_boss'] = true },
}


-->>
