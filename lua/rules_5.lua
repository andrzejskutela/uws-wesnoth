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
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['y'] = 8, ['lvl'] = 1, ['type'] = 'Troll Whelp', ['moves'] = 4, ['guard'] = true, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = 'Troll Whelp', ['moves'] = 4, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['y'] = 4, ['lvl'] = 1, ['type'] = 'Poacher', },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['y'] = 6, ['lvl'] = 1, ['type'] = 'Orcish Grunt', ['guard'] = true },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 15, ['y'] = 4, ['lvl'] = 1, ['type'] = 'Wolf Rider', ['guard'] = true },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 16, ['y'] = 4, ['lvl'] = 1, ['type'] = 'Orcish Grunt', ['moves'] = 4, },
	
	-- 2 - 8 (mask y 60 - 54)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Wose', ['guard'] = true },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Elvish Fighter', },
	{ ['t'] = 7, ['d'] = 1, ['side'] = 4, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Water Serpent', ['guard'] = true },
	{ ['t'] = 8, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Elvish Archer', },
	
	{ ['t'] = 3, ['d'] = 2, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Wose', ['guard'] = true },
	
	{ ['t'] = 7, ['d'] = 3, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Elvish Fighter', },
	{ ['t'] = 8, ['d'] = 3, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Elvish Archer', },
	
	{ ['t'] = 4, ['d'] = 4, ['side'] = 4, ['x'] = 15, ['lvl'] = 0, ['type'] = 'Piglet', ['bulky'] = 200 },
	
	{ ['t'] = 7, ['d'] = 5, ['side'] = 4, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Woodland Boar', ['buff'] = 'A24:B11:C24', ['race_guard_off'] = true },
	
	-- 9 - 15 (mask y 53 - 47)
	
	{ ['t'] = 9, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Elvish Scout', ['fast'] = 1 },
	{ ['t'] = 10, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Orcish Crossbowman', ['guard'] = true },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Dwarvish Guardsman', ['bulky'] = 20 },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Rogue', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Tentacle of the Deep', ['guard'] = true },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Ghost', ['guard'] = true },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'Vampire Bat', ['guard'] = true },
	
	{ ['t'] = 15, ['d'] = 2, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Blood Bat', ['guard'] = true, ['agile'] = 8 },
	
	{ ['t'] = 10, ['d'] = 3, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Dwarvish Guardsman', },
	{ ['t'] = 11, ['d'] = 3, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Dwarvish Stalwart', },
	
	{ ['t'] = 15, ['d'] = 4, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Rock Scorpion', ['buff'] = 'A25:B25:C25', },
	
	{ ['t'] = 9, ['d'] = 5, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Great Horse', ['bulky'] = 40, },
	
	-- 16 - 22 (mask y 46 - 40)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 2, ['x'] = 5, ['lvl'] = 1, ['type'] = 'Dwarvish Thunderer', },
	{ ['t'] = 17, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Thug', ['armored'] = 8 },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'Dark Adept', },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'Saurian Skirmisher', },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Dwarvish Ulfserker', },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Merman Fighter', ['guard'] = true },
	
	{ ['t'] = 18, ['d'] = 2, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Dark Adept', },
	{ ['t'] = 20, ['d'] = 2, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Merman Fighter', ['guard'] = true },
	
	{ ['t'] = 16, ['d'] = 3, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Saurian Skirmisher', ['calls_for_help'] = true, ['allow_random'] = false },
	{ ['t'] = 20, ['d'] = 3, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Saurian Skirmisher', },
	
	{ ['t'] = 16, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Horned Scarab', ['bulky'] = 60, ['beefy'] = 20 },
	
	{ ['t'] = 21, ['d'] = 5, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'Saurian Oracle', ['beefy'] = 16, },
	
	-- 23 - 29 (mask y 39 - 33)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Merman Hunter', ['guard'] = true },
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Ghoul', },
	{ ['t'] = 23, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Spearman', ['guard'] = true },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Heavy Infantryman', ['guard'] = true },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Fencer', ['guard'] = true },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'Mage', ['guard'] = true },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 0, ['type'] = 'Goblin Spearman', },
	
	{ ['t'] = 27, ['d'] = 2, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Orcish Archer', ['guard'] = true },
	{ ['t'] = 29, ['d'] = 2, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Orcish Archer', },
	
	{ ['t'] = 26, ['d'] = 3, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Spearman', },
	
	{ ['t'] = 25, ['d'] = 4, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Pikeman', },
	
	{ ['t'] = 25, ['d'] = 5, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'Pikeman', },
	
	-- 30 - 36 (mask y 32 - 26)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Orcish Archer', },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Giant Scorpion', },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 0, ['type'] = 'Goblin Spearman', ['gold'] = 12 },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 0, ['type'] = 'Goblin Spearman', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 0, ['type'] = 'Goblin Spearman', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'Goblin Spearman', ['gold'] = 12 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Goblin Rouser', ['gold'] = 12 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Orcish Ruler', ['gold'] = 20, ['recruits'] = 'Orcish Grunt,Orcish Assassin,Orcish Archer,AE_ext_orcs_Orcish_Shaman', ['default_recruits'] = 'Orcish Grunt,Orcish Assassin,Orcish Archer', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 85, ['armored'] = 20, ['recruit_armored'] = 12 },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Wose', ['guard'] = true },
	{ ['t'] = 34, ['d'] = 1, ['side'] = 2, ['x'] = 4, ['lvl'] = 2, ['type'] = 'Ogre', ['guard'] = true },
	{ ['t'] = 34, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 2, ['type'] = 'Ogre', ['guard'] = true },
	{ ['t'] = 36, ['d'] = 1, ['side'] = 3, ['x'] = 4, ['lvl'] = 1, ['type'] = 'Saurian Skirmisher', },
	{ ['t'] = 36, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Naga Fighter', ['guard'] = true },
	
	{ ['t'] = 31, ['d'] = 2, ['side'] = 3, ['x'] = 8, ['lvl'] = 1, ['type'] = 'Wose', ['guard'] = true },
	{ ['t'] = 32, ['d'] = 2, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'Young Ogre', },
	
	{ ['t'] = 32, ['d'] = 3, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Orcish Grunt', ['beefy'] = 30, ['gold'] = 12,  },
	{ ['t'] = 33, ['d'] = 3, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Orcish Assassin', },
	
	{ ['t'] = 31, ['d'] = 4, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Goblin Rouser', ['beefy'] = 24, ['gold'] = 12, },
	{ ['t'] = 35, ['d'] = 4, ['side'] = 3, ['x'] = 6, ['lvl'] = 1, ['type'] = 'Saurian Skirmisher', },
	
	{ ['t'] = 34, ['d'] = 5, ['side'] = 2, ['x'] = 6, ['lvl'] = 3, ['type'] = 'Orcish Nightblade', ['buff'] = 'A26:B26:C26', ['gold'] = 12, },
	
	-- 37 - 43 (mask y 25 - 19)
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 3, ['x'] = 5, ['lvl'] = 1, ['type'] = 'Young Ogre', },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 3, ['x'] = 8, ['lvl'] = 1, ['type'] = 'Naga Fighter', },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 3, ['type'] = 'Arch Mage', },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'Dwarvish Berserker', ['buff'] = 'A27:B55:C27:C20:C50:B27', ['item'] = true, },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'Arch Mage', ['guard'] = true },
	{ ['t'] = 41, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 1, ['type'] = 'Naga Fighter', ['fast'] = 1 },
	
	{ ['t'] = 43, ['d'] = 2, ['side'] = 4, ['x'] = 13, ['lvl'] = 0, ['type'] = 'Walking Corpse', },
	{ ['t'] = 43, ['d'] = 2, ['side'] = 4, ['x'] = 15, ['lvl'] = 0, ['type'] = 'Walking Corpse' },
	
	{ ['t'] = 43, ['d'] = 3, ['side'] = 4, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Soulless', },
	
	{ ['t'] = 41, ['d'] = 4, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'Jinn', ['buff'] = 'A28:B28:C49', ['race_guard_off'] = true, ['calls_for_help'] = true },
	
	{ ['t'] = 40, ['d'] = 5, ['side'] = 3, ['x'] = 12, ['lvl'] = 5, ['type'] = 'QQ_ankylosaurus', ['race_guard_off'] = true },
	
	-- 44 - 50 (mask y 18 - 12)
	
	{ ['t'] = 44, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 1, ['type'] = 'Skeleton Archer', },
	{ ['t'] = 44, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Skeleton', },
	{ ['t'] = 44, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 0, ['type'] = 'Walking Corpse', },
	{ ['t'] = 44, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 0, ['type'] = 'Walking Corpse', },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'Dark Sorcerer', },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 5, ['type'] = 'Elder Mage', ['quiet_buff'] = 'Q5', ['allow_random'] = false, ['item'] = true },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 2, ['type'] = 'Dwarvish Pathfinder', },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'Dwarvish Thunderguard', },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'Ancient Wose', ['guard'] = true },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'Dwarvish Pathfinder', },
	
	{ ['t'] = 44, ['d'] = 2, ['side'] = 4, ['x'] = 14, ['lvl'] = 3, ['type'] = 'Death Knight', ['guard'] = true },
	{ ['t'] = 48, ['d'] = 2, ['side'] = 2, ['x'] = 11, ['lvl'] = 3, ['type'] = 'Mermaid Diviner', },
	{ ['t'] = 50, ['d'] = 2, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Naga Warrior', },
	
	{ ['t'] = 47, ['d'] = 3, ['side'] = 2, ['x'] = 12, ['lvl'] = 2, ['type'] = 'Cuttle Fish', },
	{ ['t'] = 48, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'Dwarvish Sentinel', ['bulky'] = 32, ['armored'] = 5, },
	
	{ ['t'] = 45, ['d'] = 4, ['side'] = 4, ['x'] = 13, ['lvl'] = 2, ['type'] = 'Wraith', ['beefy'] = 60, ['fast'] = 2, ['calls_for_help'] = true },
	
	{ ['t'] = 50, ['d'] = 5, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'Shock Trooper', ['beefy'] = 32, ['bulky'] = 56, ['armored'] = 12, ['race_guard_off'] = true },
	
	-- 51 - 57 (mask y 11 - 5)
	{ ['t'] = 52, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 0, ['type'] = 'Peasant', ['agile'] = 15 },
	{ ['t'] = 52, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 4, ['type'] = 'Elvish Sylph', ['guard'] = true },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 0, ['type'] = 'Peasant', },
	{ ['t'] = 54, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 2, ['type'] = 'Dread Bat', ['allow_random'] = false },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'Drake Fighter', },
	
	{ ['t'] = 52, ['d'] = 2, ['side'] = 2, ['x'] = 19, ['lvl'] = 4, ['type'] = 'Grand Marshal', ['event'] = 'dimaga_joining_unit' },
	
	{ ['t'] = 51, ['d'] = 4, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'Roc', ['race_guard_off'] = true, },
	
	{ ['t'] = 53, ['d'] = 5, ['side'] = 2, ['x'] = 16, ['lvl'] = 4, ['type'] = 'Dwarvish Arcanister', ['race_guard_off'] = true, },
	
	-- final boss 55 / mask y 7
	
	{ ['t'] = 55, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 5, ['type'] = 'Fire Dragon', ['buff'] = 'A29:B29:C29:C18:C38', ['moves'] = 0, ['final_boss'] = true },
}


-->>
