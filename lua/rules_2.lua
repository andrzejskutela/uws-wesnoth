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

local hidden_unit = { ['row'] = 'object', ['cat'] = 'hidden_unit', ['type'] = 'AE_mag_Shamanistic_Adept', ['type_default'] = 'Saurian Augur', ['message'] = 'Are you in need of some help? I know these lands very well... help me clear this place of these evil creatures and I will show you the way out!' }
local r = mathx.random(1, 3)

if r == 1 then
	hidden_unit['t'] = 1
	hidden_unit['x'] = 27
	hidden_unit['y'] = 11
elseif r == 2 then
	hidden_unit['t'] = 1
	hidden_unit['x'] = 23
	hidden_unit['y'] = 5
else
	hidden_unit['t'] = 2
	hidden_unit['x'] = 7
end

return {
	-- objects
	
	hidden_unit,
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 18, ['y'] = 14, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 25 },
	{ ['row'] = 'object', ['t'] = 10, ['x'] = 4, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 20 },
	{ ['row'] = 'object', ['t'] = 10, ['x'] = 7, ['cat'] = 'decorative', ['image'] = 'items/burial.png' },
	{ ['row'] = 'object', ['t'] = 19, ['x'] = 17, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 50 },
	{ ['row'] = 'object', ['t'] = 19, ['x'] = 27, ['cat'] = 'rune', ['image'] = 'items/ball-blue.png', ['amount'] = 3, ['name'] = 'Aquamarine', ['set'] = 'R1,R1,R2', ['color'] = '#617dfa', ['tooltip'] = '+10% water defense (67%)\
+10% magic resistance (33%)' },
	{ ['row'] = 'object', ['t'] = 29, ['x'] = 5, ['cat'] = 'heal', ['image'] = 'halo/elven/druid-healing6.png', ['name'] = 'Fresh water' },
	{ ['row'] = 'object', ['t'] = 30, ['x'] = 5, ['cat'] = 'heal', ['image'] = 'halo/elven/druid-healing6.png', },
	{ ['row'] = 'object', ['t'] = 33, ['x'] = 24, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 30 },
	{ ['row'] = 'item', ['t'] = 40, ['x'] = 26, ['asymmetric'] = true, ['pool'] = { 'melee_dmg','ranged_dmg','ranged_acc','drain','melee_poison','golden_armor' }, },
	{ ['row'] = 'object', ['t'] = 41, ['x'] = 21, ['cat'] = 'heal', ['image'] = 'scenery/well.png', ['name'] = 'Well' },
	{ ['row'] = 'object', ['t'] = 49, ['x'] = 27, ['cat'] = 'rune', ['image'] = 'items/ball-magenta.png', ['amount'] = 2, ['name'] = 'Ruby', ['set'] = 'R2,R4', ['color'] = '#e65045', ['tooltip'] = '+10% physical resistance (50%)\
+10% magic resistance (50%)' },
	{ ['row'] = 'object', ['t'] = 53, ['x'] = 11, ['cat'] = 'decorative', ['image'] = 'projectiles/web.png' },
	{ ['row'] = 'object', ['t'] = 54, ['x'] = 14, ['cat'] = 'decorative', ['image'] = 'projectiles/web.png' },
	{ ['row'] = 'object', ['t'] = 58, ['x'] = 29, ['cat'] = 'rune', ['image'] = 'items/ball-green.png', ['amount'] = 1, ['name'] = 'Emerald', ['set'] = 'R5', ['color'] = '#3c9644', ['tooltip'] = '+10% all resistance (100%)' },
	{ ['row'] = 'object', ['t'] = 59, ['x'] = 12, ['cat'] = 'heal', ['image'] = 'scenery/monolith2.png', ['name'] = 'Monolith' },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Fly', ['default'] = 'Blood Bat', ['moves'] = 7, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 5, ['y'] = 4, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Parasite', ['default'] = 'Vampire Bat', ['moves'] = 4 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['y'] = 9, ['lvl'] = 0, ['type'] = 'AE_arc_khthon_Toad', ['default'] = 'Walking Corpse', ['moves'] = 3, },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['y'] = 13, ['lvl'] = 0, ['type'] = 'AE_arc_khthon_Toad', ['default'] = 'Walking Corpse', ['moves'] = 3 },

	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 19, ['y'] = 17, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Parasite', ['default'] = 'Vampire Bat', ['moves'] = 4 },
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 8, ['y'] = 16, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Parasite', ['default'] = 'Vampire Bat', ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 9, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_rhy_vx_Snake_Swamp', ['default'] = 'Soulless', ['guard'] = true, ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 5, ['side'] = 2, ['x'] = 28, ['y'] = 10, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Mosquito', ['default'] = 'Ghost', ['guard'] = true, ['moves'] = 6, },
	
	{ ['t'] = 1, ['d'] = 6, ['side'] = 2, ['x'] = 5, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Mosquito', ['default'] = 'Ghost', ['guard'] = true, ['moves'] = 6, },

	{ ['t'] = 1, ['d'] = 7, ['side'] = 2, ['x'] = 25, ['y'] = 13, ['lvl'] = 0, ['type'] = 'Dragonfly Naiad', ['default'] = 'Dragonfly Naiad', ['guard'] = true, ['moves'] = 6, },
	{ ['t'] = 1, ['d'] = 7, ['side'] = 2, ['x'] = 26, ['y'] = 12, ['lvl'] = 0, ['type'] = 'Dragonfly Naiad', ['default'] = 'Dragonfly Naiad', ['guard'] = true, ['moves'] = 6, },
	
	-- 2 - 8 (mask y 79 - 73)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Swarm', ['default'] = 'Ghoul', },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_agl_yokai_Weaver_Maiden', ['default'] = 'Giant Rat', ['guard'] = true, ['gold'] = 15 },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 0, ['type'] = 'AE_agl_yokai_Weaver_Maiden', ['default'] = 'Giant Rat', ['guard'] = true, ['gold'] = 15 },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_rhy_mh_Signalman', ['default'] = 'Young Ogre', },
	{ ['t'] = 7, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_rhy_de_Darkpriest', ['default'] = 'Dark Adept', ['recruits'] = 'AE_arc_despair_Black_Cloak,AE_arc_despair_Spearman,AE_arc_despair_Wisp', ['default_recruits'] = 'Skeleton Archer,Skeleton,Vampire Bat', ['r_lvls'] = '1,1,0', ['recruitment_gold'] = 50, ['gold'] = 60 },
	{ ['t'] = 7, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_rhy_dw_Miner', ['default'] = 'Dwarvish Scout', },
	
	{ ['t'] = 2, ['d'] = 2, ['side'] = 2, ['x'] = 6, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Parasite', ['default'] = 'Vampire Bat', },
	
	{ ['t'] = 2, ['d'] = 3, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Giant_Toad', ['default'] = 'Giant Mudcrawler' },
	{ ['t'] = 4, ['d'] = 3, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_rhy_mh_Mage', ['default'] = 'Ghost', ['race_guard_off'] = true, },
	
	{ ['t'] = 8, ['d'] = 5, ['side'] = 2, ['x'] = 17, ['lvl'] = 0, ['type'] = 'AE_agl_yokai_Weaver_Maiden', ['default'] = 'Giant Scorpion', },
	
	{ ['t'] = 8, ['d'] = 6, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Soldier', ['default'] = 'Wraith', },

	{ ['t'] = 5, ['d'] = 7, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Widow', ['default'] = 'Dragonfly', },
	
	-- 9 - 15 (mask y 72 - 66)
	
	{ ['t'] = 9, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_rhy_mh_Earthgolem', ['default'] = 'Troll Whelp', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 10, ['d'] = 1, ['side'] = 1, ['x'] = 3, ['lvl'] = 2, ['type'] = 'AE_fut_brungar_Herbalist', ['default'] = 'Dune Apothecary', ['allow_random'] = false },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 1, ['type'] = 'AE_myh_Water_Dryad', ['default'] = 'Mermaid Initiate', },
	{ ['t'] = 12, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Albatross', ['default'] = 'Elder Falcon', },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Albatross', ['default'] = 'Elder Falcon', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Seaman', ['default'] = 'Fencer', },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_rhy_de_Spearman', ['default'] = 'Spearman', ['gold'] = 8 },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 3, ['x'] = 26, ['lvl'] = 1, ['type'] = 'AE_rhy_de_Spearman', ['default'] = 'Spearman', ['gold'] = 8 },
	
	{ ['t'] = 14, ['d'] = 2, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Gust', ['default'] = 'Merman Fighter', ['bulky'] = 60 },
	
	{ ['t'] = 13, ['d'] = 3, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Albatross', ['default'] = 'Elder Falcon', ['fast'] = 1, },

	{ ['t'] = 14, ['d'] = 4, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Seaman', ['default'] = 'Fencer', },
	{ ['t'] = 14, ['d'] = 4, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_arc_south_seas_Whirlwind', ['default'] = 'Pikeman', ['armored'] = 10, ['gold'] = 18 },
	
	{ ['t'] = 13, ['d'] = 5, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_arc_south_seas_Greater_Albatross', ['default'] = 'Gryphon', ['bulky'] = 40 },

	{ ['t'] = 15, ['d'] = 6, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_rhy_rg_Bowman', ['default'] = 'Bowman', ['beefy'] = 20, ['quiet_buff'] = 'Q3', },

	{ ['t'] = 9, ['d'] = 7, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_rhy_ne_leviathan', ['default'] = 'Hunter Caribe', ['buff'] = 'A7:B2:C2' },
	
	-- 16 - 22 (mask y 65 - 59)
	
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_rhy_rg_Frigate', ['default'] = 'Pirate Galleon', },
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_mag_Water_Elemental', ['default'] = 'Great Seahorse', },
	{ ['t'] = 16, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_rhy_rg_Noble_Fighter', ['default'] = 'Sergeant', },
	{ ['t'] = 17, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_fut_brungar_Crab', ['default'] = 'Rock Scorpion', },
	{ ['t'] = 17, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_stf_triththa_Squid', ['default'] = 'Merman Hunter', ['bulky'] = 32, ['gold'] = 15, ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_arc_south_seas_Diver', ['default'] = 'Merman Netcaster', ['item'] = true },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 3, ['x'] = 27, ['lvl'] = 2, ['type'] = 'AE_arc_south_seas_Seahag', ['default'] = 'Lieutenant', ['recruits'] = 'AE_arc_south_seas_Swimmer,AE_arc_south_seas_Shoreman,AE_arc_south_seas_Seaman,AE_arc_south_seas_Arsonist', ['default_recruits'] = 'Bowman,Spearman,Mage,Pirate Galleon', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 100 },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_fut_brungar_Crab', ['default'] = 'Rock Scorpion', },
	{ ['t'] = 20, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_fut_brungar_Crab', ['default'] = 'Rock Scorpion', },
	
	{ ['t'] = 18, ['d'] = 2, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_fut_brungar_Crab', ['default'] = 'Rock Scorpion', },
	{ ['t'] = 19, ['d'] = 2, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Water_Snake', ['default'] = 'Merman Fighter', ['agile'] = 5 },
	{ ['t'] = 22, ['d'] = 2, ['side'] = 4, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mrc_holy_order_Twilight', ['default'] = 'Gryphon Master', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 21, ['d'] = 3, ['side'] = 3, ['x'] = 27, ['lvl'] = 1, ['type'] = 'AE_mag_Carpet_Rider', ['default'] = 'Merman Hunter', },
	
	{ ['t'] = 17, ['d'] = 5, ['side'] = 3, ['x'] = 27, ['lvl'] = 2, ['type'] = 'AE_fut_brungar_Overgrown_Crab', ['default'] = 'Cuttle Fish', ['armored'] = 5, ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 17, ['d'] = 6, ['side'] = 3, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_rhy_rg_Frigate', ['default'] = 'Pirate Galleon', },
	{ ['t'] = 20, ['d'] = 6, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_arc_south_seas_Able_Seaman', ['default'] = 'Merman Spearman', ['beefy'] = 24, ['bulky'] = 24, },

	{ ['t'] = 21, ['d'] = 7, ['side'] = 3, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Lore_Caster', ['default'] = 'Sand Scuttler', ['ai_add_gold'] = 30 },
	
	-- 23 - 29 (mask y 58 - 52)
	
	{ ['t'] = 24, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_arc_south_seas_Albatross', ['default'] = 'Mermaid Initiate', },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_mrc_mercenaries_Seafarer', ['default'] = 'Dune Falconer', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_mag_Cyclops_Breaker', ['default'] = 'Dune Spearguard', ['gold'] = 12 },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Mudcrawler', ['default'] = 'Giant Mudcrawler', ['race_guard_off'] = true, ['allow_random'] = false },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Mudcrawler', ['default'] = 'Giant Mudcrawler', ['race_guard_off'] = true, ['allow_random'] = false },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_mag_Cyclops_Noble', ['default'] = 'Dune Alchemist', ['recruits'] = 'AE_mag_Cyclops', ['default_recruits'] = 'Dune Burner,Dune Rider,Dune Soldier', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 75, ['recruit_armored'] = 15 },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_mag_Fire_Elemental', ['default'] = 'Dune Burner', },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 4, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Mudcrawler', ['default'] = 'Giant Mudcrawler', ['race_guard_off'] = true, ['allow_random'] = false },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_mag_Blood_Warrior', ['default'] = 'Dune Sunderer', },
	{ ['t'] = 29, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 0, ['type'] = 'AE_ext_monsters_Baby_Mudcrawler', ['default'] = 'Mudcrawler', ['race_guard_off'] = true, ['allow_random'] = false },
	{ ['t'] = 29, ['d'] = 1, ['side'] = 4, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_ext_monsters_Baby_Mudcrawler', ['default'] = 'Mudcrawler', ['race_guard_off'] = true, ['allow_random'] = false },
	
	{ ['t'] = 25, ['d'] = 2, ['side'] = 4, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mag_Cyclops', ['default'] = 'Dune Rover', },
	{ ['t'] = 25, ['d'] = 2, ['side'] = 4, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mag_Cyclops', ['default'] = 'Dune Skirmisher', },
	{ ['t'] = 25, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Water_Snake', ['default'] = 'Elder Falcon', },
	
	{ ['t'] = 23, ['d'] = 3, ['side'] = 3, ['x'] = 26, ['lvl'] = 2, ['type'] = 'AE_fut_brungar_Sting_Ray', ['default'] = 'Mermaid Enchantress', },
	{ ['t'] = 28, ['d'] = 3, ['side'] = 4, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_mag_Roc_Master', ['default'] = 'Jinn', },

	{ ['t'] = 29, ['d'] = 4, ['side'] = 4, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Mudcrawler', ['default'] = 'Giant Mudcrawler', ['beefy'] = 40, ['race_guard_off'] = true, ['allow_random'] = false },
	
	{ ['t'] = 25, ['d'] = 5, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_fut_brungar_Giant_Crab', ['default'] = 'Dune Firetrooper', ['buff'] = 'A15:B7:C14', ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 28, ['d'] = 6, ['side'] = 4, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_mag_Cyclops_Brute', ['default'] = 'Dune Captain', ['bulky'] = 36, ['beefy'] = 24, },
	
	-- 30 - 36 (mask y 51 - 45)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 0, ['type'] = 'AE_ext_monsters_Baby_Mudcrawler', ['default'] = 'Mudcrawler', ['race_guard_off'] = true, ['allow_random'] = false },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 4, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Mudcrawler', ['default'] = 'Giant Mudcrawler', ['race_guard_off'] = true, ['allow_random'] = false },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 0, ['type'] = 'QQ_Kamikaze', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, ['fast'] = 1 },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 0, ['type'] = 'QQ_Kamikaze', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 0, ['type'] = 'QQ_Kamikaze', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, ['gold'] = 15 },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_ext_chaos_Hell_Guardian', ['default'] = 'Highwayman', ['moves'] = 0 },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 3, ['x'] = 27, ['lvl'] = 2, ['type'] = 'AE_mag_Wyvern_Knight', ['default'] = 'Cuttle Fish', ['race_guard_off'] = true },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Overseer', ['default'] = 'Outlaw', ['recruits'] = 'QQ_Kamikaze', ['default_recruits'] = 'QQ_Kamikaze', ['r_lvls'] = '0', ['recruitment_gold'] = 85, ['gold'] = 30, ['allow_random_recruits'] = false, },
	{ ['t'] = 34, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_mrc_slavers_Worker', ['default'] = 'QQ_Kamikaze', ['guard'] = true },
	{ ['t'] = 35, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 0, ['type'] = 'QQ_Kamikaze', ['default'] = 'QQ_Kamikaze', ['bulky'] = 50, ['beefy'] = 50, ['allow_random'] = false },
	{ ['t'] = 35, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Miner', ['default'] = 'Rogue', ['guard'] = true },
	{ ['t'] = 36, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Minotaur', ['default'] = 'Cave Bear', ['beefy'] = 40 },
	
	{ ['t'] = 32, ['d'] = 2, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Miner', ['default'] = 'Rogue', ['guard'] = true },
	
	{ ['t'] = 32, ['d'] = 3, ['side'] = 2, ['x'] = 9, ['lvl'] = 0, ['type'] = 'QQ_Kamikaze', ['default'] = 'QQ_Kamikaze', ['buff'] = 'A11:B10:C9', ['allow_random'] = false, ['gold'] = 15 },
	
	{ ['t'] = 33, ['d'] = 4, ['side'] = 2, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_mrc_slavers_Miner', ['default'] = 'Rogue', ['guard'] = true, ['gold'] = 15 },
	
	{ ['t'] = 34, ['d'] = 5, ['side'] = 2, ['x'] = 8, ['lvl'] = 0, ['type'] = 'QQ_Kamikaze', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false },
	
	{ ['t'] = 34, ['d'] = 6, ['side'] = 3, ['x'] = 28, ['lvl'] = 3, ['type'] = 'AE_mag_Chaos_Wyvern', ['default'] = 'Sea Serpent', ['race_guard_off'] = true, ['bulky'] = 52, },

	{ ['t'] = 31, ['d'] = 7, ['side'] = 2, ['x'] = 10, ['lvl'] = 0, ['type'] = 'QQ_Kamikaze', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, ['armored'] = 40 },
	{ ['t'] = 34, ['d'] = 7, ['side'] = 2, ['x'] = 7, ['lvl'] = 0, ['type'] = 'QQ_Kamikaze', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false },
	
	-- 37 - 43 (mask y 44 - 38)
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 3, ['x'] = 4, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Bone_Snapper', ['default'] = 'Giant Scorpion', ['race_guard_off'] = true },
	{ ['t'] = 37, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_myh_Lurker', ['default'] = 'Orcish Assassin', ['race_guard_off'] = true },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_myh_Lurker', ['default'] = 'Orcish Assassin', ['race_guard_off'] = true },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_ext_chaos_Doom_Guard', ['default'] = 'Orcish Warrior', ['moves'] = 0, },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 3, ['x'] = 5, ['lvl'] = 2, ['type'] = 'AE_arc_khthon_Ophis', ['default'] = 'Orcish Slayer', ['guard'] = true, ['race_guard_off'] = true },
	{ ['t'] = 40, ['d'] = 1, ['side'] = 3, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_ext_chaos_Doom_Guard', ['default'] = 'Orcish Warrior', ['moves'] = 0 },
	{ ['t'] = 41, ['d'] = 1, ['side'] = 3, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Bone_Snapper', ['default'] = 'Giant Scorpion', ['bulky'] = 30, ['race_guard_off'] = true },
	{ ['t'] = 43, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_ext_chaos_Hell_Guardian', ['default'] = 'Highwayman', ['guard'] = true, ['item'] = true, ['armored'] = 15 },
	
	{ ['t'] = 38, ['d'] = 2, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_ext_chaos_Flesh_Hound', ['default'] = 'Ogre', ['aggressive'] = 1 },
	{ ['t'] = 42, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mrc_infernai_Archfiend', ['default'] = 'Troll Hero', ['guard'] = true },
	{ ['t'] = 43, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_ext_chaos_Lesser_Daemon', ['default'] = 'Orcish Archer', },
	
	{ ['t'] = 39, ['d'] = 3, ['side'] = 3, ['x'] = 26, ['lvl'] = 3, ['type'] = 'AE_agl_deep_Shadow_Tyrhai', ['default'] = 'Orcish Nightblade', ['agile'] = 5, },
	{ ['t'] = 40, ['d'] = 3, ['side'] = 3, ['x'] = 27, ['lvl'] = 1, ['type'] = 'AE_ext_chaos_Lesser_Daemon', ['default'] = 'Orcish Archer' },
	
	{ ['t'] = 41, ['d'] = 4, ['side'] = 3, ['x'] = 28, ['lvl'] = 2, ['type'] = 'AE_mrc_infernai_Troglodyte', ['default'] = 'Saurian Ambusher', ['buff'] = 'A17:B17:C17:C16', },

	{ ['t'] = 41, ['d'] = 5, ['side'] = 3, ['x'] = 27, ['lvl'] = 2, ['type'] = 'AE_mrc_infernai_Troglodyte', ['default'] = 'Saurian Ambusher', },
	{ ['t'] = 42, ['d'] = 5, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_mrc_infernai_Demon_Dog', ['default'] = 'Orcish Grunt', },

	{ ['t'] = 40, ['d'] = 6, ['side'] = 3, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_mag_Black_Portal', ['default'] = 'Ghast', ['allow_random'] = false, ['race_guard_off'] = true, ['buff'] = 'A18:B18:C18:C2', ['calls_for_help'] = true },
	
	-- 44 - 50 (mask y 37 - 31)
	
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_chs_chaos_empire_Demon_Shapeshifter', ['default'] = 'Wraith', ['buff'] = 'A19:B52:C19:B19' },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', },
	{ ['t'] = 46, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_mrc_holy_order_Pope', ['default'] = 'Orcish Sovereign', ['recruits'] = 'AE_mrc_infernai_Lost_Soul,AE_mrc_infernai_Controlled,AE_myh_Flappers,AE_myh_Cursers,AE_bem_anakes_Leech_Rider', ['default_recruits'] = 'Orcish Grunt,Orcish Assassin,Young Ogre,Saurian Skirmisher,Saurian Augur', ['r_lvls'] = '1,1,1,1,1', ['recruitment_gold'] = 155, ['item'] = true },
	{ ['t'] = 47, ['d'] = 1, ['side'] = 3, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_ext_chaos_Evil_Crab', ['default'] = 'Skeleton', ['aggressive'] = 1 },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_myh_Fire_Sprite', ['default'] = 'Blood Bat', },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 0, ['type'] = 'AE_mag_Mu', ['default'] = 'Walking Corpse', },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 3, ['x'] = 7, ['lvl'] = 4, ['type'] = 'AE_mrc_cult_Primordial', ['default'] = 'Armageddon Drake', ['guard'] = true, ['fast'] = 1, ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 3, ['x'] = 5, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Young_Cuttle_Fish', ['default'] = 'Ghost', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 47, ['d'] = 2, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_mrc_infernai_Familiar', ['default'] = 'Fire Wraith', ['guard'] = true, ['beefy'] = 24, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 49, ['d'] = 2, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_myh_Ninja', ['default'] = 'Ogre', ['agile'] = 10 },
	
	{ ['t'] = 46, ['d'] = 3, ['side'] = 3, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_myh_Blasphemists', ['default'] = 'Shadow', },
	
	{ ['t'] = 46, ['d'] = 4, ['side'] = 3, ['x'] = 5, ['lvl'] = 2, ['type'] = 'AE_ext_chaos_Hell_Crab', ['default'] = 'Deathblade', ['bulky'] = 100, },
	
	{ ['t'] = 46, ['d'] = 5, ['side'] = 3, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_mrc_infernai_Bloodbather', ['default'] = 'Orcish Warlord', ['bulky'] = 48, ['beefy'] = 12, },
	
	-- 51 - 57 (mask y 30 - 24)
	
	{ ['t'] = 51, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_rhy_dw_Wraith', ['default'] = 'Troll Shaman', ['bulky'] = 30, ['guard'] = true },
	{ ['t'] = 51, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_chs_chaos_empire_Hellhound', ['default'] = 'Direwolf Rider', ['guard'] = true },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_myh_Malborn', ['default'] = 'Ghoul', ['armored'] = 20, ['gold'] = 9, },
	{ ['t'] = 54, ['d'] = 1, ['side'] = 4, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_myh_Malborn', ['default'] = 'Ghoul', ['gold'] = 5, ['aggressive'] = 1 },
	{ ['t'] = 54, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_rhy_de_Spiderpriest', ['default'] = 'Dark Sorcerer', ['recruits'] = 'AE_stf_free_saurians_Spider,AE_ext_monsters_Little_Spider,AE_rhy_de_Small_Spider', ['default_recruits'] = 'Ghost,Ghoul,Skeleton Archer', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 80, ['gold'] = 40, },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_myh_Gargoyle', ['default'] = 'Wolf Rider', ['gold'] = 4 },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_myh_Blood_Hulk', ['default'] = 'Chocobone', ['gold'] = 22, ['buff'] = 'A20:B20:C20:B21:C48' },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_stf_free_saurians_Tarantula', ['default'] = 'Goblin Pillager', ['guard'] = true },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 3, ['x'] = 26, ['lvl'] = 1, ['type'] = 'AE_rhy_dw_Ghost', ['default'] = 'Troll Whelp', ['guard'] = true, },
	{ ['t'] = 57, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_myh_Blood_Manipulator', ['default'] = 'Jinn', ['gold'] = 12, },
	
	{ ['t'] = 54, ['d'] = 2, ['side'] = 4, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_myh_Malborn', ['default'] = 'Ghoul', ['gold'] = 7, ['armored'] = 30 },
	{ ['t'] = 57, ['d'] = 2, ['side'] = 4, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_ext_chaos_Hound', ['default'] = 'Woodland Boar', },
	
	{ ['t'] = 57, ['d'] = 3, ['side'] = 4, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_rhy_de_Deadwood', ['default'] = 'Revenant', ['beefy'] = 60, },
	
	{ ['t'] = 56, ['d'] = 5, ['side'] = 4, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_myh_Sangel', ['default'] = 'Banebow', ['beefy'] = 40, },
	
	{ ['t'] = 55, ['d'] = 6, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_rhy_de_Deadwood', ['default'] = 'Necrophage', ['buff'] = 'A51:B2:C6:A12', },

	{ ['t'] = 56, ['d'] = 7, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_rhy_de_Black_Spider', ['default'] = 'Death Squire', ['ai_add_gold'] = 40 },
	
	-- 58 - 64 (mask y 23 - 17)
	
	{ ['t'] = 58, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_rhy_de_Elvish_Boat', ['default'] = 'Pirate Galleon', ['gold'] = 10 },
	{ ['t'] = 59, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_fut_welkin_Flurry', ['default'] = 'Elder Falcon', ['gold'] = 6 },
	{ ['t'] = 59, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_mag_Neutral_Summoner', ['default'] = 'Elvish Avenger', ['gold'] = 16, ['event'] = 'follow_players_race' },
	{ ['t'] = 60, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_mag_Hidden_Face', ['default'] = 'Elvish Archer', ['gold'] = 13, },
	{ ['t'] = 61, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_fut_welkin_Luna_Protector', ['default'] = 'Elvish Fighter', ['bulky'] = 30, ['guard'] = true },
	{ ['t'] = 63, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_fut_welkin_Sentinel_of_the_Moon', ['default'] = 'Drake Thrasher', ['gold'] = 7, ['guard'] = true },
	{ ['t'] = 63, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_rhy_tr_Luna', ['default'] = 'Elvish Lady', },
	{ ['t'] = 64, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_rhy_aq_Newmoonmage', ['default'] = 'Elvish High Lord', ['recruits'] = 'AE_rhy_aq_Hoplite,AE_rhy_aq_Tank,Mermaid Siren,Merman Hoplite,Merman Triton,Merman Javelineer,Merman Entangler,AE_rhy_aq_Master_Bowman', ['default_recruits'] = 'Elvish Sharpshooter,Elvish Outrider,Elvish Enchantress,Mermaid Diviner,Merman Triton,Merman Entangler', ['r_lvls'] = '3,3,3,3,3,3', ['recruitment_gold'] = 250 },
	
	{ ['t'] = 61, ['d'] = 2, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_rhy_aq_General', ['default'] = 'Drake Flameheart', ['buff'] = 'A9:B21:C10', },
	
	{ ['t'] = 58, ['d'] = 3, ['side'] = 2, ['x'] = 28, ['lvl'] = 3, ['type'] = 'AE_rhy_tr_Gaya', ['default'] = 'Inferno Drake', ['gold'] = 11 },
	{ ['t'] = 58, ['d'] = 3, ['side'] = 4, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_rhy_de_Dark_Wose', ['default'] = 'Wose', },
	
	{ ['t'] = 58, ['d'] = 5, ['side'] = 4, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_rhy_de_Black_Spider', ['default'] = 'Drake Warrior', },
	
	{ ['t'] = 62, ['d'] = 6, ['side'] = 2, ['x'] = 26, ['lvl'] = 1, ['type'] = 'AE_chs_aragwaith_Eagle_Rider', ['default'] = 'Drake Glider', },
	{ ['t'] = 62, ['d'] = 6, ['side'] = 2, ['x'] = 28, ['lvl'] = 1, ['type'] = 'AE_chs_aragwaith_Eagle_Rider', ['default'] = 'Drake Glider', },

	{ ['t'] = 64, ['d'] = 7, ['side'] = 2, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_rhy_aq_Tank', ['default'] = 'Drake Enforcer', ['ai_add_gold'] = 65, ['buff'] = 'A47:B60:C36' },
	
	-- 65 - 69 (mask y 16 - 12)
	
	{ ['t'] = 66, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_mag_Heavy_Summoner', ['default'] = 'Mage of Light', ['armored'] = 10, ['guard'] = true, ['event'] = 'grw_spam_dimensional_gates', ['allow_random'] = false, },
	{ ['t'] = 68, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 3, ['type'] = 'AE_mag_Dharma_rhami', ['default'] = 'Master at Arms', ['guard'] = true, },
	{ ['t'] = 68, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_rhy_tr_Nova', ['default'] = 'Mermaid Siren', ['event'] = 'follow_players_race' },
	
	{ ['t'] = 67, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_ext_orcs_Naga_Abomination', ['default'] = 'General', ['recruits'] = 'AE_ext_orcs_Naga_Depthstalker,AE_ext_orcs_Naga_Assassin,Naga Myrmidon,Naga Zephyr,Naga Sicarius', ['default_recruits'] = 'Wild Wyvern,Water Serpent,Sea Serpent,Naga Zephyr,Naga Sicarius', ['r_lvls'] = '3,2,3,3,3', ['recruitment_gold'] = 250, ['gold'] = 50, ['recruit_armored'] = 5 },
	
	{ ['t'] = 67, ['d'] = 3, ['side'] = 2, ['x'] = 27, ['lvl'] = 3, ['type'] = 'AE_mag_Sky_Guardian', ['default'] = 'Merman Hoplite', },
	
	{ ['t'] = 68, ['d'] = 4, ['side'] = 2, ['x'] = 29, ['lvl'] = 3, ['type'] = 'AE_mag_Wonderful_Jinn', ['default'] = 'Silver Mage', ['beefy'] = 24,},
	
	{ ['t'] = 65, ['d'] = 5, ['side'] = 2, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_mag_Banisher', ['default'] = 'Paladin', ['beefy'] = 48, },

	{ ['t'] = 69, ['d'] = 6, ['side'] = 3, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_stf_triththa_Kraken', ['default'] = 'Naga Sicarius', ['buff'] = 'A21:B2:C4:C21:C2', },

	{ ['t'] = 68, ['d'] = 7, ['side'] = 2, ['x'] = 13, ['lvl'] = 4, ['type'] = 'AE_mag_Master_Banisher', ['default'] = 'Dune Paragon', },
	
	-- 69 / final boss
	
	{ ['t'] = 69, ['d'] = 1, ['side'] = 2, ['x'] = 29, ['lvl'] = 4, ['type'] = 'AE_mag_Summons_Master', ['default'] = 'Great Mage', ['buff'] = 'A22:B22:C21:C2:B16', ['moves'] = 0, ['final_boss'] = true },
}


-->>
