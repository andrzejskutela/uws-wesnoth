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
	
	{ ['row'] = 'object', ['t'] = 2, ['x'] = 6, ['cat'] = 'hidden_unit', ['type'] = 'Elvish Shaman', ['type_default'] = 'Elvish Shaman', ['message'] = 'Howdy! Are you travelling North by any chance? Have you heard about the secret chamber that can be found there? I can open the secret gate if you get me there.', ['new_unit_special_id'] = 'key_holder'},
	{ ['row'] = 'item', ['t'] = 1, ['x'] = 11, ['y'] = 8, ['asymmetric'] = true, ['pool'] = { 'melee_poison','freezing_gem','rat_pack','book','hp_low','hp_med','hp_high' }, ['overwrite_image'] = 'items/chest-plain-closed.png' },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 6, ['y'] = 13, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 25 },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 7, ['y'] = 10, ['cat'] = 'heal', ['image'] = 'scenery/well.png', ['name'] = 'Well', ['amount'] = 4 },
	{ ['row'] = 'object', ['t'] = 23, ['x'] = 6, ['cat'] = 'event', ['event'] = 'race_open_catacombs', },
	{ ['row'] = 'object', ['t'] = 26, ['x'] = 5, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 60, ['render'] = false, ['id'] = 'fr_hidden_gold' },
	{ ['row'] = 'item', ['t'] = 25, ['x'] = 3, ['asymmetric'] = true, ['pool'] = { 'leadership','feeding','drain','regen','heal','dragon_protection' }, ['render'] = false, ['id'] = 'fr_hidden_item' },

	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['y'] = 14, ['lvl'] = 1, ['type'] = 'Wolf', ['moves'] = 5, ['guard'] = true, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['y'] = 7, ['lvl'] = 0, ['type'] = 'Wose Sapling', ['moves'] = 4, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['y'] = 9, ['lvl'] = 0, ['type'] = 'Wose Sapling', ['moves'] = 4, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['y'] = 8, ['lvl'] = 1, ['type'] = 'Saurian Augur', ['moves'] = 4, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['y'] = 7, ['lvl'] = 1, ['type'] = 'Orcish Grunt', ['moves'] = 0, ['gold'] = 10 },

	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 6, ['y'] = 7, ['lvl'] = 1, ['type'] = 'Heavy Infantryman', ['moves'] = 0, },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 5, ['y'] = 12, ['lvl'] = 1, ['type'] = 'Young Ogre', ['moves'] = 3, },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = 'Wolf', ['moves'] = 4, },

	{ ['t'] = 1, ['d'] = 6, ['side'] = 2, ['x'] = 7, ['y'] = 9, ['lvl'] = 1, ['type'] = 'Fire Ant', ['moves'] = 4, },
	
	-- 2 - 8 (mask y 42 - 36)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 3, ['x'] = 5, ['lvl'] = 1, ['type'] = 'Troll Whelp', },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 3, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Saurian Skirmisher', ['guard'] = true },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 3, ['x'] = 6, ['lvl'] = 0, ['type'] = 'Dragonfly Naiad', ['guard'] = true, ['armored'] = 20 },
	{ ['t'] = 7, ['d'] = 1, ['side'] = 3, ['x'] = 7, ['lvl'] = 2, ['type'] = 'Hunter Caribe', ['guard'] = true,},

	{ ['t'] = 8, ['d'] = 2, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'Elvish Archer', },
	
	{ ['t'] = 5, ['d'] = 3, ['side'] = 3, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Wose', ['guard'] = true },
	{ ['t'] = 7, ['d'] = 3, ['side'] = 3, ['x'] = 5, ['lvl'] = 1, ['type'] = 'Naga Dirkfang', },

	{ ['t'] = 8, ['d'] = 4, ['side'] = 3, ['x'] = 6, ['lvl'] = 2, ['type'] = 'Swamp Lizard', ['bulky'] = 40 },
	{ ['t'] = 8, ['d'] = 4, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'Cave Bear', ['race_guard_off'] = true, },
	
	{ ['t'] = 7, ['d'] = 5, ['side'] = 3, ['x'] = 6, ['lvl'] = 0, ['type'] = 'Nibbler', },
	
	{ ['t'] = 8, ['d'] = 6, ['side'] = 3, ['x'] = 5, ['lvl'] = 1, ['type'] = 'Dark Omen', ['race_guard_off'] = true },
	
	-- 9 - 15 (mask y 35 - 29)
	
	{ ['t'] = 9, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Elvish Fighter', },
	{ ['t'] = 10, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Dwarvish Scout', },
	{ ['t'] = 10, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 2, ['type'] = 'Grand Dragonfly', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Sergeant', ['default'] = 'Sergeant', ['recruits'] = 'Thief,Poacher,Merman Brawler,Caribe', ['default_recruits'] = 'Thief,Poacher,Merman Brawler,Caribe', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 56, ['armored'] = 20, },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Dark Adept', },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'Naga Warrior', ['buff'] = 'A57:B56:C33' },

	{ ['t'] = 11, ['d'] = 2, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Mermaid Initiate', ['guard'] = true },
	
	{ ['t'] = 11, ['d'] = 3, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Naga Guard', },
	{ ['t'] = 13, ['d'] = 3, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Merman Hunter', },

	{ ['t'] = 12, ['d'] = 4, ['side'] = 4, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Elvish Scout', ['calls_for_help'] = true, ['race_guard_off'] = true },
	
	{ ['t'] = 14, ['d'] = 5, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'Water Serpent', ['agile'] = 10 },
	{ ['t'] = 15, ['d'] = 5, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Thug', },
	
	{ ['t'] = 12, ['d'] = 6, ['side'] = 4, ['x'] = 13, ['lvl'] = 2, ['type'] = 'War Harbinger', ['race_guard_off'] = true },
	
	-- 16 - 22 (mask y 28 - 22)
	
	{ ['t'] = 17, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Drake Clasher', ['guard'] = true },
	{ ['t'] = 17, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['lvl'] = 2, ['type'] = 'Saurian Spearthrower', ['guard'] = true },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['lvl'] = 2, ['type'] = 'Drake Thrasher', },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'Drake Burner', },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Dwarvish Runesmith', ['beefy'] = 20 },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Swordsman', ['guard'] = true },
	
	{ ['t'] = 21, ['d'] = 2, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Mage', },
	
	{ ['t'] = 17, ['d'] = 3, ['side'] = 3, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Shadow', ['allow_random'] = false, ['fast'] = 2 },
	
	{ ['t'] = 19, ['d'] = 4, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Dune Horse Archer', ['calls_for_help'] = true },

	{ ['t'] = 22, ['d'] = 5, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Dwarvish Miner', },
	
	{ ['t'] = 21, ['d'] = 6, ['side'] = 2, ['x'] = 6, ['lvl'] = 3, ['type'] = 'Saurian Prophet', },
	
	-- 23 - 29 (mask y 21 - 15)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Dune Soldier', },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'Dune Strider', ['calls_for_help'] = true, },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 3, ['type'] = 'Shadow Jumping Spider', ['fast'] = 2 },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'Dune Falconer', ['agile'] = 5 },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'Dune Spearguard', },

	{ ['t'] = 28, ['d'] = 2, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'Dune Alchemist', },
	
	{ ['t'] = 27, ['d'] = 3, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'Death Squire', ['buff'] = 'A5:B57:C19:A41:A3:C48', ['allow_random'] = false },

	{ ['t'] = 28, ['d'] = 4, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'Soldier Ant', },

	{ ['t'] = 25, ['d'] = 5, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'Dune Scorcher', },
	
	{ ['t'] = 28, ['d'] = 6, ['side'] = 3, ['x'] = 5, ['lvl'] = 3, ['type'] = 'Ghast', ['bulky'] = 100 },
	
	-- 30 - 36 (mask y 14 - 8)

	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Fire Wraith', ['guard'] = true, ['beefy'] = 100 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 3, ['type'] = 'Kraken', ['item'] = true, ['buff'] = 'A13:B32:C55:C7:C56', ['allow_random'] = false },
	{ ['t'] = 32, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 3, ['type'] = 'Great Troll', ['race_guard_off'] = true, ['beefy'] = 40 },

	{ ['t'] = 32, ['d'] = 2, ['side'] = 3, ['x'] = 15, ['lvl'] = 4, ['type'] = 'QQ_terror_hulk', },
	
	{ ['t'] = 36, ['d'] = 3, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'Firebane Ant', ['guard'] = true },

	{ ['t'] = 36, ['d'] = 4, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'Sand Scuttler', },
	
	{ ['t'] = 35, ['d'] = 5, ['side'] = 3, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Giant Mudcrawler', ['armored'] = 30, },
	
	{ ['t'] = 36, ['d'] = 6, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'Paladin', ['buff'] = 'A58:B2:C47:B16' },

	-- final boss 37 / mask y 7
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 3, ['type'] = 'Fire Ant Queen', ['buff'] = 'A26:B12:C57:C13:B29', ['moves'] = 0, ['final_boss'] = true },
}


-->>
